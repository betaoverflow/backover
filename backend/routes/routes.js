const express = require("express");
const multer=require('multer')
var router = express.Router();
var ObjectId = require("mongoose").Types.ObjectId;
 
var fs = require('fs');

var path = require('path')

var { photo } = require("../model/photo");

// test home route
router.get("/", (req, res, next) => {
  res.json({ teamName: "Betaoverflow" });
});

// get all photos
router.get("/gallery", (req, res, next) => {
  photo.find((err, response) => {
    if (!err) {
      res.send(response);
    }
    else
      console.log(
        "Error while retrieving all photos for gallery" +
          JSON.stringify(err, undefined, 2)
      );
  });
});

router.use('/uploads', express.static(__dirname +'/uploads'));
var storage = multer.diskStorage({
   destination: function (req, file, cb) {
     cb(null, 'uploads')
   },
   filename: function (req, file, cb) {
     cb(null, new Date().toISOString()+file.originalname)
   }
 })
  
 var upload = multer({ storage: storage })

 router.post('/upload', upload.single('myFile'), async(req, res, next) => {
  console.log("upload route hit"); 
  const file = req.file
   if (!file) {
     const error = new Error('Please upload a file')
     error.httpStatusCode = 400
     return next("hey error")
   }
     
     
     const imagepost= new model({
       image: file.path
     })
     const savedimage= await imagepost.save()
     res.json(savedimage)
   
 })

 router.get('/image',async(req, res)=>{
  const image = await photo.find()
  res.json(image)
  
 })

// post photos in gallery
router.post("/gallery", (req, res, next) => {
  var newPhoto = new photo({
    area: req.body.area,
    location: req.body.location,
    creative: {data: 'data:image/png;base64,' + (fs.readFileSync(path.join(__dirname + '/uploads/' + req.body.filename))).toString("base64"),
    contentType: 'image/jpg'}
  });
  newPhoto.save((err, response) => {
    if (!err) res.send(response);
    else
      console.log(
        "Error while creating new photo: " + JSON.stringify(err, undefined, 2)
      );
  });
});

// update photo
router.put("/gallery/:id", (req, res, next) => {
  if (!ObjectId.isValid(req.params.id))
    return res.status(400).send("No photo with given Id: " + res.params.id);

  var updatePhoto = {
    area: req.body.area,
    location: req.body.location,
    creative: req.body.creative,
    isApproved: req.body.isApproved,
  };

  photo.findByIdAndUpdate(
    req.params.id,
    { $set: updatePhoto },
    (err, response) => {
      if (!err) res.send(response);
      else
        console.log(
          "Error while updating the photo: " + JSON.stringify(err, undefined, 2)
        );
    }
  );
});

// delete photo
router.delete("/gallery/:id", (req, res, next) => {
  if (!ObjectId.isValid(req.params.id))
    return res.status(400).send("No photo with given Id: " + res.params.id);
  photo.findByIdAndRemove(req.params.id, (err, response) => {
    if (!err) res.send(response);
    else
      console.log(
        "Error while deleting the photo with id: " +
          JSON.stringify(err, undefined, 2)
      );
  });
});

module.exports = router;
