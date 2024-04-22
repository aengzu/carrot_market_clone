class ChatMessage{
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;


  ChatMessage({
  required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(sender: '하스타', profileImage: 'https://xsgames.co/randomusers/avatar.php?g=male', location: '텐동', sendDate: '1일전', message: '물건 구매 원합니다.'),
ChatMessage(sender: '이3민', profileImage: 'https://xsgames.co/randomusers/avatar.php?g=female', location: '우동', sendDate: '2일전', message: '물건 팔렸습니다~🥕'),
  ChatMessage(sender: '먼즤', profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/15.jpg', location: '우동', sendDate: '2일전', message: '거파할게요~.'),
  ChatMessage(sender: '정연희', profileImage: 'https://xsgames.co/randomusers/assets/avatars/female/14.jpg', location: '둔산동', sendDate: '3일전', message: '저 도착했습니다!'),
  ChatMessage(sender: '연서양', profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/16.jpg', location: '노동', sendDate: '3일전', message: '네고되나요?'),
  ChatMessage(sender: '에옹신', profileImage: 'https://xsgames.co/randomusers/assets/avatars/male/18.jpg', location: '운동', sendDate: '4일전', message: '5000원 ㄱㄱ'),
  ChatMessage(sender: 'doyeon', profileImage: 'https://xsgames.co/randomusers/assets/avatars/female/16.jpg', location: '운동', sendDate: '4일전', message: 'hi, can u speak english?'),
];