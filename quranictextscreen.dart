import 'package:flutter/material.dart';

import 'package:quran/quran.dart' as quran;

import 'bookmarkingscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuranicTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 148, 180, 5),
          title: Text(
            'Al-Quran\nQuranic Text Screen',
            //textAlign: TextAlign.center,
          ),
            actions: [
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookmarkScreen()),
                );
              },
            ),],
          leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back), // Back button icon
              onPressed: () {
                Navigator.pop(context); // Navigate to the previous screen
              },
            ),
          ],
         ),
        ),
        body: ListView.builder(
          itemCount:
              quran.totalSurahCount, 
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Surah(index ),
                    ));
              },
              
              title: Text(
                quran.getSurahNameArabic(index + 1),
                style: GoogleFonts.amiri(),

                textAlign: TextAlign.right,
              ),
              subtitle: Text(quran.getSurahNameEnglish(index + 1)),
              
              leading: CircleAvatar(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: const Color.fromARGB(255, 148, 180, 5),
              ),
              trailing: Text('${quran.getVerseCount(index +1)}'),
            );
          },
        ),
      ),
    );
  }
}
         

/*class Surah extends StatefulWidget {
   int indexSurah ;

  Surah(this.indexSurah , {Key? key}) : super(key: key);

  @override
  _SurahState createState() => _SurahState();
}*/
class Surah extends StatefulWidget {
  int indexsurah;
  Surah(this.indexsurah, {super.key});
  State<Surah> createState() => _SurahState();
}
class _SurahState extends State<Surah> {
  List<int> bookmarkedVerses = [];

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  _loadBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      
      bookmarkedVerses =
          (prefs.getStringList('bookmarks_${widget.indexsurah+1}') ?? [])
              .map((e) => int.parse(e))
              .toList();
    });
  }

  _toggleBookmark(int verseIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (bookmarkedVerses.contains(verseIndex +1)) {
        bookmarkedVerses.remove(verseIndex +1);
      } else {
        bookmarkedVerses.add(verseIndex +1);
      }
    });
    await prefs.setStringList(
      'bookmarks_${widget.indexsurah+1}',
      bookmarkedVerses.map((e) => e.toString()).toList(),
    );
  }

 String getVerseWithEndSymbol(int surahNumber, int verseNumber,
      {bool arabicNumeral = true}) {
    String verse = quran.getVerse(surahNumber, verseNumber);
    String verseEndSymbol =
        quran.getVerseEndSymbol(verseNumber, arabicNumeral: arabicNumeral);
    return '$verse $verseEndSymbol'; // Combines the verse text with the end symbol.
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 148, 180, 5),
            
              
            
              title: Text(
                quran.getSurahNameArabic(widget.indexsurah + 1),
                style: GoogleFonts.amiri(),

               
                textAlign: TextAlign.right,
              ),
        
      ),
      body: ListView.builder(
           itemCount: quran.getVerseCount(widget.indexsurah + 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      getVerseWithEndSymbol(widget.indexsurah + 1, index + 1),
                      textAlign: TextAlign.right,
               
      
      
              
            ),
            trailing: IconButton(
              icon: Icon(
                bookmarkedVerses.contains(index + 1)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
              ),
              onPressed: () {
                _toggleBookmark(index );
              },
            ),
          );
        },
      ),
    );
  }
}

/*
class QuranicTextScreen extends StatefulWidget {
  const QuranicTextScreen({super.key});

  @override
  State<QuranicTextScreen> createState() => _AudioRecitationScreenState();
}

class _AudioRecitationScreenState extends State<QuranicTextScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 148, 180, 5),
          title: Text(
            'Al-Quran\nAudio Recitation',
            //textAlign: TextAlign.center,
          ),
           
          leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back), // Back button icon
              onPressed: () {
                Navigator.pop(context); // Navigate to the previous screen
              },
            ),
          ],
         ),
        ),
        body: ListView.builder(
          itemCount:
              quran.totalSurahCount, 
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Surah(index),
                    ));
              },
              
              title: Text(
                quran.getSurahNameArabic(index + 1),
                style: GoogleFonts.amiri(),

                textAlign: TextAlign.right,
              ),
              subtitle: Text(quran.getSurahNameEnglish(index + 1)),
              
              leading: CircleAvatar(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: const Color.fromARGB(255, 148, 180, 5),
              ),
              trailing: Text('${quran.getVerseCount(index + 1)}'),
            );
          },
        ),
      ),
    );
  }
}

class Surah extends StatefulWidget {
  int indexsurah;
  Surah(this.indexsurah, {super.key});
  State<Surah> createState() => _SurahState();
}

class _SurahState extends State<Surah> {
  @override



  String getVerseWithEndSymbol(int surahNumber, int verseNumber,
      {bool arabicNumeral = true}) {
    String verse = quran.getVerse(surahNumber, verseNumber);
    String verseEndSymbol =
        quran.getVerseEndSymbol(verseNumber, arabicNumeral: arabicNumeral);
    return '$verse $verseEndSymbol'; // Combines the verse text with the end symbol.
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       
      home: Scaffold(
         appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 148, 180, 5),
          title: Text(
            'Al-Quran\n Surah Recitation'
           
                
                ,
                style: GoogleFonts.amiri(),

         
              ),
            //textAlign: TextAlign.center,
          
           leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back), // Back button icon
              onPressed: () {
                Navigator.pop(context); // Navigate to the previous screen
              },
            ),
          ],
         ),
         ),
          body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: quran.getVerseCount(widget.indexsurah + 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      getVerseWithEndSymbol(widget.indexsurah + 1, index + 1),
                      textAlign: TextAlign.right,
                      // quran.getVerse(
                      //   widget.indexsurah + 1,
                      //   index + 1,
                      //   verseEndSymbol: true,
                      // ),
                      //                     textAlign: TextAlign.right,
                      //  Use getVerseWithEndSymbol here to display the verse along with the end symbol
                      //                   getVerseWithEndSymbol(widget.indexsurah + 1, index + 1),
                      //                   textAlign: TextAlign.right,
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        currentVerseIndex == index + 1
                            ? Icons.pause_circle_filled_rounded
                            : Icons.play_circle_fill_outlined,
                        color: Colors.brown[900],
                      ),
                      onPressed: () {
                        if (currentVerseIndex == index + 1 && isplaying) {
                          stopPlayback();
                        } else {
                          playVerse(widget.indexsurah + 1, index + 1);
                        }
                      },
                    ),
                  );
                }),
          ),
          Card(
              elevation: 6,
              shadowColor: Colors.brown[900],
              child: Center(
                child: IconButton(
                    icon: Icon(
                      playpauseButton,
                      color: Colors.brown[900],
                    ),
                    onPressed: togglebutton),
              )),
        ],
      )),
    );
  }
}
*/