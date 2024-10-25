import React from "react";

const ShowWeather = ( {data} ) => {
    return (
        <div className="mt-10">
            <h2>{data.name}</h2>
            <div>
                <img 
                    src={`https://openweathermap.org/img/w/${data.weather[0].icon}.png`}
                    alt="Weather Icon"
                />
            </div>
            <div>
                <span>{data.weather[0].main}</span> &nbsp;
                <span>{Math.floor(data.main.temp - 273.15)}&deg;C</span>
            </div>
        </div>
    )
}

export default ShowWeather;