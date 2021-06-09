import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cerita_anak/detail_screen.dart';
import 'package:cerita_anak/data_bacaan.dart';

class first_page extends StatelessWidget {
  // const first_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cerita Anak'),
      ),
      body: ListView(
                children: data_bacaan.map((cerita){
                  return FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(cerita: cerita,);
                      }));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              cerita.gambar,
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(child: Padding(padding: EdgeInsets.only(left: 10),),),
                          Expanded(
                              flex: 4,
                              child: Text(
                                cerita.judul,
                                style: TextStyle(fontSize: 20),
                              )
                          )
                        ],
                      ),
                    ),
                  );  
                }).toList(),
                // FlatButton(
                //   onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                //     return DetailScreen();
                //     }));
                //   },
                //   child: Card(
                //     child: Row(
                //       children: [
                //         Expanded(
                //           flex: 1,
                //           child: Image.asset(
                //             'assets/sikancil.png',
                //             width: 80,
                //             height: 80,
                //             fit: BoxFit.contain,
                //           ),
                //         ),
                //         Expanded(
                //             flex: 4,
                //             child: Text(
                //               'Si Kancil',
                //               style: TextStyle(fontSize: 20),
                //             )
                //         )
                //       ],
                //     ),
                //   ),
                // )
        ),
    );
  }
}

