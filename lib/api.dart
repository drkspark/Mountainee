//! Staging => Development
//! production => Live

String _api = 'servercheckup.herokuapp.com';

//? Uri with Parameters, it acts as a Function
Uri loginApi(String mobile, String password) =>
    Uri.https(_api, 'login', {'mobile': mobile, 'password': password});

Uri blogsApi = Uri.https(_api, 'blogs');

/* Adding Something with String
  String Country = "Country";
  print(Country("India"));

  OutPut : country India

*/
