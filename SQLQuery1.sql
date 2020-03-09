create database DSI
create table video(
idVideo int primary key,
titulo varchar(100),
reproducciones int,
url varchar(100)
)
create procedure sp_video_insertar
@idVideo int,
@titulo varchar(100),
@reproducciones int,
@url varchar(100)
as
begin
insert into video values(@idVideo,@titulo,@reproducciones,@url)
end

DROP PROCEDURE sp_video_insertar; 

EXEC sp_video_insertar 1108,'GCF in Tokyo',19658234,'youtube.com' 

select*from video

create procedure sp_video_modificar
@idVideo int,
@titulo varchar(100),
@reproducciones int,
@url varchar(100)
as
begin
UPDATE video SET titulo=@titulo,reproducciones=@reproducciones,url=@url WHERE idVideo=@idVideo
end


create procedure sp_video_eliminar
@idVideo int
as
begin
Delete from Video where idVideo=@idVideo
end