# --- APAKAH DATA INI DAPAT DIPERCAYA?
# --- REFERENSI:
# --- 1. Kami Bertanya kepada Epidemiolog: Apakah Data COVID-19 Pemerintah Bisa
# ------ Dipercaya? | Buka Mata | https://youtu.be/GuJtjE1wHXA
# --- 2. Surveilans Covid-19 dan Penyelidikan Epidemiologi Covid-19
# ------ https://youtu.be/erP1klFq9MQ

if Case.all.size > 0
  puts "INFO: tabel 'cases' sudah terisi data"
  exit
end

data = Case.create(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-02'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-03'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-04'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-05'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   4,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-06'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   4,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-07'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   6,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-08'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   19,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-09'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   27,
  sembuh_covid:    2,
  meninggal_covid: 0,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-10'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   34,
  sembuh_covid:    2,
  meninggal_covid: 1,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-11'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   34,
  sembuh_covid:    2,
  meninggal_covid: 1,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-12'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   69,
  sembuh_covid:    2,
  meninggal_covid: 4,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-13'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   96,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-14'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   117,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-15'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   134,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-16'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   172,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-17'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   227,
  sembuh_covid:    11,
  meninggal_covid: 19,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-18'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   311,
  sembuh_covid:    11,
  meninggal_covid: 25,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-19'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   369,
  sembuh_covid:    15,
  meninggal_covid: 32,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-20'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   450,
  sembuh_covid:    15,
  meninggal_covid: 38,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-21'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   514,
  sembuh_covid:    29,
  meninggal_covid: 48,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-22'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   579,
  sembuh_covid:    30,
  meninggal_covid: 49,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-23'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   686,
  sembuh_covid:    30,
  meninggal_covid: 55,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-24'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   790,
  sembuh_covid:    31,
  meninggal_covid: 58,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-25'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   893,
  sembuh_covid:    35,
  meninggal_covid: 78,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-26'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1046,
  sembuh_covid:    46,
  meninggal_covid: 87,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-27'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1155,
  sembuh_covid:    59,
  meninggal_covid: 102,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-28'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1285,
  sembuh_covid:    64,
  meninggal_covid: 114,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-29'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1414,
  sembuh_covid:    75,
  meninggal_covid: 122,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-30'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1528,
  sembuh_covid:    81,
  meninggal_covid: 136,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-03-31'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1677,
  sembuh_covid:    103,
  meninggal_covid: 157,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-01'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1790,
  sembuh_covid:    112,
  meninggal_covid: 170,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-02'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   1986,
  sembuh_covid:    134,
  meninggal_covid: 181,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-03'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2092,
  sembuh_covid:    150,
  meninggal_covid: 191,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-04'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2273,
  sembuh_covid:    164,
  meninggal_covid: 198,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-05'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2491,
  sembuh_covid:    192,
  meninggal_covid: 209,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-06'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2738,
  sembuh_covid:    204,
  meninggal_covid: 221,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-07'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   2956,
  sembuh_covid:    222,
  meninggal_covid: 240,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-08'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   3293,
  sembuh_covid:    252,
  meninggal_covid: 280,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-09'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   3512,
  sembuh_covid:    282,
  meninggal_covid: 306,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-10'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   3842,
  sembuh_covid:    286,
  meninggal_covid: 327,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-11'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   4241,
  sembuh_covid:    359,
  meninggal_covid: 373,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-12'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   4557,
  sembuh_covid:    380,
  meninggal_covid: 399,
  jumlah_odp:      0,
  jumlah_pdp:      0,
  fetched_at:      '2020-04-13'
)
puts "Insert data => #{data.fetched_at}"

# --- PER 14/04/2020 PEMERINTAH MULAI MENGUMUMKAN JUMLAH ODP & PDP
# --- REFERENSI: https://youtu.be/9bQ_R_xsFUw?t=16

