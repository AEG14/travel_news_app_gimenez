class ShortNews {
  final String shortNewsImage;
  final String shortNewsHeader;
  final String viewCount;

  ShortNews({
    required this.shortNewsImage,
    required this.shortNewsHeader,
    required this.viewCount,
  });
}

List<ShortNews> shortNewsData = [
  ShortNews(
    shortNewsImage: 'assets/images/popularImage2.jpg',
    shortNewsHeader: 'Top Trending\nIslands in 2022',
    viewCount: '40,999',
  ),
  ShortNews(
    shortNewsImage: 'assets/images/chinaBuilding.jpg',
    shortNewsHeader: 'China best Things',
    viewCount: '22,345',
  ),
  ShortNews(
    shortNewsImage: 'assets/images/fastfood.jpg',
    shortNewsHeader: 'Discover the\nBest Burgers in Town',
    viewCount: '12,987',
  ),
  ShortNews(
    shortNewsImage: 'assets/images/phone.jpg',
    shortNewsHeader: 'Top Phones\nfor Tech Enthusiasts',
    viewCount: '58,231',
  ),
  ShortNews(
    shortNewsImage: 'assets/images/Restaurant.jpg',
    shortNewsHeader: 'Avoid These\nWorst Restaurants',
    viewCount: '6,543',
  ),
];
