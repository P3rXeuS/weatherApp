import React, { useState, useEffect } from 'react';
import './App.css';
import AddCity from './components/AddCity.js';
import Weather from './components/Weather.js';
import ShowWeather from './components/ShowWeather.js';
import axios from 'axios';

const App = () => {
  const [city, setCity] = useState('');
  const [cities, setCities] = useState([]);
  const [weather, setWeather] = useState(null);

  useEffect(() => {
    getCities();
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    await addCity(city);
  };

  const addCity = async (city) => {
    try {
      // Check if the city exists in the weather API before adding
      const weatherResponse = await axios.get(`/api/weather/${city}`);
      
      if (weatherResponse.data) {
        await axios.post(`/api/cities`, { city });
        getCities();
        setCity('');
        alert('Kota berhasil menambahkan!');
      } else {
        alert('Kota tidak ditemukan dalam data cuaca!');
      }
    } catch (error) {
      alert('Kota tidak ditemukan atau terjadi kesalahan saat menambahkan kota.');
      console.error('Error saat menambahkan kota:', error);
    }
  };

  const getCities = async () => {
    try {
      const { data } = await axios.get(`/api/cities`);
      const citiesList = data.cities.map((city) => city.city_name);
      setCities(citiesList);
    } catch (error) {
      alert('Failed to retrieve Kota.');
      console.error('Error fetching Kota:', error);
    }
  };

  const getWeather = async (city) => {
    try {
      const { data } = await axios.get(`/api/weather/${city}`);
      if (data) {
        setWeather(data);
      } else {
        alert('Data cuaca untuk kota ini tidak tersedia.');
      }
    } catch (error) {
      alert('Error fetching data cuaca untuk kota yang dipilih.');
      console.error('Error fetching data cuaca:', error);
    }
  };

  const handleInputChange = (e) => {
    setCity(e.target.value);
  };

  return (
    <div className="container text-center mx-auto my-20 text-grey-darkest">
      <h1 className="my-3 text-grey-darker">Weather App</h1>
      <p>Cuaca terkini untuk kota favorit Anda!</p>
      <AddCity
        handleSubmit={handleSubmit}
        handleInputChange={handleInputChange}
        newCity={city}
      />
      <Weather cities={cities} handleSelectCity={(e) => getWeather(e.target.value)} />
      {weather && <ShowWeather data={weather} />}
    </div>
  );
};

export default App;
