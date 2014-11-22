// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.service;

import com.polypharm.gescom.domain.Montage;
import com.polypharm.gescom.service.MontageService;
import java.util.List;

privileged aspect MontageService_Roo_Service {
    
    public abstract long MontageService.countAllMontages();    
    public abstract void MontageService.deleteMontage(Montage montage);    
    public abstract Montage MontageService.findMontage(Long id);    
    public abstract List<Montage> MontageService.findAllMontages();    
    public abstract List<Montage> MontageService.findMontageEntries(int firstResult, int maxResults);    
    public abstract void MontageService.saveMontage(Montage montage);    
    public abstract Montage MontageService.updateMontage(Montage montage);    
}