// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import "dart:math";

List listofquotes = [
  '"Waste no more time arguing\n what a good man should be. Be One." \n- Marcus Aurelius',
  '"When you have a dream, \nyou have got to grab it \nand never let go."\n- Carol Burnett',
  '"There is nothing impossible\n to they who will try." \n- Alexander the Great',
  '"Success is not final, \nfailure is not fatal: \nit is the courage to continue, \nthat counts..." \n- Winston Churchill',
  '"It is during our darkest moments\n that we must focus to see the light." \n- Aristotle',
  '"Believe you can \nand you are halfway there." \n- Theodore Roosevelt',
  '"Wake up determined, \ngo to bed satisfied." \n- Dwane "The Rock" Jhonson',
  '"Life is like riding a bicycle. \nTo keep your balance, you must keep moving." \n- Albert Einstein',
  '"It aint about how hard you hit.\n It is about how hard you can get hit \nand keep moving forward." \n- Rocky',
  '"If my mind can conceive it, \nif my heart can believe it, \nthen I can achieve it." \n- Muhammad Ali',
  '“We cannot solve problems with \nthe kind of thinking we employed \nwhen we came up with them.” \n- Albert Einstein',
  '“If you are working on something \nthat you really care about, \nyou do not have to be pushed. \nThe vision pulls you.” \n- Steve Jobs',
  '“Try not to become a man of success, \nbut rather become a man of value.” \n- Albert Einstein',
  '“Just one small positive thought \nin the morning can change \nyour whole day.” \n- Dalai Lama',
  '“Be tolerant with others \nand strict with yourself.” \n- Marcus Aurelius',
  '“If a man knows not which port he sails,\n no wind is favorable.” \n- Seneca',
  '"Man is not worried by real problems as\n much as by his imagined anxieties \nabout real problems." \n- Epictetus',
  '"Luck is what happenes when preparation\n meets the oportunity." \n- Seneca',
  '"He who suffers before its nessecary,\n suffers more than its nessecary." \n- Seneca',
  '"Work on the 3 M s: money, muscle, mindset..."\n- The Sigma',
];

final random = Random();
String random_quote = listofquotes[random.nextInt(listofquotes.length)];
