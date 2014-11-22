// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.Livraison;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Livraison_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Livraison.entityManager;
    
    public static final EntityManager Livraison.entityManager() {
        EntityManager em = new Livraison().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Livraison.countLivraisons() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Livraison o", Long.class).getSingleResult();
    }
    
    public static List<Livraison> Livraison.findAllLivraisons() {
        return entityManager().createQuery("SELECT o FROM Livraison o", Livraison.class).getResultList();
    }
    
    public static Livraison Livraison.findLivraison(Long id) {
        if (id == null) return null;
        return entityManager().find(Livraison.class, id);
    }
    
    public static List<Livraison> Livraison.findLivraisonEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Livraison o", Livraison.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Livraison.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Livraison.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Livraison attached = Livraison.findLivraison(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Livraison.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Livraison.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Livraison Livraison.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Livraison merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
