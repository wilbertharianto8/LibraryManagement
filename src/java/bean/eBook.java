/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author ASUS
 */
public class eBook {
    private String eTitle;
    private String eAuthor;
    private String eImage;
    private String ePdf;
    private int eActivation;

    public String geteTitle() {
        return eTitle;
    }

    public void seteTitle(String eTitle) {
        this.eTitle = eTitle;
    }

    public String geteAuthor() {
        return eAuthor;
    }

    public void seteAuthor(String eAuthor) {
        this.eAuthor = eAuthor;
    }

    public String geteImage() {
        return eImage;
    }

    public void seteImage(String eImage) {
        this.eImage = eImage;
    }

    public String getePdf() {
        return ePdf;
    }

    public void setePdf(String ePdf) {
        this.ePdf = ePdf;
    }

    public int geteActivation() {
        return eActivation;
    }

    public void seteActivation(int eActivation) {
        this.eActivation = eActivation;
    }

    public String geteReason() {
        return eReason;
    }

    public void seteReason(String eReason) {
        this.eReason = eReason;
    }
    private String eReason;

    public eBook() {
    }
}
