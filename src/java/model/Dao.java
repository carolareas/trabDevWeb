/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author User
 * @param <T>
 */
public interface Dao<T> {
    
    public T get(int id);
    public ArrayList<T> getAll();
    public void insert (T t);
    public void update(T t);
    public void delete(int id);
}
