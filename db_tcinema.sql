create table DVD
(
	id_dvd int,
	judul varchar(30),
	harga int,
	nama_kategori varchar(20),
	constraint pk_DVD primary key(id_dvd)
);

create table penyewa
(
	id_penyewa int,
	nama_penyewa varchar(20),
	alamat varchar(20),
	constraint pk_penyewa primary key(id_penyewa)
);

create table penyewaan
(
	id_transaksi int,
	id_penyewa int,
	id_dvd int,
	constraint pk_penyewaan primary key(id_transaksi),
	foreign key(id_penyewa) references penyewa(id_penyewa),
	foreign key(id_dvd) references DVD(id_dvd)
);

insert into DVD values (1, 'Home Alone', 50000, 'children');
insert into DVD values (2, 'Frozen', 60000, 'children');
insert into DVD values (3, 'Mary Poppins Return', 55000, 'children');
insert into DVD values (4, 'Jumanji', 50000, 'adventure');
insert into DVD values (5, 'Aquaman', 55000, 'action');
insert into DVD values (6, 'Jumanji', 65000, 'adventure');
insert into DVD values (7, 'Justice League', 75000, 'action');
insert into DVD values (8, 'The Silence', 60000,'horror');
insert into DVD values (9, 'Annihilation', 65000,'horror');
insert into DVD values (10, 'Escape Room', 70000,'horror');

insert into penyewa values (1, 'Dono', 'Keputih');
insert into penyewa values (2, 'Indro', 'Mulyorejo');
insert into penyewa values (3, 'Kasino', 'Gebang');
insert into penyewa values (4, 'Pepeng', 'Galaxy');
insert into penyewa values (5, 'Mumun', 'Keputih');
insert into penyewa values (6, 'Dindin', 'Gubeng');
insert into penyewa values (7, 'Pimpim', 'Perumdos');
insert into penyewa values (8, 'Keke', 'Keputih');
insert into penyewa values (9, 'Coco', 'Perumdos');
insert into penyewa values (10, 'Zizi', 'Mulyorejo');

insert into penyewaan values (1, 1, 1);
insert into penyewaan values (2, 1, 3);
insert into penyewaan values (3, 1, 5);
insert into penyewaan values (4, 2, 6);
insert into penyewaan values (5, 2, 2);
insert into penyewaan values (6, 3, 5);
insert into penyewaan values (7, 4, 7);
insert into penyewaan values (8, 4, 2);
insert into penyewaan values (9, 4, 3);
insert into penyewaan values (10, 4, 4);
insert into penyewaan values (11, 4, 10);
insert into penyewaan values (12, 4, 5);
insert into penyewaan values (13, 6, 3);
insert into penyewaan values (14, 6, 2);
insert into penyewaan values (15, 6, 7);
insert into penyewaan values (16, 8, 5);
insert into penyewaan values (17, 8, 2);
insert into penyewaan values (18, 9, 3);
insert into penyewaan values (19, 9, 5);
insert into penyewaan values (20, 9, 7);

