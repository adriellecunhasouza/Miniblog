package q07;

import java.util.Date;

public class Post {
	private int id;
	private String mensagem;
	private Date dataMensagem;
	private Date horaMensagem;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public Date getDataMensagem() {
		return dataMensagem;
	}

	public void setDataMensagem(Date dataMensagem) {
		this.dataMensagem = dataMensagem;
	}	
	
	public Date getHoraMensagem() {
		return horaMensagem;
	}

	public void setHoraMensagem(Date horaMensagem) {
		this.horaMensagem = horaMensagem;
	}	
}

