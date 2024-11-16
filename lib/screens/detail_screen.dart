import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:prj_wisatacandi_si51/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      candi.imageAsset,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple?.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          candi.name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Lokasi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ": ${candi.location}",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.place,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Dibangun",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ": ${candi.built}",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.house,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Tipe",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ": ${candi.type}",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.deepPurple.shade100,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Galeri",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: candi.imageUrls.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                    imageUrl: candi.imageUrls[index]),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Tap untuk memperbesar",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
