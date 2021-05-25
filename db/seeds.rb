require 'database_cleaner'
require 'rainbow/refinement'
require 'faker'

using Rainbow

puts "Erasing DB".red

DatabaseCleaner.clean_with(:truncation)

puts "DB Cleaned".green

puts "Seeding...".yellow

# FAMILIES

x1Family = CarFamily.create(
  name: 'X1 Sports Activity Vehicle',
  description: 'The compact, yet intrepid, four-door SAV.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XA&client=byo&paint=P0C1M&fabric=FKCSW&sa=S01X1,S0205,S0249,S0255,S0302,S0316,S03AG,S03AT,S03L8,S0420,S0423,S0473,S0493,S04LU,S0508,S0534,S0544,S05AS,S0676,S06AC,S06AK,S06UN,S0775,S07HW&date=20200702&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x2Family = CarFamily.create(
  name: 'X2 Sports Activity Coupe',
  description: 'The sporty rebel made for the spirited thrill seeker.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=22XX&client=byo&paint=P0C1M&fabric=FKCSW&sa=S01XU,S0205,S0249,S0255,S0302,S0316,S03AG,S03MB,S0420,S0423,S0473,S0481,S04LU,S0508,S0534,S0544,S05A4,S05AS,S0676,S06AC,S06AK,S06NW,S06UN,S0775&date=20210302&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x3Family = CarFamily.create(
  name: 'X3 Sports Activity Vehicle',
  description: 'The versatile four-door SAV perfect for active lifestyles.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XQ&client=byo&paint=P0300&fabric=FK8SW&sa=S0255,S026W,S02TB,S0302,S0319,S03AG,S03AT,S03DZ,S03MB,S0420,S0423,S0430,S0431,S0459,S0481,S0493,S04K1,S04U0,S0508,S0534,S05A1,S05A4,S05AS,S0676,S06AC,S06AK,S06C2,S06U2,S06WD,S0775,S07HW&date=20200804&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x4Family = CarFamily.create(
  name: 'X4 Sports Activity Coupe',
  description: 'The coupe-inspired adventurer of the X family.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XR&client=byo&paint=P0C06&fabric=FK8SW&sa=S01X8,S02TB,S0302,S0319,S03DZ,S0402,S0420,S0423,S0430,S0431,S0459,S0481,S0493,S04K1,S04U0,S0534,S05A1,S05AS,S0676,S06AC,S06AK,S06C4,S06NS,S06U3,S0704,S0775,S07HW&date=20200804&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x5Family = CarFamily.create(
  name: 'X5 Sports Activity Vehicle',
  description: 'The original that inspired every X to follow.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XO&client=byo&paint=P0C27&fabric=FK8SW&sa=S01CE,S01SB,S0255,S02TB,S0302,S0319,S03AT,S03MB,S0402,S0420,S0423,S0459,S0481,S0494,S04AW,S04KR,S04T8,S04UR,S0552,S05A1,S05AC,S05AS,S0676,S06AC,S06AK,S06C4,S06U3,S0775,S07HW&date=20200804&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x6Family = CarFamily.create(
  name: 'X6 Sports Activity Coupe',
  description: 'The refined, reimagined coupe offering of a classic.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XU&client=byo&paint=P0C3D&fabric=FMCSW&sa=S01CE,S01SF,S0255,S0302,S0319,S0322,S03MB,S0402,S0420,S0423,S0459,S0481,S0494,S04KR,S04T8,S04UR,S05A1,S05AC,S05AS,S05AV,S0676,S06AC,S06AK,S06C4,S06U3,S0775,S07HW&date=20200804&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
x7Family = CarFamily.create(
  name: 'X7 Sports Activity Vehicle',
  description: 'The largest and most luxurious Sports Activity Vehicle ever built.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21SA&client=byo&paint=P0A90&fabric=FK8SW&sa=S01CE,S01XK,S0255,S02TB,S0302,S0319,S0322,S03AT,S03MB,S0418,S0420,S0423,S0481,S04HB,S04KR,S04UR,S05A1,S05AC,S05AS,S0676,S06AC,S06AK,S06C4,S06U3,S07LY&date=20200804&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)
alpinax7Family = CarFamily.create(
  name: 'ALPINA XB7',
  description: 'The luxury Sports Activity Vehicle with extraordinary performance and expressive style from ALPINA.',
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21SQ&client=byo&paint=P0C3Z&fabric=FVASW&sa=S02TB,S02VS,S0302,S0319,S0322,S03AT,S03DZ,S03MB,S0417,S0418,S0420,S0423,S044A,S0453,S0456,S04HA,S04HB,S04M5,S04T7,S04UR,S05A1,S05AC,S05AR,S05AU,S05AZ,S05DN,S0610,S0688,S06AC,S06AK,S06C4,S06DR,S06NW,S06U3,S0776,S0X2A,S0XEY&date=20200802&angle=40&quality=65&sharp=100&resp=png&BKGND=TRANSPARENT&width=2000'
)

# ENGINES

fourCyl = Propulsor.create(
  name: '2.0-liter BMW TwinPower Turbo inline 4-cylinder',
  energy: 'Gasoline',
)
hybridFourCyl = Propulsor.create(
  name: '2.0-liter BMW TwinPower Turbo inline 4-cylinder with integrated electric motor',
  energy: 'Hybrid',
)
sixCyl = Propulsor.create(
  name: '3.0-liter BMW TwinPower Turbo inline 6-cylinder',
  energy: 'Gasoline',
)
hybridSixCyl = Propulsor.create(
  name: '3.0-liter BMW TwinPower Turbo inline 6-cylinder with integrated electric motor',
  energy: 'Hybrid',
)

alpinaV8 = Propulsor.create(
  name: '4.4-liter BMW ALPINA Bi-Turbo V-8',
  energy: 'Gasoline',
)

# DRIVES

fwd = Drive.create(
  name: 'Front-wheel drive',
  shorthand: 'FWD',
)
rwd = Drive.create(
  name: 'Rear-wheel drive',
  shorthand: 'RWD',
)
xDrive = Drive.create(
  name: 'xDrive, intelligent all-wheel drive',
  shorthand: 'AWD',
)
alpinaxDrive = Drive.create(
  name: 'xDrive, intelligent all-wheel drive with ALPINA calibration',
  shorthand: 'AWD',
)

# PAINTS

AW = Paint.create(
  name: 'Alpine White',
  code: 'P0300',
  rgb: 'rgb(254,254,254)',
  price_mod: 0,
)
JB = Paint.create(
  name: 'Jet Black',
  code: 'P0668',
  rgb: 'rgb(15,15,15)',
  price_mod: 0,
)
BSM = Paint.create(
  name: 'Black Sapphire Metallic',
  code: 'P0475',
  rgb: 'rgb(22, 22, 22)',
  price_mod: 550,
)
CSM = Paint.create(
  name: 'Cashmere Silver Metallic',
  code: 'P0A72',
  rgb: 'rgb(88, 82, 76)',
  price_mod: 550,
)
GSM = Paint.create(
  name: 'Glacier Silver Metallic',
  code: 'P0A83',
  rgb: 'rgb(113, 114, 116)',
  price_mod: 550,
)
MinWM = Paint.create(
  name: 'Mineral White Metallic',
  code: 'P0A96',
  rgb: 'rgb(148, 147, 144)',
  price_mod: 550,
)
MinGM = Paint.create(
  name: 'Mineral Grey Metallic',
  code: 'P0B39',
  rgb: 'rgb(43, 49, 49)',
  price_mod: 550,
)
MisBM = Paint.create(
  name: 'Misano Blue Metallic',
  code: 'P0C1D',
  rgb: 'rgb(20, 69, 131)',
  price_mod: 550,
)
PhyBM = Paint.create(
  name: 'Phytonic Blue Metallic',
  code: 'P0C1M',
  rgb: 'rgb(31, 50, 76)',
  price_mod: 550,
)
GGoldM = Paint.create(
  name: 'Galvanic Gold Metalic',
  code: 'P0C1P',
  rgb: 'rgb(139, 112, 23)',
  price_mod: 550,
)
SOM = Paint.create(
  name: 'Sunset Orange Metallic',
  code: 'P0C1X',
  rgb: 'rgb(136, 41, 12)',
  price_mod: 550,
)
DGM = Paint.create(
  name: 'Dark Graphite Metallic',
  code: 'P0A90',
  rgb: 'rgb(43, 44, 47)',
  price_mod: 550,
)
CBM = Paint.create(
  name: 'Carbon Black Metallic',
  code: 'P0416',
  rgb: 'rgb(9, 10, 14)',
  price_mod: 550,
)
FRM = Paint.create(
  name: 'Flamenco Red Metallic',
  code: 'P0C06',
  rgb: 'rgb(100, 18, 21)',
  price_mod: 550,
)
SBrownM = Paint.create(
  name: 'Sparkling Brown Metallic',
  code: 'P0B53',
  rgb: 'rgb(35, 27, 19)',
  price_mod: 550,
)
AGreyM = Paint.create(
  name: 'Arctic Grey Metallic',
  code: 'P0C27',
  rgb: 'rgb(40, 44, 48)',
  price_mod: 550,
)
MGreenM = Paint.create(
  name: 'Manhattan Green Metallic',
  code: 'P0C3D',
  rgb: 'rgb(56, 51, 40)',
  price_mod: 550,
)
SBM = Paint.create(
  name: 'Storm Bay Metallic',
  code: 'P0C3N',
  rgb: 'rgb(56, 67, 75)',
  price_mod: 1200,
)
DravitGreyM = Paint.create(
  name: 'Dravit Grey Metallic',
  code: 'P0C36',
  rgb: 'rgb(45, 44, 49)',
  price_mod: 1_950,
)
TanzaniteBlueM = Paint.create(
  name: 'Tanzanite Blue Metallic',
  code: 'P0C3Z',
  rgb: 'rgb(16, 32, 57)',
  price_mod: 1_950,
)
AmetrinM = Paint.create(
  name: 'Ametrin Metallic',
  code: 'P0X1B',
  rgb: 'rgb(46, 24, 26)',
  price_mod: 1_950,
)
AlpinaBlueM = Paint.create(
  name: 'ALPINA Blue Metallic',
  code: 'P0X06',
  rgb: 'rgb(18, 25, 58)',
  price_mod: 0,
)
#  = Paint.create(
#   name: '',
#   code: '',
#   rgb: '',
#   price_mod: 0,
# )

# X1

Car.create(
  name: 'X1 sDrive28i',
  code: '21XA',
  model_year: 2021,
  hp: 228,
  mpg: 33,
  accel: 6.6,
  msrp: 35_400,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XA&client=byoc&paint=P0300&fabric=FKCSW&sa=S01X1%2CS0205%2CS0249%2CS0255%2CS0302%2CS0316%2CS03AG%2CS03AT%2CS03L8%2CS0420%2CS0423%2CS0473%2CS0493%2CS04LU%2CS0508%2CS0534%2CS0544%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06UN%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,CSM,GSM,MinWM,MinGM,MisBM,PhyBM,SBM],
  drive: fwd,
  propulsor: fourCyl,
  family: [x1Family]
)
Car.create(
  name: 'X1 xDrive28i',
  code: '21XB',
  model_year: 2021,
  hp: 228,
  mpg: 31,
  accel: 6.3,
  msrp: 37_400,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XB&client=byoc&paint=P0300&fabric=FKCSW&sa=S01X1%2CS0205%2CS0249%2CS0255%2CS0302%2CS0316%2CS03AG%2CS03AT%2CS03L8%2CS0420%2CS0423%2CS0473%2CS0493%2CS04LU%2CS0508%2CS0534%2CS0544%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06UN%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,CSM,GSM,MinWM,MinGM,MisBM,PhyBM,SBM],
  drive: xDrive,
  propulsor: fourCyl,
  family: [x1Family]
)

