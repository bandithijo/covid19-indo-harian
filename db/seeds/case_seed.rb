# --- APAKAH DATA INI DAPAT DIPERCAYA?
# --- REFERENSI:
# --- 1. Kami Bertanya kepada Epidemiolog: Apakah Data COVID-19 Pemerintah Bisa
# ------ Dipercaya? | Buka Mata | https://youtu.be/GuJtjE1wHXA
# --- 2. Surveilans Covid-19 dan Penyelidikan Epidemiologi Covid-19
# ------ https://youtu.be/erP1klFq9MQ

def input_into_cases(data)
  datas = Case.all
  dates = []

  datas.each do |d|
    dates << d.fetched_at
  end

  unless dates.include? data.fetched_at
    data.save!
    puts "INSERT: data #{data.fetched_at} berhasil"
  else
    puts "INFO: data #{data.fetched_at} sudah tersedia"
  end
end

data = Case.new(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   4,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   4,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   6,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   19,
  sembuh_covid:    0,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   27,
  sembuh_covid:    2,
  meninggal_covid: 0,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   34,
  sembuh_covid:    2,
  meninggal_covid: 1,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   34,
  sembuh_covid:    2,
  meninggal_covid: 1,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   69,
  sembuh_covid:    2,
  meninggal_covid: 4,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-13'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   96,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   117,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   134,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   172,
  sembuh_covid:    8,
  meninggal_covid: 5,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-17'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   227,
  sembuh_covid:    11,
  meninggal_covid: 19,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   311,
  sembuh_covid:    11,
  meninggal_covid: 25,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   369,
  sembuh_covid:    15,
  meninggal_covid: 32,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   450,
  sembuh_covid:    15,
  meninggal_covid: 38,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   514,
  sembuh_covid:    29,
  meninggal_covid: 48,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   579,
  sembuh_covid:    30,
  meninggal_covid: 49,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   686,
  sembuh_covid:    30,
  meninggal_covid: 55,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   790,
  sembuh_covid:    31,
  meninggal_covid: 58,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-25'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   893,
  sembuh_covid:    35,
  meninggal_covid: 78,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-26'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1046,
  sembuh_covid:    46,
  meninggal_covid: 87,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-27'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1155,
  sembuh_covid:    59,
  meninggal_covid: 102,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-28'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1285,
  sembuh_covid:    64,
  meninggal_covid: 114,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-29'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1414,
  sembuh_covid:    75,
  meninggal_covid: 122,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-30'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1528,
  sembuh_covid:    81,
  meninggal_covid: 136,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-03-31'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1677,
  sembuh_covid:    103,
  meninggal_covid: 157,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-01'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1790,
  sembuh_covid:    112,
  meninggal_covid: 170,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   1986,
  sembuh_covid:    134,
  meninggal_covid: 181,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2092,
  sembuh_covid:    150,
  meninggal_covid: 191,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2273,
  sembuh_covid:    164,
  meninggal_covid: 198,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2491,
  sembuh_covid:    192,
  meninggal_covid: 209,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2738,
  sembuh_covid:    204,
  meninggal_covid: 221,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   2956,
  sembuh_covid:    222,
  meninggal_covid: 240,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   3293,
  sembuh_covid:    252,
  meninggal_covid: 280,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   3512,
  sembuh_covid:    282,
  meninggal_covid: 306,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   3842,
  sembuh_covid:    286,
  meninggal_covid: 327,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   4241,
  sembuh_covid:    359,
  meninggal_covid: 373,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   4557,
  sembuh_covid:    380,
  meninggal_covid: 399,
  jumlah_suspek:   0,
  jumlah_spesimen: 0,
  fetched_at:      '2020-04-13'
)
input_into_cases(data)

# --- PER 14/04/2020 PEMERINTAH MULAI MENGUMUMKAN JUMLAH ODP & PDP
# --- REFERENSI: https://youtu.be/9bQ_R_xsFUw?t=16

