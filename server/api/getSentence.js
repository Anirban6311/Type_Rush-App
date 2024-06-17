const axios = require("axios");

const getSentence = async () =>{
 /// aquiring the quote api
   const jokeData = await axios.get('https://api.quotable.io/random');

   return jokeData.data.content.split(' '); // split a given sentence into a array
};


module.exports=getSentence;