# X2

Car.create(
  name: 'X2 sDrive28i',
  code: '22XX',
  model_year: 2022,
  hp: 228,
  mpg: 32,
  accel: 6.6,
  msrp: 36_600,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=22XX&client=byoc&paint=P0300&fabric=FKCSW&sa=S01XU%2CS0205%2CS0249%2CS0255%2CS0302%2CS0316%2CS03AG%2CS03MB%2CS0420%2CS0423%2CS0473%2CS0481%2CS04LU%2CS0508%2CS0534%2CS0544%2CS05A4%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06NW%2CS06UN%2CS0775&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,MinGM,MisBM,PhyBM,GGoldM,SBM,SOM],
  drive: fwd,
  propulsor: fourCyl,
  family: [x2Family]
)
Car.create(
  name: 'X2 xDrive28i',
  code: '22XX',
  model_year: 2022,
  hp: 228,
  mpg: 32,
  accel: 6.6,
  msrp: 36_600,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=22XX&client=byoc&paint=P0300&fabric=FKCSW&sa=S01XU%2CS0205%2CS0249%2CS0255%2CS0302%2CS0316%2CS03AG%2CS03MB%2CS0420%2CS0423%2CS0473%2CS0481%2CS04LU%2CS0508%2CS0534%2CS0544%2CS05A4%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06NW%2CS06UN%2CS0775&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,MinGM,MisBM,PhyBM,GGoldM,SBM,SOM],
  drive: xDrive,
  propulsor: fourCyl,
  family: [x2Family]
)

