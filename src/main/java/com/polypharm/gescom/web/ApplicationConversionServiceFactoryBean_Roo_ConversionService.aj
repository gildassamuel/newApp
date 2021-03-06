// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.polypharm.gescom.web;

import com.polypharm.gescom.domain.Agence;
import com.polypharm.gescom.domain.AssistanceCommerciale;
import com.polypharm.gescom.domain.AutoFormationEntreprise;
import com.polypharm.gescom.domain.Client;
import com.polypharm.gescom.domain.ConseilClient;
import com.polypharm.gescom.domain.DossierCreance;
import com.polypharm.gescom.domain.FamilleProduit;
import com.polypharm.gescom.domain.FormationUtilisateur;
import com.polypharm.gescom.domain.Installation;
import com.polypharm.gescom.domain.Livraison;
import com.polypharm.gescom.domain.Montage;
import com.polypharm.gescom.domain.Personnel;
import com.polypharm.gescom.domain.Produit;
import com.polypharm.gescom.domain.ProjetCommande;
import com.polypharm.gescom.domain.RecrutementProspect;
import com.polypharm.gescom.domain.SuiviStock;
import com.polypharm.gescom.domain.VCDistributeurConcurent;
import com.polypharm.gescom.domain.VeilleConcurrentielleProduit;
import com.polypharm.gescom.domain.VulgarisationProduit;
import com.polypharm.gescom.service.AgenceService;
import com.polypharm.gescom.service.AssistanceCommercialeService;
import com.polypharm.gescom.service.AutoFormationEntrepriseService;
import com.polypharm.gescom.service.ClientService;
import com.polypharm.gescom.service.ConseilClientService;
import com.polypharm.gescom.service.DossierCreanceService;
import com.polypharm.gescom.service.FamilleProduitService;
import com.polypharm.gescom.service.FormationUtilisateurService;
import com.polypharm.gescom.service.InstallationService;
import com.polypharm.gescom.service.LivraisonService;
import com.polypharm.gescom.service.MontageService;
import com.polypharm.gescom.service.PersonnelService;
import com.polypharm.gescom.service.ProduitService;
import com.polypharm.gescom.service.ProjetCommandeService;
import com.polypharm.gescom.service.RecrutementProspectService;
import com.polypharm.gescom.service.SuiviStockService;
import com.polypharm.gescom.service.VCDistributeurConcurentService;
import com.polypharm.gescom.service.VeilleConcurrentielleProduitService;
import com.polypharm.gescom.service.VulgarisationProduitService;
import com.polypharm.gescom.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    AgenceService ApplicationConversionServiceFactoryBean.agenceService;
    
    @Autowired
    AssistanceCommercialeService ApplicationConversionServiceFactoryBean.assistanceCommercialeService;
    
    @Autowired
    AutoFormationEntrepriseService ApplicationConversionServiceFactoryBean.autoFormationEntrepriseService;
    
    @Autowired
    ClientService ApplicationConversionServiceFactoryBean.clientService;
    
    @Autowired
    ConseilClientService ApplicationConversionServiceFactoryBean.conseilClientService;
    
    @Autowired
    DossierCreanceService ApplicationConversionServiceFactoryBean.dossierCreanceService;
    
    @Autowired
    FamilleProduitService ApplicationConversionServiceFactoryBean.familleProduitService;
    
    @Autowired
    FormationUtilisateurService ApplicationConversionServiceFactoryBean.formationUtilisateurService;
    
    @Autowired
    InstallationService ApplicationConversionServiceFactoryBean.installationService;
    
    @Autowired
    LivraisonService ApplicationConversionServiceFactoryBean.livraisonService;
    
    @Autowired
    MontageService ApplicationConversionServiceFactoryBean.montageService;
    
    @Autowired
    PersonnelService ApplicationConversionServiceFactoryBean.personnelService;
    
    @Autowired
    ProduitService ApplicationConversionServiceFactoryBean.produitService;
    
    @Autowired
    ProjetCommandeService ApplicationConversionServiceFactoryBean.projetCommandeService;
    
    @Autowired
    RecrutementProspectService ApplicationConversionServiceFactoryBean.recrutementProspectService;
    
    @Autowired
    SuiviStockService ApplicationConversionServiceFactoryBean.suiviStockService;
    
    @Autowired
    VCDistributeurConcurentService ApplicationConversionServiceFactoryBean.vCDistributeurConcurentService;
    
    @Autowired
    VeilleConcurrentielleProduitService ApplicationConversionServiceFactoryBean.veilleConcurrentielleProduitService;
    
    @Autowired
    VulgarisationProduitService ApplicationConversionServiceFactoryBean.vulgarisationProduitService;
    
    public Converter<Agence, String> ApplicationConversionServiceFactoryBean.getAgenceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Agence, java.lang.String>() {
            public String convert(Agence agence) {
                return new StringBuilder().append(agence.getNom()).append(' ').append(agence.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Agence> ApplicationConversionServiceFactoryBean.getIdToAgenceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Agence>() {
            public com.polypharm.gescom.domain.Agence convert(java.lang.Long id) {
                return agenceService.findAgence(id);
            }
        };
    }
    
    public Converter<String, Agence> ApplicationConversionServiceFactoryBean.getStringToAgenceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Agence>() {
            public com.polypharm.gescom.domain.Agence convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Agence.class);
            }
        };
    }
    
    public Converter<AssistanceCommerciale, String> ApplicationConversionServiceFactoryBean.getAssistanceCommercialeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.AssistanceCommerciale, java.lang.String>() {
            public String convert(AssistanceCommerciale assistanceCommerciale) {
                return new StringBuilder().append(assistanceCommerciale.getObjetAssistance()).append(' ').append(assistanceCommerciale.getCollegueAssiste()).toString();
            }
        };
    }
    
    public Converter<Long, AssistanceCommerciale> ApplicationConversionServiceFactoryBean.getIdToAssistanceCommercialeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.AssistanceCommerciale>() {
            public com.polypharm.gescom.domain.AssistanceCommerciale convert(java.lang.Long id) {
                return assistanceCommercialeService.findAssistanceCommerciale(id);
            }
        };
    }
    
    public Converter<String, AssistanceCommerciale> ApplicationConversionServiceFactoryBean.getStringToAssistanceCommercialeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.AssistanceCommerciale>() {
            public com.polypharm.gescom.domain.AssistanceCommerciale convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AssistanceCommerciale.class);
            }
        };
    }
    
    public Converter<AutoFormationEntreprise, String> ApplicationConversionServiceFactoryBean.getAutoFormationEntrepriseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.AutoFormationEntreprise, java.lang.String>() {
            public String convert(AutoFormationEntreprise autoFormationEntreprise) {
                return new StringBuilder().append(autoFormationEntreprise.getObjetAutoFormation()).append(' ').append(autoFormationEntreprise.getNbreInterlocuteur()).append(' ').append(autoFormationEntreprise.getDuree()).append(' ').append(autoFormationEntreprise.getDateAutoFormation()).toString();
            }
        };
    }
    
    public Converter<Long, AutoFormationEntreprise> ApplicationConversionServiceFactoryBean.getIdToAutoFormationEntrepriseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.AutoFormationEntreprise>() {
            public com.polypharm.gescom.domain.AutoFormationEntreprise convert(java.lang.Long id) {
                return autoFormationEntrepriseService.findAutoFormationEntreprise(id);
            }
        };
    }
    
    public Converter<String, AutoFormationEntreprise> ApplicationConversionServiceFactoryBean.getStringToAutoFormationEntrepriseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.AutoFormationEntreprise>() {
            public com.polypharm.gescom.domain.AutoFormationEntreprise convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AutoFormationEntreprise.class);
            }
        };
    }
    
    public Converter<Client, String> ApplicationConversionServiceFactoryBean.getClientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Client, java.lang.String>() {
            public String convert(Client client) {
                return new StringBuilder().append(client.getCode()).append(' ').append(client.getNom()).append(' ').append(client.getTelephone()).append(' ').append(client.getNumeroCarteContribuable()).toString();
            }
        };
    }
    
    public Converter<Long, Client> ApplicationConversionServiceFactoryBean.getIdToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Client>() {
            public com.polypharm.gescom.domain.Client convert(java.lang.Long id) {
                return clientService.findClient(id);
            }
        };
    }
    
    public Converter<String, Client> ApplicationConversionServiceFactoryBean.getStringToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Client>() {
            public com.polypharm.gescom.domain.Client convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Client.class);
            }
        };
    }
    
    public Converter<ConseilClient, String> ApplicationConversionServiceFactoryBean.getConseilClientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.ConseilClient, java.lang.String>() {
            public String convert(ConseilClient conseilClient) {
                return new StringBuilder().append(conseilClient.getObjetDuConseil()).append(' ').append(conseilClient.getInterlocuteur()).toString();
            }
        };
    }
    
    public Converter<Long, ConseilClient> ApplicationConversionServiceFactoryBean.getIdToConseilClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.ConseilClient>() {
            public com.polypharm.gescom.domain.ConseilClient convert(java.lang.Long id) {
                return conseilClientService.findConseilClient(id);
            }
        };
    }
    
    public Converter<String, ConseilClient> ApplicationConversionServiceFactoryBean.getStringToConseilClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.ConseilClient>() {
            public com.polypharm.gescom.domain.ConseilClient convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ConseilClient.class);
            }
        };
    }
    
    public Converter<DossierCreance, String> ApplicationConversionServiceFactoryBean.getDossierCreanceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.DossierCreance, java.lang.String>() {
            public String convert(DossierCreance dossierCreance) {
                return new StringBuilder().append(dossierCreance.getNumBonCommande()).append(' ').append(dossierCreance.getNumBonLivraison()).append(' ').append(dossierCreance.getNumFacture()).append(' ').append(dossierCreance.getNatureGarantie()).toString();
            }
        };
    }
    
    public Converter<Long, DossierCreance> ApplicationConversionServiceFactoryBean.getIdToDossierCreanceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.DossierCreance>() {
            public com.polypharm.gescom.domain.DossierCreance convert(java.lang.Long id) {
                return dossierCreanceService.findDossierCreance(id);
            }
        };
    }
    
    public Converter<String, DossierCreance> ApplicationConversionServiceFactoryBean.getStringToDossierCreanceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.DossierCreance>() {
            public com.polypharm.gescom.domain.DossierCreance convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), DossierCreance.class);
            }
        };
    }
    
    public Converter<FamilleProduit, String> ApplicationConversionServiceFactoryBean.getFamilleProduitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.FamilleProduit, java.lang.String>() {
            public String convert(FamilleProduit familleProduit) {
                return new StringBuilder().append(familleProduit.getNom()).append(' ').append(familleProduit.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, FamilleProduit> ApplicationConversionServiceFactoryBean.getIdToFamilleProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.FamilleProduit>() {
            public com.polypharm.gescom.domain.FamilleProduit convert(java.lang.Long id) {
                return familleProduitService.findFamilleProduit(id);
            }
        };
    }
    
    public Converter<String, FamilleProduit> ApplicationConversionServiceFactoryBean.getStringToFamilleProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.FamilleProduit>() {
            public com.polypharm.gescom.domain.FamilleProduit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), FamilleProduit.class);
            }
        };
    }
    
    public Converter<FormationUtilisateur, String> ApplicationConversionServiceFactoryBean.getFormationUtilisateurToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.FormationUtilisateur, java.lang.String>() {
            public String convert(FormationUtilisateur formationUtilisateur) {
                return new StringBuilder().append(formationUtilisateur.getObjetFormation()).append(' ').append(formationUtilisateur.getNbreInterlocuteur()).append(' ').append(formationUtilisateur.getDureFormation()).append(' ').append(formationUtilisateur.getDateFormation()).toString();
            }
        };
    }
    
    public Converter<Long, FormationUtilisateur> ApplicationConversionServiceFactoryBean.getIdToFormationUtilisateurConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.FormationUtilisateur>() {
            public com.polypharm.gescom.domain.FormationUtilisateur convert(java.lang.Long id) {
                return formationUtilisateurService.findFormationUtilisateur(id);
            }
        };
    }
    
    public Converter<String, FormationUtilisateur> ApplicationConversionServiceFactoryBean.getStringToFormationUtilisateurConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.FormationUtilisateur>() {
            public com.polypharm.gescom.domain.FormationUtilisateur convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), FormationUtilisateur.class);
            }
        };
    }
    
    public Converter<Installation, String> ApplicationConversionServiceFactoryBean.getInstallationToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Installation, java.lang.String>() {
            public String convert(Installation installation) {
                return new StringBuilder().append(installation.getNomEquipement()).append(' ').append(installation.getDateInstallation()).toString();
            }
        };
    }
    
    public Converter<Long, Installation> ApplicationConversionServiceFactoryBean.getIdToInstallationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Installation>() {
            public com.polypharm.gescom.domain.Installation convert(java.lang.Long id) {
                return installationService.findInstallation(id);
            }
        };
    }
    
    public Converter<String, Installation> ApplicationConversionServiceFactoryBean.getStringToInstallationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Installation>() {
            public com.polypharm.gescom.domain.Installation convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Installation.class);
            }
        };
    }
    
    public Converter<Livraison, String> ApplicationConversionServiceFactoryBean.getLivraisonToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Livraison, java.lang.String>() {
            public String convert(Livraison livraison) {
                return new StringBuilder().append(livraison.getNumeroBodereauLivraison()).append(' ').append(livraison.getDureLivraison()).toString();
            }
        };
    }
    
    public Converter<Long, Livraison> ApplicationConversionServiceFactoryBean.getIdToLivraisonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Livraison>() {
            public com.polypharm.gescom.domain.Livraison convert(java.lang.Long id) {
                return livraisonService.findLivraison(id);
            }
        };
    }
    
    public Converter<String, Livraison> ApplicationConversionServiceFactoryBean.getStringToLivraisonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Livraison>() {
            public com.polypharm.gescom.domain.Livraison convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Livraison.class);
            }
        };
    }
    
    public Converter<Montage, String> ApplicationConversionServiceFactoryBean.getMontageToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Montage, java.lang.String>() {
            public String convert(Montage montage) {
                return new StringBuilder().append(montage.getNomEquipement()).append(' ').append(montage.getDuree()).append(' ').append(montage.getDateMontage()).toString();
            }
        };
    }
    
    public Converter<Long, Montage> ApplicationConversionServiceFactoryBean.getIdToMontageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Montage>() {
            public com.polypharm.gescom.domain.Montage convert(java.lang.Long id) {
                return montageService.findMontage(id);
            }
        };
    }
    
    public Converter<String, Montage> ApplicationConversionServiceFactoryBean.getStringToMontageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Montage>() {
            public com.polypharm.gescom.domain.Montage convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Montage.class);
            }
        };
    }
    
    public Converter<Personnel, String> ApplicationConversionServiceFactoryBean.getPersonnelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Personnel, java.lang.String>() {
            public String convert(Personnel personnel) {
                return new StringBuilder().append(personnel.getNom()).append(' ').append(personnel.getNomConnection()).append(' ').append(personnel.getMotDePass()).append(' ').append(personnel.getNomComplet()).toString();
            }
        };
    }
    
    public Converter<Long, Personnel> ApplicationConversionServiceFactoryBean.getIdToPersonnelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Personnel>() {
            public com.polypharm.gescom.domain.Personnel convert(java.lang.Long id) {
                return personnelService.findPersonnel(id);
            }
        };
    }
    
    public Converter<String, Personnel> ApplicationConversionServiceFactoryBean.getStringToPersonnelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Personnel>() {
            public com.polypharm.gescom.domain.Personnel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Personnel.class);
            }
        };
    }
    
    public Converter<Produit, String> ApplicationConversionServiceFactoryBean.getProduitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.Produit, java.lang.String>() {
            public String convert(Produit produit) {
                return new StringBuilder().append(produit.getCode()).append(' ').append(produit.getNom()).append(' ').append(produit.getDescription()).append(' ').append(produit.getMarque()).toString();
            }
        };
    }
    
    public Converter<Long, Produit> ApplicationConversionServiceFactoryBean.getIdToProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.Produit>() {
            public com.polypharm.gescom.domain.Produit convert(java.lang.Long id) {
                return produitService.findProduit(id);
            }
        };
    }
    
    public Converter<String, Produit> ApplicationConversionServiceFactoryBean.getStringToProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.Produit>() {
            public com.polypharm.gescom.domain.Produit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Produit.class);
            }
        };
    }
    
    public Converter<ProjetCommande, String> ApplicationConversionServiceFactoryBean.getProjetCommandeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.ProjetCommande, java.lang.String>() {
            public String convert(ProjetCommande projetCommande) {
                return new StringBuilder().append(projetCommande.getObjetProjet()).append(' ').append(projetCommande.getReferencePROFORMA()).append(' ').append(projetCommande.getReferenceBonCommande()).append(' ').append(projetCommande.getInterlocuteurPrincipal()).toString();
            }
        };
    }
    
    public Converter<Long, ProjetCommande> ApplicationConversionServiceFactoryBean.getIdToProjetCommandeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.ProjetCommande>() {
            public com.polypharm.gescom.domain.ProjetCommande convert(java.lang.Long id) {
                return projetCommandeService.findProjetCommande(id);
            }
        };
    }
    
    public Converter<String, ProjetCommande> ApplicationConversionServiceFactoryBean.getStringToProjetCommandeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.ProjetCommande>() {
            public com.polypharm.gescom.domain.ProjetCommande convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ProjetCommande.class);
            }
        };
    }
    
    public Converter<RecrutementProspect, String> ApplicationConversionServiceFactoryBean.getRecrutementProspectToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.RecrutementProspect, java.lang.String>() {
            public String convert(RecrutementProspect recrutementProspect) {
                return new StringBuilder().append(recrutementProspect.getDenominationProspect()).append(' ').append(recrutementProspect.getFctionInterlocuteur()).append(' ').append(recrutementProspect.getTelephone()).append(' ').append(recrutementProspect.getEmail()).toString();
            }
        };
    }
    
    public Converter<Long, RecrutementProspect> ApplicationConversionServiceFactoryBean.getIdToRecrutementProspectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.RecrutementProspect>() {
            public com.polypharm.gescom.domain.RecrutementProspect convert(java.lang.Long id) {
                return recrutementProspectService.findRecrutementProspect(id);
            }
        };
    }
    
    public Converter<String, RecrutementProspect> ApplicationConversionServiceFactoryBean.getStringToRecrutementProspectConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.RecrutementProspect>() {
            public com.polypharm.gescom.domain.RecrutementProspect convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), RecrutementProspect.class);
            }
        };
    }
    
    public Converter<SuiviStock, String> ApplicationConversionServiceFactoryBean.getSuiviStockToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.SuiviStock, java.lang.String>() {
            public String convert(SuiviStock suiviStock) {
                return new StringBuilder().append(suiviStock.getDerniereQteCommande()).append(' ').append(suiviStock.getQteStock()).append(' ').append(suiviStock.getDateDerniereCommande()).append(' ').append(suiviStock.getDateSuivi()).toString();
            }
        };
    }
    
    public Converter<Long, SuiviStock> ApplicationConversionServiceFactoryBean.getIdToSuiviStockConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.SuiviStock>() {
            public com.polypharm.gescom.domain.SuiviStock convert(java.lang.Long id) {
                return suiviStockService.findSuiviStock(id);
            }
        };
    }
    
    public Converter<String, SuiviStock> ApplicationConversionServiceFactoryBean.getStringToSuiviStockConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.SuiviStock>() {
            public com.polypharm.gescom.domain.SuiviStock convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SuiviStock.class);
            }
        };
    }
    
    public Converter<VCDistributeurConcurent, String> ApplicationConversionServiceFactoryBean.getVCDistributeurConcurentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.VCDistributeurConcurent, java.lang.String>() {
            public String convert(VCDistributeurConcurent vCDistributeurConcurent) {
                return new StringBuilder().append(vCDistributeurConcurent.getNomDistributeur()).append(' ').append(vCDistributeurConcurent.getLocalisation()).toString();
            }
        };
    }
    
    public Converter<Long, VCDistributeurConcurent> ApplicationConversionServiceFactoryBean.getIdToVCDistributeurConcurentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.VCDistributeurConcurent>() {
            public com.polypharm.gescom.domain.VCDistributeurConcurent convert(java.lang.Long id) {
                return vCDistributeurConcurentService.findVCDistributeurConcurent(id);
            }
        };
    }
    
    public Converter<String, VCDistributeurConcurent> ApplicationConversionServiceFactoryBean.getStringToVCDistributeurConcurentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.VCDistributeurConcurent>() {
            public com.polypharm.gescom.domain.VCDistributeurConcurent convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), VCDistributeurConcurent.class);
            }
        };
    }
    
    public Converter<VeilleConcurrentielleProduit, String> ApplicationConversionServiceFactoryBean.getVeilleConcurrentielleProduitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.VeilleConcurrentielleProduit, java.lang.String>() {
            public String convert(VeilleConcurrentielleProduit veilleConcurrentielleProduit) {
                return new StringBuilder().append(veilleConcurrentielleProduit.getPrixDeVente()).append(' ').append(veilleConcurrentielleProduit.getDistributeurPrincipal()).append(' ').append(veilleConcurrentielleProduit.getNiveauStockProduitChezConcurent()).toString();
            }
        };
    }
    
    public Converter<Long, VeilleConcurrentielleProduit> ApplicationConversionServiceFactoryBean.getIdToVeilleConcurrentielleProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.VeilleConcurrentielleProduit>() {
            public com.polypharm.gescom.domain.VeilleConcurrentielleProduit convert(java.lang.Long id) {
                return veilleConcurrentielleProduitService.findVeilleConcurrentielleProduit(id);
            }
        };
    }
    
    public Converter<String, VeilleConcurrentielleProduit> ApplicationConversionServiceFactoryBean.getStringToVeilleConcurrentielleProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.VeilleConcurrentielleProduit>() {
            public com.polypharm.gescom.domain.VeilleConcurrentielleProduit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), VeilleConcurrentielleProduit.class);
            }
        };
    }
    
    public Converter<VulgarisationProduit, String> ApplicationConversionServiceFactoryBean.getVulgarisationProduitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.polypharm.gescom.domain.VulgarisationProduit, java.lang.String>() {
            public String convert(VulgarisationProduit vulgarisationProduit) {
                return new StringBuilder().append(vulgarisationProduit.getNomInterlocuteur()).append(' ').append(vulgarisationProduit.getTelInterlocuteur()).append(' ').append(vulgarisationProduit.getDateVulgarisation()).toString();
            }
        };
    }
    
    public Converter<Long, VulgarisationProduit> ApplicationConversionServiceFactoryBean.getIdToVulgarisationProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.polypharm.gescom.domain.VulgarisationProduit>() {
            public com.polypharm.gescom.domain.VulgarisationProduit convert(java.lang.Long id) {
                return vulgarisationProduitService.findVulgarisationProduit(id);
            }
        };
    }
    
    public Converter<String, VulgarisationProduit> ApplicationConversionServiceFactoryBean.getStringToVulgarisationProduitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.polypharm.gescom.domain.VulgarisationProduit>() {
            public com.polypharm.gescom.domain.VulgarisationProduit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), VulgarisationProduit.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAgenceToStringConverter());
        registry.addConverter(getIdToAgenceConverter());
        registry.addConverter(getStringToAgenceConverter());
        registry.addConverter(getAssistanceCommercialeToStringConverter());
        registry.addConverter(getIdToAssistanceCommercialeConverter());
        registry.addConverter(getStringToAssistanceCommercialeConverter());
        registry.addConverter(getAutoFormationEntrepriseToStringConverter());
        registry.addConverter(getIdToAutoFormationEntrepriseConverter());
        registry.addConverter(getStringToAutoFormationEntrepriseConverter());
        registry.addConverter(getClientToStringConverter());
        registry.addConverter(getIdToClientConverter());
        registry.addConverter(getStringToClientConverter());
        registry.addConverter(getConseilClientToStringConverter());
        registry.addConverter(getIdToConseilClientConverter());
        registry.addConverter(getStringToConseilClientConverter());
        registry.addConverter(getDossierCreanceToStringConverter());
        registry.addConverter(getIdToDossierCreanceConverter());
        registry.addConverter(getStringToDossierCreanceConverter());
        registry.addConverter(getFamilleProduitToStringConverter());
        registry.addConverter(getIdToFamilleProduitConverter());
        registry.addConverter(getStringToFamilleProduitConverter());
        registry.addConverter(getFormationUtilisateurToStringConverter());
        registry.addConverter(getIdToFormationUtilisateurConverter());
        registry.addConverter(getStringToFormationUtilisateurConverter());
        registry.addConverter(getInstallationToStringConverter());
        registry.addConverter(getIdToInstallationConverter());
        registry.addConverter(getStringToInstallationConverter());
        registry.addConverter(getLivraisonToStringConverter());
        registry.addConverter(getIdToLivraisonConverter());
        registry.addConverter(getStringToLivraisonConverter());
        registry.addConverter(getMontageToStringConverter());
        registry.addConverter(getIdToMontageConverter());
        registry.addConverter(getStringToMontageConverter());
        registry.addConverter(getPersonnelToStringConverter());
        registry.addConverter(getIdToPersonnelConverter());
        registry.addConverter(getStringToPersonnelConverter());
        registry.addConverter(getProduitToStringConverter());
        registry.addConverter(getIdToProduitConverter());
        registry.addConverter(getStringToProduitConverter());
        registry.addConverter(getProjetCommandeToStringConverter());
        registry.addConverter(getIdToProjetCommandeConverter());
        registry.addConverter(getStringToProjetCommandeConverter());
        registry.addConverter(getRecrutementProspectToStringConverter());
        registry.addConverter(getIdToRecrutementProspectConverter());
        registry.addConverter(getStringToRecrutementProspectConverter());
        registry.addConverter(getSuiviStockToStringConverter());
        registry.addConverter(getIdToSuiviStockConverter());
        registry.addConverter(getStringToSuiviStockConverter());
        registry.addConverter(getVCDistributeurConcurentToStringConverter());
        registry.addConverter(getIdToVCDistributeurConcurentConverter());
        registry.addConverter(getStringToVCDistributeurConcurentConverter());
        registry.addConverter(getVeilleConcurrentielleProduitToStringConverter());
        registry.addConverter(getIdToVeilleConcurrentielleProduitConverter());
        registry.addConverter(getStringToVeilleConcurrentielleProduitConverter());
        registry.addConverter(getVulgarisationProduitToStringConverter());
        registry.addConverter(getIdToVulgarisationProduitConverter());
        registry.addConverter(getStringToVulgarisationProduitConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
