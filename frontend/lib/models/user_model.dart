class UserModel {
  final String userId; // 사용자의 고유한 아이디, 이메일 혹은 전화번호로 사용자를 식별하는데 사용
  final String password; // 사용자의 비밀번호
  final String name; // 사용자의 이름
  final String mobile; // 사용자의 전화번호
  final String birth; // 사용자의 생년월일

  UserModel({
    required this.userId,
    required this.password,
    required this.name,
    required this.mobile,
    required this.birth,
  });

  UserModel copyWith({
    String? userId,
    String? password,
    String? name,
    String? mobile,
    String? birth,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      password: password ?? this.password,
      name: name ?? this.name,
      mobile: mobile ?? this.mobile,
      birth: birth ?? this.birth,
    );
  }

  // JSON에서 UserModel 인스턴스로의 변환 생성자
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'],
      password: json['password'],
      name: json['name'],
      mobile: json['mobile'],
      birth: json['birth'],
    );
  }

  // UserModel 인스턴스에서 JSON으로의 변환 메서드
  Map<String, dynamic> toJson() {
    return {
      'userId': this.userId,
      'password': this.password,
      'name': this.name,
      'mobile': this.mobile,
      'birth': this.birth,
    };
  }

  Future <void> fetchUserDate() async {
    // 사용자의 데이터를 가져오는 비동기 함수 작성 예정

  }
}

// 사용 예시
// UserModel updatedUser = currentUser.copyWith(email: 'new-email@example.com');
