import 'package:flutter/material.dart';
class VariableClasse{
  // Ndoye, static String proxy = "http://192.168.11.87:4080/proxy/api";
  // server,10.1.1.51:9080/proxy/api
  static String proxy = "https://atlantis.portdakar.sn/proxy/api";
 // static String proxy = "http://10.1.1.230:9080/proxy/api";
  //static String proxy = "http://192.168.11.87:4080/proxy/api";

  //Ibra,static String host="http://192.168.10.165:9099";
  //publiée, https://atlantis.portdakar.sn


  //static String host= proxy + "/gestion-navire/padescales/bons/status?stastutBon=SAISIE_BONPILOTAGE_STATE&statutEscale=SAISIE&codePilote=P20";
  static String hostBonPilotage = proxy + "/gestion-navire/padbonpilotages?status=SAISIE_BONPILOTAGE_STATE&codePilote=";
      //"&codePilote=";//P20";
  static String hostBonRecherche= proxy + "/gestion-navire/padbonpilotages?code=";

  static String hostNavire = proxy + "/referentiel/padnavires?code=";
  static String hostPilote = proxy + "/referentiel/padagents";
    //  "?page=0&size=50&typeAgent=PILOTE";

  static String hostpostaquai = proxy +"/referentiel/padposteaquais";//?size=4";
  //http://10.1.1.51:9080/proxy/api/referentiel/padposteaquais?page=0&size=14&libelle=063&code=063
  static String hostpostaquaiRecherche = proxy +"/referentiel/padposteaquais?page=0&size=14&libelle=";//063&code=063";
  //proxy/api
  static String hostbonpdfget = proxy +"/edition/editions/birtreport/full/report?type=bon_pilotage&dossier=NAVIRE&output=PDF&filename=bon_pilotage&code=";
     // "/edition/editions/birtreport/report/bon/bonpilotages?id=139&output=PDF&code=";
  static String hostbonpdfsend   = proxy +"/edition/editions/signature?file=%5Bobject%20FormData%5D&type=bon_pilotage&dossier=NAVIRE&matriculeAgent=T03214&code=";

      //"/edition/editions/signature?type=NAVIRE&code=";

  static String hostModifBon = proxy +"/gestion-navire/padbonpilotages?mobile=true";
  //static String hostEditBonPilotage =proxy + "/edition/editions/birtreport/report/bon/bonpilotages?id=139&output=PDF&code=BP-00000000000000114&type=NAV";
  //tournées api
  static String hostTournee= proxy +"/gestion-marchandise/padtournees";

  static String hostTourneeRecherche= proxy +"/gestion-marchandise/padtournees?code=";//004&zone=004";//http://192.168.11.87:4080/proxy/api/gestion-marchandise/padtournees?code=004&zone=004
  static String hostTaxateurs= proxy +"/gestion-marchandise/padtaxateursjournees?codeTournee=";
  static String hostTerrePleinParZone =proxy +"/referentiel/padterrepleins?codeZone=";

  static String hostMarchandiseTerreP =proxy +"/gestion-marchandise/padlignemarchandiseenvelements?codeTerrePlein=";
  static String hostMarchandiseRecherche =proxy +"/gestion-marchandise/padnaturesmarchandises?page=0&size=14&code=";//022&libelle=022";
  static String hostSupprimerMarchandise =proxy +"/gestion-marchandise/padlignemarchandiseenvelements?code=";
  static String hostTerrePleinRecherce = proxy + "/proxy/api/referentiel/padterrepleins?motCle=";
  //Marchandise Manifeste Peche
  static String hostManifestePeche =proxy +"/gestion-marchandise/padmanifestes";
  static String hostPortChargement=proxy +"/referentiel/padports";
  static String hostDesignation=proxy +"/gestion-marchandise/padnaturesmarchandises";
  static String hostFret=proxy +"/referentiel/padfrets";
  static String hostMarchandisePechePost=proxy +"/gestion-marchandise/padconnaissements";
  static String hostMarchandisePechePut=proxy +"/gestion-marchandise/padmarchandisesmanifestes";

