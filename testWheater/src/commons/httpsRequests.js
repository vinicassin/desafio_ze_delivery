import request from 'supertest';
require('dotenv').config();

const baseUrl = process.env.BASE_URL;

module.exports = {
    get: (header, path) => {
        const response = request(baseUrl)
            .get(path)
            .set(header)
        return response
    },
    post: (body, header, path) => {
        const response = request(baseUrl)
            .post(path)
            .send(body)
            .set(header)
        return response
    },
    put: (body, header, path) => {
        const response = request(baseUrl)
            .put(path)
            .send(body)
            .set(header)
        return response
    }
};