data = Case.new(
  positif_covid:   4839,
  sembuh_covid:    426,
  meninggal_covid: 459,
  jumlah_suspek:   139137,
  jumlah_spesimen: 10482,
  fetched_at:      '2020-04-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   5136,
  sembuh_covid:    446,
  meninggal_covid: 469,
  jumlah_suspek:   156549,
  jumlah_spesimen: 11165,
  fetched_at:      '2020-04-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   5516,
  sembuh_covid:    548,
  meninggal_covid: 496,
  jumlah_suspek:   169446,
  jumlah_spesimen: 11873,
  fetched_at:      '2020-04-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   5923,
  sembuh_covid:    607,
  meninggal_covid: 520,
  jumlah_suspek:   173732,
  jumlah_spesimen: 12610,
  fetched_at:      '2020-04-17'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   6248,
  sembuh_covid:    631,
  meninggal_covid: 535,
  jumlah_suspek:   176344,
  jumlah_spesimen: 12979,
  fetched_at:      '2020-04-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   6575,
  sembuh_covid:    686,
  meninggal_covid: 582,
  jumlah_suspek:   178883,
  jumlah_spesimen: 15646,
  fetched_at:      '2020-04-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   6760,
  sembuh_covid:    747,
  meninggal_covid: 590,
  jumlah_suspek:   181770,
  jumlah_spesimen: 16343,
  fetched_at:      '2020-04-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   7135,
  sembuh_covid:    842,
  meninggal_covid: 616,
  jumlah_suspek:   186330,
  jumlah_spesimen: 16763,
  fetched_at:      '2020-04-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   7418,
  sembuh_covid:    913,
  meninggal_covid: 635,
  jumlah_suspek:   193571,
  jumlah_spesimen: 17754,
  fetched_at:      '2020-04-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   7775,
  sembuh_covid:    960,
  meninggal_covid: 647,
  jumlah_suspek:   195948,
  jumlah_spesimen: 18283,
  fetched_at:      '2020-04-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   8211,
  sembuh_covid:    1002,
  meninggal_covid: 689,
  jumlah_suspek:   197951,
  jumlah_spesimen: 18301,
  fetched_at:      '2020-04-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   8607,
  sembuh_covid:    1042,
  meninggal_covid: 720,
  jumlah_suspek:   206911,
  jumlah_spesimen: 19084,
  fetched_at:      '2020-04-25'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   8882,
  sembuh_covid:    1107,
  meninggal_covid: 743,
  jumlah_suspek:   209040,
  jumlah_spesimen: 19648,
  fetched_at:      '2020-04-26'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   9096,
  sembuh_covid:    1151,
  meninggal_covid: 765,
  jumlah_suspek:   210199,
  jumlah_spesimen: 19987,
  fetched_at:      '2020-04-27'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   9511,
  sembuh_covid:    1254,
  meninggal_covid: 773,
  jumlah_suspek:   213644,
  jumlah_spesimen: 20428,
  fetched_at:      '2020-04-28'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   9771,
  sembuh_covid:    1391,
  meninggal_covid: 784,
  jumlah_suspek:   221750,
  jumlah_spesimen: 21653,
  fetched_at:      '2020-04-29'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   10118,
  sembuh_covid:    1522,
  meninggal_covid: 792,
  jumlah_suspek:   230411,
  jumlah_spesimen: 21827,
  fetched_at:      '2020-04-30'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   10551,
  sembuh_covid:    1591,
  meninggal_covid: 800,
  jumlah_suspek:   233120,
  jumlah_spesimen: 22123,
  fetched_at:      '2020-05-01'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   10843,
  sembuh_covid:    1665,
  meninggal_covid: 831,
  jumlah_suspek:   235035,
  jumlah_spesimen: 22545,
  fetched_at:      '2020-05-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   11192,
  sembuh_covid:    1876,
  meninggal_covid: 845,
  jumlah_suspek:   236369,
  jumlah_spesimen: 23130,
  fetched_at:      '2020-05-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   11587,
  sembuh_covid:    1954,
  meninggal_covid: 864,
  jumlah_suspek:   238178,
  jumlah_spesimen: 24020,
  fetched_at:      '2020-05-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   12071,
  sembuh_covid:    2197,
  meninggal_covid: 872,
  jumlah_suspek:   239226,
  jumlah_spesimen: 26408,
  fetched_at:      '2020-05-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   12438,
  sembuh_covid:    2317,
  meninggal_covid: 895,
  jumlah_suspek:   240726,
  jumlah_spesimen: 26932,
  fetched_at:      '2020-05-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   12776,
  sembuh_covid:    2381,
  meninggal_covid: 930,
  jumlah_suspek:   243455,
  jumlah_spesimen: 28508,
  fetched_at:      '2020-05-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   13112,
  sembuh_covid:    2494,
  meninggal_covid: 943,
  jumlah_suspek:   244480,
  jumlah_spesimen: 29087,
  fetched_at:      '2020-05-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   13645,
  sembuh_covid:    2607,
  meninggal_covid: 959,
  jumlah_suspek:   246847,
  jumlah_spesimen: 29690,
  fetched_at:      '2020-05-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   14032,
  sembuh_covid:    2698,
  meninggal_covid: 973,
  jumlah_suspek:   248690,
  jumlah_spesimen: 30317,
  fetched_at:      '2020-05-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   14265,
  sembuh_covid:    2881,
  meninggal_covid: 991,
  jumlah_suspek:   249105,
  jumlah_spesimen: 31994,
  fetched_at:      '2020-05-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   14749,
  sembuh_covid:    3063,
  meninggal_covid: 1007,
  jumlah_suspek:   251861,
  jumlah_spesimen: 32147,
  fetched_at:      '2020-05-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   15438,
  sembuh_covid:    3287,
  meninggal_covid: 1028,
  jumlah_suspek:   256299,
  jumlah_spesimen: 33042,
  fetched_at:      '2020-05-13'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   16006,
  sembuh_covid:    3518,
  meninggal_covid: 1043,
  jumlah_suspek:   258639,
  jumlah_spesimen: 33672,
  fetched_at:      '2020-05-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   16496,
  sembuh_covid:    3803,
  meninggal_covid: 1076,
  jumlah_suspek:   262919,
  jumlah_spesimen: 34360,
  fetched_at:      '2020-05-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   17025,
  sembuh_covid:    3911,
  meninggal_covid: 1089,
  jumlah_suspek:   269449,
  jumlah_spesimen: 35069,
  fetched_at:      '2020-05-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   17514,
  sembuh_covid:    4129,
  meninggal_covid: 1148,
  jumlah_suspek:   270876,
  jumlah_spesimen: 35800,
  fetched_at:      '2020-05-17'
)
input_into_cases(data)

