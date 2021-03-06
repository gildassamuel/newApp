// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.web;

import com.polypharm.gescom.domain.Installation;
import com.polypharm.gescom.service.ClientService;
import com.polypharm.gescom.service.InstallationService;
import com.polypharm.gescom.service.PersonnelService;
import com.polypharm.gescom.web.InstallationController;
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

privileged aspect InstallationController_Roo_Controller {
    
    @Autowired
    InstallationService InstallationController.installationService;
    
    @Autowired
    ClientService InstallationController.clientService;
    
    @Autowired
    PersonnelService InstallationController.personnelService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String InstallationController.create(@Valid Installation installation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, installation);
            return "installations/create";
        }
        uiModel.asMap().clear();
        installationService.saveInstallation(installation);
        return "redirect:/installations/" + encodeUrlPathSegment(installation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String InstallationController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Installation());
        return "installations/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String InstallationController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("installation", installationService.findInstallation(id));
        uiModel.addAttribute("itemId", id);
        return "installations/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String InstallationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("installations", Installation.findInstallationEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) installationService.countAllInstallations() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("installations", Installation.findAllInstallations(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "installations/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String InstallationController.update(@Valid Installation installation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, installation);
            return "installations/update";
        }
        uiModel.asMap().clear();
        installationService.updateInstallation(installation);
        return "redirect:/installations/" + encodeUrlPathSegment(installation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String InstallationController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, installationService.findInstallation(id));
        return "installations/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String InstallationController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Installation installation = installationService.findInstallation(id);
        installationService.deleteInstallation(installation);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/installations";
    }
    
    void InstallationController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("installation_dateinstallation_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void InstallationController.populateEditForm(Model uiModel, Installation installation) {
        uiModel.addAttribute("installation", installation);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("clients", clientService.findAllClients());
        uiModel.addAttribute("personnels", personnelService.findAllPersonnels());
    }
    
    String InstallationController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
