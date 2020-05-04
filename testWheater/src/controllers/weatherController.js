import { createHeader, allHeaders } from '../commons/buildHeader';
import { get, post, put } from '../commons/httpsRequests';
import { updateWeatherByCity } from '../models/modelUpdateCurrentWeather';

const header = createHeader(allHeaders.noHeader);


module.exports = {
    getCurrentWeather: async (path) => {
        try {
            const response = await get(header, path);
            return response;
        } catch (error) {
            console.log(error)
        }
    },

    // Example pu
    updateWheather: async (path, city, deg) => {
        const body = updateWeatherByCity(city, deg);

        try {
            const response = await put(body, header, path);
            return response;
        } catch (error) {
            console.log(error)
        }
    }
};
