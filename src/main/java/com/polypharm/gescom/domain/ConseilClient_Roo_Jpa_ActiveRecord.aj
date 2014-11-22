// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.ConseilClient;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ConseilClient_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ConseilClient.entityManager;
    
    public static final EntityManager ConseilClient.entityManager() {
        EntityManager em = new ConseilClient().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ConseilClient.countConseilClients() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ConseilClient o", Long.class).getSingleResult();
    }
    
    public static List<ConseilClient> ConseilClient.findAllConseilClients() {
        return entityManager().createQuery("SELECT o FROM ConseilClient o", ConseilClient.class).getResultList();
    }
    
    public static ConseilClient ConseilClient.findConseilClient(Long id) {
        if (id == null) return null;
        return entityManager().find(ConseilClient.class, id);
    }
    
    public static List<ConseilClient> ConseilClient.findConseilClientEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ConseilClient o", ConseilClient.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ConseilClient.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ConseilClient.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ConseilClient attached = ConseilClient.findConseilClient(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ConseilClient.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ConseilClient.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ConseilClient ConseilClient.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ConseilClient merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
