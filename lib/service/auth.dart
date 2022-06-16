import 'dart:async';
import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/cupertino.dart';

class Auth with ChangeNotifier {
  // var mainUrl = baseUrl;

  String? _role;
  String? _userId;
  String? _token;
  String? _userName;
  String? _loginWithSocial;
  String? _faceBook;
  String? _refreshToken;
  DateTime? _expiryDate;
  DateTime? _refreshExpiryDate;
  Timer? _refreshAuthTimer;
  Timer? _authTimer;

  bool get isAuth {
    return _token != null;
  }

  String? get token {
    if (_expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
  }

  String? get userId {
    return _userId;
  }

  String? get role {
    return _role;
  }

  String? get faceBook {
    return _faceBook;
  }

  String? get userName {
    return _userName;
  }

  String? get loginWithSocial {
    return _loginWithSocial;
  }

}
