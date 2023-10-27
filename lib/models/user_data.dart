class User {
  final String userProfilePicture;
  final String firstName;
  final String lastName;
  final String topUserTitle;
  final String topUserDescription;
  final String userTimeLineFollowers;
  final String userTimeLinePosts;
  final String userTimeLineFollowing;

  final List<PostDetail> postDetailsData;
  final List<PopularImage> popularImageData;

  User({
    required this.userProfilePicture,
    required this.firstName,
    required this.lastName,
    required this.topUserTitle,
    required this.topUserDescription,
    required this.userTimeLineFollowers,
    required this.userTimeLinePosts,
    required this.userTimeLineFollowing,
    required this.postDetailsData,
    required this.popularImageData,
  });
}

class PostDetail {
  final String postImage;
  final String postHeader;
  final String postDate;
  final String carouselImage1;
  final String carouselImage2;
  final String carouselImage3;
  final String carouselHeader;
  final String carouselDate;
  final String carouselMinRead;
  final String carouselDescription;
  final String timelineCategory;
  final String timelineDate;
  final String timelineTime;

  PostDetail({
    required this.postImage,
    required this.postHeader,
    required this.postDate,
    required this.carouselImage1,
    required this.carouselImage2,
    required this.carouselImage3,
    required this.carouselHeader,
    required this.carouselDate,
    required this.carouselMinRead,
    required this.carouselDescription,
    required this.timelineCategory,
    required this.timelineDate,
    required this.timelineTime,
  });
}

class PopularImage {
  final String image;
  PopularImage({
    required this.image,
  });
}

List<User> topUsers = [
  User(
    userProfilePicture: 'sampleProfile.png',
    firstName: 'Sang',
    lastName: 'Dong-Min',
    topUserTitle: 'Author & Writer',
    topUserDescription:
        'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
    userTimeLineFollowers: '76.42k',
    userTimeLinePosts: '3.42k',
    userTimeLineFollowing: '36.40k',
    postDetailsData: [
      PostDetail(
        postImage: 'assets/images/maldives3.jpg',
        postHeader:
            'Feel the thrill on the only\nsurf simulator in Maldives 2022',
        postDate: 'July 21 2022',
        carouselImage1: 'assets/images/maldives3.jpg',
        carouselImage2: 'assets/images/Rectangle.png',
        carouselImage3: 'assets/images/maldives2.jpg',
        carouselHeader: 'Unravel Mysteries of the Maldives',
        carouselDate: 'July 21',
        carouselMinRead: '8 min read',
        carouselDescription:
            "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
        timelineCategory: 'Politics',
        timelineDate: '21th July',
        timelineTime: '09:32 am',
      ),
      PostDetail(
        postImage: 'assets/images/popularImage2.png',
        postHeader: 'Putin to host ceremony',
        postDate: 'Oct 12, 2023',
        carouselImage1: 'carousel1.jpg',
        carouselImage2: 'carousel2.jpg',
        carouselImage3: 'carousel3.jpg',
        carouselHeader:
            'Putin to host ceremony\nannexing occupied Ukranian country which gives more problems and headaches',
        carouselDate: 'Oct 15, 2023',
        carouselMinRead: '7 min read',
        carouselDescription:
            "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
        timelineCategory: 'Science',
        timelineDate: 'Oct 12, 2023',
        timelineTime: '10:15 pm',
      ),
    ],
    popularImageData: [
      PopularImage(image: 'assets/images/popularImage1.png'),
      PopularImage(image: 'assets/images/popularImage2.jpg'),
    ],
  ),
  User(
    userProfilePicture: 'aithanProfile2.jpg',
    firstName: 'Aithan',
    lastName: 'Gimenez',
    topUserTitle: 'IT Programmer',
    topUserDescription:
        "I love to play games and I enjoy coding though even though it's difficult!",
    userTimeLineFollowers: '54.21k',
    userTimeLinePosts: '2.11k',
    userTimeLineFollowing: '1,415k',
    postDetailsData: [
      PostDetail(
        postImage: 'assets/images/MyTravel7.jpg',
        postHeader: 'A Journey to the Mountains',
        postDate: 'Oct 25 2021',
        carouselImage1: 'assets/images/MyTravel1.jpg',
        carouselImage2: 'assets/images/MyTravel3.jpg',
        carouselImage3: 'assets/images/MyTravel2.jpg',
        carouselHeader: 'Mountain Adventure',
        carouselDate: 'Oct 25',
        carouselMinRead: '7 min read',
        carouselDescription: 'Bike Adventure in the Mountains here in Cebu',
        timelineCategory: 'Love',
        timelineDate: '25th Oct',
        timelineTime: '06:02 am',
      ),
      PostDetail(
        postImage: 'assets/images/MyTravel7.jpg',
        postHeader: 'Random thing to say here',
        postDate: 'Oct 15 2023',
        carouselImage1: 'assets/images/MyTravel7.jpg',
        carouselImage2: 'assets/images/MyTravel6.jpg',
        carouselImage3: 'assets/images/MyTravel8.jpg',
        carouselHeader: 'My Tech Stuff',
        carouselDate: 'Oct 15',
        carouselMinRead: '7 min read',
        carouselDescription:
            'I have nothing much to say and I love tech and gaming. Work for the common good! Remember to not laugh at someone but educate them!',
        timelineCategory: 'Tech',
        timelineDate: '15th Oct',
        timelineTime: '1:15 pm',
      ),
    ],
    popularImageData: [
      PopularImage(image: 'assets/images/MyTravel9.jpg'),
      PopularImage(image: 'assets/images/MyTravel4.jpg'),
    ],
  ),
];
