part of 'cart_confirm_screen.dart';

class _CartConfirmScreenView extends WidgetView<CartConfirmScreen, _CartConfirmScreenLogic> {
  const _CartConfirmScreenView(_CartConfirmScreenLogic state) : super(state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('確認價格'),
      ),
      body: UI.listViewBuilder(
        padding: EdgeInsets.zero,
        children: _buildListItems(),
      ),
      bottomNavigationBar: BottomNavigationButton(
        onTap: s.checkout,
        text: '結帳',
      ),
    );
  }

  List<Widget> _buildListItems() {
    return [
      Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            24.height,
            const Text(
              '訂單內容',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            8.height,
            const Text(
              '服務項目',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            8.height,
            Consumer<CartViewModel>(
              builder: (context, cartViewModel, child) {
                final cartItems = cartViewModel.cartItems;

                return Column(
                  children: cartItems
                      .where((e) => e.count > 0)
                      .map(_buildCartItem)
                      .toList(),
                );
              },
            ),
            8.height,
            Image.asset(
              ASSET_AIR_CONDITIONER,
            ),
          ].map((e) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: e,
          )).toList(),
        ),
      ),
    ];
  }

  Widget _buildCartItem(CartItem cartItem) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 8,
            ),
            child: Text(
              '${cartItem.name} x ${cartItem.count}',
            ),
          ),
        ),
        Text(
          '${cartItem.count * cartItem.price}',
        ),
      ],
    );
  }
}
