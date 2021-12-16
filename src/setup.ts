import dotenv from 'dotenv';

let path = '.env';

if (process.env.NODE_ENV === 'dev') path = '.env';
if (process.env.NODE_ENV === 'test') path = '.env.test';
if (process.env.NODE_ENV === 'prod') path = '.env.prod';

if (!process.env.NODE_ENV) path = '.env.test';

dotenv.config({ path });
