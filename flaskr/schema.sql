drop table if exists user;
drop table if exists post;

create table user (
    ID integer primary key AUTOINCREMENT,
    username text unique not null,
    password text not null
);

create table post (
    ID integer primary key AUTOINCREMENT,
    author_id integer not null,
    created timestamp not null default current_timestap,
    title text not null,
    body text not null,
    foreign key (author_id) references user (ID)
);