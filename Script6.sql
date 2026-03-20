select nf.cpf, nf.data_venda, inf.quantidade
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero;

select nf.cpf,
date_format(nf.data_venda,'%Y-%m') as ano_mes,
sum(inf.quantidade) as qntd_venda
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero
group by nf.cpf, ano_mes;

select tc.cpf, tc.noome, tc.volume_compra as qntd_limite
from tabela_de_clientes as tc;

select nf.cpf, tc.nome,
date_format(nf.data_venda,'%Y-%m') as ano_mes,
sum(inf.quantidade) as qntd_venda,
tc.volume_de_compra as volume_limite
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero
inner join tabela_de_clientes as tc
on tc.cpf = nf.cpf
group by nf.cpf, tc.nome, ano_mes;


select x.cpf, x.nome, x.ano_mes, x.qntd_venda, x.volume_limite,
 (x.volume_limite - x.qntd_venda) as diferenca,
 case
	when (x.volume_limite - x.qntd_venda) < 0
    then "Venda Inválida"
    else "Venda Válida"
end as status_venda
from (
select nf.cpf, tc.nome,
date_format(nf.data_venda,'%Y-%m') as ano_mes,
sum(inf.quantidade) as qntd_venda,
tc.volume_de_compra as volume_limite
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero
inner join tabela_de_clientes as tc
on tc.cpf = nf.cpf
group by nf.cpf, tc.nome, ano_mes) as x;
