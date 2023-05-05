/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package xxx;

import model.Cart;
import org.json.JSONArray;

/**
 *
 * @author TCNJK
 */
public class JSon {

    JSONArray nValues;
    JSONArray n2Values;
    JSONArray n3Values;
    JSONArray n4Values;
    JSONArray idUser;
    JSONArray idAni;

    public JSon(JSONArray nValues, JSONArray n2Values, JSONArray n3Values, JSONArray n4Values, JSONArray idUser, JSONArray idAni) {
        this.nValues = nValues;
        this.n2Values = n2Values;
        this.n3Values = n3Values;
        this.n4Values = n4Values;
        this.idUser = idUser;
        this.idAni = idAni;
    }

    public void run() {
        Cart e;
        for (int i = 0; i < nValues.length(); i++) {
            e = new Cart();
            e.setUserId(idUser.getString(i));
            e.setSpid(idAni.getString(i));
            e.setNum1(nValues.getString(i));
            e.setNum2(n2Values.getString(i));
            e.setNum3(n3Values.getString(i));
            e.setNum4(n4Values.getString(i));
            e.update();
            e = null;
        }
    }

    public JSONArray getnValues() {
        return nValues;
    }

    public void setnValues(JSONArray nValues) {
        this.nValues = nValues;
    }

    public JSONArray getN2Values() {
        return n2Values;
    }

    public void setN2Values(JSONArray n2Values) {
        this.n2Values = n2Values;
    }

    public JSONArray getN3Values() {
        return n3Values;
    }

    public void setN3Values(JSONArray n3Values) {
        this.n3Values = n3Values;
    }

    public JSONArray getN4Values() {
        return n4Values;
    }

    public void setN4Values(JSONArray n4Values) {
        this.n4Values = n4Values;
    }

    public JSONArray getIdUser() {
        return idUser;
    }

    public void setIdUser(JSONArray idUser) {
        this.idUser = idUser;
    }

    public JSONArray getIdAni() {
        return idAni;
    }

    public void setIdAni(JSONArray idAni) {
        this.idAni = idAni;
    }

}
