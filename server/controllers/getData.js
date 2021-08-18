const dbConnection = require("../database/config/connection");

const getDataPosts = (userId) => {
  return dbConnection.query(` SELECT * FROM users U INNER JOIN user_follow F on U.user_name = '${userId}' INNER JOIN posts P ON P.user_id = following_id or P.user_id = U.id;`);
};


const getDataUsers = (userId) => {
  return dbConnection.query(`Select * FROM users INNER JOIN  posts WHERE users.user_name = ${userId} and posts.user_id = users.id`);
};
  

module.exports =  {getDataPosts, getDataUsers};
