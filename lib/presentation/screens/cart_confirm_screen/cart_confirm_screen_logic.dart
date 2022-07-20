part of 'cart_confirm_screen.dart';

class _CartConfirmScreenLogic extends State<CartConfirmScreen> {
  void checkout() {
    final cart = Provider.of<CartViewModel>(context, listen: false);
    cart.clearCart();

    showDialog(context: context, builder: (_) => AlertDialog(
      title: Text('付款成功'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).popUntil(ModalRoute.withName(CartAirConditionerScreen.getPath()));
          },
          child: Text('確定'),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) => _CartConfirmScreenView(this);
}
