// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.service;

import com.polypharm.gescom.domain.Personnel;
import com.polypharm.gescom.service.PersonnelService;
import java.util.List;

privileged aspect PersonnelService_Roo_Service {
    
    public abstract long PersonnelService.countAllPersonnels();    
    public abstract void PersonnelService.deletePersonnel(Personnel personnel);    
    public abstract Personnel PersonnelService.findPersonnel(Long id);    
    public abstract List<Personnel> PersonnelService.findAllPersonnels();    
    public abstract List<Personnel> PersonnelService.findPersonnelEntries(int firstResult, int maxResults);    
    public abstract void PersonnelService.savePersonnel(Personnel personnel);    
    public abstract Personnel PersonnelService.updatePersonnel(Personnel personnel);    
}
