// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.repository;

import com.polypharm.gescom.domain.Montage;
import com.polypharm.gescom.repository.MonatageRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect MonatageRepository_Roo_Jpa_Repository {
    
    declare parents: MonatageRepository extends JpaRepository<Montage, Long>;
    
    declare parents: MonatageRepository extends JpaSpecificationExecutor<Montage>;
    
    declare @type: MonatageRepository: @Repository;
    
}
