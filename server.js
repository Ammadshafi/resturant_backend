const express = require("express"),
  bodyParser = require("body-parser"),
  db = require("./config/db"),
  env = require("./config/env"),
  router = require("./router/index"),
  cors = require("cors"),
  path = require("path");

// morgan = require("morgan"),
app = express();

// app.use(morgan("combined"));
app.use(bodyParser.json());
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("./public"));

app.use((req, res, next) => {
  res.header("Content-Type", "application/json");
  next();
});

router(app, db);

const PORT = 8080;

db.sequelize
  .authenticate()
  .then(() => {
    app.listen(PORT, () => {
      console.log("Express listening on port:", PORT);
    });
  })
  .catch((error) => console.log(error));
