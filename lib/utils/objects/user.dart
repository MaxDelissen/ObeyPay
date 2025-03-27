class User {
  String?
  id; // Not needed for the current project, but useful if we expend to a db.
  String? name;
  String? email;
  int? age;
  bool? isSub;
  bool? isCertified;
  String? jobTitle;
  String? profilePictureUrl;
  String? monthlyCap;
  String? totalSpent;
  // Add other fields as you see fit / need.

  User({
    this.id,
    this.name,
    this.email,
    this.age,
    this.isSub,
    this.isCertified,
    this.jobTitle,
    this.profilePictureUrl,
    this.monthlyCap,
    this.totalSpent,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    age = json['age'];
    isSub = json['isSub'];
    isCertified = json['isCertified'];
    jobTitle = json['description'];
    profilePictureUrl = json['profilePictureUrl'];
    monthlyCap = json['monthlyCap'];
    totalSpent = json['totalSpent'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
      'isSub': isSub,
      'isCertified': isCertified,
      'description': jobTitle,
      'profilePictureUrl': profilePictureUrl,
      'monthlyCap': monthlyCap,
      'totalSpent': totalSpent,
    };
  }
}
