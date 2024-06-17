// Importing in nodejs
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
const Game = require("./models/Game");

// Create a server
const app = express();
const port = process.env.PORT || 3000;
const server = http.createServer(app);
const io = require('socket.io')(server);

// Backend to frontend connect (middleware)
app.use(express.json());

const DB = "mongodb+srv://abcdef:abcd1234@cluster0.gjiezoc.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

// Listening to socket.io events
io.on("connection", (socket) => {

    socket.on('create-game', async ({nickname}) => {
       try{
         let game= new Game();
         const sentence = await getSentence();
         game.words= sentence;
         let player={
            socketID : socket.id,
            nickname : nickname,
            isPartyLeader : true,


         };
         game.players.push(player);
         game= await game.save();

       } catch(e){
          console.log(e);
       }
    })
});

mongoose.connect(DB).then(() => {
    console.log("Login successful");
}).catch((e) => {
    console.log(e);
});

// Listen to server
server.listen(port, "0.0.0.0", () => {
    console.log(`Server running at port ${port}`);
});