# X3

Car.create(
  name: 'X3 sDrive30i',
  code: '21XQ',
  model_year: 2021,
  hp: 248,
  mpg: 29,
  accel: 6,
  msrp: 43_000,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XQ&client=byoc&paint=P0300&fabric=FK8SW&sa=S0255%2CS026W%2CS02TB%2CS0302%2CS0319%2CS03AG%2CS03AT%2CS03DZ%2CS03MB%2CS0420%2CS0423%2CS0430%2CS0431%2CS0459%2CS0481%2CS0493%2CS04K1%2CS04U0%2CS0508%2CS0534%2CS05A1%2CS05A4%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C2%2CS06U2%2CS06WD%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,PhyBM,CBM,DGM],
  drive: rwd,
  propulsor: fourCyl,
  family: [x3Family]
)
Car.create(
  name: 'X3 xDrive30i',
  code: '21XQ',
  model_year: 2021,
  hp: 248,
  mpg: 29,
  accel: 6,
  msrp: 45_000,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XQ&client=byoc&paint=P0300&fabric=FK8SW&sa=S0255%2CS026W%2CS02TB%2CS0302%2CS0319%2CS03AG%2CS03AT%2CS03DZ%2CS03MB%2CS0420%2CS0423%2CS0430%2CS0431%2CS0459%2CS0481%2CS0493%2CS04K1%2CS04U0%2CS0508%2CS0534%2CS05A1%2CS05A4%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C2%2CS06U2%2CS06WD%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,PhyBM,CBM,DGM],
  drive: xDrive,
  propulsor: fourCyl,
  family: [x3Family]
)
Car.create(
  name: 'X3 xDrive30e',
  code: '21XQ',
  model_year: 2021,
  hp: 288,
  mpg: 60,
  accel: 5.9,
  msrp: 49_600,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XQ&client=byoc&paint=P0300&fabric=FK8SW&sa=S0255%2CS026W%2CS02TB%2CS0302%2CS0319%2CS03AG%2CS03AT%2CS03DZ%2CS03MB%2CS0420%2CS0423%2CS0430%2CS0431%2CS0459%2CS0481%2CS0493%2CS04K1%2CS04U0%2CS0508%2CS0534%2CS05A1%2CS05A4%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C2%2CS06U2%2CS06WD%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,PhyBM,CBM,DGM],
  drive: xDrive,
  propulsor: hybridFourCyl,
  family: [x3Family]
)

