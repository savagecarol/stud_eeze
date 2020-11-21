
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'package:stud_eeze_app/utils/global.dart';
import 'package:stud_eeze_app/utils/style.dart';


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
    return SafeArea(child:(user.role == 'stu')?Scaffold(
      appBar: AppBar(title: Text("Documnet"),),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc, 
      indicatorBackground: Colors.red,
      // showIndicator: false,
      // showPicker: false,
       ),
    ):Scaffold(
      body:Container(
       child:SingleChildScrollView(
         child: Padding(padding: EdgeInsets.all(32),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              Text('Post',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                
SizedBox(height: ScreenUtil.instance.setHeight(81),),

             Center(
               child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Styles.CUSTOM_SHADOW_COLOR,
              blurRadius: 10,
              offset: Offset(3, 5))
        ]),

                 height: ScreenUtil.instance.setHeight(300),
                 width: ScreenUtil.instance.setWidth(300),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Center(
                     child: Text('Upload Pdf',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),  
                   ),
                 ),
               ),
             ),


SizedBox(height: ScreenUtil.instance.setHeight(81),),
             CustomButton(
                      labelText: 'Add ',
                      isLoading: false,
                      postIcon: Icons.arrow_forward,
                      visiblepostIcon: true,
                     onTap: () {
                   showSnackbar("This Part is Under Construction.", context);
                      },
                    )
         ],),),
       ) 
      ),
    ));
  }
}