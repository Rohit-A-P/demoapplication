/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ejb;

import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author LENOVO
 */
@Remote
public interface ListElementsRemote {
    
    void addElement(int number);
    void removeElement(int number);
    List<Integer> getElements();
}
