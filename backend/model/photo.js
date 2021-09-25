const mongoose = require("mongoose");

var photo = mongoose.model("photo", {
  area: { type: String },
  location: { type: String },
  creative: {
      data: Buffer,
      contentType: String
  },
  isApproved: { type: Boolean, default: false },
});

module.exports = { photo };