var data_bacaan = [
  Cerita(
    judul: 'Burung Bangau & Serigala',
    isi: 'Suatu siang yang panas, burung Bangau sedang berjalan mencari makanan di sepanjang aliran sungai. Sayup-sayup terdengar erangan kesakitan dari balik semak belukar tak jauh dari tempatnya berdiri. perlahan Burung Bangau mendekati arah suara itu. Alangkah terkejutnya dia, ternyata ada seekor Serigala sedang merintih sambil memegangi tenggorokannya. Burung Bangau bingung harus berbuat apa, untuk mendekat dia takut akan dimakan oleh Serigala tersebut. Dia berfikir sejenak, akhirnya perasaan ibanya pun muncul. "Kasihan Pak Serigala. Dia tersedak dan sepertinya sedang kesakitan" Pikir burung Bangau. "Tolong!, tenggorokanku sakit sekali" Srigala ternyata melihat keberadaan burung Bangau di sekitar dia berada. Ia memohon pada burung bangau berleher panjang yang sedang memperhatikannya. "Tolong! Sebuah tulang ada di tenggorokanku!" Pintanya memelas. Tetapi si burung bangau hanya menatapnya dengan curiga. "Tolonglah!" teriak Pak Serigala masih dengan suara memelas kesakitan. "Kamu pasti dapat hadiah jika kamu mau mengambilkan tulang dari tenggorokanku!" ucap Serigala itu. Dijanjikan hadiah, si burung bangau itu lalu memberanikan diri mendekat. Dengan leher dan paruhnya yang panjang, ia lalu menjulurkannya ke dalam mulut Pak Serigala untuk mengambil tulang yang tertancap. Dengan paruhnya yang panjang dia kemudian berhasil mengambil sebuah tulang. Tulang itu tertancap dalam di dalam leher serigala. Sambil terengah-engah karena kesakitan, Pak Serigala mengambil nafas panjang. "Sudah baikan sekarang! Tadi itu benar-benar sakit!" kata pak serigala kepada Burung Bangau. "Dan mana hadiahnya?" burung bangau mengingatkannya, berdiri dengan tidak sabar di atas kakinya yang panjang. Pak Serigala malah tertawa terbahak bahak. "Burung bodoh!" dia berkata dengan suara keras. "Kamu sudah dapat hadiahmu! Bukankah sudah merupakan hadiah bagimu bahwa kepala kamu sudah masuk ke mulut serigala dan bisa keluar lagi dengan selamat?" "Tapi aku sudah berbuat baik padamu!" burung bangau itu merajuk. "Tidak!" kata Pak Serigala. "Tidak dikatakan berbuat baik jika kamu melakukannya ingin dapat imbalan!" Akhirnya Burung Bangau pun pergi dengan rasa kecewa. Dan Serigala hanya memandangnya tanpa rasa berterimakasih. Pesan Moral Dongeng Fabel Burung Bangau dan Serigala adalah : Jangan suka ingkar janji seperti Srigala yang menjanjikan hadiah untuk burung Bangau yang telah menolongnya. Biasakan berterimakasih kepada siapapun yang telah membantu kita berapapun kecil pertolongannya. Dan berbuat baiklah tanpa mengharapkan imbalan, jangan seperti Burung Bangau.',
    gambar: 'assets/seriga_bangau.png',
  ),
  Cerita(
    judul: 'Anak Kambing & Serigala',
    isi: 'Seekor anak kambing yang sangat lincah telah ditinggalkan oleh penggembalanya di atas atap jerami kandang untuk menghindari anak kambing itu dari bahaya. Anak kambing itu mencari rumput di pinggir atap, dan saat itu dia melihat seekor serigala dan memandang serigala itu dengan raut muka yang penuh dengan ejekan dan dengan perasaan yang penuh kemenangan, dia mulai mengejek serigala tersebut, walaupun pada saat itu dia tidak ingin mengejek sang Serigala, tetapi karena dia merasa serigala tersebut tidak akan dapat naik ke atas atap dan menangkapnya, timbullah keberaniannya untuk mengejek. Serigala itupun menatap anak kambing itu dari bawah, "Saya mendengarmu," kata sang Serigala, "dan saya tidak mendendam pada apa yang kamu katakan atau kamu lakukan ketika kamu diatas sana, karena itu adalah atap yang berbicara dan bukan kamu". Jadi pembelajaran yang dapat kita teladani dari dongeng anak kambing dan serigala ini adalah Janganlah kamu mengatakan sesuatu yang buruk atau kasar kepada siapapun.',
    gambar: 'assets/kambing_serigala.jpg',
  ),
  Cerita(
    judul: 'Gagak yang cerdik & Kendi Air',
    isi: 'Pada suatu musim kemarau yang cukup panjang, para hewan sangat kesulitan untuk mencari air. Salah satunya adalah seekor burung hahak. Burung hahak ini selalu di jauhi teman-temanya. Selain karena warna bulunya yang aneh dan jelek, burung gagak ini juga sering di ejek sebagi burung yang bodoh. Sebenarnya, burung gagak tak merasa sedih dan dendam akan hal itu. Dia tetap menerima semua ejekan teman-temanya dengan hati yang ikhlas. Musim kemarau panjang semakin menjadi, hingga kekeringan terjadi di mana-mana. Banyak sumber air yang telah mengering. Hingga membuat para hewan menjadi putus asa. Pada suatu hari, para hewan memutuskan untuk pindah mencari tempat baru yang memiliki sumber air yang masih mengalir. Mereka sengaja tidak memberi tahu burung gagak karena mereka ingin membiarkan burung gagak yang mereka benci mati kehausan. Ahirnya, pada suatu malam para hewan berbondong-nondong pergi dengan diam-diam ketika si burung gagak tengah asik tidur di sarangnya. Pada ke esokan harinya, si burung gagak merasa bingung. Karena hanya tinggal dia sendiri di tempat itu. Hewan-hewan yang lain telah tak ada di sana, dan dia tak tahu kemana mereka pergi. Ahirnya dia memutuskan untuk terbang tak tentu arah untuk mencari kemana teman-temanya pergi. Matahari yang panas menyengat dan rasa haus yang sangat menyiksa, membuat burung gagak itu kelelahan dan memutuskan turun untuk berteduh di bawah sebuah pohon. Rasa haus yang di rasakan semakin menjadi, hingga mendorongnya untuk berusaha mencari air. Setelah lama dia berputar-putar mengitari tempat itu, dia tak menemukan ada satu pun sumber air yang ada. Ketika dia hampir menyerah, burung gagak itu menemukan sebuah kendi yang berisi air di dalamnya.',
    gambar: 'assets/gagak_cerdik.jpg',
  ),
  Cerita(
    judul: 'Pinokio',
    isi: 'Pada suatu musim kemarau yang cukup panjang, para hewan sangat kesulitan untuk mencari air. Salah satunya adalah seekor burung hahak. Burung hahak ini selalu di jauhi teman-temanya. Selain karena warna bulunya yang aneh dan jelek, burung gagak ini juga sering di ejek sebagi burung yang bodoh. Sebenarnya, burung gagak tak merasa sedih dan dendam akan hal itu. Dia tetap menerima semua ejekan teman-temanya dengan hati yang ikhlas. Musim kemarau panjang semakin menjadi, hingga kekeringan terjadi di mana-mana. Banyak sumber air yang telah mengering. Hingga membuat para hewan menjadi putus asa. Pada suatu hari, para hewan memutuskan untuk pindah mencari tempat baru yang memiliki sumber air yang masih mengalir. Mereka sengaja tidak memberi tahu burung gagak karena mereka ingin membiarkan burung gagak yang mereka benci mati kehausan. Ahirnya, pada suatu malam para hewan berbondong-nondong pergi dengan diam-diam ketika si burung gagak tengah asik tidur di sarangnya. Pada ke esokan harinya, si burung gagak merasa bingung. Karena hanya tinggal dia sendiri di tempat itu. Hewan-hewan yang lain telah tak ada di sana, dan dia tak tahu kemana mereka pergi. Ahirnya dia memutuskan untuk terbang tak tentu arah untuk mencari kemana teman-temanya pergi. Matahari yang panas menyengat dan rasa haus yang sangat menyiksa, membuat burung gagak itu kelelahan dan memutuskan turun untuk berteduh di bawah sebuah pohon. Rasa haus yang di rasakan semakin menjadi, hingga mendorongnya untuk berusaha mencari air. Setelah lama dia berputar-putar mengitari tempat itu, dia tak menemukan ada satu pun sumber air yang ada. Ketika dia hampir menyerah, burung gagak itu menemukan sebuah kendi yang berisi air di dalamnya.',
    gambar: 'assets/pinokio.jpg',
  )
];
