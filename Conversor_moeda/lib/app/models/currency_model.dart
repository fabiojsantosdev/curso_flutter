class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double ethereum;
  final double bitcoin;

  CurrencyModel( {required this.name, required this.real,required this.dolar,
    required this.euro, required this.ethereum, required this.bitcoin});

  static List<CurrencyModel> getCurrencies(){
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real:1.0, dolar:0.18, euro:0.15,ethereum: 0.000043 ,bitcoin:0.000016),
      CurrencyModel(
          name: 'Dolar', real:5.63, dolar:1.0, euro:0.85, ethereum: 0.00024,bitcoin:0.000088),
      CurrencyModel(
          name: 'Euro', real:6.62, dolar:1.17, euro:1.0, ethereum: 0.00029,bitcoin:0.00010),
      CurrencyModel(
          name: 'Ethereum', real:23091.68, dolar:4088.93, euro:3510.76, ethereum: 1.0,bitcoin:0.075),
      CurrencyModel(
          name: 'Bitcoin', real:64116.51, dolar:11351.30, euro:9689.34, ethereum: 0.075, bitcoin:1.0),
    ];
  }
}