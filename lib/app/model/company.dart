import 'dart:convert';
import 'package:meta/meta.dart';

class Company {
  final String logo; //logo
  final String name; //公司名称
  final String location; //公司位置
  final String type; //公司性质
  final String size; //公司规模
  final String employee; //公司人数
  final String hot; //热招职位
  final String count; //职位总数
  final String inc;

  Company(
      this.logo,
      this.name,
      this.location,
      this.type,
      this.size,
      this.employee,
      this.hot,
      this.count,
      this.inc);

  @override
  String toString() {
    return 'Company{logo: $logo, name: $name, location: $location, type: $type, size: $size, employee: $employee, hot: $hot, count: $count, inc: $inc}';
  } //公司详情

}
