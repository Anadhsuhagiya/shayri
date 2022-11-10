import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Module
{

  List photo = [
    'category_photos/congrats.jpg',
    'category_photos/dosti.webp',
    'category_photos/god.jpg',
    'category_photos/life.jpg',
    'category_photos/love.jpg',
    'category_photos/politics.webp',
    'category_photos/sad.jpg',
    'category_photos/birth.webp',
    'category_photos/inspire.jpg',
    'category_photos/yaad.png'
  ];

  List<String> category = [
    'Wishing',
    'Friends',
    'God',
    'Life',
    'Love',
    'Politics',
    'Sad',
    'Birthday',
    'Inspiration',
    'Missing'
  ];

  List id = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  static List<String> congrats = [
    '''Griha pravesh ki dher saare shub kaamnayein
Humara ashirwaad hamesha tumhare saath hai
Naye ghar me sukhi raho
Best wishes for you''',
    '''The windows of your house
Will bring in breeze carrying the sweet smell of dew.
Streaming sunshine will bring in hope;
Congratulations on the new house to you''',
    '''Kaamyaabi milti hai unhe jo apni lagan ke diwane hote hain,
Safal hote hain wahi jo safalta ke haqdar hote hain,
Kehne ko to badta hai har koi manzil ki or,
Lekin paate hain manzil wahi, jo manzil ke asli haqdar hote hain.
Huge congratulations on your success!''',
    '''Aapki kaamyabi ka hum bhi jashn manayenge,
Aapke har sapno ko hum bhi dil se lagayenge,
Aap chahe kuch bhi kahein,
Hum to aaz raat bhar jhoomenge, gaayenge.
Hardik Badhai ho aapki kamyaabi par!
''',
    '''Mehnat ke baad hi safalta milti hai,
Safalta Ke baad hi khushiyan milti hain,
Mehnat to karta hai har koi,
Par jo kathin mehnat kare, asli khushiyan use hi milti hain.
Hearty Congratulations to you.''',
    '''Badhai ho Badhai ho bahut sara badhai ho,
Aapne ye kaam kar dikhaya,
Aapne saabit kar diya ki
aap ki mehnat raang layi hain.''',
    '''Aapke saath aaj hame bhi khushiyan manane ko dil chahta hai,
Aapki khushiyon ke jashn mein aaj doob jaane ko dil chahta hai.
Jaane kya baat hai aaj ke din mein,
Aapko gale se lagakar badhai dene ko dil chahta hai.''',
    '''Your hard work has really paid off.
We are happy to promote you to next level.
Congratulations!''',
    '''You will climb
the ladder of success
pretty soon with your stellar performance.''',
    '''Some dream,
few try,
but very few like you
make it happen.''',
  ];

  static List<String> Dosti = [
    '''Manzilon Se Apni Dar Na Jana,
Raaste Ki Preshaniyon Se Toot Na Jana,

Jab Bhi Jarurat Ho Zindagi Mein Kisi Apne Ki
Hum Aapke Apne Hain Ye Bhool Na Jana…''',
    ''' Teri Dosti Ne Bahut Kuch Sikha Diya,
Meri Khamosh Duniya Ko Jaise Hansa Diya,
Karjdaar Hun Main Us Khuda Ka Jisne,
Mujhe Tere Jaise Dost Se Mila Diya…''',
    '''Kitni Jaldi Yeh Mulakat Gujar Jaati Hai,
Pyas Bujhti Nahi Ke Barsaat Gujar Jaati Hai,
Aapki Yaadon Se Kah Do Ke Yun Na Aaya Karen,
Neend Aati Nahi Aur Raat Gujar Jaati Hai…''',
    '''Maangi Thi Mot To Zindgi Mil Gayi,
Andhere me bhi mujhe roshni mil gayi,
Poocha khuda se naseeb me kiya hai mere,
To sabse haseen tohfa Aapki Friendship Mil Gayi''',
    '''College Ki Khali Seatein
Ghadi Ghadi Teacher Ki Daante
Bunk Mar Ke Canteen Jana
Table Baja Ke Gaaney Gana
Aaj Phir Lag Gayi Yaado Ki Jhadi
Bina Dosto Ke Kya Jindgi''',
    '''Teacher Ki Wo Hamse Rukhai
Hum Jo Kartey They Padahai Se Bewafai
Sir Ka Har Baat Pe Samjhana
Ab Sararat Ki To Dobara Class Me Baat Aana''',
    '''Wo Chemistry Ki Classey
Aur Query Me Gilli Gilli Aankhey
Sir Ka Batana “Padh Loo Warna
Chemistry Ho Jayegi Bewafa
Subah Rati Shyam Ko Sapa”
Sir Ki Baat Pe Sar Hilana
Phir Wapas Ussi Attitude Me Aa Jaana''',
    '''તExam Me Ek Dusrey Ka Muh Takna
Jo Aata Nahi Uskey Liye Idhar Udar Jhankna
Aur Musibat Ka Aana
Dosto Ke Roll No. Ka Alag Alag Ho Jana
Wo Mann Hi Mann God Ko Pukarna
Ab Tujhey Hi Hai Iss Musibat Se Par Utarna''',
    '''Wo Aakhir Me Farewell Ka Aana
Aur Phir Dosto Ka Alag Ho Jana
Ek Dusrey Ke Galey Lag Kar Rona
Aur Ek Dusrey Se Kehna “You are my beloved Friends OK”
Alag Ho Rahey Ho Par Mujhey Mat Bhulana
Aaj Phir Lag Gayi Yaado Ki Jhadi
Bina Dosto Ke Kya Jindgi''',
    '''Main Dosti Ka Farz Nibhana Chahta Hoon
Rishte Ki Gehrai Aazmana Chahta Hoon
Jo Barish Ki Boondo Mein Mere Aansu Pehchan Le
Ek Friend Aisa Banana Chahta Hoon''',
  ];

  static List<String> God = [
    '''Banaane waale ne bhi tujhe, kisi karan se banaaya hoga,

Chhoda hoga jab jamin par tujhe,

Uske sine mein bhi dard to aaya hoga,,''',
    '''Bhagwaan ka diya kabhi alp nahi hota,

Jo toot jaaye vo sankalp nahi hota,

Haar ko jeet se door hi rakhanaa,

Kyonki jeet ka koi vikalp nahi hota,,''',
    '''Mere yaar bina koi mahfil na sajadi hai,

Jaise chand bina raat adhuri lagadi hai,

e-khuda sab ko esa yaar dena,

jiske aane se jindagi roshan si lagadi hai,,
''',
    '''Itni pita hoon ki madahosh rahta hoon

Sab kuchh samjhata hoon par khamosh rahta hoon,

Jo log karte hain mujhe giraane ki koshish,

Mai aksar unhi ke shaath rahta hoon,,''',
    '''Jindagi hasin hai jindagi se pyaar karo,

Ho raat to subah ka intjaar karo,

Vo pal bhi aayega jis pal ka intjaar hai aapko,

Bas rab par bharosa aur wakt pe etbaar karo,,''',
    '''Kafan ke saath hi riste bhi dafan ho jaate hain,

Wakt ke panno par karmo ka lekha hai,

Kabhi ham uske baap to kabhi vo bhi hamaare baap ho jaate hain,

Kabhi ham hindu to kabhi ham bhi musalmaan ho jaate hain,,''',
    '''Sara jahan hai jiski sharan mein,

Naman hai us shiv ke charno mein,

Bane us shiv ke charno ki dhool,

Aao milkar chadhaye ham shredha ke fool,,''',
    '''Shiv ki shakti shiv ki bhagti,

Khushi ki bahaar mile,

Shivraatri ke paawan avsar par,

Aapko jindagi ki ek nayi achchhi sharuaat mile,,''',
    '''Sabse bada tera darbaar hai, tu hi sab ka paalan haar hai,

Sajaa de ya maafi mahaadev,

Tu hi hamaari sarkaar hai,,''',
    '''Teri dosti ne bahut kuchh sikha diya,

Meri khamosh duniya ko jaise hasaa diya,

Krjdaar hoon mai khuda ka,

Jis ne mujhe aap jaise dost se mila diya,,'''
  ];

  static List<String> Life = [
    '''If you want to live a happy life
Tie it to a goal,
not to people Or things''',
    '''Having someone you can call
Crying then end it laughing
Is such a blessing''',
    '''Remember that just because
You hit bottom doesn’t mean
You have to stay there''',
    '''I don’t Love Studying
I hate Studying
I like learning
Learning is beautiful''',
    '''Great Achievers are Driven
Not so much by the pursuit
Of success, But by the Fear of Failures''',
    '''It is your road and you’re alone
Others may walk it with you But
No one can walk for you''',
    '''Every man needs a good woman in his life
Even if she is just a friend
A good woman adds value
To a man’s life,
no matter what capacity she serves in''',
    '''Sometimes it’s not about 
Who has more talent 
It’s about Who’s hungrier''',
    '''Count your blessings
Not your problems''',
    '''Avoid Me once
I will never
Disturb Again'''
  ];

  static List<String> Love = [
    '''na koi kisi se door hota hai
na koi kisi ke krib hota hai
wo khud he chal ke aata hai
jo jiska nasib hota hai''',
    '''Kabhi udaas ho jayo to btana mujhe
fir se apna dil denge tumhe khelne k liye''',
    '''Tera Saath hai Toh mujhe kya kami hai
Teri har muskan se mili mujhe kushi hai
Muskuraate Rehna isi Tarah humesha
Kyonki teri is muskan mein meri jaan basi hai''',
    '''kon kaheta hai taj mahel banane ke lie dolat nahi milti.
taj mahel banane ke lie dolat to milti he magar mohbatt karne ke lie mumtaj nahi milti.''',
    '''Nazar Chahti Hai Deedar Karna,
Dil Chahta Hai Pyaar Karna,
Kya Bataoon Is Dil Ka Aalam,
Nasib Me Likha Hai Intezar Karna…''',
    '''Jab bhi Dekhta hu Tumhe
Lagta hai ye Din Naya hai
Nigahein Tumko Dekhna Chahti hai
Mere Dilko ye kya hua hai''',
    '''Mile to hazaron log the Zindagi me ,
Par wo sabse alag tha jo kismat me nahi tha...''',
    '''તNa Ruthna Humse Hum Mar Jayenge,
Dil Ki Duniya Tabaah Kr Jayenge,
Pyar Kiya He Humne Koi Mazak Nahi
Dil Ki Dhadkan Tere Naam Kr Jayenge''',
    '''Soch milni chahiye
dil toh apne aap hi mil jaate hai.!''',
    '''Tu Shaq Na Kar Mere Jazbato Pe,
Tere Sath Hi Zindagi Meri Khubsurat Hai,
Jitni Ehmiyat Hai Pani Ki Marte Insan K Liye,
Bus Utni Hi Muje Teri Zarurat Hai...'''
  ];

  static List<String> Politics = [
    '''samundaron ke safar mein hawa chalaata hai
jahaaz khud nahin chaltey, khuda chalata hai
''',
    '''tujhe khabar nahi mele mein ghumne wale
teri dukaan koi doosra chalata hai''',
    '''yeh log paon nahi zehan se apahij hain
udhar chalengey jidhar rehnuma chalata hai''',
    '''tufano se ankh milao, sailaabon par waar karo
phoolon ki dukaane kholo, khushbu ka vyapaar karo
ishq khata hai to yeh khata ek baar nahin sau bar karo''',
    '''aaj hum dono ko fursat hai chalo ishq karein
ishq dono ki zarurat hai chalo ishq karein
aap hindu main musalman ye isaayi wo sikh
yaar choro yeh siasat hai chalo ishq karien''',
    '''dilon mein aag labon par gulab rakhte hain
sab apney chehron pe dohri naqab rakhtey hain

humein chirag samajh kar bhula na paaogey
hum apnay ghar mein kayi aftab rakhte hain

yeh maikada hai wo masjid hai wo hai butkhana
kahin bhi jao farishtey hisaab rakhtey hain
''',
    '''Har aadmi mein hote hai das bees aadmi,

jisko bhi dekhna ho,kaii baar dekhna''',
    '''jinko hum chuntey hain wahi humko dhunntey hain

biwi ho ya neta donon kahan sunte hain''',
    '''sarhadon par bohot tanaav hai kya
kuch pata karo - chunaav hai kya ''',
    '''नkaisi hai ye zimmedaari saeen ki
janta jaan gayi makkaaree saeen ki
desh ko lootne vaale loot ke le jaen
maan gaye ham chaukhidari saeen ki'''
  ];

  static List<String> sad = [
    '''मMore You Love People,
More they will hurt you''',
    '''तI am so mature when
I am with others
I am so childish When
I am with you''',
    '''The lesser you care 
The Happier you’ll be''',
    '''Maybe I’m too late to be your first
But, right now, I’m preparing
myself to be your last''',
    '''Things that are bad
Always taste nice
Remember that''',
    '''Don’t expect people to 
Understand your hustle 
When God didn’t give 
Them your vision''',
    '''हAll girls are the same
Then Shut Up &
Date one''',
    '''I love rumors
I always find
Out amazing Things
About Myself
I never knew''',
    '''I don’t hurt people
With a lie
I just fu*k them
With a truth''',
    '''When you truly
Love someone,
Their name itself
Becomes an emotion'''
  ];

  static List<String> Birth = [
    '''“You can do it for another year.
Stay healthy, stay well.
I wish this again and again.
~ Happy Birthday ❦ ”''',
    '''“Today is your birthday
Happy happy day to you.
Always have your mind,
Colorful with such joy.
~ Happy Birthday ❦ ”''',
    '''“Happy birthday,
Love and affection,
Will reach you,
I just hope this.
~ Happy Birthday ❦ ”''',
    '''“Year after year comes back
Happy birthday
Laughter is a colorful touch of happiness
Gift day. ”''',
    '''“Joy rejoices
Like your every day,
Greetings to you today
~ Happy Birthday ❦ ”''',
    '''“A little while at this bar,
Sleep deprivation,
Look at the match,
One more year is over.
~ Happy Birthday ❦ ”''',
    '''“At the end of the night the sun smiles,
Fill with light.
Come back again and again
Happy birthday to you. ”''',
    '''“The full moon for the moon,
Fountains for mountains,
Estuary for rivers,
And left for you
Lots of birthdays
Many good wishes.
~ Happy Birthday ❦ ”''',
    '''“Today is your birthday,
Happy birthday,
Always have your mind
Colorful with such joy.
~ Happy Birthday ❦ ”''',
    '''“Day goes by and night comes
Months go by, years come by,
Everyone lives in the hope of good luck,
I’m just yours
Hoping for a birthday!
~ Happy Birthday ❦ ”'''
  ];

  static List<String> Prerana = [
    '''Jab Baris Hoti he tab Sare Paksi Chhipne ke 
liye jagahe dundhte he, par Baaj hi aesa ek 
Paksi he jo ki baris se bachne liye badlo ke 
uper se Ud kar jata He, Ise kahte he Attitude!''',
    '''Aapka Bhavisya Hamesha, Aapne aaj kya kiya 
us par Nirdharin Hota He!''',
    '''Nichhe girna bhi bahut jaruri he, 
vah insann ko Apni Asli Okat Dikhata He!''',
    '''Bas chhota sa fark he tere or mere isk me, 
tum sari rat masuk ke liye jagte ho, 
or muse meri Matrubhumi ke Halat Sone Nahi Dete!''',
    '''App apna bhavisya nahi badal sakte, 
par aap apni aadte to badal sakte he, 
or badli hue aadte aapka Bhavisya Badal Degi!''',
    '''Never stop trying Never stop believing 
Never give up Your day will come.''',
    '''Once you learn how to create your own,
Happiness, no one can take it from you.''',
    '''Our prime purpose in this life is to help others,
And if you can't help them, at least don't hurt them.''',
    '''The journey is yours,
Enjoy each and every step.''',
    '''Success Demands For Sacrifices. 
Sacrifice Of Sleep,
Sacrifice Of Entertainment, 
Sacrifice Of Comfort Zone.'''
  ];

  static List<String> Yaad = [
    '''Apko Chahne Wale Kam Na HongeWaqt Ke 
Sath Shayd Hum Na HongeAp Kisi Ko Kitna B Pyar 
Kar LenaPar Yado Ke Asli Haqdar Sirf Hum Hi Honge''',
    '''Lakh chahu ki tujhe yaad na karu
Magar irada apni jagah bebasi apni jagah''',
    '''Suraj Paas Ho Na Ho Roshni Aas Paas Rehti Hai,
Dost Paas Ho Na Ho, Dosti Aaspaas Rehti Hai,
Waise Hi Aap Paas Ho Na Ho AapkiYaadein Hamesha Paas Rehti Ha''',
    '''itne waqt baad mile ho kin socho me gum ho
din k ujale ne mujse pucha har waqt kiski yaad me khoye ho''',
    '''Zinda Hu Main Mgar, Jeene Ki Koshish Kr Rha Hu Main,
Is Jeene Ki Koshish Me, Bar Bar Mar Rha Hu Main.
Jee To Skta Hu Mgar Bhool Kr Tumko.Mar Rha Hu Bar Bar, 
Kyunki Tumhe Yaad Kr Rha Hu Main''',
    '''Raat Bhar Neend Hi Naa Aaye TouAshq Aankhon Main 
Chhal Chhalaaye TouKyaa Hua Hai Bataaiye 
KaiseYaad Koi Bahot Hi Aaye Tou''',
    '''दSaari khidkiyan darvaje band kar leta hoon
fir bhi na jane kahan se aa jati hai tumhari yaaden''',
    '''Yaado ko yaad se churaya aap ne
door hote hue bhi apna bnaya aap ne''',
    '''Kuch Bite huye lamho se mulakat hui
kuch toote huye sapno se baat hui
yaad jo karne baithe un tamam yaadon ko
to aapki hi yaadon se shuruaat hui''',
    '''Tum banke dost aise aaye zindagi mein
ki hum ye zamana hi bhool gaye'''
  ];

  static List color=[
    Colors.white,
    Colors.green,
    Colors.black,
    Colors.amberAccent,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.lightGreen,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.greenAccent,
    Colors.lightGreenAccent,
    Colors.lime,
    Colors.tealAccent,
    Colors.purple,
    Colors.red,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.brown,
    Color(0xffFF9A8B),
    Color(0xffE0C3FC),
    Color(0xff2BD2FF),
    Color(0xffF7CE68),
    Color(0xff9599E2),
    Color(0xff85FFBD)
  ];

  static List gradient=[
    [Color(0xff4158D0),Color(0xffC850C0)],
    [Color(0xff0093E9),Color(0xff80D0C7)],
    [Color(0xff8EC5FC),Color(0xffE0C3FC)],
    [Color(0xffD9AFB0),Color(0xff97D9E1)],
    [Color(0xff00DBDE),Color(0xffEE74E1)],
    [Color(0xffFA8BFF),Color(0xff2BD2FF)],
    [Color(0xffFF9A8B),Color(0xffFF6A88)],
    [Color(0xff85FFBD),Color(0xffFFFB7D)],
    [Color(0xffFBAB7E),Color(0xffF7CE68)],
    [Color(0xffEC8B8B),Color(0xff9599E2)],
    [Color(0xff4158D0),Color(0xffC850C0)],
    [Color(0xff0093E9),Color(0xff80D0C7)],
    [Color(0xff8EC5FC),Color(0xffE0C3FC)],
    [Color(0xffD9AFB0),Color(0xff97D9E1)],
    [Color(0xff00DBDE),Color(0xffEE74E1)],
    [Color(0xffFA8BFF),Color(0xff2BD2FF)],
    [Color(0xffFF9A8B),Color(0xffFF6A88)],
    [Color(0xff85FFBD),Color(0xffFFFB7D)],
    [Color(0xffFBAB7E),Color(0xffF7CE68)],
    [Color(0xffEC8B8B),Color(0xff9599E2)],
    [Color(0xff4158D0),Color(0xffC850C0)],
    [Color(0xff0093E9),Color(0xff80D0C7)],
    [Color(0xff8EC5FC),Color(0xffE0C3FC)],
    [Color(0xffD9AFB0),Color(0xff97D9E1)],
    [Color(0xff00DBDE),Color(0xffEE74E1)],
    [Color(0xffFA8BFF),Color(0xff2BD2FF)],
    [Color(0xffFF9A8B),Color(0xffFF6A88)],
    [Color(0xff85FFBD),Color(0xffFFFB7D)],
    [Color(0xffFBAB7E),Color(0xffF7CE68)],
    [Color(0xffEC8B8B),Color(0xff9599E2)],
  ];

  static List font = [
    GoogleFonts.poppins().fontFamily,
    GoogleFonts.abrilFatface().fontFamily,
    GoogleFonts.shadowsIntoLight().fontFamily,
    GoogleFonts.permanentMarker().fontFamily,
    GoogleFonts.satisfy().fontFamily,
    GoogleFonts.josefinSans().fontFamily,
    GoogleFonts.dancingScript().fontFamily,
    GoogleFonts.cedarvilleCursive().fontFamily,
    GoogleFonts.lobster().fontFamily,
    GoogleFonts.pacifico().fontFamily,
  ];

  static List Emoji = [
    "😀 😃 😄 😁 😆 😅 😂 🤣",
    "🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 ",
    "🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥬 ",
    "🍡 🍧 🍨 🍦 🥧 🧁 🍰 🎂",
    "⚽ 🏀 🏈 ⚾️ 🥎 🎾 🏐 🏉",
    "❤️ 🧡 💛 💚 💙 💜 🖤 🤍",
    "✢ ✣ ✤ ✥ ✦ ✧ ★ ☆",
    "😀 😃 😄 😁 😆 😅 😂 🤣",
    "🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 ",
    "🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥬 ",
    "🍡 🍧 🍨 🍦 🥧 🧁 🍰 🎂",
    "⚽ 🏀 🏈 ⚾️ 🥎 🎾 🏐 🏉",
    "❤️ 🧡 💛 💚 💙 💜 🖤 🤍",
    "✢ ✣ ✤ ✥ ✦ ✧ ★ ☆",
    "😀 😃 😄 😁 😆 😅 😂 🤣",
    "🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 ",
    "🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥬 ",
    "🍡 🍧 🍨 🍦 🥧 🧁 🍰 🎂",
    "⚽ 🏀 🏈 ⚾️ 🥎 🎾 🏐 🏉",
    "❤️ 🧡 💛 💚 💙 💜 🖤 🤍",
    "✢ ✣ ✤ ✥ ✦ ✧ ★ ☆",
  ];
}