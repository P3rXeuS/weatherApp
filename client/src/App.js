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
    await axios.post(`/api/cities`, { city });
    getCities();
    setCity('');
  };

  const getCities = async () => {
    const { data } = await axios(`/api/cities`);
    const citiesList = data.cities.map((city) => city.city_name);
    setCities(citiesList);
  };

  const getWeather = async (city) => {
    const { data } = await axios(`/api/weather/${city}`);
    setWeather(data);
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