# X4

Car.create(
  name: 'X4 xDrive30i',
  code: '21XR',
  model_year: 2021,
  hp: 248,
  mpg: 29,
  accel: 6,
  msrp: 51_600,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XR&client=byoc&paint=P0300&fabric=FK8SW&sa=S01X8%2CS02TB%2CS0302%2CS0319%2CS03DZ%2CS0402%2CS0420%2CS0423%2CS0430%2CS0431%2CS0459%2CS0481%2CS0493%2CS04K1%2CS04U0%2CS0534%2CS05A1%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06NS%2CS06U3%2CS0704%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,BSM,GSM,MinWM,PhyBM,CBM,DGM,FRM],
  drive: xDrive,
  propulsor: fourCyl,
  family: [x4Family]
)

# X5

Car.create(
  name: 'X5 sDrive40i',
  code: '21XG',
  model_year: 2021,
  hp: 335,
  mpg: 26,
  accel: 5.3,
  msrp: 59_400,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XG&client=byoc&paint=P0300&fabric=FK8SW&sa=S01CE%2CS01SB%2CS0255%2CS02TB%2CS0302%2CS0319%2CS03AT%2CS03MB%2CS0402%2CS0420%2CS0423%2CS0459%2CS0481%2CS0494%2CS04AW%2CS04KR%2CS04T8%2CS04UR%2CS0552%2CS05A1%2CS05AC%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,PhyBM,AGreyM,MGreenM],
  drive: rwd,
  propulsor: sixCyl,
  family: [x5Family]
)
Car.create(
  name: 'X5 xDrive40i',
  code: '21XG',
  model_year: 2021,
  hp: 335,
  mpg: 25,
  accel: 5.3,
  msrp: 61_700,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XG&client=byoc&paint=P0300&fabric=FK8SW&sa=S01CE%2CS01SB%2CS0255%2CS02TB%2CS0302%2CS0319%2CS03AT%2CS03MB%2CS0402%2CS0420%2CS0423%2CS0459%2CS0481%2CS0494%2CS04AW%2CS04KR%2CS04T8%2CS04UR%2CS0552%2CS05A1%2CS05AC%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,PhyBM,AGreyM,MGreenM],
  drive: xDrive,
  propulsor: sixCyl,
  family: [x5Family]
)
Car.create(
  name: 'X5 xDrive45e',
  code: '21XT',
  model_year: 2021,
  hp: 389,
  mpg: 50,
  accel: 5.3,
  msrp: 65_400,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XT&client=byoc&paint=P0300&fabric=FK8SW&sa=S01SB%2CS0255%2CS02TB%2CS02VR%2CS0302%2CS0319%2CS03AT%2CS03MB%2CS0402%2CS0420%2CS0423%2CS0459%2CS0481%2CS0494%2CS04AW%2CS04KR%2CS04T8%2CS04UR%2CS0552%2CS05A1%2CS05AC%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23F6F6F6&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,PhyBM,AGreyM,MGreenM],
  drive: xDrive,
  propulsor: hybridSixCyl,
  family: [x5Family]
)

