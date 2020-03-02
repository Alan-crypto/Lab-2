Create Table Video(
idVideo int PRIMARY KEY,
titulo varchar (100),
repro int,
url varchar(100))

Create Procedure sp_video_insertar
	@idVideo int,
	@titulo varchar (100),
	@repro int,
	@url varchar(100)
as
begin
	INSERT INTO Video
	VALUES(@idVideo, @titulo,@repro,@url)
end

EXEC sp_video_insertar 1,'Video', 1, 'x'
Select * From Video

