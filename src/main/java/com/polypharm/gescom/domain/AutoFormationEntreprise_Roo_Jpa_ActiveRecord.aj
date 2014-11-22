// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.AutoFormationEntreprise;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AutoFormationEntreprise_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AutoFormationEntreprise.entityManager;
    
    public static final EntityManager AutoFormationEntreprise.entityManager() {
        EntityManager em = new AutoFormationEntreprise().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AutoFormationEntreprise.countAutoFormationEntreprises() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AutoFormationEntreprise o", Long.class).getSingleResult();
    }
    
    public static List<AutoFormationEntreprise> AutoFormationEntreprise.findAllAutoFormationEntreprises() {
        return entityManager().createQuery("SELECT o FROM AutoFormationEntreprise o", AutoFormationEntreprise.class).getResultList();
    }
    
    public static AutoFormationEntreprise AutoFormationEntreprise.findAutoFormationEntreprise(Long id) {
        if (id == null) return null;
        return entityManager().find(AutoFormationEntreprise.class, id);
    }
    
    public static List<AutoFormationEntreprise> AutoFormationEntreprise.findAutoFormationEntrepriseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AutoFormationEntreprise o", AutoFormationEntreprise.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AutoFormationEntreprise.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AutoFormationEntreprise.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AutoFormationEntreprise attached = AutoFormationEntreprise.findAutoFormationEntreprise(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AutoFormationEntreprise.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AutoFormationEntreprise.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AutoFormationEntreprise AutoFormationEntreprise.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AutoFormationEntreprise merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
