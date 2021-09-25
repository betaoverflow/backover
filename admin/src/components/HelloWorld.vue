<template>
  <div>
  <h1>Hey</h1>
      <li v-for="item in items" :key="item._id">
          <img :src="item.img.data" alt="">
      </li>
  </div>
</template>

<script>
import axios from 'axios'
export default {
    name: 'ImageGallary',
    data() {
        return {
            url: 'http://localhost:8080/',
            items: []

        }
    },
    async created() {
        await axios.get(this.url,{
          headers: {
   "Access-Control-Allow-Origin": "http://localhost:8080"
   }
        }).catch(err => console.log(err)).then((res) => {
             console.log(res)
        });
    }
}
</script>

<style>

</style>%  