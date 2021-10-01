import 'dart:convert';

import 'package:demo1/Bakcend/Respo/Res.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

// ! product List HOME
class SlidData extends StatelessWidget {
  const SlidData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slidData = Provider.of<ProductDataRespo>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, .5, 0, .5),
      child: FutureBuilder(
        future: slidData.getProduct(),
        builder: (context, AsyncSnapshot<List?> snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider.builder(
              itemCount: snapshot.data!.length,
              options: CarouselOptions(
                height: 170.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
              itemBuilder: (context, index, realIndex) {
                final urlImage = snapshot.data![index]['file'].toString();
                return carItem(urlImage, index);
              },
            );
            //   },
            // );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  carItem(String urlImage, int index) {
    return Container(
      height: 170,
      width: double.infinity,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
      margin: EdgeInsets.all(.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}

// ! PRODUCT Deails
class ProdData extends StatelessWidget {
  const ProdData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prodData = Provider.of<ProductDataRespo>(context);

    return FutureBuilder(
      future: prodData.prodDeal(),
      builder: (context, AsyncSnapshot<List?> snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (
              context,
              int index,
            ) {
              return ProdGridListShow(prodNumber: snapshot.data![index]);
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

// ! Prouct data show
class ProdGridListShow extends StatelessWidget {
  dynamic prodNumber;

  ProdGridListShow({
    Key? key,
    this.prodNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 160.0,
        child: Wrap(
          children: <Widget>[
            InkWell(
              child: Card(
                child: Column(
                  children: [
                    // ! PRODUCT PI
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        height: 110,
                        child: Image.network(
                          prodNumber['file'] == null ? '' : prodNumber['file'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // ! END PRODUCT PIC
                    ListTile(
                      title: Text(
                        prodNumber['name'],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        prodNumber['description'],
                        maxLines: 1,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
