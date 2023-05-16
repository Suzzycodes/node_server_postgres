const express = require('express');

const router = express.Router();

const cloudinary = require("cloudinary").v2;
require("dotenv").config();
const db = require("../services/dbConnect.js");

//const { pool } = require('./services/dbConnect')


// cloudinary configuration
cloudinary.config({
  cloud_name: process.env.CLOUD_NAME,
  api_key: process.env.API_KEY,
  api_secret: process.env.API_SECRET,
});

router.get("/", (request, response) => {
    response.json({ message: "Hey! This is your server response!" });
  });


const imageUpload = require("./controllers/imageUpload");

  // image upload API
router.post("/image-upload", imageUpload.imageUpload);
  

const persistImage = require("./controllers/persistImage.js")
    // persist image API
router.post("/persist-image", persistImage.persistImage);


const retrieveImage = require("./controllers/retrieveImage.js")
//retrieve image API
router.get("/retrieve-image/:cloudinary_id", retrieveImage.retrieveImage);


const deleteImage = require("./controllers/deleteImage.js")
// delete image
router.delete("/delete-image/:cloudinary_id", deleteImage.deleteImage);


const updateImage = require("./controllers/updateImage.js")
// update image
router.put("/update-image/:cloudinary_id", updateImage.updateImage);


module.exports = router;
