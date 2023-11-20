package entidade;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Transaction {
    private int transactionID;
    private int userIdOrigem;
    private int userIdDestino;
    private String tipo;
    private BigDecimal valor;
    private Timestamp dataHora;


    public Transaction() {
    }

    public Transaction(int userIdOrigem, int userIdDestino, String tipo, BigDecimal valor) {
        this.userIdOrigem = userIdOrigem;
        this.userIdDestino = userIdDestino;
        this.tipo = tipo;
        this.valor = valor;
    }

    public int getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(int transactionID) {
        this.transactionID = transactionID;
    }

    public int getUserIdOrigem() {
        return userIdOrigem;
    }

    public void setUserIdOrigem(int userIdOrigem) {
        this.userIdOrigem = userIdOrigem;
    }

    public int getUserIdDestino() {
        return userIdDestino;
    }

    public void setUserIdDestino(int userIdDestino) {
        this.userIdDestino = userIdDestino;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    public Timestamp getDataHora() {
        return dataHora;
    }

    public void setDataHora(Timestamp dataHora) {
        this.dataHora = dataHora;
    }
}
