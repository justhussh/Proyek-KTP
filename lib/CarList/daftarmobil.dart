class DaftarMobil {
  String imageAsset;
  String seat;
  String harga;
  String merk;
  String avail;

  DaftarMobil(
      {required this.imageAsset,
      required this.seat,
      required this.harga,
      required this.merk,
      required this.avail});
}

var daftarMobilList = [
  DaftarMobil(
      imageAsset: 'assets/tesla.jpg',
      seat: '2',
      harga: 'Rp. 400.000,00',
      merk: 'Tesla Model S',
      avail: 'Tersedia'),
  DaftarMobil(
      imageAsset: 'assets/avanza.jpeg',
      seat: '6',
      harga: 'Rp. 200.000,00',
      merk: '2019 Avanza 1.3 G',
      avail: 'Tersedia'),
  DaftarMobil(
      imageAsset: 'assets/bajaj.jpg',
      seat: '3',
      harga: 'Rp. 50.000,00',
      merk: 'Bajaj Bikes',
      avail: 'Tersedia'),
  DaftarMobil(
      imageAsset: 'assets/ferrari.jpeg',
      seat: '2',
      harga: 'Rp. 450.000,00',
      merk: 'Ferrari SF90 Stradale',
      avail: 'Tersedia'),
  DaftarMobil(
      imageAsset: 'assets/lambo.jpeg',
      seat: '2',
      harga: 'Rp. 420.000,00',
      merk: 'Lamborghini Evo Spyder',
      avail: 'Tersedia'),
];
