// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.service;

import com.polypharm.gescom.domain.DossierCreance;
import com.polypharm.gescom.service.DossierCreanceService;
import java.util.List;

privileged aspect DossierCreanceService_Roo_Service {
    
    public abstract long DossierCreanceService.countAllDossierCreances();    
    public abstract void DossierCreanceService.deleteDossierCreance(DossierCreance dossierCreance);    
    public abstract DossierCreance DossierCreanceService.findDossierCreance(Long id);    
    public abstract List<DossierCreance> DossierCreanceService.findAllDossierCreances();    
    public abstract List<DossierCreance> DossierCreanceService.findDossierCreanceEntries(int firstResult, int maxResults);    
    public abstract void DossierCreanceService.saveDossierCreance(DossierCreance dossierCreance);    
    public abstract DossierCreance DossierCreanceService.updateDossierCreance(DossierCreance dossierCreance);    
}
