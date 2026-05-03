const _ = require('lodash');
const axios = require('axios');
const express = require('express');

const app = express();
app.get('/', async (req, res) => {
  const data = await axios.get('https://example.com');
  res.json(_.pick(data, ['status']));
});
app.listen(3000);
