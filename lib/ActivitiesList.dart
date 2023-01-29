import './Message.dart';
import './user.dart';

User ai = User("Bob");
Map<String, Message> map = {
'groceries': Message('Grocery stores around your area: Meijer, Whole Foods, Walmart', ai),
  'theater': Message('Theaters around your area: AMC, Celebration Cinema Lansing, NCG Cinema', ai),
  'europe': Message('Fun places to visit in Europe: Paris, France, Berlin, Germany, Mdrid, Spain', ai)
};

