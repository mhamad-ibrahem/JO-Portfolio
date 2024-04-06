import 'package:portfolio/core/constant/assets/app_assets.dart';

import '../model/contact_me_model.dart';

List<ContactMeModel> contactMeList = [
  ContactMeModel(
      image: AppAssets().emailIcon,
      name: 'Email',
      link: '',
      value: 'mhamad.ibrahem737@gmail.com'),
  ContactMeModel(
      image: AppAssets().phoneIcon,
      name: 'Phone',
      link: '',
      value: '0991559737'),
  ContactMeModel(
      image: AppAssets().whatsUpIcon,
      name: 'Whats up',
      link: "//wa.me/+963966769532",
      value: '0966769532'),
  ContactMeModel(
      image: AppAssets().locationsIcon,
      name: 'Address',
      link: '',
      value: 'Syria/Tartous')
];
