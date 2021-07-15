/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author ASUS
 */
public class Customer implements Serializable {
    private String custUsername;
    private String custFullname;
    private String custPassword;
    private String custEmail;
    private String custAddress;
    private String custPhone;

    public Customer() {
    }
    
    public Customer(String custUsername, String custFullname, String custPassword, String custEmail, String custAddress, String custPhone) {
        this.custUsername = custUsername;
        this.custFullname = custFullname;
        this.custPassword = custPassword;
        this.custEmail = custEmail;
        this.custAddress = custAddress;
        this.custPhone = custPhone;
    }

    public String getCustUsername() {
        return custUsername;
    }

    public void setCustUsername(String custUsername) {
        this.custUsername = custUsername;
    }

    public String getCustFullname() {
        return custFullname;
    }

    public void setCustFullname(String custFullname) {
        this.custFullname = custFullname;
    }

    public String getCustPassword() {
        return custPassword;
    }

    public void setCustPassword(String custPassword) {
        this.custPassword = custPassword;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public String getCustPhone() {
        return custPhone;
    }

    public void setCustPhone(String custPhone) {
        this.custPhone = custPhone;
    }
    
    @Override
    public String toString() {
        return "Customer{" + "custUsername=" + custUsername + ", custFullname=" + custFullname + ", custPassword=" + custPassword + ", custEmail=" + custEmail + ", custAddress=" + custAddress + ", custPhone=" + custPhone + '}';
    }
}
