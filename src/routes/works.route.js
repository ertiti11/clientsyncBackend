const Router = require("express");

const router = Router();

function getWorks(req, res) {
  res.send("Hello World!");
}

router.get("/user", getWorks);

module.exports = router;
