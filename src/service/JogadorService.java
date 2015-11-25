package service;

public class JogadorService {
	private String nome;
	private int pontos=0;
	private String login;
	private String senha;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getPontos() {
		return pontos;
	}
	public void setPontos(int pontos) {
		this.pontos += pontos;
	}
	public void zerarPontos()
	{
		this.pontos=0;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public void sair()
	{
		this.nome = null;
		this.login=null;
		this.senha=null;
		this.pontos=0;
		
	}
}
