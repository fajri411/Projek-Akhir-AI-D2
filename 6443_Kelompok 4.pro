domains
tekan = char

predicates
nondeterm mulai
nondeterm salah
nondeterm jur_tkj
nondeterm jur_rpl
nondeterm jur_mm
nondeterm akhir
nondeterm tanya_tkj1
nondeterm tanya_tkj2
nondeterm tanya_tkj3
nondeterm tanya_tkj4
nondeterm tanya_tkj5
nondeterm tanya_rpl1
nondeterm tanya_rpl2
nondeterm tanya_rpl3
nondeterm tanya_rpl4
nondeterm tanya_rpl5
nondeterm tanya_mm1
nondeterm tanya_mm2
nondeterm tanya_mm3
nondeterm tanya_mm4
nondeterm tanya_mm5
nondeterm isi(tekan)
nondeterm isi1(tekan)
nondeterm isi2(tekan)
nondeterm isi3(tekan)
nondeterm isi4(tekan)
nondeterm isi5(tekan)
nondeterm isi6(tekan)
nondeterm isi7(tekan)
nondeterm isi8(tekan)
nondeterm isi9(tekan)
nondeterm isi10(tekan)
nondeterm isi11(tekan)
nondeterm isi12(tekan)
nondeterm isi13(tekan)
nondeterm isi14(tekan)
nondeterm isi15(tekan)
nondeterm isi16(tekan)
cc(tekan,tekan)

clauses
cc(Y,Y):-!.
cc(_,_):-fail.
mulai:-
nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\t\t\t Program Sistem Pakar Penentuan Jurusan Di SMK 4 "),nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("Masukkan Nama Anda : "),readln(Nama),nl,
	write("Selama Datang ",Nama),
	write("\nTekan Y untuk memulai"),
	readchar(Y), isi(Y).
	isi(Y):-cc(Y,'y'),tanya_tkj1,nl.
	isi(Y):-cc(Y,'Y'),tanya_tkj1,nl.
	isi(_):-nl,nl,write("Yang Anda Tekan Salah"),mulai.

salah:-
nl,nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\tMaaf Anda Tidak Masuk Di Salah Satu Jurusan Di SMK 4 Coba Lagi atau Coba DiTahun Depan"),nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	akhir.
jur_tkj:-
nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\t\t\tSelamat Jurusan yang bisa Anda ambil adalah TKJ"),nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	akhir.
jur_rpl:-
nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\t\t\tSelamat Jurusan yang bisa Anda ambil adalah RPL"),nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	akhir.

