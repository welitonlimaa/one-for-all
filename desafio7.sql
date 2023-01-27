SELECT 
	art.nome_artista AS artista, alb.nome_album AS album, COUNT(seg.artista_id) AS seguidores
FROM 
	SpotifyClone.album alb
INNER JOIN
	SpotifyClone.artista art ON alb.artista_id = art.artista_id
INNER JOIN
	SpotifyClone.seguindo_artistas seg ON art.artista_id = seg.artista_id
GROUP BY alb.nome_album, seg.artista_id
ORDER BY seguidores DESC, artista, album;