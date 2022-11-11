import 'package:flutter/material.dart';

class Privacy_policy extends StatefulWidget {
  const Privacy_policy({Key? key}) : super(key: key);

  @override
  State<Privacy_policy> createState() => _Privacy_policyState();
}

class _Privacy_policyState extends State<Privacy_policy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 216,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.yellow, boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 0),
                    blurRadius: 15,
                    blurStyle: BlurStyle.normal)
              ]),
              alignment: Alignment.topCenter,
              child: Image.network(
                  'https://blog.ipleaders.in/wp-content/uploads/2020/10/bluestar_webbox_privacy-policy_1024x512_1218_V1_PRESS.jpg'),
            ),
            Container(
              height: 2770,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color(0xff888888),
                    offset: Offset(0, 5),
                    blurRadius: 15,
                    blurStyle: BlurStyle.normal)
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Privacy Policy",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '''
                    
                    Infinity Tech Apps built the app as a Free app. This SERVICE is provided by infinity Tech Apps at no Cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal information if anyone decided to use my Service.
                    
                    If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal information that I collect is used for providing and improving the Service. I will not use of share your information with anyone except as described in this Privacy Policy.
                    
                    The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at unless otherwise defined in this Privacy Policy.
                    
                   
                    ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.black),
                  ),
                  Text(
                    "Information Collection and Use",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '''
                    
                    For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to We are not collect any informations when you are use our application. The information that I request will be retained on your device and is not collected by me in any way.

                    The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app
                   
--> Google Play Services
--> Facebook

                    ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.black),
                  ),
                  Text(
                    "Log Data",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '''
                    
                    I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ("IP") address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.
                   
                    ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.black),
                  ),
                  Text(
                    "Cookies",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '''
                    
                    Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory. This Service does not use these "cookies" explicitly. However, the app may use third party code and libraries that use "cookies" to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.
                    
                    ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.black),
                  ),
                  Text(
                    "Service Provider",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '''
                    
                    I may employ third-party companies and individuals due to the following reasons:
• To facilitate our Service;
• To facilitate our Service;
• To provide the Service on our behalf;
• To perform Service-related services; or
• To assist us in analyzing how our Service is used.
I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.
                    
                    ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.black),
                  ),
                  Text(
                    "Thank you For Read",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
