const express = require("express");
var router = express.Router();
var ObjectId = require("mongoose").Types.ObjectId;

var { photo } = require("../model/photo");

// test home route
router.get("/", (req, res, next) => {
  res.json({ teamName: "Betaoverflow" });
});

// get all photos
router.get("/gallery", (req, res, next) => {
  photo.find((err, response) => {
    if (!err) res.send(response);
    else
      console.log(
        "Error while retrieving all photos for gallery" +
          JSON.stringify(err, undefined, 2)
      );
  });
});

// post photos in gallery
router.post("/gallery", (req, res, next) => {
  var newPhoto = new photo({
    area: req.body.area,
    location: req.body.location,
    creative: req.body.creative,
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
