import { getRepository } from 'typeorm';
import PeriodEntity from '../entities/periodEntity';

async function getPeriods() {
    const periods = await getRepository(PeriodEntity).find();

    return periods;
}

export {
    // eslint-disable-next-line import/prefer-default-export
    getPeriods,
};
