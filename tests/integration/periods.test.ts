/* eslint-disable no-undef */
import supertest from 'supertest';
import app from '../../src/app';

describe('GET /periods', () => {
    it('Should return status 200 and array of periods', async () => {
        const result = await supertest(app).get('/periods');
        expect(result.status).toEqual(200);
    });
});
