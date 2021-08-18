const fs = require("fs");
const  path = require("path");

const connection = require("./connection");

const sql = fs.readFileSync(path.join(__dirname, "build.sql")).toString();

connection
  .query(sql)
  .then(() => console.log("build created successfully!"))
  .catch(e => console.error('failed to build', e.stack));



