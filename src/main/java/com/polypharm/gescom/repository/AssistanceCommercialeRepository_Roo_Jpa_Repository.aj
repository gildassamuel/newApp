// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.repository;

import com.polypharm.gescom.domain.AssistanceCommerciale;
import com.polypharm.gescom.repository.AssistanceCommercialeRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AssistanceCommercialeRepository_Roo_Jpa_Repository {
    
    declare parents: AssistanceCommercialeRepository extends JpaRepository<AssistanceCommerciale, Long>;
    
    declare parents: AssistanceCommercialeRepository extends JpaSpecificationExecutor<AssistanceCommerciale>;
    
    declare @type: AssistanceCommercialeRepository: @Repository;
    
}
