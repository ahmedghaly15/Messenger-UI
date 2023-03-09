import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //================= App Bar =================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //=========== User's Image ===========
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/108659381?s=400&u=154228b05cb7c039fb5fc1018ca7dc4c90b0b693&v=4',
            ),
            radius: 20,
          ),
        ),
        //=========== Screen's Title ===========
        title: Text(
          "Chats",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        //=========== Send New (Picture / Message) Buttons ===========
        actions: <Widget>[
          // Send New Picture IconButton
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_rounded,
              color: Theme.of(context).iconTheme.color,
              size: Theme.of(context).iconTheme.size,
            ),
          ),
          // Send New Message IconButton
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).iconTheme.color,
                size: Theme.of(context).iconTheme.size,
              ),
            ),
          ),
        ],
      ),

//======================================= Screen Content =======================================
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //========================= Search Bar =========================
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.black54,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Search",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),

            //========================= Stories =========================
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    //============== Your Story Button ==============
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 30,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Your Story",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),

                  //============== Contacts' Stories ==============
                  SizedBox(
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItem(context),
                      itemCount: 15,
                    ),
                  ),
                ],
              ),
            ),

            //======== For Adding Some Space ========
            const SizedBox(height: 10),

            //========================= Chats =========================
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => buildChatItem(context),
              itemCount: 15,
            ),

            //======== For Adding Some Space ========
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

//======================== A Function To Build Chats ========================
  Widget buildChatItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const <Widget>[
              //======= Contact Picture ========
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/108659381?s=400&u=154228b05cb7c039fb5fc1018ca7dc4c90b0b693&v=4',
                ),
                radius: 30,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),

                //======= Online Indicator ========
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 7,
                ),
              ),
            ],
          ),

          //======= For Adding Some Space =======
          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //======= Contact Name ========
                Text(
                  "Ahmed Elsayed Ahmed Ghaly Ahmed Elsayed Ahmed Ghaly",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 20,
                      ),
                ),

                //======= For Adding Some Space =======
                const SizedBox(height: 8),

                //======= Contact Message ========
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "This is a message from this contact contains cDolore in reprehenderit nisi occaecat duis dolore anim laboris reprehenderit reprehenderit commodo commodo. Et fugiat sunt mollit nostrud eiusmod mollit ut. Pariatur aute eiusmod non cillum exercitation fugiat ex aute nulla sint aliquip non in commodo. Non veniam tempor voluptate cupidatat adipisicing sunt exercitation non ad dolore elit",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 16),
                      ),
                    ),

                    // A Bread Between The Message And Time Of The Message
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),

                    //======= Time Of Message ========
                    Text(
                      "04:13 PM",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//======================== A Function To Build Contacts' Stories ========================
  Widget buildStoryItem(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const <Widget>[
                //======= Contact Picture ========
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/108659381?s=400&u=154228b05cb7c039fb5fc1018ca7dc4c90b0b693&v=4',
                  ),
                  radius: 30,
                ),

                //======= Online Indicator ========
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7,
                  ),
                ),
              ],
            ),

            //======= Contact Name ========
            Text(
              "Ahmed Elsayed Ahmed Ghaly",
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
