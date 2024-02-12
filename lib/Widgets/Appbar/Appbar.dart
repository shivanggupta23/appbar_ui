import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(180.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 73, 192),
        elevation: 1,
        flexibleSpace: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 9, 130, 186),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Add your back button functionality here
                  },
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: const Text(
                  "Upload Bills",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 127),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 9, 130, 186),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.attach_money, color: Colors.white),
                    // SizedBox(width: .0),
                    Text(
                      "2000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0, // Adjust the vertical margin as needed
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 136, 195),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 248, 247, 247),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search products",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.clear, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
