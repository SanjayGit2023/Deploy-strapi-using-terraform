module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'localhost'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'strap_database'),
      user: env('DATABASE_USERNAME', 'strapuser'),
      password: env('DATABASE_PASSWORD', 'strappassword'),
      ssl: env.bool('DATABASE_SSL', false),
    },
    pool: {
      min: 2,
      max: 10,
    },
  },
});