# X6

Car.create(
  name: 'X6 sDrive40i',
  code: '21XU',
  model_year: 2021,
  hp: 335,
  mpg: 26,
  accel: 5.3,
  msrp: 65_050,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XU&client=byoc&paint=P0300&fabric=FMCSW&sa=S01CE%2CS01SF%2CS0255%2CS0302%2CS0319%2CS0322%2CS03MB%2CS0402%2CS0420%2CS0423%2CS0459%2CS0481%2CS0494%2CS04KR%2CS04T8%2CS04UR%2CS05A1%2CS05AC%2CS05AS%2CS05AV%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,FRM,PhyBM,AGreyM,MGreenM],
  drive: rwd,
  propulsor: sixCyl,
  family: [x6Family]
)
Car.create(
  name: 'X6 xDrive40i',
  code: '21XL',
  model_year: 2021,
  hp: 335,
  mpg: 25,
  accel: 5.3,
  msrp: 67_350,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21XG&client=byoc&paint=P0300&fabric=FK8SW&sa=S01CE%2CS01SB%2CS0255%2CS02TB%2CS0302%2CS0319%2CS03AT%2CS03MB%2CS0402%2CS0420%2CS0423%2CS0459%2CS0481%2CS0494%2CS04AW%2CS04KR%2CS04T8%2CS04UR%2CS0552%2CS05A1%2CS05AC%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS0775%2CS07HW&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,FRM,PhyBM,AGreyM,MGreenM],
  drive: xDrive,
  propulsor: sixCyl,
  family: [x6Family]
)

