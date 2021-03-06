// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.service;

import com.polypharm.gescom.domain.SuiviStock;
import com.polypharm.gescom.repository.SuiviStockProspectRepository;
import com.polypharm.gescom.service.SuiviStockServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SuiviStockServiceImpl_Roo_Service {
    
    declare @type: SuiviStockServiceImpl: @Service;
    
    declare @type: SuiviStockServiceImpl: @Transactional;
    
    @Autowired
    SuiviStockProspectRepository SuiviStockServiceImpl.suiviStockProspectRepository;
    
    public long SuiviStockServiceImpl.countAllSuiviStocks() {
        return suiviStockProspectRepository.count();
    }
    
    public void SuiviStockServiceImpl.deleteSuiviStock(SuiviStock suiviStock) {
        suiviStockProspectRepository.delete(suiviStock);
    }
    
    public SuiviStock SuiviStockServiceImpl.findSuiviStock(Long id) {
        return suiviStockProspectRepository.findOne(id);
    }
    
    public List<SuiviStock> SuiviStockServiceImpl.findAllSuiviStocks() {
        return suiviStockProspectRepository.findAll();
    }
    
    public List<SuiviStock> SuiviStockServiceImpl.findSuiviStockEntries(int firstResult, int maxResults) {
        return suiviStockProspectRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void SuiviStockServiceImpl.saveSuiviStock(SuiviStock suiviStock) {
        suiviStockProspectRepository.save(suiviStock);
    }
    
    public SuiviStock SuiviStockServiceImpl.updateSuiviStock(SuiviStock suiviStock) {
        return suiviStockProspectRepository.save(suiviStock);
    }
    
}
