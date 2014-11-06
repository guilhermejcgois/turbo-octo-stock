package model;

import java.util.Date;

public class RelatorioBean implements java.io.Serializable {
    
    private Date data;

    /**
     * @return the data
     */
    public Date getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(Date data) {
        this.data = data;
    }
    
}
