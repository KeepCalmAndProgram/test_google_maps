enum Gender { trans, helicopter, everybody }

class Human {
  final Gender gender;
  final double height;
  final double weight;

  Human(this.gender, this.height, this.weight);

  void walk() {
    print('Human is walking');
  }
}

class Man extends Human {
  final bool isWorking;
  final int carPrice;

  Man(
      super.gender,
      super.height,
      super.weight, {
        required this.isWorking,
        required this.carPrice,
      });

  @override
  void walk() {
    super.walk();
    print('as a man!');
  }

  void sayBoyz() {
    print('Elo Boyzzz');
  }
}

class Female extends Human {
  final bool hasKids;
  final int salary;

  Female(
      super.gender,
      super.height,
      super.weight, {
        required this.hasKids,
        required this.salary,
      });

  @override
  void walk() {
    super.walk();
    print('as a female!');
  }

  void sayBitches() {
    print('Bitcheees!');
  }
}

void main() {
  // Narrowing the interface
  // human of Human class will have all Human characteristics and methods (with the
  // overriden one), but won't have anything from Man despite the object created is a Man
  final Human human = Man(
    Gender.trans,
    190,
    80,
    isWorking: true,
    carPrice: 2000,
  );

  // Usual class creation, Human and Man charateristics available
  final man = Man(
    Gender.helicopter,
    180,
    80,
    isWorking: false,
    carPrice: 10000,
  );

  human.walk();
  man.walk();

  // Usual class creation, Human and Female charateristics available
  final female = Female(
    Gender.helicopter,
    160,
    50,
    hasKids: false,
    salary: 10000,
  );
  female
    ..walk()
    ..sayBitches();
}