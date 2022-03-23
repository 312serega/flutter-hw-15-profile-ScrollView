class User {
  int id;
  String name;
  String lastname;
  String position;
  String image;

  User({
    required this.id,
    required this.name,
    required this.lastname,
    required this.position,
    required this.image,
  });

  static List<User> getUser() {
    return [
      User(
        id: 1,
        name: 'Corey',
        lastname: 'George',
        position: 'Developer',
        image: 'assets/img/user1.jpg',
      ),
      User(
        id: 1,
        name: 'Ahmad',
        lastname: 'Vetrovs',
        position: 'Developer',
        image: 'assets/img/user2.jpg',
      ),
      User(
        id: 2,
        name: 'Cristofer',
        lastname: 'Workman',
        position: 'Developer',
        image: 'assets/img/user3.jpg',
      ),
      User(
        id: 3,
        name: 'Tiana',
        lastname: 'Korsgaard',
        position: 'Developer',
        image: 'assets/img/user4.jpg',
      ),
      User(
        id: 4,
        name: 'Tiana',
        lastname: 'Korsgaard',
        position: 'Developer',
        image: 'assets/img/user3.jpg',
      )
    ];
  }

  static User getUserById(int id) {
    return getUser().where((element) => element.id == id).first;
  }
}