# X7

Car.create(
  name: 'X7 xDrive40i',
  code: '21SA',
  model_year: 2021,
  hp: 335,
  mpg: 24,
  accel: 5.8,
  msrp: 74_900,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21SA&client=byoc&paint=P0300&fabric=FK8SW&sa=S01CE%2CS01XK%2CS0255%2CS02TB%2CS0302%2CS0319%2CS0322%2CS03AT%2CS03MB%2CS0418%2CS0420%2CS0423%2CS0481%2CS04HB%2CS04KR%2CS04UR%2CS05A1%2CS05AC%2CS05AS%2CS0676%2CS06AC%2CS06AK%2CS06C4%2CS06U3%2CS07LY&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,JB,CBM,BSM,DGM,MinWM,SBrownM,PhyBM,AGreyM,MGreenM,DravitGreyM,TanzaniteBlueM,AmetrinM],
  drive: xDrive,
  propulsor: sixCyl,
  family: [x7Family]
)

# Alpina X7

Car.create(
  name: 'Alpina XB7',
  code: '21SQ',
  model_year: 2021,
  hp: 612,
  mpg: 21,
  accel: 4,
  msrp: 141_300,
  img_thumb: 'https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle=21SQ&client=byoc&paint=P0300&fabric=FVASW&sa=S02TB%2CS02VS%2CS0302%2CS0319%2CS0322%2CS03AT%2CS03DZ%2CS03MB%2CS0417%2CS0418%2CS0420%2CS0423%2CS044A%2CS0453%2CS0456%2CS04HA%2CS04HB%2CS04M5%2CS04T7%2CS04UR%2CS05A1%2CS05AC%2CS05AR%2CS05AU%2CS05AZ%2CS05DN%2CS0610%2CS0688%2CS06AC%2CS06AK%2CS06C4%2CS06DR%2CS06NW%2CS06U3%2CS0776%2CS0XEY%2CS0Z0C&angle=270&quality=90&sharp=99&resp=jpg&cut=3&bkgnd=%23FFFFFF&width=700',
  paints: [AW,BSM,MinWM,PhyBM,AGreyM,AlpinaBlueM,DravitGreyM,TanzaniteBlueM,AmetrinM],
  drive: alpinaxDrive,
  propulsor: alpinaV8,
  family: [alpinax7Family]
)

30.times do
  Dealership.create(
    name: Faker::Name.last_name  + ' BMW Dealership',
    country: Faker::Address.unique.country,
    city: Faker::Address.unique.city,
    address: Faker::Address.unique.street_address,
  )
end

User.create(
  username: 'demo_admin',
  email: 'demo_admin@email.com',
  admin: true,
  password: '12345678',
  password_confirmation: '12345678',
)
User.create(
  username: 'demo_user',
  email: 'demo_user@email.com',
  password: '12345678',
  password_confirmation: '12345678',
)

puts """Seeded: \n" + 
  "#{Paint.count} ".yellow + "Paints,\n".green +
  "#{Car.count} ".yellow + "Cars,\n".green +
  "#{CarFamily.count} ".yellow + "CarFamilies,\n".green +
  "#{Dealership.count} ".yellow + "Dealerships,\n".green +
  "#{User.count} ".yellow + "Users.""".green