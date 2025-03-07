const express  = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  console.log("hello")
  res.status(200).send('Hello World!');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;
