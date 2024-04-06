class HeaderItem {
  final String title;
  final bool isButton;
  final double offset;

  HeaderItem({
    required this.offset,
    required this.title,
    this.isButton = false,
  });
}
