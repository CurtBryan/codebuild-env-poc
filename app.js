const express = require("express");
const app = express();

if (process.env.ENVIRONMENT === "LOCAL") {
    require("dotenv").config();
  }

app.get("/health", (req, res, send) => {
    const {RANDOM_STRING, ENVIRONMENT} = process.env;
    res.status(200).send({RANDOM_STRING, ENVIRONMENT})
})

const port = Number(process.env.API_PORT);

// * this is what function runs and stays open for API to work. Very, very important. lolz.
app.listen(port, () => {
  console.log(`🐧Phorms API running on port ${port}🐧`);
});