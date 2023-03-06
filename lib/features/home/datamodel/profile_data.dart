import 'package:json_annotation/json_annotation.dart';
part 'profile_data.g.dart';


@JsonSerializable()
class ProfileData {
    ProfileData({
        this.data,
        this.status,
        this.message,
    });

    UserProfile? data;
    bool? status;
    String? message;

    factory ProfileData.fromJson(Map<String, dynamic> json) =>
        _$ProfileDataFromJson(json);

    Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}

@JsonSerializable()
class UserProfile {
    UserProfile({
        this.id,
        this.name,
        this.email,
        this.userDetail,
        this.isNewUser,
    });

    int? id;
    String? name;
    String? email;
    @JsonKey(name:'user_detail')
    UserDetail? userDetail;
    @JsonKey(name:'is_new_user')
    bool? isNewUser;

    factory UserProfile.fromJson(Map<String, dynamic> json) =>
        _$UserProfileFromJson(json);

    Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}

@JsonSerializable()
class UserDetail {
    UserDetail({
        this.id,
        this.companyName,
        this.companyEmail,
        this.companyPhone,
        this.countryCode,
        this.email,
        this.fullAddress,
        this.address,
        this.city,
        this.state,
        this.zipCode,
        this.representativeName,
        this.representativePhone,
        this.timezone,
    });

    int? id;
    @JsonKey(name: 'company_name')
    String? companyName;
    @JsonKey(name: 'company_email')
    String? companyEmail;
    @JsonKey(name: 'company_phone')
    String? companyPhone;
    @JsonKey(name: 'country_code')
    int? countryCode;
    String? email;
    @JsonKey(name: 'full_address')
    String? fullAddress;
    String? address;
    String? city;
    String? state;
    @JsonKey(name: 'zip_code')
    dynamic zipCode;
    @JsonKey(name: 'representative_name')
    String? representativeName;
    @JsonKey(name: 'representative_phone')
    String? representativePhone;
    String? timezone;

    factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        companyName: json["company_name"],
        companyEmail: json["company_email"],
        companyPhone: json["company_phone"],
        countryCode: json["country_code"],
        email: json["email"],
        fullAddress: json["full_address"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zip_code"],
        representativeName: json["representative_name"],
        representativePhone: json["representative_phone"],
        timezone: json["timezone"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "company_name": companyName,
        "company_email": companyEmail,
        "company_phone": companyPhone,
        "country_code": countryCode,
        "email": email,
        "full_address": fullAddress,
        "address": address,
        "city": city,
        "state": state,
        "zip_code": zipCode,
        "representative_name": representativeName,
        "representative_phone": representativePhone,
        "timezone": timezone,
    };
}
