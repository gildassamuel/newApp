// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.web;

import com.polypharm.gescom.domain.Montage;
import com.polypharm.gescom.service.MontageService;
import com.polypharm.gescom.web.MontageController;
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

privileged aspect MontageController_Roo_Controller {
    
    @Autowired
    MontageService MontageController.montageService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MontageController.create(@Valid Montage montage, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, montage);
            return "montages/create";
        }
        uiModel.asMap().clear();
        montageService.saveMontage(montage);
        return "redirect:/montages/" + encodeUrlPathSegment(montage.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MontageController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Montage());
        return "montages/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String MontageController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("montage", montageService.findMontage(id));
        uiModel.addAttribute("itemId", id);
        return "montages/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MontageController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("montages", montageService.findMontageEntries(firstResult, sizeNo));
            float nrOfPages = (float) montageService.countAllMontages() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("montages", montageService.findAllMontages());
        }
        addDateTimeFormatPatterns(uiModel);
        return "montages/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MontageController.update(@Valid Montage montage, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, montage);
            return "montages/update";
        }
        uiModel.asMap().clear();
        montageService.updateMontage(montage);
        return "redirect:/montages/" + encodeUrlPathSegment(montage.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String MontageController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, montageService.findMontage(id));
        return "montages/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String MontageController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Montage montage = montageService.findMontage(id);
        montageService.deleteMontage(montage);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/montages";
    }
    
    void MontageController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("montage_datemontage_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void MontageController.populateEditForm(Model uiModel, Montage montage) {
        uiModel.addAttribute("montage", montage);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String MontageController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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