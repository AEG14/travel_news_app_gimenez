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

List<User> topUsers = [];

// var topUsers = [
//   User(
//     topUserName: 'Sang Dong-Min',
//     topUserTitle: 'Author & Writer',
//     topUserDescription:
//         'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
//     postImage1: 'assets/images/maldives3.jpg',
//     postHeader1: 'Feel the thrill on the only\nsurf simulator in Maldives 2022',
//     postDate1: 'Sep 9 2022',
//     postImage2: 'assets/images/popularImage1.png',
//     postHeader2: 'Random thing to say here',
//     postDate2: 'July 21 2022',
//     carouselImage1: 'assets/images/maldives3.jpg',
//     carouselImage2: 'assets/images/Rectangle.png',
//     carouselImage3: 'assets/images/maldives2.jpg',
//     carouselHeader1: 'Unravel Mysteries of the Maldives',
//     carouselDate: 'May 17',
//     carouselMinRead: '8 min read',
//     carouselDescription:
//         "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
//     userTimeLineFollowers: '76.42k',
//     userTimeLinePosts: '3.42k',
//     userTimeLineFollowing: '36.40k',
//     userTimeLineDate1: '16th May',
//     userTimeLineDate2: '11th May',
//     userTimeLineTime1: '09:32 pm',
//     userTimeLineTime2: '10:15 am',
//     userPopularImage1: 'assets/images/popularImage1.png',
//     userPopularImage2: 'assets/images/popularImage2.jpg',
//     userTimeLineCategory1: 'Politics',
//     userTimeLineCategory2: 'Science',
//     userTimeLineDescription1:
//         "Iran's raging protests Fifth\nFifth Iranian paramilitary message thingy blablabla",
//     userTimeLineDescription2:
//         'Putin to host ceremony\nannexing occupied Ukranian country which gives more problems and headaches',
//     userTimeLineImage1: '/assets/images/timelineImage1.png',
//     userTimeLineImage2: '/assets/images/timelineImage2.png',
//   ),
//   User(
//     topUserName: 'Aithan Gimenez',
//     topUserTitle: 'IT Programmer',
//     topUserDescription:
//         "I love to play games and I enjoy coding though even though it's difficult!",
//     postImage1: 'assets/images/MyTravel7.jpg',
//     postHeader1: 'Bike Adventure in the Mountains here in Cebu',
//     postDate1: 'Oct 25 2021',
//     postImage2: 'assets/images/MyTravel1.png',
//     postHeader2: 'Random thing to say here',
//     postDate2: 'Dec 25 2022',
//     carouselImage1: 'assets/images/MyTravel7.jpg',
//     carouselImage2: 'assets/images/MyTravel6.jpg',
//     carouselImage3: 'assets/images/MyTravel8.jpg',
//     carouselHeader1: 'Exploring Tech as a Student',
//     carouselDate: 'Oct 15',
//     carouselMinRead: '8 min read',
//     carouselDescription:
//         'I have nothing much to say and I love tech and gaming. Work for the common good! Remember to not laugh at someone but educate them!',
//     userTimeLineFollowers: '54.21k',
//     userTimeLinePosts: '2.11k',
//     userTimeLineFollowing: '1,415k',
//     userTimeLineDate1: '14th May',
//     userTimeLineDate2: '17th Dec',
//     userTimeLineTime1: '06:02 am',
//     userTimeLineTime2: '1:15 pm',
//     userPopularImage1: 'assets/images/MyTravel9.jpg',
//     userPopularImage2: 'assets/images/MyTravel4.jpg',
//     userTimeLineCategory1: 'Love',
//     userTimeLineCategory2: 'Adventure',
//     userTimeLineDescription1:
//         "Aithan's Happiness\n required this picture paints a thousand words and I can't ellaborate more blabla",
//     userTimeLineDescription2:
//         "Storm in Cebu\nmade me feel sad for my family while I'm enjoying the scenery here in Manila",
//     userTimeLineImage1: '/assets/images/MyTravel3.jpg',
//     userTimeLineImage2: '/assets/images/MyTravel2.jpg',
//   ),
// ];
