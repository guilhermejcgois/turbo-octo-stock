package model;

public class PecaEstoqueBean implements java.io.Serializable {
    
    private int qtdTotal;
    private DisponibilidadeEnum disponibilidade;

    /**
     * @return the qtdTotal
     */
    public int getQtdTotal() {
        return qtdTotal;
    }

    /**
     * @param qtdTotal the qtdTotal to set
     */
    public void setQtdTotal(int qtdTotal) {
        this.qtdTotal = qtdTotal;
    }

    /**
     * @return the disponibilidade
     */
    public DisponibilidadeEnum getDisponibilidade() {
        return disponibilidade;
    }

    /**
     * @param disponibilidade the disponibilidade to set
     */
    public void setDisponibilidade(DisponibilidadeEnum disponibilidade) {
        this.disponibilidade = disponibilidade;
    }
    
}
