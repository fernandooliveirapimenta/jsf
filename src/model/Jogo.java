package model;

import persistence.Configuracao;
public class Jogo {
	private Tabuleiro tab;
	private Layout layout;
    boolean terminar = false;
    
    public void iniciaJogo(Configuracao config){
        tab.configuraTabuleiro(config);
        layout.iniciaLayout(config);
        layout.exibe();    
    }
    public boolean Jogada(int x, int y) {
        if(!terminar){
            tab.abrirVizinhas(x,y);
            terminar = tab.isVencedor();
            tab.iniciaTabuleiroJogo();
        }
        layout.exibeMinas();
        return tab.isDerrota(x+1, y+1);
	}

		public boolean isTerminar() {
			return terminar;
		}
		public Tabuleiro getTab() {
			return tab;
		}
		public void setTab(Tabuleiro tab) {
			this.tab = tab;
		}
		public Layout getLayout() {
			return layout;
		}
		public void setLayout(Layout layout) {
			this.layout = layout;
		}
}
