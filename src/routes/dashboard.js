var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

// Recebendo os dados do html e direcionando para função getDashboardData do dashboardController.js
router.get("/getDashboardData", function (req, res) {
    dashboardController.getDashboardData(req, res);
});

module.exports = router;

