import 'package:bookapp/theme/color.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage(
    {
      super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.review
    }
  );

  final String name;
  final String image;
  final String price;
  final String review;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: width,
            height: height*0.3+80,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: width,
                    height: height*0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover
                      )
                    )
                  )
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: ()=> Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: ThemeApp().secondary
                        ),
                      ),
                    ),
                  )
                ),
                Positioned(
                  top: height*0.3-75,
                  left: 20,
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover
                      )
                    )
                  )
                ),
                Positioned(
                  top: height*0.3+10,
                  left: 140,
                  child: Text(
                    name,
                    style: TextStyle(
                      color: ThemeApp().secondary,
                      fontFamily: 'Poppins',
                      fontSize: 18
                    ),
                  )
                ),
                Positioned(
                  top: height*0.3+40,
                  left: 140,
                  child: Row(
                    children: [
                      const Text(
                        'Review : ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 16
                        ),
                      ),
                      const Icon(Icons.star,color: Colors.amber,),
                      const SizedBox(width: 5,),
                      Text(
                        review,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 16
                        ),
                      ),
                    ],
                  )
                ),
              ],
            )
          ),
          Container(
            width: width,
            height: height*0.7-80,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                     const Text(
                      'Publisher : ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'Naikree Devcode',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                     const Text(
                      'Author : ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'Naikree Devcode',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                     const Text(
                      'Category : ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'Money, Psychology',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(height: 10,),
                const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: Colors.grey,
                ),
                Text(
                  'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis soluta tempore ab. Impedit repellat nisi illo facilis illum! Facilis minus veritatis est dicta illo velit quaerat debitis repellendus quod dolores.',
                  style: TextStyle(
                    color: ThemeApp().secondary,
                    fontFamily: 'Poppins',
                    fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                const Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                     const Text(
                      'Release date : ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                    Text(
                      '20/03/2022',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                     const Text(
                      'Language : ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'TH',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
                Expanded(child: SizedBox(height: 1,)),
                Container(
                  width: width,
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: ThemeApp().secondary
                  ),
                  child: Center(
                    child: Text(
                      'Buy ${double.parse(price).toStringAsFixed(2)} ฿',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}