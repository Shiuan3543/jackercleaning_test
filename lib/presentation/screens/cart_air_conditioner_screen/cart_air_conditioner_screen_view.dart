part of 'cart_air_conditioner_screen.dart';

class _CartAirConditionerScreenView extends WidgetView<CartAirConditionerScreen,
    _CartAirConditionerScreenLogic> {
  const _CartAirConditionerScreenView(_CartAirConditionerScreenLogic state)
      : super(state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('冷氣機清潔'),
      ),
      body: UI.listViewBuilder(
        children: _buildListItems(),
      ),
      bottomNavigationBar: BottomNavigationButton(
        onTap: s.nextStep,
        text: '下一步',
      ),
    );
  }

  List<Widget> _buildListItems() {
    return [
      24.height,
      const Subhead(title: '服務項目'),
      16.height,
      Card(
        child: Consumer<CartViewModel>(
          builder: (context, cartViewModel, child) {
            final cartItems = cartViewModel.cartItems;

            return Column(
              children: cartItems
                  .mapIndexed((cartItem, index) => Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: index == cartItems.length - 1
                              ? null
                              : Border(
                                  bottom: BorderSide(
                                    color: s.theme.scaffoldBackgroundColor,
                                    width: 2,
                                  ),
                                ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    cartItem.name,
                                  ),
                                  Text(
                                    '\$ ${cartItem.price}',
                                    style: TextStyle(
                                      color: s.theme.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _buildCartCountButton(
                              isIncrease: false,
                              onTap: () {
                                cartViewModel.addDeltaToCart(cartItem.id, -1);
                              },
                            ),
                            Text(
                              cartItem.count.toString().padLeft(2, ' '),
                            ),
                            _buildCartCountButton(
                              isIncrease: true,
                              onTap: () {
                                cartViewModel.addDeltaToCart(cartItem.id, 1);
                              },
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    ];
  }

  Widget _buildCartCountButton({
    required bool isIncrease,
    required GestureTapCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      customBorder: CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: s.theme.primaryColor,
          ),
          child: Icon(
            isIncrease ? Icons.add : Icons.remove,
            color: Colors.white,
            size: 12,
          ),
        ),
      ),
    );
  }
}
