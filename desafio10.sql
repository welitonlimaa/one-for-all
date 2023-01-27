SELECT
	m.nome_musica AS nome, COUNT(h.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas AS m
	INNER JOIN
		SpotifyClone.historico_reproducoes AS h ON m.musica_id = h.musica_id
	INNER JOIN
		SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
	INNER JOIN
		SpotifyClone.plano AS p ON u.plano_id = p.plano_id
WHERE 
	p.tipo = 'gratuito' OR p.tipo = 'pessoal'
GROUP BY 
	h.musica_id
ORDER BY nome;