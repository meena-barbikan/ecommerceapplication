class TpricingCalculator {
  static double calculateTotalPrice(double productprice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxamount = productprice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalprice = productprice + taxamount + shippingCost;
    return totalprice;
  }

  static String calculateShippingCost(double productprice, String location) {
    double shippingcost = getShippingCost(location);
    return shippingcost.toStringAsFixed(2);
  }

  static String calculateTax(double productprice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxamount = productprice * taxRate;
    return taxamount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 1.0;
  }

  static double getShippingCost(String location) {
    return 1.0;
  }
}
