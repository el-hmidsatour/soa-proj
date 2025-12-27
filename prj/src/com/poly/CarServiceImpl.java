package com.poly;

import java.util.List;
import javax.persistence.*;

public class CarServiceImpl {
    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");

    public List<Car> getAllCars() {
        EntityManager em = emf.createEntityManager();
        List<Car> cars = em.createQuery("SELECT c FROM Car c", Car.class).getResultList();
        em.close();
        return cars;
    }

    public void addCar(Car c) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(c);
        em.getTransaction().commit();
        em.close();
    }

    public void updateCar(Car c) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(c);
        em.getTransaction().commit();
        em.close();
    }

    public void deleteCar(int id) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Car c = em.find(Car.class, id);
        if (c != null) em.remove(c);
        em.getTransaction().commit();
        em.close();
    }

    public Car getCar(int id) {
        EntityManager em = emf.createEntityManager();
        Car c = em.find(Car.class, id);
        em.close();
        return c;
    }
}