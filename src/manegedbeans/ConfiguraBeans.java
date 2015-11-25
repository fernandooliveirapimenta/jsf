package manegedbeans;

import java.io.Serializable;

import persistence.Configuracao;
import service.ConfiguraService;
import service.JogadorService;

public class ConfiguraBeans implements Serializable {
	private static final long serialVersionUID = -3019800865693208913L;
	private ConfiguraService configService;
	private JogadorService jogadorService;
	private Configuracao configuracao = new Configuracao();
	public String iniciaJogo()
	{
		configService.configurar(configuracao);
		return "success";
	}
	public ConfiguraService getConfigService() {
		return configService;
	}
	public void setConfigService(ConfiguraService configService) {
		this.configService = configService;
	}
	public JogadorService getJogadorService() {
		return jogadorService;
	}
	public void setJogadorService(JogadorService jogadorService) {
		this.jogadorService = jogadorService;
	}
	public Configuracao getConfiguracao() {
		return configuracao;
	}
	public void setConfiguracao(Configuracao configuracao) {
		this.configuracao = configuracao;
	}
}