  static String hostEmballage=proxy +"/referentiel/pademballages";
  static String hostSensTrafic=proxy +"/referentiel/padsenstrafics";
  static String hostDestination=proxy +"/referentiel/padpays";
  static String hostMarchandisePecheGet=proxy +"/gestion-marchandise/padconnaissements";
  static String hostPortChargeRecherche=proxy +"/referentiel/padports?libelle=";
  static String hostDesignationRecherche=proxy +"/gestion-marchandise/padnaturesmarchandises?libelle=";
  static String hostManifestePecheRecherche=proxy +"/gestion-marchandise/padmanifestes?facfeco=PECH&code=";
      //"???";

  //Escale Api
  static String hostEscaleliste =proxy +"/gestion-navire/padescales";
  static String hostEscaleRecherche =proxy +"/gestion-navire/padescales?page=0&size=14&code=";
  static String hostNatureMarchandise =proxy +"/gestion-marchandise/padnaturesmarchandises";
  static String hostMachandisePost =proxy +"/gestion-marchandise/padlignemarchandiseenvelements";
  static String hostGetMarchandisePecheParManifeste=proxy +"/pad-ms-gestion-marchandise/padmarchandisesmanifestes?numeroConnaissement=" ;  //2023_19C_000541

  static String hostSupprimerMarchandisePecheParManifeste=proxy+"/gestion-marchandise/padmarchandisesmanifestes?code=" ;   //MRC-23120000003



  //Eau Api

  static String hostEauReleve =proxy +"/avitaillement/padfichereleves?type=EAU&statut=SAISIRFICHERELEVEEAUELECT_STATE";
  static String hostReleveConsommation =proxy +"/avitaillement/padreleves";//2?page=0&size=15&codeFicheReleve=

  static String hostGetFiche= proxy +"/avitaillement/paddemandes?page=0&size=15&demandeType=PadAbonnement&types=EAU&statuts=TDIRCGEECSEE_STATE&dateDebut=2022-05-09T11:50:45.258Z&mois=";

  static String hostModifierReleveConsomEau =proxy +"/avitaillement/padreleves?traiter=simple&isFull=false";
  static String hostModifierRegle3ConsomEau =proxy +"/avitaillement/padreleves?traiter=regle3&isFull=false";
  static String hostReleveConsommationMonsuel =proxy +"/avitaillement/padreleves?page=0&size=20&codeDemande=";//3
  static String hostReleveConsommationModifierMoyenneEau =proxy +"/avitaillement/padreleves?traiter=moyenne&isFull=true";
  static String hostEauReleveRecherche =proxy +"/avitaillement/padreleves?statutRelevePaye=Non&typeDemande=EAU&modePaiementAbonnement=TERME&code=";
  static String hostEauFicheRecherche =proxy +"/avitaillement/padfichereleves?type=EAU&motCle=";

 // Electricite
  static String hostElectriciteReleve =proxy +"/avitaillement/padfichereleves?type=ELECT&statut=SAISIRFICHERELEVEEAUELECT_STATE";
  static String hostModifierReleveConsomElec =proxy +"/avitaillement/padreleves?traiter=simple&isFull=false";

  static String hostReleveConsommationModifierMoyenne =proxy +"/avitaillement/padreleves?traiter=moyenne&isFull=false";
  static String hostModifierRegle3ConsomElec =proxy +"/avitaillement/padreleves?traiter=regle3&isFull=false";

  static String hostElectriciteFicheRecherche = proxy + "/avitaillement/padfichereleves?type=ELECT&motCle=";
  static String hostElectriciteReleveRecherche =proxy +"/avitaillement/padreleves?statutRelevePaye=Non&typeDemande=ELECT&modePaiementAbonnement=TERME&code=";

  //static String hostSso ="http://10.1.1.51:8183/auth/realms/ATL-SSO/protocol/openid-connect/token";

  static String hostSso ="https://atlantis.portdakar.sn/auth/realms/ATL-SSO/protocol/openid-connect/token";
// Variable Global
// static String hostSso ="https://atlantis.portdakar.sn/auth/realms/ATL-SSO/protocol/openid-connect/token";

  /*static  dynamic tourneeObjet;
  static  String ?statReleve;

  static List roles=[];
  static  String ?codeTournee;*/

}