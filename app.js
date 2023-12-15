require("dotenv").config();
const express = require('express');
const app = express();
const cors = require('cors')
const router = require('./routes/userRoute');  
app.use(cors())
app.use(express.json());
app.use('/api', router);
app.use('/images', express.static('storage'))

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log('Server up and running on PORT:', port);
});
