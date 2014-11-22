// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.Produit;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Produit_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Produit.entityManager;
    
    public static final EntityManager Produit.entityManager() {
        EntityManager em = new Produit().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Produit.countProduits() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Produit o", Long.class).getSingleResult();
    }
    
    public static List<Produit> Produit.findAllProduits() {
        return entityManager().createQuery("SELECT o FROM Produit o", Produit.class).getResultList();
    }
    
    public static Produit Produit.findProduit(Long id) {
        if (id == null) return null;
        return entityManager().find(Produit.class, id);
    }
    
    public static List<Produit> Produit.findProduitEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Produit o", Produit.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Produit.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Produit.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Produit attached = Produit.findProduit(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Produit.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Produit.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Produit Produit.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Produit merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
