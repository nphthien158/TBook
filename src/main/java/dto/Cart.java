/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 9a1ng
 */
public class Cart {
    List<Item> items ;

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Cart() {
        items = new ArrayList<>();
    }
    public Cart(List<Item> items) {
        this.items = items;
    }
    private Item getItemById(int id){
        for(Item i:items){
            if(i.getS().getMasach()==id)
                return i;
        }
        return null;
    }
    private int getQuantityById(int id){
        return getItemById(id).getSoluong();
    }
    public void addItem(Item t){
        //Co trong cart roi
        if(getItemById(t.getS().getMasach())!=null){
            Item i = getItemById(t.getS().getMasach());
            i.setSoluong(i.getSoluong()+t.getSoluong());
        }else{
            //chua co
            items.add(t);
        }            
    }
    public void removeItem(int id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
//    public int getTotalMoney(){
//        int t=0;
//        for(Item i:items)
//            t+=i.getSoluong()*i.getGiaban();
//        return t;
//    }

    
}
