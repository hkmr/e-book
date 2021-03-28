import 'package:e_book/components/AddCommentBox.dart';
import 'package:e_book/components/CommentCard.dart';
import 'package:e_book/config/constants.dart';
import 'package:e_book/model/Comment.dart';
import 'package:e_book/screens/Reviews.dart';
import 'package:e_book/screens/Summary.dart';
import 'package:e_book/viewModels/CommentsViewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Comment> comments =
        Provider.of<CommentsViewModels>(context).getComments();

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            SizedBox(height: kSpacingL),
            _bookMenu(context),
            SizedBox(height: kSpacingM),
            _commentList(comments),
            AddCommentBox(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            margin: EdgeInsets.all(kSpacingM),
            padding: EdgeInsets.all(kPaddingS),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Image(
              fit: BoxFit.contain,
              image: NetworkImage(
                  'https://images-na.ssl-images-amazon.com/images/I/71jChzWGk5L.jpg'),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: kSpacingM),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Name',
                  style: GoogleFonts.nunito(
                      fontSize: 24.0, fontWeight: FontWeight.w400),
                ),
                Text(
                  'by Author name',
                  style: GoogleFonts.nunito(),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Episodes\n55'),
                    Text('view count\n220'),
                    Text('Rating\n5.0'),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.redAccent,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.blueAccent,
                        ),
                        onPressed: null),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _bookMenu(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(kPaddingS),
      margin: EdgeInsets.symmetric(horizontal: kSpacingM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            child: Text('Summary'),
            onPressed: () => Navigator.push(
                context, new MaterialPageRoute(builder: (_) => Summary())),
          ),
          TextButton(
            child: Text('Episodes'),
            onPressed: () => print('Episodes'),
          ),
          TextButton(
            child: Text('Reviews'),
            onPressed: () => Navigator.push(
                context, new MaterialPageRoute(builder: (_) => Reviews())),
          ),
        ],
      ),
    );
  }

  Widget _commentList(List<Comment> comments) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: kPaddingM),
      physics: ClampingScrollPhysics(),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return CommentCard(
          author: comments[index].authorName,
          text: comments[index].text,
          time: comments[index].time,
        );
      },
    );
  }
}
