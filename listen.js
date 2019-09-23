const app = require('./app');

const PORT = process.env.NODE_ENV.PORT || 9090;

app.listen(PORT);
