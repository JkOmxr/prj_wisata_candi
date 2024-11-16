import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
//TODO 1 : Variabel
  bool isSignedIn = false;
  String FullName = "";
  String UserName = "";
  int FavoriteCandiCount = 0;

//TODO 5 : Impelentasi fungsi Sing In
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

//TODO 6 : Impelentasi fungsi Sing Out
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO 2 : Profile Header
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple, width: 2),
                              shape: BoxShape.circle),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("images/placeholder_image.png"),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.deepPurple[50],
                              ))
                      ],
                    ),
                  ),
                ),
                //TODO 3 : Profile Info
                const SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Pengguna",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ": $UserName",
                      style: const TextStyle(fontSize: 18),
                    )),
                    if (isSignedIn) const Icon(Icons.edit)
                  ],
                ),
                const SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Nama",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ": $FullName",
                      style: const TextStyle(fontSize: 18),
                    )),
                    if (isSignedIn) const Icon(Icons.edit)
                  ],
                ),
                const SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Favorit",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ": $FavoriteCandiCount",
                      style: const TextStyle(fontSize: 18),
                    )),
                    if (isSignedIn) const Icon(Icons.edit)
                  ],
                ),
                const SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 6),
                //TODO 4 : Profile Action
                isSignedIn
                    ? TextButton(
                        onPressed: () {}, child: const Text("Sign Out"))
                    : TextButton(onPressed: () {}, child: const Text("Sign In"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