data = Case.create(
  positif_covid:   4839,
  sembuh_covid:    426,
  meninggal_covid: 459,
  jumlah_odp:      139137,
  jumlah_pdp:      10482,
  fetched_at:      '2020-04-14'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   5136,
  sembuh_covid:    446,
  meninggal_covid: 469,
  jumlah_odp:      156549,
  jumlah_pdp:      11165,
  fetched_at:      '2020-04-15'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   5516,
  sembuh_covid:    548,
  meninggal_covid: 496,
  jumlah_odp:      169446,
  jumlah_pdp:      11873,
  fetched_at:      '2020-04-16'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   5923,
  sembuh_covid:    607,
  meninggal_covid: 520,
  jumlah_odp:      173732,
  jumlah_pdp:      12610,
  fetched_at:      '2020-04-17'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   6248,
  sembuh_covid:    631,
  meninggal_covid: 535,
  jumlah_odp:      176344,
  jumlah_pdp:      12979,
  fetched_at:      '2020-04-18'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   6575,
  sembuh_covid:    686,
  meninggal_covid: 582,
  jumlah_odp:      178883,
  jumlah_pdp:      15646,
  fetched_at:      '2020-04-19'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   6760,
  sembuh_covid:    747,
  meninggal_covid: 590,
  jumlah_odp:      181770,
  jumlah_pdp:      16343,
  fetched_at:      '2020-04-20'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   7135,
  sembuh_covid:    842,
  meninggal_covid: 616,
  jumlah_odp:      186330,
  jumlah_pdp:      16763,
  fetched_at:      '2020-04-21'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   7418,
  sembuh_covid:    913,
  meninggal_covid: 635,
  jumlah_odp:      193571,
  jumlah_pdp:      17754,
  fetched_at:      '2020-04-22'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   7775,
  sembuh_covid:    960,
  meninggal_covid: 647,
  jumlah_odp:      195948,
  jumlah_pdp:      18283,
  fetched_at:      '2020-04-23'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   8211,
  sembuh_covid:    1002,
  meninggal_covid: 689,
  jumlah_odp:      197951,
  jumlah_pdp:      18301,
  fetched_at:      '2020-04-24'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   8607,
  sembuh_covid:    1042,
  meninggal_covid: 720,
  jumlah_odp:      206911,
  jumlah_pdp:      19084,
  fetched_at:      '2020-04-25'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   8882,
  sembuh_covid:    1107,
  meninggal_covid: 743,
  jumlah_odp:      209040,
  jumlah_pdp:      19648,
  fetched_at:      '2020-04-26'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   9096,
  sembuh_covid:    1151,
  meninggal_covid: 765,
  jumlah_odp:      210199,
  jumlah_pdp:      19987,
  fetched_at:      '2020-04-27'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   9511,
  sembuh_covid:    1254,
  meninggal_covid: 773,
  jumlah_odp:      213644,
  jumlah_pdp:      20428,
  fetched_at:      '2020-04-28'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   9771,
  sembuh_covid:    1391,
  meninggal_covid: 784,
  jumlah_odp:      221750,
  jumlah_pdp:      21653,
  fetched_at:      '2020-04-29'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   10118,
  sembuh_covid:    1522,
  meninggal_covid: 792,
  jumlah_odp:      230411,
  jumlah_pdp:      21827,
  fetched_at:      '2020-04-30'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   10551,
  sembuh_covid:    1591,
  meninggal_covid: 800,
  jumlah_odp:      233120,
  jumlah_pdp:      22123,
  fetched_at:      '2020-05-01'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   10843,
  sembuh_covid:    1665,
  meninggal_covid: 831,
  jumlah_odp:      235035,
  jumlah_pdp:      22545,
  fetched_at:      '2020-05-02'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   11192,
  sembuh_covid:    1876,
  meninggal_covid: 845,
  jumlah_odp:      236369,
  jumlah_pdp:      23130,
  fetched_at:      '2020-05-03'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   11587,
  sembuh_covid:    1954,
  meninggal_covid: 864,
  jumlah_odp:      238178,
  jumlah_pdp:      24020,
  fetched_at:      '2020-05-04'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   12071,
  sembuh_covid:    2197,
  meninggal_covid: 872,
  jumlah_odp:      239226,
  jumlah_pdp:      26408,
  fetched_at:      '2020-05-05'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   12438,
  sembuh_covid:    2317,
  meninggal_covid: 895,
  jumlah_odp:      240726,
  jumlah_pdp:      26932,
  fetched_at:      '2020-05-06'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   12776,
  sembuh_covid:    2381,
  meninggal_covid: 930,
  jumlah_odp:      243455,
  jumlah_pdp:      28508,
  fetched_at:      '2020-05-07'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   13112,
  sembuh_covid:    2494,
  meninggal_covid: 943,
  jumlah_odp:      244480,
  jumlah_pdp:      29087,
  fetched_at:      '2020-05-08'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   13645,
  sembuh_covid:    2607,
  meninggal_covid: 959,
  jumlah_odp:      246847,
  jumlah_pdp:      29690,
  fetched_at:      '2020-05-09'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   14032,
  sembuh_covid:    2698,
  meninggal_covid: 973,
  jumlah_odp:      248690,
  jumlah_pdp:      30317,
  fetched_at:      '2020-05-10'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   14265,
  sembuh_covid:    2881,
  meninggal_covid: 991,
  jumlah_odp:      249105,
  jumlah_pdp:      31994,
  fetched_at:      '2020-05-11'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   14749,
  sembuh_covid:    3063,
  meninggal_covid: 1007,
  jumlah_odp:      251861,
  jumlah_pdp:      32147,
  fetched_at:      '2020-05-12'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   15438,
  sembuh_covid:    3287,
  meninggal_covid: 1028,
  jumlah_odp:      256299,
  jumlah_pdp:      33042,
  fetched_at:      '2020-05-13'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   16006,
  sembuh_covid:    3518,
  meninggal_covid: 1043,
  jumlah_odp:      258639,
  jumlah_pdp:      33672,
  fetched_at:      '2020-05-14'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   16496,
  sembuh_covid:    3803,
  meninggal_covid: 1076,
  jumlah_odp:      262919,
  jumlah_pdp:      34360,
  fetched_at:      '2020-05-15'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   17025,
  sembuh_covid:    3911,
  meninggal_covid: 1089,
  jumlah_odp:      269449,
  jumlah_pdp:      35069,
  fetched_at:      '2020-05-16'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   17514,
  sembuh_covid:    4129,
  meninggal_covid: 1148,
  jumlah_odp:      270876,
  jumlah_pdp:      35800,
  fetched_at:      '2020-05-17'
)
puts "Insert data => #{data.fetched_at}"

