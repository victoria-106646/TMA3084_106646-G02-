import 'dart:io';

void main() {
  print('Pizza Price: Small: RM5, Medium: RM7, Large: RM10');

  String pizzaSize = '';

  // To enter pizza size
  while (pizzaSize != 'small' &&
      pizzaSize != 'medium' &&
      pizzaSize != 'large') {
    print('Please enter your pizza size (small, medium, or large):');
    pizzaSize = stdin.readLineSync()!.toLowerCase();

    if (pizzaSize != 'small' &&
        pizzaSize != 'medium' &&
        pizzaSize != 'large') {
      print('Invalid pizza size, please try again.');
    }
  }

  print('How many pizzas do you want of $pizzaSize?');
  int quantity = int.parse(stdin.readLineSync()!);

  int totalPayment = 0;

  switch (pizzaSize) {
    case 'small':
      totalPayment = 5 * quantity;
      break;

    case 'medium':
      totalPayment = 7 * quantity;
      break;

    case 'large':
      totalPayment = 10 * quantity;
      break;

    default:
      print('Invalid pizza size.');
  }

  print('Your total is: RM$totalPayment');
}