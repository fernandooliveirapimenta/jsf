package service;


import model.Jogo;
import persistence.Configuracao;
import dao.ConfiguracaoDAO;

public class ConfiguraService {
	private Jogo jogo;
	private ConfiguracaoDAO configDao;
	private char[][] tabuleiro;
	public void configurar(Configuracao config){
		 
		 jogo.iniciaJogo(configDao.createConfiguracao(config));
		 tabuleiro= jogo.getTab().getTabuleiroJogo();
	}
	public Jogo getJogo() {
		return jogo;
	}
	public void setConfigDao(ConfiguracaoDAO configDao) {
		this.configDao = configDao;
	}
	public char[][] getTabuleiro() {
		return tabuleiro;
	}
	public void setJogo(Jogo jogo) {
		this.jogo = jogo;
	}
}
