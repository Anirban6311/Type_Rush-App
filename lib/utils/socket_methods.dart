import 'package:type_rush/utils/socket_client.dart';

class SocketMethods{
  //getting the instance of the socket client

  final _socketClient = SocketClient.instance.socket!;
  createGame(String nickname)
  {
     if(nickname.isNotEmpty){
       _socketClient.emit('create-game', {
           'nickname' : nickname
       });
     }
  }

}