const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hola Mundo desde Docker!');
});

app.listen(port, () => {
  console.log(`La aplicación está corriendo en http://localhost:${port}`);
});
