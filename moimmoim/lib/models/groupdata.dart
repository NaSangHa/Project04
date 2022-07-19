class GroupData {
  List<Meets>? _meets;

  GroupData({List<Meets>? meets}) {
    if (meets != null) {
      this._meets = meets;
    }
  }

  List<Meets>? get meets => _meets;
  set meets(List<Meets>? meets) => _meets = meets;

  GroupData.fromJson(Map<String, dynamic> json) {
    if (json['meets'] != null) {
      _meets = <Meets>[];
      json['meets'].forEach((v) {
        _meets!.add(new Meets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._meets != null) {
      data['meets'] = this._meets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meets {
  String? _mlocation;
  String? _mmax;
  String? _mdate;
  String? _mtitleimg;
  String? _mlike;
  String? _mprivate;
  String? _mid;
  String? _mcontent;
  String? _mcategory;
  String? _mtag;
  String? _mmember;
  String? _mtitle;

  Meets(
      {String? mlocation,
      String? mmax,
      String? mdate,
      String? mtitleimg,
      String? mlike,
      String? mprivate,
      String? mid,
      String? mcontent,
      String? mcategory,
      String? mtag,
      String? mmember,
      String? mtitle}) {
    if (mlocation != null) {
      this._mlocation = mlocation;
    }
    if (mmax != null) {
      this._mmax = mmax;
    }
    if (mdate != null) {
      this._mdate = mdate;
    }
    if (mtitleimg != null) {
      this._mtitleimg = mtitleimg;
    }
    if (mlike != null) {
      this._mlike = mlike;
    }
    if (mprivate != null) {
      this._mprivate = mprivate;
    }
    if (mid != null) {
      this._mid = mid;
    }
    if (mcontent != null) {
      this._mcontent = mcontent;
    }
    if (mcategory != null) {
      this._mcategory = mcategory;
    }
    if (mtag != null) {
      this._mtag = mtag;
    }
    if (mmember != null) {
      this._mmember = mmember;
    }
    if (mtitle != null) {
      this._mtitle = mtitle;
    }
  }

  String? get mlocation => _mlocation;
  set mlocation(String? mlocation) => _mlocation = mlocation;
  String? get mmax => _mmax;
  set mmax(String? mmax) => _mmax = mmax;
  String? get mdate => _mdate;
  set mdate(String? mdate) => _mdate = mdate;
  String? get mtitleimg => _mtitleimg;
  set mtitleimg(String? mtitleimg) => _mtitleimg = mtitleimg;
  String? get mlike => _mlike;
  set mlike(String? mlike) => _mlike = mlike;
  String? get mprivate => _mprivate;
  set mprivate(String? mprivate) => _mprivate = mprivate;
  String? get mid => _mid;
  set mid(String? mid) => _mid = mid;
  String? get mcontent => _mcontent;
  set mcontent(String? mcontent) => _mcontent = mcontent;
  String? get mcategory => _mcategory;
  set mcategory(String? mcategory) => _mcategory = mcategory;
  String? get mtag => _mtag;
  set mtag(String? mtag) => _mtag = mtag;
  String? get mmember => _mmember;
  set mmember(String? mmember) => _mmember = mmember;
  String? get mtitle => _mtitle;
  set mtitle(String? mtitle) => _mtitle = mtitle;

  Meets.fromJson(Map<String, dynamic> json) {
    _mlocation = json['mlocation'];
    _mmax = json['mmax'];
    _mdate = json['mdate'];
    _mtitleimg = json['mtitleimg'];
    _mlike = json['mlike'];
    _mprivate = json['mprivate'];
    _mid = json['mid'];
    _mcontent = json['mcontent'];
    _mcategory = json['mcategory'];
    _mtag = json['mtag'];
    _mmember = json['mmember'];
    _mtitle = json['mtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mlocation'] = this._mlocation;
    data['mmax'] = this._mmax;
    data['mdate'] = this._mdate;
    data['mtitleimg'] = this._mtitleimg;
    data['mlike'] = this._mlike;
    data['mprivate'] = this._mprivate;
    data['mid'] = this._mid;
    data['mcontent'] = this._mcontent;
    data['mcategory'] = this._mcategory;
    data['mtag'] = this._mtag;
    data['mmember'] = this._mmember;
    data['mtitle'] = this._mtitle;
    return data;
  }
}
