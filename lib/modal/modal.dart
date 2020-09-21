class Destinations {
  String name;

  Destinations(this.name);

  static List<Destinations> getDestinatioins() {
    return <Destinations>[
      Destinations('Goa'),
      Destinations('Banglore'),
      Destinations('Deheradun'),
      Destinations('Dehli')
    ];
  }
}
