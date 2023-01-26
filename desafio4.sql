SELECT
	u.nome_usuario AS usuario, IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.usuario AS u
INNER JOIN
    SpotifyClone.historico_reproducoes AS h 
ON u.usuario_id = h.usuario_id GROUP BY u.usuario_id ORDER BY u.nome_usuario;