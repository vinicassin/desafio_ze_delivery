// Data model example

function updateWeatherByCity(cityToUpdate, currentDegree) {
    let wheater = {
        name: cityToUpdate,
        deg: currentDegree 
    };

    return wheater;
}

export { updateWeatherByCity };