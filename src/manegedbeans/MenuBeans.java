package manegedbeans;

import java.io.Serializable;

public class MenuBeans implements Serializable {
	private static final long serialVersionUID = -8229356370283952048L;
    private String nome;
	
	public String irVencedores()
	{
		return "winners";
	}
	public String irRanking()
	{
		return "rank";
	}
	public String irLogin()
	{
		return "login";
	}
	public String irCadastro()
	{
		return "cadastro";
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
}
