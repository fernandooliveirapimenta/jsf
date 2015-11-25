package service;

import java.util.List;


import persistence.Jogador;
import persistence.Vencedores;
import dao.JogadorDAO;
import dao.VencedoresDAO;

public class JogadorLogadoService {
	
	private JogadorDAO jogadorDao; 
	private VencedoresDAO vencedorDao;
	private JogadorService jogadorService;
	
	public boolean salvarJogador()
	{ 
		if(jogadorDao.checaLogin(jogadorService.getLogin()).size()==0)
		{
			if(jogadorDao.checaExisteJogador(jogadorService.getNome()).size()==0)//N EXISTE JOGADOR
			{
				Jogador jogador =new Jogador();
				jogador.setNome(jogadorService.getNome());
				jogador.setPontos(jogadorService.getPontos());
				jogador.setLogin(jogadorService.getLogin());
				jogador.setSenha(jogadorService.getSenha());
				jogadorDao.passarPontos(jogador);
				
				return true;
			}
		}
		else
		{
			return false;
		}
		return false;
	}
	public boolean logarUsuario()
	{
		if(jogadorDao.checaLoginSenha(jogadorService.getLogin(), jogadorService.getSenha()).size()!=0)
		{ 
			List<Jogador> jogador= jogadorDao.checaLoginSenha(jogadorService.getLogin(), jogadorService.getSenha());
			jogadorService.setNome(jogador.get(0).getNome());
			
			return true;
		}
		else{
			return false;
		}
	}
	public void atualizaPontos()
	{
		List<Jogador> jogadorList= jogadorDao.checaLoginSenha(jogadorService.getLogin(), jogadorService.getSenha());
		Jogador jogadorPontos =new Jogador();
		jogadorPontos.setId(jogadorList.get(0).getId());
		jogadorPontos.setNome(jogadorList.get(0).getNome());
		jogadorPontos.setPontos(jogadorService.getPontos());
		jogadorPontos.setLogin(jogadorList.get(0).getLogin());
		jogadorPontos.setSenha(jogadorList.get(0).getSenha());
		jogadorDao.atualizarPontos(jogadorPontos);
		jogadorService.zerarPontos();
	}
	public void sair()
	{
		jogadorService.sair();
	}
	public void salvarVencedor()
	{ 
		Vencedores vencedor = new Vencedores();
		vencedor.setNome(jogadorService.getNome());
		if(vencedorDao.checaNomeVencedor(jogadorService.getNome()).size()==0)
		 {
			vencedorDao.criarVencedor(vencedor);
			jogadorService.zerarPontos();
		 }
	}
	public void jogarNovamente()
	{
		jogadorService.zerarPontos();
	}
	public List<Vencedores> listarVencedores()
	{
		return vencedorDao.listarVencedores();
	}
	public List<Jogador> listarJogadores()
	{
		return jogadorDao.listarJogadores();
	}
	public void setJogadorDao(JogadorDAO jogadorDao) {
		this.jogadorDao = jogadorDao;
	}
	public void setVencedorDao(VencedoresDAO vencedorDao) {
		this.vencedorDao = vencedorDao;
	}
	public void setJogadorService(JogadorService jogadorService) {
		this.jogadorService = jogadorService;
	}
	public JogadorService getJogadorService() {
		return jogadorService;
	}
}
