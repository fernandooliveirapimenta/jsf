package manegedbeans;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import service.JogadorLogadoService;

public class JogadorBeans implements Serializable {
	private static final long serialVersionUID = -707692830736154037L;
	private JogadorLogadoService jogadorLogadoService;
	
	public String salvar()
	{
		if(jogadorLogadoService.salvarJogador())
		{
			jogadorLogadoService.getJogadorService().zerarPontos();
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,"Pronto, esta salvo!",null));
		}
		else
		{
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,"Nome ou login já existentes!",null));
		}
		return "pronto";
	}
	public String atualizaPontos()
	{
			jogadorLogadoService.atualizaPontos();
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,"Pontos atualizados!",null));
  		    return "atualizado";
	}
	public String logar()
	{
	   if(jogadorLogadoService.logarUsuario())//	se existir
		{
			return "config";
		}
		else
		{
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,"usuario ou senha digitados incorretamente!",null));
			return "falha";
		}
	}
	public String jogarNovamente()
	{  jogadorLogadoService.jogarNovamente();
		return "config";
	}
	
	public String sair()
	{
		jogadorLogadoService.sair();
		return "login";
	}
	public JogadorLogadoService getJogadorLogadoService() {
		return jogadorLogadoService;
	}
	public void setJogadorLogadoService(JogadorLogadoService jogadorLogadoService) {
		this.jogadorLogadoService = jogadorLogadoService;
	}
}
