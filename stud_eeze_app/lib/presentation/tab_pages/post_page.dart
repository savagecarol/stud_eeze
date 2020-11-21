
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String url = "http://www.pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/sample.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() { 
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc=doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Documnet"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc, 
      indicatorBackground: Colors.red,
      // showIndicator: false,
      // showPicker: false,
       ),
    );
  }
}