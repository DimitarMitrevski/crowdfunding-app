const mysql = require("mysql");
const express = require("express");
var cors = require("cors");
const app = express();
const { v4: uuidv4 } = require("uuid");
var bodyParser = require("body-parser");

app.use(cors());
app.use(bodyParser.json());
const PORT = 4000;
const db = mysql.createPool({
  host: "<MYSQL_HOST>",
  port: "<MYSQL_PORT>",
  user: "<MYSQL_USER>",
  password: "<MYSQL_PASSWORD>",
  database: "<NAME_OF_YOUR_DB>",
});

app.get("/v1/json/campaigns", (req, res) => {
  console.log("API is called!");
  var sql = `Select * From campaign`;
  db.query(sql, (err, result) => {
    if (err) {
      console.log("Reading from DB failed because", err.message);
      res.send("Failed!");
      return;
    }
    res.json(result);
  });
});

app.get("/v1/json/campaign/:id", (req, res) => {
  console.log("API is called!");
  var sql = `Select * From campaign Where id="${req.params.id}"`;
  db.query(sql, (err, result) => {
    if (err) {
      console.log("Reading from DB failed because", err.message);
      res.send("Failed!");
      return;
    }
    res.json(result);
  });
});

app.post("/new/donation", async (req, res) => {
  console.log("Donation is called!");
  const { nickname, campaign_id, amount } = req.body;
  const donation_id = uuidv4().replace(/-/g, "");
  const state = "valid";
  const result = await db.getConnection((err, connection) => {
    if (err) {
      return res.json("Error occurred while getting the connection");
    }
    return connection.beginTransaction((err) => {
      if (err) {
        connection.release();
        res.json("Error occurred while creating the transaction");
      }
      return connection.query(
        `INSERT INTO donation (donation_id, campaign_id, amount, nickname, state) VALUES ("${donation_id}","${campaign_id}",${amount},"${nickname}","${state}")`,
        (err) => {
          if (err) {
            return connection.rollback(() => {
              connection.release();
              res.json("Inserting to donation table failed" + err.message);
            });
          }
          console.log("Donation is executed!");
          return connection.query(
            `Update campaign Set collected = collected + "${amount}" Where id = "${campaign_id}"`,
            (err) => {
              if (err) {
                return connection.rollback(() => {
                  connection.release();
                  res.json("Inserting to campaign table failed" + err.message);
                });
              }
              console.log("Campaign is executed!");
              return connection.commit((err) => {
                if (err) {
                  return connection.rollback(() => {
                    connection.release();
                    res.json("Commit failed");
                  });
                }
                console.log("Commit is executed!");
                connection.release();
                res.json("Success");
              });
            }
          );
        }
      );
    });
  });
});

app.put("/MarkDonatorAsFraud/:nickname", (req, res) => {
  const nickname = req.params.nickname;
  let sql = `CALL markFraud(?)`;
  db.query(sql, nickname, (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    console.log(results[0]);
  });
  res.send("Success!");
});

app.listen(PORT, (error) => {
  if (!error)
    console.log(
      "Server is Successfully Running, and App is listening on port " + PORT
    );
  else console.log("Error occurred, server can't start", error);
});
