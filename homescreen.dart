
// import 'package:flutter/material.dart';
// import 'package:quranepak/quranictextscreen.dart'; 
// import 'package:quranepak/audiorecitationscreen.dart';
// import 'package:quranepak/bookmarkingscreen.dart';
// import 'package:quran/quran.dart' as quran;

// import 'package:provider/provider.dart';
// import 'auth_provider.dart';


// class HomeScreen extends StatelessWidget {
//   @override
 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 148, 180, 5),
//         title: Text(
//           'Al-Quran\nHome',
//           textAlign: TextAlign.center,
//         ),
//             actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () {
//               Provider.of<AuthProvider>(context, listen: false).signOut();
//               Navigator.pop(context);
//             },
//           ),
//         ],
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
          
//           child: Container(
//             decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                               'data:image/png;base64,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',
//                             ),
//                             fit: BoxFit.cover,
//                           ),
              
//             ),
//             width: 40, // Adjust the width of the container
//             height: 40, // Adjust the height of the container
//           ),
          
//         ),
//       ),
     
//       body: Padding(
        
//         padding: EdgeInsets.all(20.0),
        
//         child: Row(

  
 
//           children: [
            

        

 
            
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2, // Adjusted for better layout on small screens
//                 children: [
                 
//                 Text(quran.getVerse(quran.getSurahCountByPage(6), quran.getVerseCount(quran.getSurahCountByPage(6)))),
//                   QuickAccessButton(
//                     title: 'Quranic Text',
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => QuranicTextScreen(),
//                         ),
//                       );
//                     },
                  
         
//             child: Container(
//                height: 70,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                               'data:image/png;base64,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',
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Quranic Text',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 28,
//                               fontWeight: FontWeight.bold,
                              
//                             ),
                            
// textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
          
