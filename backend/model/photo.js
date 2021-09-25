const mongoose= require('mongoose');

const imageSchema= mongoose.Schema(
    {
        image:{
            type: String,
            required: true
        }
    }
);


module.exports=mongoose.model("Images",imageSchema)