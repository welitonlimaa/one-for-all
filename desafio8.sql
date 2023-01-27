SELECT 
	art.nome_artista AS artista, alb.nome_album AS album
FROM 
	SpotifyClone.album alb
INNER JOIN
	SpotifyClone.artista art ON alb.artista_id = art.artista_id
WHERE art.nome_artista = 'Elis Regina'
ORDER BY album;