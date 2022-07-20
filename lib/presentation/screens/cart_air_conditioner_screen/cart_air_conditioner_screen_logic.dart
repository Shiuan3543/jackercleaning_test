part of 'cart_air_conditioner_screen.dart';

class _CartAirConditionerScreenLogic extends State<CartAirConditionerScreen> {
  var theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return _CartAirConditionerScreenView(this);
  }

  void nextStep() {
    final cart = Provider.of<CartViewModel>(context, listen: false);

    final hasCountItemLength = cart.cartItems.where((e) => e.count > 0).length;

    if (hasCountItemLength > 1) {
      showDialog(
          context: context,
          builder: (_) => const AlertDialog(
                title: Text('只能選擇一個'),
              ));
      return;
    }

    if (hasCountItemLength == 0) {
      showDialog(
          context: context,
          builder: (_) => const AlertDialog(
                title: Text('必須選擇至少一個'),
              ));
      return;
    }

    Navigator.of(context).pushNamed(CartConfirmScreen.getPath());
  }
}
