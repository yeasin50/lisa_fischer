import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/custom_button.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final ValueKey _firstNameValueKey = ValueKey("firstName");
  final ValueKey _lastNameValueKey = ValueKey("lastName");
  final ValueKey _emailValueKey = ValueKey("email");
  final ValueKey _subjectValueKey = ValueKey("subject");
  final ValueKey _messageValueKey = ValueKey("message");

  final _inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        width: 2,
        color: Colors.amber,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(width: 2, color: Colors.red),
    ),
    contentPadding: EdgeInsets.all(15),

    border: InputBorder.none,
    // fillColor: Colors.white.withOpacity(.7),
    // filled: true,
  );

  //spaces between column childrens
  SizedBox get columnSpace => SizedBox(height: 24);

  ///Top Label for Input Text
  RichText setLabel(String label) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$label ",
              style: normalStyle.copyWith(color: Colors.black.withOpacity(.7)),
            ),
            TextSpan(
              text: "*",
              style: TextStyle(
                // decoration: TextDecoration.overline,
                fontFamily: kFproximaNova,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );

  final ScrollController _controller = ScrollController();

  /// we have created custom Message Box, to handle this we have to declear color

  bool _isEmptyMessage = false;

  ////validate and submit form
  _submitForm() {
    print("on Submit");
    if (_formKey.currentState!.validate()) {
      print("Valid");
    }
  }

  /// empty validation
  bool _isValid(String text) {
    if (text.trim().isEmpty)
      return false;
    else
      return true;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Fill out the form below.",
                    style: TextStyle(
                      fontFamily: kFproximaNova,
                      color: Colors.black.withOpacity(.6),
                      fontSize: 14,
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  columnSpace,

                  ///`label => Name`
                  setLabel("Name"),

                  /// `First & Last Name`
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: constraints.maxWidth * .47),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                key: _firstNameValueKey,
                                validator: (value) {
                                  return _isValid(value!)
                                      ? null
                                      : "Enter First Name";
                                },
                                decoration: _inputDecoration,
                              ),
                              SizedBox(height: 2),
                              Text(
                                "First Name",
                                style: TextStyle(
                                  fontFamily: kFproximaNova,
                                  fontSize: 11.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: constraints.maxWidth * .47),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                style: TextStyle(),
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                key: _lastNameValueKey,
                                validator: (value) {
                                  return _isValid(value!)
                                      ? null
                                      : "Enter Last Name";
                                },
                                decoration: _inputDecoration,
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Last Name",
                                style: TextStyle(
                                  fontFamily: kFproximaNova,
                                  fontSize: 11.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  columnSpace,

                  setLabel("Email Address"),
                  TextFormField(
                    style: TextStyle(),
                    onTap: () {
                      // print("Play onUnserName Animation\n");
                      // data.dashState(DashState.onType);
                    },
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    key: _emailValueKey,
                    validator: (value) {
                      return _isValid(value!)
                          ? value.contains("@")
                              ? null
                              : "Invalid email format"
                          : "Enter Your Email";
                    },
                    decoration: _inputDecoration,
                  ),

                  columnSpace,

                  setLabel("Subject"),
                  TextFormField(
                    style: TextStyle(),
                    onTap: () {
                      // print("Play onUnserName Animation\n");
                      // data.dashState(DashState.onType);
                    },
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    key: _subjectValueKey,
                    validator: (value) {
                      return _isValid(value!) ? null : "Subject cant be Empty";
                    },
                    decoration: _inputDecoration,
                  ),

                  columnSpace,

                  setLabel("Message"),
                  messageBox(),

                  columnSpace,

                  ///`submitButton`
                  CustomButton(onTap: _submitForm, label: "SUBMIT"),
                  columnSpace,
                ],
              ),
            ));
  }

  ///`Message BOx Of Form`
  ConstrainedBox messageBox() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        /// set `maxHeight`according to your desire
        maxHeight: 130,
        minHeight: 100,
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: _isEmptyMessage ? Colors.red : Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              10,
            )),

        //// `Controll  height`
        child: Scrollbar(
            isAlwaysShown: true,
            showTrackOnHover: true,
            controller: _controller,
            child: SingleChildScrollView(
              controller: _controller,
              child: TextFormField(
                key: _messageValueKey,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),

                /// set this according to BoxSize
                minLines: 10,
                maxLines: null,
                validator: (value) {
                  if (value!.trim().isEmpty)
                    setState(() => _isEmptyMessage = true);
                  else
                    setState(() => _isEmptyMessage = false);
                  return _isValid(value) ? null : "Add Details";
                },
              ),
            )),
      ),
    );
  }
}
