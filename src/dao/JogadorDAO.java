package dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import persistence.Jogador;

public class JogadorDAO extends HibernateDaoSupport{

	public void passarPontos(Jogador jogador) {
			getHibernateTemplate().save(jogador);
	}
	@SuppressWarnings("unchecked")
	public List<Jogador> listarJogadores(){
		return getHibernateTemplate().find("from Jogador j Order by j.pontos DESC");
	}

	@SuppressWarnings("unchecked")
	public List<Jogador> checaExisteJogador(String nome)
	{	
		return getHibernateTemplate().find("from Jogador j where j.nome = '"+nome+"'");
	}
	
	@SuppressWarnings("unchecked")
	public List<Jogador> checaLoginSenha(String login, String senha)
	{
		 return getHibernateTemplate().find("from Jogador j where j.login = '"+login+"'"+"and senha='"+senha+"'");
		
	}
	@SuppressWarnings("unchecked")
	public List<Jogador> checaLogin(String login)
	{
		return getHibernateTemplate().find("from Jogador j where j.login = '"+login+"'");
		
	}
	
	public void atualizarPontos(Jogador jogador)
	{
	   getHibernateTemplate().update(jogador);
	}
	
}