# --- PER 18/05/2020 PERUBAHAN DATA ODP & PDP MENJADI HARIAN
# --- “Kami memperbarui update data kasus ODP. Kami hanya melaporkan kasus ODP
# --- seluruh Indonesia yang sedang dipantau hari ini,” kata Yuri dalam
# --- konferensi pers di Graha BNPB, Jakarta, Senin (18/5/2020).
# --- REFERENSI: https://youtu.be/akHStbkDmEY?t=63

data = Case.new(
  positif_covid:   18010,
  sembuh_covid:    4324,
  meninggal_covid: 1191,
  jumlah_suspek:   45047,
  jumlah_spesimen: 11422,
  fetched_at:      '2020-05-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   18496,
  sembuh_covid:    4467,
  meninggal_covid: 1221,
  jumlah_suspek:   45300,
  jumlah_spesimen: 11891,
  fetched_at:      '2020-05-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   19189,
  sembuh_covid:    4575,
  meninggal_covid: 1242,
  jumlah_suspek:   44703,
  jumlah_spesimen: 11705,
  fetched_at:      '2020-05-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   20162,
  sembuh_covid:    4838,
  meninggal_covid: 1278,
  jumlah_suspek:   50187,
  jumlah_spesimen: 11066,
  fetched_at:      '2020-05-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   20796,
  sembuh_covid:    5057,
  meninggal_covid: 1326,
  jumlah_suspek:   47150,
  jumlah_spesimen: 11028,
  fetched_at:      '2020-05-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   21745,
  sembuh_covid:    5249,
  meninggal_covid: 1351,
  jumlah_suspek:   49958,
  jumlah_spesimen: 11495,
  fetched_at:      '2020-05-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   22271,
  sembuh_covid:    5402,
  meninggal_covid: 1372,
  jumlah_suspek:   42551,
  jumlah_spesimen: 11389,
  fetched_at:      '2020-05-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   22750,
  sembuh_covid:    5642,
  meninggal_covid: 1391,
  jumlah_suspek:   49361,
  jumlah_spesimen: 12342,
  fetched_at:      '2020-05-25'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   23165,
  sembuh_covid:    5877,
  meninggal_covid: 1418,
  jumlah_suspek:   65748,
  jumlah_spesimen: 12022,
  fetched_at:      '2020-05-26'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   23851,
  sembuh_covid:    6057,
  meninggal_covid: 1473,
  jumlah_suspek:   49942,
  jumlah_spesimen: 12667,
  fetched_at:      '2020-05-27'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   24538,
  sembuh_covid:    6240,
  meninggal_covid: 1496,
  jumlah_suspek:   48749,
  jumlah_spesimen: 13250,
  fetched_at:      '2020-05-28'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   25216,
  sembuh_covid:    6492,
  meninggal_covid: 1520,
  jumlah_suspek:   49212,
  jumlah_spesimen: 12499,
  fetched_at:      '2020-05-29'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   25773,
  sembuh_covid:    7015,
  meninggal_covid: 1573,
  jumlah_suspek:   47714,
  jumlah_spesimen: 12832,
  fetched_at:      '2020-05-30'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   26473,
  sembuh_covid:    7308,
  meninggal_covid: 1613,
  jumlah_suspek:   49936,
  jumlah_spesimen: 12913,
  fetched_at:      '2020-05-31'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   26940,
  sembuh_covid:    7637,
  meninggal_covid: 1641,
  jumlah_suspek:   48358,
  jumlah_spesimen: 13120,
  fetched_at:      '2020-06-01'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   27549,
  sembuh_covid:    7935,
  meninggal_covid: 1663,
  jumlah_suspek:   48023,
  jumlah_spesimen: 13213,
  fetched_at:      '2020-06-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   28233,
  sembuh_covid:    8406,
  meninggal_covid: 1698,
  jumlah_suspek:   48153,
  jumlah_spesimen: 13285,
  fetched_at:      '2020-06-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   28818,
  sembuh_covid:    8892,
  meninggal_covid: 1721,
  jumlah_suspek:   47373,
  jumlah_spesimen: 13416,
  fetched_at:      '2020-06-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   29521,
  sembuh_covid:    9443,
  meninggal_covid: 1770,
  jumlah_suspek:   49320,
  jumlah_spesimen: 13592,
  fetched_at:      '2020-06-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   30514,
  sembuh_covid:    9907,
  meninggal_covid: 1801,
  jumlah_suspek:   46571,
  jumlah_spesimen: 13347,
  fetched_at:      '2020-06-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   31186,
  sembuh_covid:    10498,
  meninggal_covid: 1851,
  jumlah_suspek:   40370,
  jumlah_spesimen: 14197,
  fetched_at:      '2020-06-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   32033,
  sembuh_covid:    10904,
  meninggal_covid: 1883,
  jumlah_suspek:   38791,
  jumlah_spesimen: 14010,
  fetched_at:      '2020-06-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   33076,
  sembuh_covid:    11414,
  meninggal_covid: 1923,
  jumlah_suspek:   38394,
  jumlah_spesimen: 14108,
  fetched_at:      '2020-06-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   34316,
  sembuh_covid:    12129,
  meninggal_covid: 1959,
  jumlah_suspek:   43945,
  jumlah_spesimen: 14242,
  fetched_at:      '2020-06-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   35295,
  sembuh_covid:    12636,
  meninggal_covid: 2000,
  jumlah_suspek:   43414,
  jumlah_spesimen: 14052,
  fetched_at:      '2020-06-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   36406,
  sembuh_covid:    13213,
  meninggal_covid: 2048,
  jumlah_suspek:   37538,
  jumlah_spesimen: 13923,
  fetched_at:      '2020-06-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   37420,
  sembuh_covid:    13776,
  meninggal_covid: 2091,
  jumlah_suspek:   42450,
  jumlah_spesimen: 13578,
  fetched_at:      '2020-06-13'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   38277,
  sembuh_covid:    14531,
  meninggal_covid: 2134,
  jumlah_suspek:   41639,
  jumlah_spesimen: 13574,
  fetched_at:      '2020-06-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   39294,
  sembuh_covid:    15123,
  meninggal_covid: 2198,
  jumlah_suspek:   36744,
  jumlah_spesimen: 13649,
  fetched_at:      '2020-06-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   40400,
  sembuh_covid:    15703,
  meninggal_covid: 2231,
  jumlah_suspek:   29124,
  jumlah_spesimen: 13510,
  fetched_at:      '2020-06-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   41431,
  sembuh_covid:    16243,
  meninggal_covid: 2276,
  jumlah_suspek:   42714,
  jumlah_spesimen: 13279,
  fetched_at:      '2020-06-17'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   42762,
  sembuh_covid:    16798,
  meninggal_covid: 2339,
  jumlah_suspek:   36698,
  jumlah_spesimen: 17932,
  fetched_at:      '2020-06-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   43803,
  sembuh_covid:    17349,
  meninggal_covid: 2373,
  jumlah_suspek:   36464,
  jumlah_spesimen: 13211,
  fetched_at:      '2020-06-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   45029,
  sembuh_covid:    17883,
  meninggal_covid: 2429,
  jumlah_suspek:   37336,
  jumlah_spesimen: 13150,
  fetched_at:      '2020-06-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   45891,
  sembuh_covid:    18404,
  meninggal_covid: 2465,
  jumlah_suspek:   56436,
  jumlah_spesimen: 13225,
  fetched_at:      '2020-06-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   46845,
  sembuh_covid:    18735,
  meninggal_covid: 2500,
  jumlah_suspek:   43500,
  jumlah_spesimen: 12999,
  fetched_at:      '2020-06-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   47896,
  sembuh_covid:    19241,
  meninggal_covid: 2535,
  jumlah_suspek:   35983,
  jumlah_spesimen: 13348,
  fetched_at:      '2020-06-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   49009,
  sembuh_covid:    19658,
  meninggal_covid: 2573,
  jumlah_suspek:   36348,
  jumlah_spesimen: 13069,
  fetched_at:      '2020-06-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   50187,
  sembuh_covid:    20449,
  meninggal_covid: 2620,
  jumlah_suspek:   37294,
  jumlah_spesimen: 13323,
  fetched_at:      '2020-06-25'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   51427,
  sembuh_covid:    21333,
  meninggal_covid: 2683,
  jumlah_suspek:   38381,
  jumlah_spesimen: 13506,
  fetched_at:      '2020-06-26'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   52812,
  sembuh_covid:    21909,
  meninggal_covid: 2720,
  jumlah_suspek:   40541,
  jumlah_spesimen: 13522,
  fetched_at:      '2020-06-27'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   54010,
  sembuh_covid:    22936,
  meninggal_covid: 2754,
  jumlah_suspek:   47658,
  jumlah_spesimen: 14712,
  fetched_at:      '2020-06-28'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   55092,
  sembuh_covid:    23800,
  meninggal_covid: 2805,
  jumlah_suspek:   41605,
  jumlah_spesimen: 13335,
  fetched_at:      '2020-06-29'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   56797,
  sembuh_covid:    24806,
  meninggal_covid: 2876,
  jumlah_suspek:   43797,
  jumlah_spesimen: 13182,
  fetched_at:      '2020-06-30'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   57770,
  sembuh_covid:    25595,
  meninggal_covid: 2934,
  jumlah_suspek:   45192,
  jumlah_spesimen: 13296,
  fetched_at:      '2020-07-01'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   59394,
  sembuh_covid:    26667,
  meninggal_covid: 2987,
  jumlah_suspek:   40778,
  jumlah_spesimen: 13359,
  fetched_at:      '2020-07-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   60695,
  sembuh_covid:    27568,
  meninggal_covid: 3036,
  jumlah_suspek:   38767,
  jumlah_spesimen: 13609,
  fetched_at:      '2020-07-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   62142,
  sembuh_covid:    28219,
  meninggal_covid: 3089,
  jumlah_suspek:   38890,
  jumlah_spesimen: 14205,
  fetched_at:      '2020-07-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   63749,
  sembuh_covid:    29105,
  meninggal_covid: 3171,
  jumlah_suspek:   39928,
  jumlah_spesimen: 13767,
  fetched_at:      '2020-07-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   64958,
  sembuh_covid:    29919,
  meninggal_covid: 3241,
  jumlah_suspek:   38748,
  jumlah_spesimen: 13360,
  fetched_at:      '2020-07-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   66226,
  sembuh_covid:    30785,
  meninggal_covid: 3309,
  jumlah_suspek:   38702,
  jumlah_spesimen: 13471,
  fetched_at:      '2020-07-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   68079,
  sembuh_covid:    31585,
  meninggal_covid: 3359,
  jumlah_suspek:   38498,
  jumlah_spesimen: 13636,
  fetched_at:      '2020-07-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   70736,
  sembuh_covid:    32651,
  meninggal_covid: 3417,
  jumlah_suspek:   38498,
  jumlah_spesimen: 13732,
  fetched_at:      '2020-07-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   72347,
  sembuh_covid:    33529,
  meninggal_covid: 3469,
  jumlah_suspek:   38705,
  jumlah_spesimen: 13882,
  fetched_at:      '2020-07-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   74018,
  sembuh_covid:    34719,
  meninggal_covid: 3535,
  jumlah_suspek:   34887,
  jumlah_spesimen: 13752,
  fetched_at:      '2020-07-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   75699,
  sembuh_covid:    35638,
  meninggal_covid: 3606,
  jumlah_suspek:   34486,
  jumlah_spesimen: 14515,
  fetched_at:      '2020-07-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   76981,
  sembuh_covid:    36689,
  meninggal_covid: 3656,
  jumlah_suspek:   33504,
  jumlah_spesimen: 13439,
  fetched_at:      '2020-07-13'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   78572,
  sembuh_covid:    37636,
  meninggal_covid: 3710,
  jumlah_suspek:   46701,
  jumlah_spesimen: 23001,
  fetched_at:      '2020-07-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   80094,
  sembuh_covid:    39050,
  meninggal_covid: 3797,
  jumlah_suspek:   47859,
  jumlah_spesimen: 24871,
  fetched_at:      '2020-07-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   81668,
  sembuh_covid:    40345,
  meninggal_covid: 3873,
  jumlah_suspek:   46727,
  jumlah_spesimen: 23947,
  fetched_at:      '2020-07-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   83130,
  sembuh_covid:    41834,
  meninggal_covid: 3957,
  jumlah_suspek:   46493,
  jumlah_spesimen: 29176,
  fetched_at:      '2020-07-17'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   84882,
  sembuh_covid:    43268,
  meninggal_covid: 4016,
  jumlah_suspek:   37593,
  jumlah_spesimen: 25552,
  fetched_at:      '2020-07-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   86521,
  sembuh_covid:    45401,
  meninggal_covid: 4143,
  jumlah_suspek:   37505,
  jumlah_spesimen: 20504,
  fetched_at:      '2020-07-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   88214,
  sembuh_covid:    46977,
  meninggal_covid: 4239,
  jumlah_suspek:   36380,
  jumlah_spesimen: 14027,
  fetched_at:      '2020-07-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   89869,
  sembuh_covid:    48466,
  meninggal_covid: 4320,
  jumlah_suspek:   44003,
  jumlah_spesimen: 22262,
  fetched_at:      '2020-07-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   91751,
  sembuh_covid:    50255,
  meninggal_covid: 4459,
  jumlah_suspek:   44222,
  jumlah_spesimen: 25302,
  fetched_at:      '2020-07-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   93657,
  sembuh_covid:    52164,
  meninggal_covid: 4576,
  jumlah_suspek:   47756,
  jumlah_spesimen: 27815,
  fetched_at:      '2020-07-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   95418,
  sembuh_covid:    53945,
  meninggal_covid: 4665,
  jumlah_suspek:   53702,
  jumlah_spesimen: 24965,
  fetched_at:      '2020-07-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   97286,
  sembuh_covid:    55354,
  meninggal_covid: 4714,
  jumlah_suspek:   54752,
  jumlah_spesimen: 25318,
  fetched_at:      '2020-07-25'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   98778,
  sembuh_covid:    56655,
  meninggal_covid: 4781,
  jumlah_suspek:   55647,
  jumlah_spesimen: 20492,
  fetched_at:      '2020-07-26'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   100303,
  sembuh_covid:    58173,
  meninggal_covid: 4838,
  jumlah_suspek:   54910,
  jumlah_spesimen: 13060,
  fetched_at:      '2020-07-27'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   102051,
  sembuh_covid:    60539,
  meninggal_covid: 4901,
  jumlah_suspek:   44648,
  jumlah_spesimen: 22563,
  fetched_at:      '2020-07-28'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   104432,
  sembuh_covid:    62138,
  meninggal_covid: 4975,
  jumlah_suspek:   57393,
  jumlah_spesimen: 30261,
  fetched_at:      '2020-07-29'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   106336,
  sembuh_covid:    64292,
  meninggal_covid: 5058,
  jumlah_suspek:   53723,
  jumlah_spesimen: 30046,
  fetched_at:      '2020-07-30'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   108376,
  sembuh_covid:    65907,
  meninggal_covid: 5131,
  jumlah_suspek:   28562,
  jumlah_spesimen: 60739,
  fetched_at:      '2020-07-31'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   109936,
  sembuh_covid:    67919,
  meninggal_covid: 5193,
  jumlah_suspek:   57816,
  jumlah_spesimen: 11190,
  fetched_at:      '2020-08-01'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   111366,
  sembuh_covid:    68975,
  meninggal_covid: 5236,
  jumlah_suspek:   62366,
  jumlah_spesimen: 20032,
  fetched_at:      '2020-08-02'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   113134,
  sembuh_covid:    70237,
  meninggal_covid: 5302,
  jumlah_suspek:   77572,
  jumlah_spesimen: 14728,
  fetched_at:      '2020-08-03'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   115056,
  sembuh_covid:    72056,
  meninggal_covid: 5388,
  jumlah_suspek:   68131,
  jumlah_spesimen: 22902,
  fetched_at:      '2020-08-04'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   116871,
  sembuh_covid:    73889,
  meninggal_covid: 5452,
  jumlah_suspek:   94593,
  jumlah_spesimen: 28738,
  fetched_at:      '2020-08-05'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   118753,
  sembuh_covid:    75645,
  meninggal_covid: 5521,
  jumlah_suspek:   91219,
  jumlah_spesimen: 29375,
  fetched_at:      '2020-08-06'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   121226,
  sembuh_covid:    77557,
  meninggal_covid: 5593,
  jumlah_suspek:   80200,
  jumlah_spesimen: 30159,
  fetched_at:      '2020-08-07'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   123503,
  sembuh_covid:    79306,
  meninggal_covid: 5658,
  jumlah_suspek:   83624,
  jumlah_spesimen: 30565,
  fetched_at:      '2020-08-08'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   125396,
  sembuh_covid:    80952,
  meninggal_covid: 5723,
  jumlah_suspek:   21918,
  jumlah_spesimen: 86224,
  fetched_at:      '2020-08-09'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   127083,
  sembuh_covid:    82236,
  meninggal_covid: 5765,
  jumlah_suspek:   84139,
  jumlah_spesimen: 15836,
  fetched_at:      '2020-08-10'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   128776,
  sembuh_covid:    83710,
  meninggal_covid: 5824,
  jumlah_suspek:   85928,
  jumlah_spesimen: 25791,
  fetched_at:      '2020-08-11'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   130718,
  sembuh_covid:    85798,
  meninggal_covid: 5903,
  jumlah_suspek:   86619,
  jumlah_spesimen: 26248,
  fetched_at:      '2020-08-12'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   132816,
  sembuh_covid:    87558,
  meninggal_covid: 5968,
  jumlah_suspek:   76515,
  jumlah_spesimen: 25814,
  fetched_at:      '2020-08-13'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   135123,
  sembuh_covid:    89618,
  meninggal_covid: 6021,
  jumlah_suspek:   75257,
  jumlah_spesimen: 26018,
  fetched_at:      '2020-08-14'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   137468,
  sembuh_covid:    91321,
  meninggal_covid: 6071,
  jumlah_suspek:   76327,
  jumlah_spesimen: 27276,
  fetched_at:      '2020-08-15'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   139549,
  sembuh_covid:    93103,
  meninggal_covid: 6150,
  jumlah_suspek:   77090,
  jumlah_spesimen: 25414,
  fetched_at:      '2020-08-16'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   141370,
  sembuh_covid:    94458,
  meninggal_covid: 6207,
  jumlah_suspek:   78659,
  jumlah_spesimen: 12453,
  fetched_at:      '2020-08-17'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   143043,
  sembuh_covid:    96306,
  meninggal_covid: 6277,
  jumlah_suspek:   78394,
  jumlah_spesimen: 14371,
  fetched_at:      '2020-08-18'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   144945,
  sembuh_covid:    98657,
  meninggal_covid: 6346,
  jumlah_suspek:   79174,
  jumlah_spesimen: 26078,
  fetched_at:      '2020-08-19'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   147211,
  sembuh_covid:    100674,
  meninggal_covid: 6418,
  jumlah_suspek:   79484,
  jumlah_spesimen: 28824,
  fetched_at:      '2020-08-20'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   149408,
  sembuh_covid:    102991,
  meninggal_covid: 6500,
  jumlah_suspek:   78877,
  jumlah_spesimen: 19929,
  fetched_at:      '2020-08-21'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   151498,
  sembuh_covid:    105198,
  meninggal_covid: 6594,
  jumlah_suspek:   75457,
  jumlah_spesimen: 24749,
  fetched_at:      '2020-08-22'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   153535,
  sembuh_covid:    107500,
  meninggal_covid: 6680,
  jumlah_suspek:   75522,
  jumlah_spesimen: 22152,
  fetched_at:      '2020-08-23'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   155412,
  sembuh_covid:    111060,
  meninggal_covid: 6759,
  jumlah_suspek:   76745,
  jumlah_spesimen: 19395,
  fetched_at:      '2020-08-24'
)
input_into_cases(data)

data = Case.new(
  positif_covid:   157859,
  sembuh_covid:    112867,
  meninggal_covid: 6858,
  jumlah_suspek:   76667,
  jumlah_spesimen: 21275,
  fetched_at:      '2020-08-25'
)
input_into_cases(data)