//                   ),
//                   QuickAccessButton(
//                     title: 'Audio Recitation',
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AudioRecitationScreen(),
//                         ),
//                       );
//                     },
//                     child: Container(
//                        height: 170,
//                         width: 100,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                             'data:image/png;base64,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',
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Audio Recitation',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   ),
//                   QuickAccessButton(
//                     title: 'Bookmarking',
//                     onPressed: () {
//                       // Navigate to Bookmarking screen
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => BookmarkScreen(),
//                         ),
//                       );
//                     },
//                     child: Container(
//                        height: 170,
//                         width: 100,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                             'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEX///8AAABLS0uEhISysrK7u7u4uLju7u7x8fH19fUwMDD4+PgsLCwoKCgkJCQpKSkzMzPp6enc3Nzi4uKNjY1UVFQVFRWUlJRoaGicnJwJCQmHh4fKysqoqKh2dnZZWVlISEg7OzttbW3Nzc15eXnpjnCiAAAE3klEQVR4nO2da3PaMBBFYx7GYMiDJEAeTdK0//83tsQBe41sJC97pXbu+UgnWk61Yq/ITHx1NZy7ycPjapPZslk9PkzuFO9yMPfbhbFbk8X2Huy33gH1KnZroF85hvvtGZcowbX12etiA9rGaSS/PVOE4FNEwSx7+t8Fs+yHteBrZMEse7UVvG+Vex9vJ7Zsx++tmrbjX0z528nctNiB+USUXVjW2jYKPeeWlVrkz43KW7s6d40yo5ldHQezD0ifvtRFdmZFumjkxBerGmXjCFrV6OG2Lm8V3yZ1CWyLVszq8hOjEvVRACQLB3XY+LApUDfpEhby5RtYGrfpa+QtbA4rm2Dz47g+8i7aZH18Bzbp9O2wvGmo6OWYbd5Mlj/mw5HJ8j4cP+veTZYfxZv2B3a2/8lHw7HJ8j6MaaiDhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIYAaKiEhgBoqISGAGiohIZ+qB50/Q8YPo02I8VTTJM3nP/8+vmfg/cxdcNi9b3AdTFwhcQNZ/Uz4JcDnwmdtmHRfMj9ctguJm1YrrIm14POYsqGxXUmuR7SqAkbzhZZm8UAxXQN58sTwSxbhTdqsobzG4fgkLOYquHMtYNfuxjaqIkaFrdNqwfNWUzTsBSfovlVrmjUJA0LMQenf1+ZCsWg0Z+ioRwT06/XhGJQgEvQUES1vy1aIRo1JMClZyijWn58fehZTM7w9AwekGfRu1FTM5zddgm2FL2HRmKGMqrlrX8Vjeob4NIylFGtLTjsLCZl6BoTEtGoN16NmpKhjGqnO7hH7OLCZ2gkZNg1JiSyUcvzy6Zj2D0mJKEBLhnDvjEhCRwaqRjOnVHNTViAS8Tw3JiQBM3FNAwLIdjXohWiUc/c+pMwLLzP4IGAs5iCYViLVvg3agKGQwTbc7Hn4ya+4fmo5sb31h/d0CequfEMcLENy0EtWuEX4CIb+kY1N14BLq6hf1Rz4zM0ohqGRDU3MsA5h0ZMw2FjQnJ+LkY0LMR3MuEtWnH21h/PcPiYkMihcaoYzdDvRu/Dma+nYhnOA28TfcibRntoRDLUjglJ79CIY3ipM3igL8BFMdRENTdyaIgAF8NQF9XcdP/aJoJh+I3eh86ziDfURzU3olFv6qEBN+z/7ZKGjgCHNiwG3uh9cN/6wYaXHhMS59DAGl5+TEhct36oYegXv+E4AhzS8LJRzc3p0AAazk3P4IGTs4gzLM3GhKQ9NFCGL+VFbvQ+yLNYvoAMPz9Qgi3Fj0+QocCuRStyZ1WgobVghyLO0LZFK6aOujBD+x3c49hFlCFG0KUIMkS0aMVJo2IMcYKnihBDVItW5HhDrGBbEWCIbNGKKdYQvYN7cqRhDEGhaGN4jL0RWrSibtRPk/XXsQUbimub9Z9itmjFt6Lijxb08+v9efP73mp1L+7ebja715Cf+AOFJzb1P9++NQAAAABJRU5ErkJggg==',
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Bookmarking',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   ),
                
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class QuickAccessButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;
//   final Widget child;

//   QuickAccessButton({
//     required this.title,
//     required this.onPressed,
//     required this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: Card(
//         elevation: 4.0,
//         margin: EdgeInsets.all(8.0),
//         child: child,
//       ),
//     );
//   }
// }



////////////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'quranictextscreen.dart';
import 'audiorecitationscreen.dart';
import 'bookmarkingscreen.dart';

void main(){
runApp(MaterialApp(home: HomeScreen()));


}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: 
       // Colors.green.shade700,
        Color.fromARGB(255, 148, 180, 5),
        centerTitle: true,
        title: Text(
          'Al-Quran Home',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Provider.of<AuthProvider>(context, listen: false).signOut();
              Navigator.pop(context);
            },

          ),
//           ElevatedButton(
//   onPressed: () {
//     Provider.of<AuthProvider>(context, listen: false).signOut();
//     Navigator.pop(context);
//   },
//   child: const Text("Sign Out"),
// ),

        ],
        
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
       
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildQuickAccessCard(
              title: 'Quranic Text',
              icon: Icons.book,
              color: Colors.blue.shade100,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuranicTextScreen()),
              ),
            ),
            _buildQuickAccessCard(
              title: 'Audio Recitation',
              icon: Icons.audiotrack,
              color: Colors.orange.shade100,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioRecitationScreen()),
              ),
            ),
            _buildQuickAccessCard(
              title: 'Bookmarks',
              icon: Icons.bookmark,
              color: Colors.purple.shade100,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>BookmarkScreen ()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessCard({
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,

  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
    
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.black54),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
