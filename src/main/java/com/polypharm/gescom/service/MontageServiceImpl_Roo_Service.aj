// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.service;

import com.polypharm.gescom.domain.Montage;
import com.polypharm.gescom.repository.MonatageRepository;
import com.polypharm.gescom.service.MontageServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MontageServiceImpl_Roo_Service {
    
    declare @type: MontageServiceImpl: @Service;
    
    declare @type: MontageServiceImpl: @Transactional;
    
    @Autowired
    MonatageRepository MontageServiceImpl.monatageRepository;
    
    public long MontageServiceImpl.countAllMontages() {
        return monatageRepository.count();
    }
    
    public void MontageServiceImpl.deleteMontage(Montage montage) {
        monatageRepository.delete(montage);
    }
    
    public Montage MontageServiceImpl.findMontage(Long id) {
        return monatageRepository.findOne(id);
    }
    
    public List<Montage> MontageServiceImpl.findAllMontages() {
        return monatageRepository.findAll();
    }
    
    public List<Montage> MontageServiceImpl.findMontageEntries(int firstResult, int maxResults) {
        return monatageRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void MontageServiceImpl.saveMontage(Montage montage) {
        monatageRepository.save(montage);
    }
    
    public Montage MontageServiceImpl.updateMontage(Montage montage) {
        return monatageRepository.save(montage);
    }
    
}