# --- PER 18/05/2020 PERUBAHAN DATA ODP & PDP MENJADI HARIAN
# --- “Kami memperbarui update data kasus ODP. Kami hanya melaporkan kasus ODP
# --- seluruh Indonesia yang sedang dipantau hari ini,” kata Yuri dalam
# --- konferensi pers di Graha BNPB, Jakarta, Senin (18/5/2020).
# --- REFERENSI: https://youtu.be/akHStbkDmEY?t=63

data = Case.create(
  positif_covid:   18010,
  sembuh_covid:    4324,
  meninggal_covid: 1191,
  jumlah_odp:      45047,
  jumlah_pdp:      11422,
  fetched_at:      '2020-05-18'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   18496,
  sembuh_covid:    4467,
  meninggal_covid: 1221,
  jumlah_odp:      45300,
  jumlah_pdp:      11891,
  fetched_at:      '2020-05-19'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   19189,
  sembuh_covid:    4575,
  meninggal_covid: 1242,
  jumlah_odp:      44703,
  jumlah_pdp:      11705,
  fetched_at:      '2020-05-20'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   20162,
  sembuh_covid:    4838,
  meninggal_covid: 1278,
  jumlah_odp:      50187,
  jumlah_pdp:      11066,
  fetched_at:      '2020-05-21'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   20796,
  sembuh_covid:    5057,
  meninggal_covid: 1326,
  jumlah_odp:      47150,
  jumlah_pdp:      11028,
  fetched_at:      '2020-05-22'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   21745,
  sembuh_covid:    5249,
  meninggal_covid: 1351,
  jumlah_odp:      49958,
  jumlah_pdp:      11495,
  fetched_at:      '2020-05-23'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   22271,
  sembuh_covid:    5402,
  meninggal_covid: 1372,
  jumlah_odp:      42551,
  jumlah_pdp:      11389,
  fetched_at:      '2020-05-24'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   22750,
  sembuh_covid:    5642,
  meninggal_covid: 1391,
  jumlah_odp:      49361,
  jumlah_pdp:      12342,
  fetched_at:      '2020-05-25'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   23165,
  sembuh_covid:    5877,
  meninggal_covid: 1418,
  jumlah_odp:      65748,
  jumlah_pdp:      12022,
  fetched_at:      '2020-05-26'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   23851,
  sembuh_covid:    6057,
  meninggal_covid: 1473,
  jumlah_odp:      49942,
  jumlah_pdp:      12667,
  fetched_at:      '2020-05-27'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   24538,
  sembuh_covid:    6240,
  meninggal_covid: 1496,
  jumlah_odp:      48749,
  jumlah_pdp:      13250,
  fetched_at:      '2020-05-28'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   25216,
  sembuh_covid:    6492,
  meninggal_covid: 1520,
  jumlah_odp:      49212,
  jumlah_pdp:      12499,
  fetched_at:      '2020-05-29'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   25773,
  sembuh_covid:    7015,
  meninggal_covid: 1573,
  jumlah_odp:      47714,
  jumlah_pdp:      12832,
  fetched_at:      '2020-05-30'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   26473,
  sembuh_covid:    7308,
  meninggal_covid: 1613,
  jumlah_odp:      49936,
  jumlah_pdp:      12913,
  fetched_at:      '2020-05-31'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   26940,
  sembuh_covid:    7637,
  meninggal_covid: 1641,
  jumlah_odp:      48358,
  jumlah_pdp:      13120,
  fetched_at:      '2020-06-01'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   27549,
  sembuh_covid:    7935,
  meninggal_covid: 1663,
  jumlah_odp:      48023,
  jumlah_pdp:      13213,
  fetched_at:      '2020-06-02'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   28233,
  sembuh_covid:    8406,
  meninggal_covid: 1698,
  jumlah_odp:      48153,
  jumlah_pdp:      13285,
  fetched_at:      '2020-06-03'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   28818,
  sembuh_covid:    8892,
  meninggal_covid: 1721,
  jumlah_odp:      47373,
  jumlah_pdp:      13416,
  fetched_at:      '2020-06-04'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   29521,
  sembuh_covid:    9443,
  meninggal_covid: 1770,
  jumlah_odp:      49320,
  jumlah_pdp:      13592,
  fetched_at:      '2020-06-05'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   30514,
  sembuh_covid:    9907,
  meninggal_covid: 1801,
  jumlah_odp:      46571,
  jumlah_pdp:      13347,
  fetched_at:      '2020-06-06'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   31186,
  sembuh_covid:    10498,
  meninggal_covid: 1851,
  jumlah_odp:      40370,
  jumlah_pdp:      14197,
  fetched_at:      '2020-06-07'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   32033,
  sembuh_covid:    10904,
  meninggal_covid: 1883,
  jumlah_odp:      38791,
  jumlah_pdp:      14010,
  fetched_at:      '2020-06-08'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   33076,
  sembuh_covid:    11414,
  meninggal_covid: 1923,
  jumlah_odp:      38394,
  jumlah_pdp:      14108,
  fetched_at:      '2020-06-09'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   34316,
  sembuh_covid:    12129,
  meninggal_covid: 1959,
  jumlah_odp:      43945,
  jumlah_pdp:      14242,
  fetched_at:      '2020-06-10'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   35295,
  sembuh_covid:    12636,
  meninggal_covid: 2000,
  jumlah_odp:      43414,
  jumlah_pdp:      14052,
  fetched_at:      '2020-06-11'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   36406,
  sembuh_covid:    13213,
  meninggal_covid: 2048,
  jumlah_odp:      37538,
  jumlah_pdp:      13923,
  fetched_at:      '2020-06-12'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   37420,
  sembuh_covid:    13776,
  meninggal_covid: 2091,
  jumlah_odp:      42450,
  jumlah_pdp:      13578,
  fetched_at:      '2020-06-13'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   38277,
  sembuh_covid:    14531,
  meninggal_covid: 2134,
  jumlah_odp:      41639,
  jumlah_pdp:      13574,
  fetched_at:      '2020-06-14'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   39294,
  sembuh_covid:    15123,
  meninggal_covid: 2198,
  jumlah_odp:      36744,
  jumlah_pdp:      13649,
  fetched_at:      '2020-06-15'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   40400,
  sembuh_covid:    15703,
  meninggal_covid: 2231,
  jumlah_odp:      29124,
  jumlah_pdp:      13510,
  fetched_at:      '2020-06-16'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   41431,
  sembuh_covid:    16243,
  meninggal_covid: 2276,
  jumlah_odp:      42714,
  jumlah_pdp:      13279,
  fetched_at:      '2020-06-17'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   42762,
  sembuh_covid:    16798,
  meninggal_covid: 2339,
  jumlah_odp:      36698,
  jumlah_pdp:      17932,
  fetched_at:      '2020-06-18'
)
puts "Insert data => #{data.fetched_at}"

