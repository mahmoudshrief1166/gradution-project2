class User_info {
  Map name;
  Map emailVerification;
  Map phoneVerification;
  Map location;
  String id;
  String email;
  String gender;
  String phone;
  String createdAt;
  String updatedAt;
  String verificationCode;
  int pointsOnDonations;
  int totalDonationsAmount;
  bool isEnabled;
  bool isAdmin;

  User_info({
    required this.createdAt,
    required this.email,
    required this.emailVerification,
    required this.gender,
    required this.id,
    required this.isAdmin,
    required this.isEnabled,
    required this.location,
    required this.name,
    required this.phone,
    required this.phoneVerification,
    required this.pointsOnDonations,
    required this.totalDonationsAmount,
    required this.updatedAt,
    required this.verificationCode,
  });

  factory User_info.fromJson(Map<String, dynamic> json) {
    return User_info(
        createdAt: json["createdAt"],
        email: json["email"],
        emailVerification: json["emailVerification"],
        gender: json["gender"],
        id: json["_id"],
        isAdmin: json["isAdmin"],
        isEnabled: json["isEnabled"],
        location: json["location"],
        name: json["name"],
        phone: json["phone"],
        phoneVerification: json["phoneVerification"],
        pointsOnDonations: json["pointsOnDonations"],
        totalDonationsAmount: json["totalDonationsAmount"],
        updatedAt: json["updatedAt"],
        verificationCode: json["verificationCode"]);
  }
}
