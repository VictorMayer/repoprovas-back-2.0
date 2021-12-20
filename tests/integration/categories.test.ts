/* eslint-disable no-undef */
import supertest from 'supertest';
import app from '../../src/app';

describe('GET /categories', () => {
    it('Should return status 200 and array of categories', async () => {
        const result = await supertest(app).get('/categories');
        expect(result.status).toEqual(200);
    });
});
