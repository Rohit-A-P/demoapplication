/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package ejb;

import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateful;

/**
 *
 * @author LENOVO
 */
@Stateful
public class ListElements implements ListElementsRemote {

    List<Integer> values = new ArrayList<>();
    
    @Override
    public void addElement(int number) {
        values.add(number);
    }

    @Override
    public void removeElement(int number) {
        values.remove(number);
    }

    @Override
    public List<Integer> getElements() {
        return values;
    }
}
