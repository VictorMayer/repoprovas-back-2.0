/* eslint-disable no-undef */
import supertest from 'supertest';
import app from '../../src/app';

describe('GET /disciplines', () => {
    it('Should return status 200 and array of disciplines', async () => {
        const result = await supertest(app).get('/disciplines');
        expect(result.status).toEqual(200);
    });
});
