class TPricingCalculator {
  //--calculate the price based on tax and shipping
  static double calculateTotalPrice(double productprice, String location) {
    //getting the tax rate for the location
    double taxrate = getTaxrateForLocation(location);
    double taxAmount = productprice * taxrate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productprice + taxAmount + shippingCost;
    return totalPrice;
  }

  //--calculate shipping cost
  static String calculateShippingCost(double productprice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxrateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxrateForLocation(String location) {
    //lookup the tax rate for the given location from a tax rate database or API
    //return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 0.10;
  }

  /// -sum all cart values and return total amount
  /// static double calculateCartTotal(cartModel cart)
  /// {
  ///   return cart.items.map((e)=> e.price).fold(0, (previousPrice, currentPrice)=> previousprice +(currentPrice ?? 0));
  ///  }
}