# ---

data = Case.create(
  positif_covid:   43803,
  sembuh_covid:    17349,
  meninggal_covid: 2373,
  jumlah_odp:      36464,
  jumlah_pdp:      13211,
  fetched_at:      '2020-06-19'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   45029,
  sembuh_covid:    17883,
  meninggal_covid: 2429,
  jumlah_odp:      37336,
  jumlah_pdp:      13150,
  fetched_at:      '2020-06-20'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   45891,
  sembuh_covid:    18404,
  meninggal_covid: 2465,
  jumlah_odp:      56436,
  jumlah_pdp:      13225,
  fetched_at:      '2020-06-21'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   46845,
  sembuh_covid:    18735,
  meninggal_covid: 2500,
  jumlah_odp:      43500,
  jumlah_pdp:      12999,
  fetched_at:      '2020-06-22'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   47896,
  sembuh_covid:    19241,
  meninggal_covid: 2535,
  jumlah_odp:      35983,
  jumlah_pdp:      13348,
  fetched_at:      '2020-06-23'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   49009,
  sembuh_covid:    19658,
  meninggal_covid: 2573,
  jumlah_odp:      36348,
  jumlah_pdp:      13069,
  fetched_at:      '2020-06-24'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   50187,
  sembuh_covid:    20449,
  meninggal_covid: 2620,
  jumlah_odp:      37294,
  jumlah_pdp:      13323,
  fetched_at:      '2020-06-25'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   51427,
  sembuh_covid:    21333,
  meninggal_covid: 2683,
  jumlah_odp:      38381,
  jumlah_pdp:      13506,
  fetched_at:      '2020-06-26'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   52812,
  sembuh_covid:    21909,
  meninggal_covid: 2720,
  jumlah_odp:      40541,
  jumlah_pdp:      13522,
  fetched_at:      '2020-06-27'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   54010,
  sembuh_covid:    22936,
  meninggal_covid: 2754,
  jumlah_odp:      47658,
  jumlah_pdp:      14712,
  fetched_at:      '2020-06-28'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   55092,
  sembuh_covid:    23800,
  meninggal_covid: 2805,
  jumlah_odp:      41605,
  jumlah_pdp:      13335,
  fetched_at:      '2020-06-29'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   56797,
  sembuh_covid:    24806,
  meninggal_covid: 2876,
  jumlah_odp:      43797,
  jumlah_pdp:      13182,
  fetched_at:      '2020-06-30'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   57770,
  sembuh_covid:    25595,
  meninggal_covid: 2934,
  jumlah_odp:      45192,
  jumlah_pdp:      13296,
  fetched_at:      '2020-07-01'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   59394,
  sembuh_covid:    26667,
  meninggal_covid: 2987,
  jumlah_odp:      40778,
  jumlah_pdp:      13359,
  fetched_at:      '2020-07-02'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   60695,
  sembuh_covid:    27568,
  meninggal_covid: 3036,
  jumlah_odp:      38767,
  jumlah_pdp:      13609,
  fetched_at:      '2020-07-03'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   62142,
  sembuh_covid:    28219,
  meninggal_covid: 3089,
  jumlah_odp:      38890,
  jumlah_pdp:      14205,
  fetched_at:      '2020-07-04'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   63749,
  sembuh_covid:    29105,
  meninggal_covid: 3171,
  jumlah_odp:      39928,
  jumlah_pdp:      13767,
  fetched_at:      '2020-07-05'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   64958,
  sembuh_covid:    29919,
  meninggal_covid: 3241,
  jumlah_odp:      38748,
  jumlah_pdp:      13360,
  fetched_at:      '2020-07-06'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   66226,
  sembuh_covid:    30785,
  meninggal_covid: 3309,
  jumlah_odp:      38702,
  jumlah_pdp:      13471,
  fetched_at:      '2020-07-07'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   68079,
  sembuh_covid:    31585,
  meninggal_covid: 3359,
  jumlah_odp:      38498,
  jumlah_pdp:      13636,
  fetched_at:      '2020-07-08'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   70736,
  sembuh_covid:    32651,
  meninggal_covid: 3417,
  jumlah_odp:      38498,
  jumlah_pdp:      13732,
  fetched_at:      '2020-07-09'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   72347,
  sembuh_covid:    33529,
  meninggal_covid: 3469,
  jumlah_odp:      38705,
  jumlah_pdp:      13882,
  fetched_at:      '2020-07-10'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   74018,
  sembuh_covid:    34719,
  meninggal_covid: 3535,
  jumlah_odp:      34887,
  jumlah_pdp:      13752,
  fetched_at:      '2020-07-11'
)
puts "Insert data => #{data.fetched_at}"

data = Case.create(
  positif_covid:   75699,
  sembuh_covid:    35638,
  meninggal_covid: 3606,
  jumlah_odp:      34486,
  jumlah_pdp:      14515,
  fetched_at:      '2020-07-12'
)
puts "Insert data => #{data.fetched_at}"
