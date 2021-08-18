const express = require('express');
const {getDataPosts} = require('./getData');
const {getDataUsers} = require('./getData');
const router = express.Router();



router.get('/', (req, res) => {

    let userName = req.body.userName;
    getDataPosts(userName)
    .then(resp => res.json(resp.rows))
    .catch(err => console.log(err));
});


router.get('/', (req, res) => {

    let userName = req.body.userName;
    getDataUsers(userName)
    .then(resp => console.log(res.json(resp.rows)))
    .catch(err => console.log(err));
});
module.exports = router;
