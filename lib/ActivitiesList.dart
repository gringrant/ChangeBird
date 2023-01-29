import './Message.dart';
import './user.dart';

User ai = User("Bob");
Map<String, Message> map = {
'meijer': Message('Meijers around your area: ', ai),
  'theater': Message('Theaters around your area: ', ai),
  'europe': Message('Fun places to visit in Europe', ai)
};

