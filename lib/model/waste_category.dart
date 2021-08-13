class WasteCategory{
  String categoryName;
  String plasticName;
  String description;
  String price;
  String plasticCode;
  String imagePath;

  WasteCategory({
    required this.categoryName,
    required this.plasticName,
    required this.description,
    required this.price,
    required this.plasticCode,
    required this.imagePath,
});

}


var wasteCategoryList = [
  WasteCategory(
    categoryName: 'Botol Plastik',
    plasticName: 'PET Bening Besar',
    description: 'Octopus menerima semua plastik sejenis yang tergolong PET Bening Besar seperti botol minuman ukuran 1 L - 1,5 L. Brand yang tertera pada aplikasi hanya contoh',
    price: '+15 DTBM',
    plasticCode: 'images/Resin_Code_1_PETE.png',
    imagePath: 'images/pet_bening_besar.png'
  ),

  WasteCategory(
      categoryName: 'Botol Plastik',
      plasticName: 'PET Bening Sedang',
      description: 'Octopus menerima semua plastik sejenis yang tergolong PET Bening Sedang seperti botol minuman ukuran 400ml - 950ml. Brand yang tertera pada aplikasi hanya contoh',
      price: '+5 DTBM',
      plasticCode: 'images/Resin_Code_1_PETE.png',
      imagePath: 'images/Pet_bening_sedang.png'
  ),

  WasteCategory(
      categoryName: 'Botol Plastik',
      plasticName:  'PET Bening Kecil',
      description: 'Octopus menerima semua plastik sejenis yang tergolong PET Bening Kecil seperti botol minuman ukuran < 350 ml. Brand yang tertera pada aplikasi hanya contoh',
      price: '+5 DTBM',
      plasticCode: 'images/Resin_Code_1_PETE.png',
      imagePath: 'images/Pet_bening_kecil.png'
  ),

  WasteCategory(
      categoryName: 'Gelas Plastik',
      plasticName: 'PP Gelas Besar',
      description: 'Octopus menerima semua plastik sejenis yang tergolong PP Gelas Besar. Brand yang tertera pada aplikasi hanya contoh',
      price: '+2 DTBM',
      plasticCode: 'images/Resin_Code_5_PP.png',
      imagePath: 'images/PP_Gelas_besar.png'
  ),

  WasteCategory(
      categoryName: 'Gelas Plastik',
      plasticName: 'PP Gelas Kecil',
      description: 'Octopus menerima semua plastik sejenis yang tergolong PP Gelas Kecil. Brand yang tertera pada aplikasi hanya contoh',
      price: '+1 DTBM',
      plasticCode: 'images/Resin_Code_5_PP.png',
      imagePath: 'images/PP_Gelas_kecil.png'
  ),

  WasteCategory(
      categoryName: 'Plastik HDPE',
      plasticName: 'HDPE',
      description: 'Octopus menerima semua plastik jenis HDPE sesuai kategori yang tertera pada aplikasi. Brand yang tertera hanya contoh',
      price: '+10 DTBM',
      plasticCode: 'images/Resin_Code_2_HDPE.png',
      imagePath: 'images/HDPE.png'),
];

