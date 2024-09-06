import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'iBestMusic',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'iBestMusic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.facebook),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hot Updates Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hot Updates',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Hot Updates List
                  buildHotUpdateItem(
                    title: 'Right Here - Brandy',
                    image: 'assets/brandy.jpg',
                    description: 'Right Here - Brandy, Right Here - Brandy, Brandy, Brandy',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildHotUpdateItem(
                    title: 'NFF, Danjuma Blame Falconets ..',
                    image: 'assets/falconets.jpg',
                    description: 'Right Here - Brandy, Right Here - Brandy, Brandy, Brandy',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildHotUpdateItem(
                    title: 'American Singer, Selena Gomez, T',
                    image: 'assets/selena_gomez.jpg',
                    description: 'Right Here - Brandy, Right Here - Brandy, Brandy, Brandy',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildHotUpdateItem(
                    title: 'Unconditionally - katy perry',
                    image: 'assets/katy_perry.jpg',
                    description: 'Right Here - Brandy, Right Here - Brandy, Brandy, Brandy',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                ],
              ),
            ),
            // Trending Tracks Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending Tracks',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Trending Tracks List
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTrendingTrackItem(
                        title: 'without me',
                        image: 'assets/halsey.jpg',
                        description: 'Halsey - without me\nHalsey - without me\nHalsey - w [...]',
                      ),
                      buildTrendingTrackItem(
                        title: 'Piano Man',
                        image: 'assets/piano_man.jpg',
                        description: 'Brandy Piano Man\nBrandy Piano Man\nBrandy Piano Man [...]',
                      ),
                      buildTrendingTrackItem(
                        title: 'Let Me Down Slowly',
                        image: 'assets/let_me_down_slowly.jpg',
                        description: 'Halsey - without me\nHalsey - without me\nHalsey - w [...]',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Music of the Week Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Music of the week',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Music of the Week Item
                  buildMusicOfTheWeekItem(
                    title: 'Spyro Ft. Davido – Billing',
                    image: 'assets/spyro.jpg',
                  ),
                ],
              ),
            ),
            // Promote Your Music Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promote Your Music',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Promote Your Music Button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('click here to upload and let us get your music to thousands of listeners worldwide'),
                  ),
                ],
              ),
            ),
            // Popular Updates Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Updates',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Popular Updates List
                  buildPopularUpdateItem(
                    title: 'Everything i wanted - billie eilish',
                    image: 'assets/billie_eilish.jpg',
                    description: 'Everything i wanted - billie eilish Everything\ni wanted - billie [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'Ex Arsenal Manager Arsene Wenger Co..',
                    image: 'assets/arsene_wenger.jpg',
                    description: 'Legendary Arsenal manager, Arsene Wenger has confirmed that he is [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'Why Do We Have Few Female Artistes..',
                    image: 'assets/female_artistes.jpg',
                    description: 'Are you one of the millions of Nigerians that are wondering why t [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'Faded - Alan Wailker',
                    image: 'assets/faded.jpg',
                    description: 'Faded - Alan Wailker Faded - Alan Wailker\nFaded - Alan Wailker Fa [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'Spyro Ft. Davido – Billing',
                    image: 'assets/spyro.jpg',
                    description: 'Multi-talented Nigerian singer-songwriter and entrepreneur, Spyro [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'This Is What Tiwa Savage Had In Min ..',
                    image: 'assets/tiwa_savage.jpg',
                    description: 'Tiwa Savage is a Nigerian singer. Born in Isale Eko, relocated to [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                  SizedBox(height: 16.0),
                  buildPopularUpdateItem(
                    title: 'Kunle Afolayan\'s Film "Anikulap..',
                    image: 'assets/kunle_afolayan.jpg',
                    description: 'Following the success of "Swallow" and "A Naija Christmas, [..] ',
                    author: 'micheal',
                    date: '2022-10-13',
                  ),
                ],
              ),
            ),
            // Footer Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'iBestMusic',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Your most favoured music streaming and promotion platform, we are one of nigeria\'s most entertaining and informative web blog, visited by majority of nigeria internet users, daily, and still counting...',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Footer Links
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Terms of service',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Privacy',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  // Subscribe to Newsletter Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subscribe to Newsletter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      // Newsletter Input Field
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      // Subscribe Button
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Subscribe'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHotUpdateItem({
    required String title,
    required String image,
    required String description,
    required String author,
    required String date,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        // Title, Description, Author, Date
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 4.0),
                  Text(author),
                  SizedBox(width: 16.0),
                  Icon(Icons.access_time),
                  SizedBox(width: 4.0),
                  Text(date),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTrendingTrackItem({
    required String title,
    required String image,
    required String description,
  }) {
    return Container(
      width: 120,
      child: Column(
        children: [
          // Image
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          // Title
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          // Description
          Text(
            description,
            style: TextStyle(
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildMusicOfTheWeekItem({
    required String title,
    required String image,
  }) {
    return Row(
      children: [
        // Image
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        // Title
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildPopularUpdateItem({
    required String title,
    required String image,
    required String description,
    required String author,
    required String date,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        // Title, Description, Author, Date
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 4.0),
                  Text(author),
                  SizedBox(width: 16.0),
                  Icon(Icons.access_time),
                  SizedBox(width: 4.0),
                  Text(date),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}