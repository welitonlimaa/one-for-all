SELECT
	COUNT(h.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.usuario AS u
INNER JOIN
    SpotifyClone.historico_reproducoes AS h ON u.usuario_id = h.usuario_id
WHERE u.nome_usuario = 'Barbara Liskov';