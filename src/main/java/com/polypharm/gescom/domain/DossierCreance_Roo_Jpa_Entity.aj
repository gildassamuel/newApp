// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.domain;

import com.polypharm.gescom.domain.DossierCreance;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect DossierCreance_Roo_Jpa_Entity {
    
    declare @type: DossierCreance: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DossierCreance.id;
    
    @Version
    @Column(name = "version")
    private Integer DossierCreance.version;
    
    public Long DossierCreance.getId() {
        return this.id;
    }
    
    public void DossierCreance.setId(Long id) {
        this.id = id;
    }
    
    public Integer DossierCreance.getVersion() {
        return this.version;
    }
    
    public void DossierCreance.setVersion(Integer version) {
        this.version = version;
    }
    
}
