import 'package:e_book/components/AddCommentBox.dart';
import 'package:e_book/components/CommentCard.dart';
import 'package:e_book/config/constants.dart';
import 'package:e_book/screens/Summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            SizedBox(height: kSpacingL),
            _bookMenu(),
            SizedBox(height: kSpacingM),
            _commentList(),
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

  Widget _bookMenu() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: kSpacingM),
      padding: EdgeInsets.all(kPaddingS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              child: Text('Summary'),
              onPressed: () => Navigator.push(
                  context, new MaterialPageRoute(builder: (_) => Summary()))),
          TextButton(onPressed: null, child: Text('Episodes')),
          TextButton(onPressed: null, child: Text('Reviews')),
        ],
      ),
    );
  }

  Widget _commentList() {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: kPaddingM),
      physics: ClampingScrollPhysics(),
      children: [
        CommentCard(),
        CommentCard(),
        CommentCard(),
        CommentCard(),
        CommentCard(),
      ],
    );
  }
}
