

class MyBitList {
  static List<MyBit> list = [
    MyBit("BitCoin", "BTC", "assets/bitcoin.png", "12,000", "2.35%"),
    MyBit("Ethereum", "ETH", "assets/ethereum.png", "20,000", "9.35%"),
    MyBit("BNB", "BNB", "assets/bnb.png", "2,000", "10.35%"),
  ];
}

class MyBit {
  final String name;
  final String shortForm;
  final String icon;
  final String totalAmout;
  final String percentage;

  MyBit(this.name, this.shortForm, this.icon, this.totalAmout, this.percentage);
}
