module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'db2b79108c8a6c56908eeced3b8ce61c'),
  },
});
