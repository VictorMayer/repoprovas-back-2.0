/* eslint-disable no-undef */
import supertest from 'supertest';
import app from '../../src/app';

describe('GET /professors', () => {
    it('Should return status 200 and array of professors', async () => {
        const result = await supertest(app).get('/professors');
        expect(result.status).toEqual(200);
    });
});
