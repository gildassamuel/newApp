// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.web;

import com.polypharm.gescom.domain.VulgarisationProduit;
import com.polypharm.gescom.service.ClientService;
import com.polypharm.gescom.service.PersonnelService;
import com.polypharm.gescom.service.ProduitService;
import com.polypharm.gescom.service.VulgarisationProduitService;
import com.polypharm.gescom.web.VulgarisationProduitController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect VulgarisationProduitController_Roo_Controller {
    
    @Autowired
    VulgarisationProduitService VulgarisationProduitController.vulgarisationProduitService;
    
    @Autowired
    ClientService VulgarisationProduitController.clientService;
    
    @Autowired
    PersonnelService VulgarisationProduitController.personnelService;
    
    @Autowired
    ProduitService VulgarisationProduitController.produitService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String VulgarisationProduitController.create(@Valid VulgarisationProduit vulgarisationProduit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, vulgarisationProduit);
            return "vulgarisationproduits/create";
        }
        uiModel.asMap().clear();
        vulgarisationProduitService.saveVulgarisationProduit(vulgarisationProduit);
        return "redirect:/vulgarisationproduits/" + encodeUrlPathSegment(vulgarisationProduit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String VulgarisationProduitController.createForm(Model uiModel) {
        populateEditForm(uiModel, new VulgarisationProduit());
        return "vulgarisationproduits/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String VulgarisationProduitController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("vulgarisationproduit", vulgarisationProduitService.findVulgarisationProduit(id));
        uiModel.addAttribute("itemId", id);
        return "vulgarisationproduits/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String VulgarisationProduitController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("vulgarisationproduits", vulgarisationProduitService.findVulgarisationProduitEntries(firstResult, sizeNo));
            float nrOfPages = (float) vulgarisationProduitService.countAllVulgarisationProduits() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("vulgarisationproduits", vulgarisationProduitService.findAllVulgarisationProduits());
        }
        addDateTimeFormatPatterns(uiModel);
        return "vulgarisationproduits/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String VulgarisationProduitController.update(@Valid VulgarisationProduit vulgarisationProduit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, vulgarisationProduit);
            return "vulgarisationproduits/update";
        }
        uiModel.asMap().clear();
        vulgarisationProduitService.updateVulgarisationProduit(vulgarisationProduit);
        return "redirect:/vulgarisationproduits/" + encodeUrlPathSegment(vulgarisationProduit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String VulgarisationProduitController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, vulgarisationProduitService.findVulgarisationProduit(id));
        return "vulgarisationproduits/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String VulgarisationProduitController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        VulgarisationProduit vulgarisationProduit = vulgarisationProduitService.findVulgarisationProduit(id);
        vulgarisationProduitService.deleteVulgarisationProduit(vulgarisationProduit);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/vulgarisationproduits";
    }
    
    void VulgarisationProduitController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("vulgarisationProduit_datevulgarisation_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void VulgarisationProduitController.populateEditForm(Model uiModel, VulgarisationProduit vulgarisationProduit) {
        uiModel.addAttribute("vulgarisationProduit", vulgarisationProduit);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("clients", clientService.findAllClients());
        uiModel.addAttribute("personnels", personnelService.findAllPersonnels());
        uiModel.addAttribute("produits", produitService.findAllProduits());
    }
    
    String VulgarisationProduitController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