jur_mm:-
nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\t\t\tSelamat Jurusan yang bisa Anda ambil adalah MM"),nl,
	write("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	akhir.	
	
	
akhir:-
nl,nl,
	write("Apakah Anda Ingin Mencoba Lagi? Y/T"),nl,
	readchar(Y),isi16(Y).
	isi16(Y):-cc(Y,'y'),mulai,nl.
	isi16(Y):-cc(Y,'Y'),mulai,nl.
	isi16(Y):-cc(Y,'t'),exit,nl.
	isi16(Y):-cc(Y,'T'),exit,nl.
	isi16(_):-write("Yang Anda Tekan Salah"),akhir.


tanya_tkj1:-
nl,nl,
	write("Apakah Kamu bercita-cita menjadi teknisi komputer? Y/T"),
	readchar(Y), isi1(Y).
	isi1(Y):-cc(Y,'y'),tanya_tkj2,nl.
	isi1(Y):-cc(Y,'Y'),tanya_tkj2,nl.
	isi1(Y):-cc(Y,'t'),tanya_rpl1,nl.
	isi1(Y):-cc(Y,'T'),tanya_rpl1,nl.
	isi1(_):-write("Yang Anda Tekan Salah"),tanya_tkj1.

tanya_tkj2:-
nl,nl,
	write("apakah kamu pernah membongkar laptop, komputer, atau yang barang elektronik lainnya? Y/T"),
	readchar(Y), isi2(Y).
	isi2(Y):-cc(Y,'y'),tanya_tkj3,nl.
	isi2(Y):-cc(Y,'Y'),tanya_tkj3,nl.
	isi2(Y):-cc(Y,'t'),tanya_rpl1,nl.
	isi2(Y):-cc(Y,'T'),tanya_rpl1,nl.
	isi2(_):-write("Yang Anda Tekan Salah"),tanya_tkj2.

tanya_tkj3:-
nl,nl,
	write("apakah kamu pernah mengotak-atik windows? Y/T"),
	readchar(Y), isi3(Y).
	isi3(Y):-cc(Y,'y'),tanya_tkj4,nl,fail.
	isi3(Y):-cc(Y,'Y'),tanya_tkj4,nl.
	isi3(Y):-cc(Y,'t'),tanya_rpl1,nl.
	isi3(Y):-cc(Y,'T'),tanya_rpl1,nl.
	isi3(_):-write("Yang Anda Tekan Salah"),tanya_tkj3.
	
tanya_tkj4:-
nl,nl,
	write("apakah kamu suka belajar otodidak? Y/T"),
	readchar(Y), isi4(Y).
	isi4(Y):-cc(Y,'y'),tanya_tkj5,nl.
	isi4(Y):-cc(Y,'Y'),tanya_tkj5,nl.
	isi4(Y):-cc(Y,'t'),jur_tkj,nl.
	isi4(Y):-cc(Y,'T'),jur_tkj,nl.
	isi4(_):-write("Yang Anda Tekan Salah"),tanya_tkj4.
	
tanya_tkj5:-
nl,nl,
	write("apakah kamu pernah mengotak-atik jaringan? Y/T"),
	readchar(Y), isi5(Y).
	isi5(Y):-cc(Y,'y'),jur_tkj,nl.
	isi5(Y):-cc(Y,'Y'),jur_tkj,nl.
	isi5(Y):-cc(Y,'t'),jur_tkj,nl.
	isi5(Y):-cc(Y,'T'),jur_tkj,nl.
	isi5(_):-write("Yang Anda Tekan Salah"),tanya_tkj5.

tanya_rpl1:-
nl,nl,
	write("apakah kamu bercita-cita menjadi pembuat program atau pembuat game? Y/T"),
	readchar(Y), isi6(Y).
	isi6(Y):-cc(Y,'y'),tanya_rpl2,nl.
	isi6(Y):-cc(Y,'Y'),tanya_rpl2,nl.
	isi6(Y):-cc(Y,'t'),tanya_mm1,nl.
	isi6(Y):-cc(Y,'T'),tanya_mm1,nl.
	isi6(_):-write("Yang Anda Tekan Salah"),tanya_rpl1.

tanya_rpl2:-
nl,nl,
	write("apakah kamu tau tentang bahasa pemrograman? Y/T"),
	readchar(Y), isi7(Y).
	isi7(Y):-cc(Y,'y'),tanya_rpl3,nl.
	isi7(Y):-cc(Y,'Y'),tanya_rpl3,nl.
	isi7(Y):-cc(Y,'t'),tanya_mm1,nl.
	isi7(Y):-cc(Y,'T'),tanya_mm1,nl.
	isi7(_):-write("Yang Anda Tekan Salah"),tanya_rpl2.


tanya_rpl3:-
nl,nl,
	write("apakah kamu pernah main permainan tentang game problem solving? Y/T"),
	readchar(Y), isi8(Y).
	isi8(Y):-cc(Y,'y'),tanya_rpl4,nl.
	isi8(Y):-cc(Y,'Y'),tanya_rpl4,nl.
	isi8(Y):-cc(Y,'t'),tanya_mm1,nl.
	isi8(Y):-cc(Y,'T'),tanya_mm1,nl.
	isi8(_):-write("Yang Anda Tekan Salah"),tanya_rpl3.
	

tanya_rpl4:-
nl,nl,
	write("apakah kamu suka belajar otodidak? Y/T"),
	readchar(Y), isi9(Y).
	isi9(Y):-cc(Y,'y'),tanya_rpl5,nl.
	isi9(Y):-cc(Y,'Y'),tanya_rpl5,nl.
	isi9(Y):-cc(Y,'t'),jur_rpl,nl.
	isi9(Y):-cc(Y,'T'),jur_rpl,nl.
	isi9(_):-write("Yang Anda Tekan Salah"),tanya_rpl4.
	

tanya_rpl5:-
nl,nl,
	write("apakah kamu pernah mengotak-atik file suatu program atau game? Y/T"),
	readchar(Y), isi10(Y).
	isi10(Y):-cc(Y,'y'),jur_rpl,nl.
	isi10(Y):-cc(Y,'Y'),jur_rpl,nl.
	isi10(Y):-cc(Y,'t'),jur_rpl,nl.
	isi10(Y):-cc(Y,'T'),jur_rpl,nl.
	isi10(_):-write("Yang Anda Tekan Salah"),tanya_rpl5.

tanya_mm1:-
nl,nl,
	write("apakah kamu bercita-cita menjadi animator atau pembuat web? Y/T"),
	readchar(Y), isi11(Y).
	isi11(Y):-cc(Y,'y'),tanya_mm2,nl.
	isi11(Y):-cc(Y,'Y'),tanya_mm2,nl.
	isi11(Y):-cc(Y,'t'),salah,nl.
	isi11(Y):-cc(Y,'T'),salah,nl.
	isi11(_):-write("Yang Anda Tekan Salah"),tanya_mm1.

tanya_mm2:-
nl,nl,
	write("apakah kamu suka mengedit foto dengan photoshop atau coreldraw? Y/T"),
	readchar(Y), isi12(Y).
	isi12(Y):-cc(Y,'y'),tanya_mm3,nl.
	isi12(Y):-cc(Y,'Y'),tanya_mm3,nl.
	isi12(Y):-cc(Y,'t'),salah,nl.
	isi12(Y):-cc(Y,'T'),salah,nl.
	isi12(_):-write("Yang Anda Tekan Salah"),tanya_mm2.
	
tanya_mm3:-
nl,nl,
	write("apakah kamu pernah mendasain spanduk, brosur, atau banner? Y/T"),
	readchar(Y), isi13(Y).
	isi13(Y):-cc(Y,'y'),tanya_mm4,nl.
	isi13(Y):-cc(Y,'Y'),tanya_mm4,nl.
	isi13(Y):-cc(Y,'t'),salah,nl.
	isi13(Y):-cc(Y,'T'),salah,nl.
	isi13(_):-write("Yang Anda Tekan Salah"),tanya_mm3.
	
tanya_mm4:-
nl,nl,
	write("apakah kamu pernah mengotak-atik desain blog? Y/T"),
	readchar(Y), isi14(Y).
	isi14(Y):-cc(Y,'y'),tanya_mm5,nl.
	isi14(Y):-cc(Y,'Y'),tanya_mm5,nl.
	isi14(Y):-cc(Y,'t'),tanya_mm5,nl.
	isi14(Y):-cc(Y,'T'),tanya_mm5,nl.
	isi14(_):-write("Yang Anda Tekan Salah"),tanya_mm4.
	
tanya_mm5:-
nl,nl,
	write("apakah kamu pernah membuat blog atau web? Y/T"),
	readchar(Y), isi15(Y).
	isi15(Y):-cc(Y,'y'),jur_mm,nl.
	isi15(Y):-cc(Y,'Y'),jur_mm,nl.
	isi15(Y):-cc(Y,'t'),jur_mm,nl.
	isi15(Y):-cc(Y,'T'),jur_mm,nl.
	isi15(_):-write("Yang Anda Tekan Salah"),tanya_mm5.
	
goal
mulai.