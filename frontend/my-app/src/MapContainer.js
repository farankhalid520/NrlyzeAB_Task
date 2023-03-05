import React, { useState } from 'react';
import { GoogleMap, LoadScript, Marker, Autocomplete } from '@react-google-maps/api';
import { Button, Input} from 'antd';
import axios from 'axios';

// Define the container style for the map
const containerStyle = {
  width: '100%',
  height: '100vh'
};

// Define the MapContainer component
const MapContainer = () => {

  // Set the default center of the map
  const defaultCenter = {
    lat: 59.3293,
     lng: 18.0686,
  };

  // Set the markers and center of the map as state
  const [markers, setMarkers] = useState([]);
  const [center, setCenter] = useState(defaultCenter);

  // Function to add a new marker when the user clicks on the map
  const onMapClick = (e) => {
    const lat = e.latLng.lat();
    const lng = e.latLng.lng();
    const newMarker = { lat, lng };
    setMarkers([...markers, newMarker]);
  }

  // Set the Autocomplete as state
  const [autocomplete, setAutocomplete] = useState(null);

  // Function to set the new center of the map when the user searches for a location
  const onLoad = (autocomplete) => setAutocomplete(autocomplete);
  const onPlaceChanged = () => {
    const place = autocomplete.getPlace();
    const newCenter = {
      lat: place.geometry.location.lat(),
      lng: place.geometry.location.lng(),
    };
    console.log('new center:', newCenter);
    setCenter(newCenter);
  };

  // Import the Input and Button components from Ant Design
  const { Search } = Input;

  // Function to calculate the distance between two markers and send the data to the server
  const getDistance = () => {
    // Check if the user has added at least two markers
    if (markers.length < 3) {
      console.log('Please add two markers first');
      return;
    }
    // Calculate the distance between two markers using the Haversine formula
    const mk1 = markers[0];
    const mk2 = markers[1];
    const mk3 = markers[2]
    const R = 6371e3; // Radius of the Earth in meters
    const rlat1 = mk2.lat * (Math.PI/180); // Convert degrees to radians
    const rlat2 = mk3.lat * (Math.PI/180); // Convert degrees to radians
    const difflat = rlat2-rlat1; // Radian difference (latitudes)
    const difflon = (mk3.lng-mk2.lng) * (Math.PI/180); // Radian difference (longitudes)
    const d = 2 * R * Math.asin(Math.sqrt(Math.sin(difflat/2)*Math.sin(difflat/2)+Math.cos(rlat1)*Math.cos(rlat2)*Math.sin(difflon/2)*Math.sin(difflon/2)));

    // Send the data to the server using Axios
    const left_corner_lat = mk1.lat;
    const left_corner_long = mk1.lng;
    const right_corner_lat = mk2.lat;
    const right_corner_long = mk2.lng;
    const width = Math.round(d);

    // Define the POST API URL where the data will be sent
    const url = 'http://127.0.0.1:8000/ThreeDBlocks';

    // Define the data to be sent in the POST request
    const data = {
      name: "React",
      object_id: 131,
      group: 1,
      left_corner_lat: left_corner_lat,
      left_corner_long: left_corner_long,
      right_corner_lat: right_corner_lat,
      right_corner_long: right_corner_long,
      width: width,
      z_offset: 0
    };

    // Send a POST request with the data to the specified URL using axios
    axios.post(url, data)
      .then((response) => {
        console.log(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  }

  // Return the following code as the component
  return (
    <LoadScript
      googleMapsApiKey="AIzaSyB_BhXLighmL3RYkNSYuW0TmB6ZlrKJZYQ"
      libraries={["places"]}
    >
      <GoogleMap
        mapContainerStyle={containerStyle}
        center={center}
        zoom={10}
        onClick={onMapClick}
      >
        <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <Autocomplete onLoad={onLoad} onPlaceChanged={onPlaceChanged}>
            <Search
              placeholder="Enter Your Location"
              allowClear
              enterButton="Search"
              size="large"
              style={{
                width: 304,
              }}
            />
          </Autocomplete>
          <Button onClick={getDistance} type="primary" htmlType="submit">
            Submit
          </Button>
        </div>
        
        {/* Add a marker at the center of the map */}
        {<Marker position={center} />}
        
        {/* Add a marker at each point where the user clicked */}
        {markers.map((marker, index) => (
          <Marker key={index} position={{ lat: marker.lat, lng: marker.lng }} />
        ))}
        
      </GoogleMap>
    </LoadScript>
  );
  
};

export default MapContainer; // Export the component as the default export