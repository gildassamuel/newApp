// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.VeilleConcurrentielleProduit;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VeilleConcurrentielleProduit_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager VeilleConcurrentielleProduit.entityManager;
    
    public static final EntityManager VeilleConcurrentielleProduit.entityManager() {
        EntityManager em = new VeilleConcurrentielleProduit().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VeilleConcurrentielleProduit.countVeilleConcurrentielleProduits() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VeilleConcurrentielleProduit o", Long.class).getSingleResult();
    }
    
    public static List<VeilleConcurrentielleProduit> VeilleConcurrentielleProduit.findAllVeilleConcurrentielleProduits() {
        return entityManager().createQuery("SELECT o FROM VeilleConcurrentielleProduit o", VeilleConcurrentielleProduit.class).getResultList();
    }
    
    public static VeilleConcurrentielleProduit VeilleConcurrentielleProduit.findVeilleConcurrentielleProduit(Long id) {
        if (id == null) return null;
        return entityManager().find(VeilleConcurrentielleProduit.class, id);
    }
    
    public static List<VeilleConcurrentielleProduit> VeilleConcurrentielleProduit.findVeilleConcurrentielleProduitEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VeilleConcurrentielleProduit o", VeilleConcurrentielleProduit.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void VeilleConcurrentielleProduit.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VeilleConcurrentielleProduit.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VeilleConcurrentielleProduit attached = VeilleConcurrentielleProduit.findVeilleConcurrentielleProduit(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VeilleConcurrentielleProduit.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VeilleConcurrentielleProduit.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VeilleConcurrentielleProduit VeilleConcurrentielleProduit.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VeilleConcurrentielleProduit merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}