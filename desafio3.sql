SELECT
	u.nome_usuario AS usuario, COUNT(h.usuario_id) AS qt_de_musicas_ouvidas, ROUND((SUM(m.duracao_segundos)/60), 2) AS total_minutos
FROM
    SpotifyClone.usuario AS u
INNER JOIN
    SpotifyClone.historico_reproducoes AS h ON u.usuario_id = h.usuario_id
INNER JOIN
    SpotifyClone.musicas AS m ON h.musica_id = m.musica_id GROUP BY u.nome_usuario ORDER BY u.nome_usuario;