class AssetsPath {
  static String _baseSvgPath(String fileName) => 'assets/svgs/$fileName.svg';

  static String emailIcon = _baseSvgPath('email_icon');
  static String userIcon = _baseSvgPath('user_icon');
  static String plusIcon = _baseSvgPath('plus_icon');
  static String minusIcon = _baseSvgPath('minus_icon');
}
