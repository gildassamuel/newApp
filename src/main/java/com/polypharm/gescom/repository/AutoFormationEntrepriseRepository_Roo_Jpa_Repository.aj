// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.repository;

import com.polypharm.gescom.domain.AutoFormationEntreprise;
import com.polypharm.gescom.repository.AutoFormationEntrepriseRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AutoFormationEntrepriseRepository_Roo_Jpa_Repository {
    
    declare parents: AutoFormationEntrepriseRepository extends JpaRepository<AutoFormationEntreprise, Long>;
    
    declare parents: AutoFormationEntrepriseRepository extends JpaSpecificationExecutor<AutoFormationEntreprise>;
    
    declare @type: AutoFormationEntrepriseRepository: @Repository;
    
}
