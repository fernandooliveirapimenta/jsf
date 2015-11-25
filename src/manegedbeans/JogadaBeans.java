package manegedbeans;

import java.io.Serializable;



import service.JogadaService;

public class JogadaBeans implements Serializable {
	private static final long serialVersionUID = -707692830736154037L;
	private JogadaService jogadaService;
	private int clickLinha;
	private int clickColuna;
	public String jogada()
	{   
		if(jogadaService.getConfigService().getTabuleiro()[getClickLinha()][getClickColuna()]!= '_')
		 {
		  
		 }
		else{
			
			if (jogadaService.jogada(getClickLinha()-1, getClickColuna()-1) == 1){
				return ("lost");
			} 
			else 
			{
				if (jogadaService.jogada(getClickLinha()-1, getClickColuna()-1) == 2){	
					return ("win");
				}
			}
		}
		return null;
		
	}
	public JogadaService getJogadaService() {
		return jogadaService;
	}
	public void setJogadaService(JogadaService jogadaService) {
		this.jogadaService = jogadaService;
	}
	public int getClickLinha() {
		return clickLinha;
	}
	public void setClickLinha(int clickLinha) {
		this.clickLinha = clickLinha;
	}
	public int getClickColuna() {
		return clickColuna;
	}
	public void setClickColuna(int clickColuna) {
		this.clickColuna = clickColuna;
	}
}
