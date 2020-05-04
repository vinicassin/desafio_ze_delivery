import { getCurrentWeather } from '../controllers/weatherController'

const apiKey = process.env.APIKEY;

describe('Testes na API de tempo https://openweathermap.org/current', () => {

    jest.setTimeout(15000);

    test('Validar retorno da API com uma cidade existente', async () => {
        const city = 'London';
        const path = `/data/2.5/weather?q=${city}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)

        expect(response.status).toBe(200);
        expect(response.body.name).toBe('London');
    });

    test('Validar retorno da API com uma cidade não existente', async () => {
        const city = '';
        var path = `/data/2.5/weather?q=${city}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)
        
        expect(response.status).toBe(404);
    });

    test('Validar retorno da API com um ID de cidade existente', async () => {
        const id = 2172797;
        const path = `/data/2.5/weather?id=${id}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)

        expect(response.status).toBe(200);
        expect(response.body.name).toBe('Cairns');
    });

    test('Validar retorno da API com um ID não existente', async () => {
        const id = '';
        var path = `/data/2.5/weather?id=${id}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)
        
        expect(response.status).toBe(404);
    });

    test('Validar retorno da API utilizando lat e long existente', async () => {
        const lat = 35;
        const lon = 139;
        const path = `/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)

        expect(response.status).toBe(200);
        expect(response.body.name).toBe('Tawarano');
    });

    test('Validar retorno da API utilizando lat e long não existente', async () => {
        const lat = 2172797;
        const lon = -2172797;
        const path = `/data/2.5/weather?lat=${lat}&long=${lon}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)
        
        expect(response.status).toBe(404);
    });
    
    test('Validar retorno da API utilizando zip code existente', async () => {
        const zipCode = 94040;
        const path = `/data/2.5/weather?zip=${zipCode}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)

        expect(response.status).toBe(200);
        expect(response.body.name).toBe('Mountain View');
    });

    test('Validar retorno da API utilizando zip code não existente', async () => {
        const zipCode = 11111111;
        const path = `/data/2.5/weather?zip=${zipCode}&appid=${apiKey}`;

        const response = await getCurrentWeather(path)
        
        expect(response.status).toBe(404);
    });

});