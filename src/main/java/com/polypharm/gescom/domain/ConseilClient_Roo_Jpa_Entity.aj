// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.ConseilClient;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ConseilClient_Roo_Jpa_Entity {
    
    declare @type: ConseilClient: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ConseilClient.id;
    
    @Version
    @Column(name = "version")
    private Integer ConseilClient.version;
    
    public Long ConseilClient.getId() {
        return this.id;
    }
    
    public void ConseilClient.setId(Long id) {
        this.id = id;
    }
    
    public Integer ConseilClient.getVersion() {
        return this.version;
    }
    
    public void ConseilClient.setVersion(Integer version) {
        this.version = version;
    }
    
}
