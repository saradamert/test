class DataModel {
  String? date;
  Rates? rates;
  String? unit;

  DataModel({this.date, this.rates, this.unit});

  DataModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    if (this.rates != null) {
      data['rates'] = this.rates!.toJson();
    }
    data['unit'] = this.unit;
    return data;
  }
}

class Rates {
  double? goldUSDXAU;
  double? silverUSDXAG;
  double? platinumUSDXPT;
  double? palladiumUSDXPD;
  double? rhodiumUSDXRH;
  double? rutheniumUSDRUTH;
  double? copperUSDXCU;
  double? nickelUSDNI;
  double? aluminiumUSDALU;
  double? zincUSDZNC;
  double? tinUSDTIN;
  double? cobaltUSDLCO;
  double? iridiumUSDIRD;
  double? leadUSDLEAD;
  double? ironOreUSDIRON;
  double? lBMAGoldAMUSDLBXAUAM;
  double? lBMAGoldPMUSDLBXAUPM;
  double? lBMASilverUSDLBXAG;
  double? lBMAPlatinumAMUSDLBXPTAM;
  double? lBMAPlatinumPMUSDLBXPTPM;
  int? lBMAPalladiumAMUSDLBXPDAM;
  int? lBMAPalladiumPMUSDLBXPDPM;
  double? lMEAluminiumUSDLMEALU;
  double? lMECopperUSDLMEXCU;
  double? lMEZincUSDLMEZNC;
  double? lMENickelUSDLMENI;
  double? lMELeadUSDLMELEAD;
  double? lMETinUSDLMETIN;
  double? uraniumUSDURANIUM;
  double? lMESteelScrapCFRTurkeyUSDSTEELSC;
  double? lMESteelRebarFOBTurkeyUSDSTEELRE;
  double? lMESteelHRCFOBChinaUSDSTEELHR;
  double? bronzeUSDBRONZE;
  double? magnesiumUSDMG;
  double? osmiumUSDOSMIUM;
  double? rheniumUSDRHENIUM;
  double? indiumUSDINDIUM;
  double? molybdenumUSDMO;
  double? tungstenUSDTUNGSTEN;
  double? lithiumUSDLITHIUM;
  double? ahmedabadGoldUSDXAUAHME;
  double? bangaloreGoldUSDXAUBANG;
  double? chennaiGoldUSDXAUCHEN;
  double? coimbatoreGoldUSDXAUCOIM;
  double? delhiGoldUSDXAUDELH;
  double? hyderabadGoldUSDXAUHYDE;
  double? kochiGoldUSDXAUKOCH;
  double? kolkataGoldUSDXAUKOLK;
  double? mumbaiGoldUSDXAUMUMB;
  double? suratGoldUSDXAUSURA;
  double? antimonyUSDANTIMONY;
  double? AED;

  Rates(
      {this.goldUSDXAU,
        this.silverUSDXAG,
        this.platinumUSDXPT,
        this.palladiumUSDXPD,
        this.rhodiumUSDXRH,
        this.rutheniumUSDRUTH,
        this.copperUSDXCU,
        this.nickelUSDNI,
        this.aluminiumUSDALU,
        this.zincUSDZNC,
        this.tinUSDTIN,
        this.cobaltUSDLCO,
        this.iridiumUSDIRD,
        this.leadUSDLEAD,
        this.ironOreUSDIRON,
        this.lBMAGoldAMUSDLBXAUAM,
        this.lBMAGoldPMUSDLBXAUPM,
        this.lBMASilverUSDLBXAG,
        this.lBMAPlatinumAMUSDLBXPTAM,
        this.lBMAPlatinumPMUSDLBXPTPM,
        this.lBMAPalladiumAMUSDLBXPDAM,
        this.lBMAPalladiumPMUSDLBXPDPM,
        this.lMEAluminiumUSDLMEALU,
        this.lMECopperUSDLMEXCU,
        this.lMEZincUSDLMEZNC,
        this.lMENickelUSDLMENI,
        this.lMELeadUSDLMELEAD,
        this.lMETinUSDLMETIN,
        this.uraniumUSDURANIUM,
        this.lMESteelScrapCFRTurkeyUSDSTEELSC,
        this.lMESteelRebarFOBTurkeyUSDSTEELRE,
        this.lMESteelHRCFOBChinaUSDSTEELHR,
        this.bronzeUSDBRONZE,
        this.magnesiumUSDMG,
        this.osmiumUSDOSMIUM,
        this.rheniumUSDRHENIUM,
        this.indiumUSDINDIUM,
        this.molybdenumUSDMO,
        this.tungstenUSDTUNGSTEN,
        this.lithiumUSDLITHIUM,
        this.ahmedabadGoldUSDXAUAHME,
        this.bangaloreGoldUSDXAUBANG,
        this.chennaiGoldUSDXAUCHEN,
        this.coimbatoreGoldUSDXAUCOIM,
        this.delhiGoldUSDXAUDELH,
        this.hyderabadGoldUSDXAUHYDE,
        this.kochiGoldUSDXAUKOCH,
        this.kolkataGoldUSDXAUKOLK,
        this.mumbaiGoldUSDXAUMUMB,
        this.suratGoldUSDXAUSURA,
        this.antimonyUSDANTIMONY,
        this.AED,
      });

  Rates.fromJson(Map<String, dynamic> json) {
    goldUSDXAU = json['Gold (USDXAU)'];
    silverUSDXAG = json['Silver (USDXAG)'];
    platinumUSDXPT = json['Platinum (USDXPT)'];
    palladiumUSDXPD = json['Palladium (USDXPD)'];
    rhodiumUSDXRH = json['Rhodium (USDXRH)'];
    rutheniumUSDRUTH = json['Ruthenium (USDRUTH)'];
    copperUSDXCU = json['Copper (USDXCU)'];
    nickelUSDNI = json['Nickel (USDNI)'];
    aluminiumUSDALU = json['Aluminium (USDALU)'];
    zincUSDZNC = json['Zinc (USDZNC)'];
    tinUSDTIN = json['Tin (USDTIN)'];
    cobaltUSDLCO = json['Cobalt (USDLCO)'];
    iridiumUSDIRD = json['Iridium (USDIRD)'];
    leadUSDLEAD = json['Lead (USDLEAD)'];
    ironOreUSDIRON = json['Iron Ore (USDIRON)'];
    lBMAGoldAMUSDLBXAUAM = json['LBMA Gold AM (USDLBXAUAM)'];
    lBMAGoldPMUSDLBXAUPM = json['LBMA Gold PM (USDLBXAUPM)'];
    lBMASilverUSDLBXAG = json['LBMA Silver (USDLBXAG)'];
    lBMAPlatinumAMUSDLBXPTAM = json['LBMA Platinum AM (USDLBXPTAM)'];
    lBMAPlatinumPMUSDLBXPTPM = json['LBMA Platinum PM (USDLBXPTPM)'];
    lBMAPalladiumAMUSDLBXPDAM = json['LBMA Palladium AM (USDLBXPDAM)'];
    lBMAPalladiumPMUSDLBXPDPM = json['LBMA Palladium PM (USDLBXPDPM)'];
    lMEAluminiumUSDLMEALU = json['LME Aluminium (USDLME-ALU)'];
    lMECopperUSDLMEXCU = json['LME Copper (USDLME-XCU)'];
    lMEZincUSDLMEZNC = json['LME Zinc (USDLME-ZNC)'];
    lMENickelUSDLMENI = json['LME Nickel (USDLME-NI)'];
    lMELeadUSDLMELEAD = json['LME Lead (USDLME-LEAD)'];
    lMETinUSDLMETIN = json['LME Tin (USDLME-TIN)'];
    uraniumUSDURANIUM = json['Uranium (USDURANIUM)'];
    lMESteelScrapCFRTurkeyUSDSTEELSC =
    json['LME Steel Scrap CFR Turkey (USDSTEEL-SC)'];
    lMESteelRebarFOBTurkeyUSDSTEELRE =
    json['LME Steel Rebar FOB Turkey (USDSTEEL-RE)'];
    lMESteelHRCFOBChinaUSDSTEELHR =
    json['LME Steel HRC FOB China (USDSTEEL-HR)'];
    bronzeUSDBRONZE = json['Bronze (USDBRONZE)'];
    magnesiumUSDMG = json['Magnesium (USDMG)'];
    osmiumUSDOSMIUM = json['Osmium (USDOSMIUM)'];
    rheniumUSDRHENIUM = json['Rhenium (USDRHENIUM)'];
    indiumUSDINDIUM = json['Indium (USDINDIUM)'];
    molybdenumUSDMO = json['Molybdenum (USDMO)'];
    tungstenUSDTUNGSTEN = json['Tungsten (USDTUNGSTEN)'];
    lithiumUSDLITHIUM = json['Lithium (USDLITHIUM)'];
    ahmedabadGoldUSDXAUAHME = json['Ahmedabad Gold  (USDXAU-AHME)'];
    bangaloreGoldUSDXAUBANG = json['Bangalore Gold  (USDXAU-BANG)'];
    chennaiGoldUSDXAUCHEN = json['Chennai Gold  (USDXAU-CHEN)'];
    coimbatoreGoldUSDXAUCOIM = json['Coimbatore Gold  (USDXAU-COIM)'];
    delhiGoldUSDXAUDELH = json['Delhi Gold  (USDXAU-DELH)'];
    hyderabadGoldUSDXAUHYDE = json['Hyderabad Gold  (USDXAU-HYDE)'];
    kochiGoldUSDXAUKOCH = json['Kochi Gold  (USDXAU-KOCH)'];
    kolkataGoldUSDXAUKOLK = json['Kolkata Gold  (USDXAU-KOLK)'];
    mumbaiGoldUSDXAUMUMB = json['Mumbai Gold  (USDXAU-MUMB)'];
    suratGoldUSDXAUSURA = json['Surat Gold  (USDXAU-SURA)'];
    antimonyUSDANTIMONY = json['Antimony (USDANTIMONY)'];
    AED = json['AED'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Gold (USDXAU)'] = this.goldUSDXAU;
    data['Silver (USDXAG)'] = this.silverUSDXAG;
    data['Platinum (USDXPT)'] = this.platinumUSDXPT;
    data['Palladium (USDXPD)'] = this.palladiumUSDXPD;
    data['Rhodium (USDXRH)'] = this.rhodiumUSDXRH;
    data['Ruthenium (USDRUTH)'] = this.rutheniumUSDRUTH;
    data['Copper (USDXCU)'] = this.copperUSDXCU;
    data['Nickel (USDNI)'] = this.nickelUSDNI;
    data['Aluminium (USDALU)'] = this.aluminiumUSDALU;
    data['Zinc (USDZNC)'] = this.zincUSDZNC;
    data['Tin (USDTIN)'] = this.tinUSDTIN;
    data['Cobalt (USDLCO)'] = this.cobaltUSDLCO;
    data['Iridium (USDIRD)'] = this.iridiumUSDIRD;
    data['Lead (USDLEAD)'] = this.leadUSDLEAD;
    data['Iron Ore (USDIRON)'] = this.ironOreUSDIRON;
    data['LBMA Gold AM (USDLBXAUAM)'] = this.lBMAGoldAMUSDLBXAUAM;
    data['LBMA Gold PM (USDLBXAUPM)'] = this.lBMAGoldPMUSDLBXAUPM;
    data['LBMA Silver (USDLBXAG)'] = this.lBMASilverUSDLBXAG;
    data['LBMA Platinum AM (USDLBXPTAM)'] = this.lBMAPlatinumAMUSDLBXPTAM;
    data['LBMA Platinum PM (USDLBXPTPM)'] = this.lBMAPlatinumPMUSDLBXPTPM;
    data['LBMA Palladium AM (USDLBXPDAM)'] = this.lBMAPalladiumAMUSDLBXPDAM;
    data['LBMA Palladium PM (USDLBXPDPM)'] = this.lBMAPalladiumPMUSDLBXPDPM;
    data['LME Aluminium (USDLME-ALU)'] = this.lMEAluminiumUSDLMEALU;
    data['LME Copper (USDLME-XCU)'] = this.lMECopperUSDLMEXCU;
    data['LME Zinc (USDLME-ZNC)'] = this.lMEZincUSDLMEZNC;
    data['LME Nickel (USDLME-NI)'] = this.lMENickelUSDLMENI;
    data['LME Lead (USDLME-LEAD)'] = this.lMELeadUSDLMELEAD;
    data['LME Tin (USDLME-TIN)'] = this.lMETinUSDLMETIN;
    data['Uranium (USDURANIUM)'] = this.uraniumUSDURANIUM;
    data['LME Steel Scrap CFR Turkey (USDSTEEL-SC)'] =
        this.lMESteelScrapCFRTurkeyUSDSTEELSC;
    data['LME Steel Rebar FOB Turkey (USDSTEEL-RE)'] =
        this.lMESteelRebarFOBTurkeyUSDSTEELRE;
    data['LME Steel HRC FOB China (USDSTEEL-HR)'] =
        this.lMESteelHRCFOBChinaUSDSTEELHR;
    data['Bronze (USDBRONZE)'] = this.bronzeUSDBRONZE;
    data['Magnesium (USDMG)'] = this.magnesiumUSDMG;
    data['Osmium (USDOSMIUM)'] = this.osmiumUSDOSMIUM;
    data['Rhenium (USDRHENIUM)'] = this.rheniumUSDRHENIUM;
    data['Indium (USDINDIUM)'] = this.indiumUSDINDIUM;
    data['Molybdenum (USDMO)'] = this.molybdenumUSDMO;
    data['Tungsten (USDTUNGSTEN)'] = this.tungstenUSDTUNGSTEN;
    data['Lithium (USDLITHIUM)'] = this.lithiumUSDLITHIUM;
    data['Ahmedabad Gold  (USDXAU-AHME)'] = this.ahmedabadGoldUSDXAUAHME;
    data['Bangalore Gold  (USDXAU-BANG)'] = this.bangaloreGoldUSDXAUBANG;
    data['Chennai Gold  (USDXAU-CHEN)'] = this.chennaiGoldUSDXAUCHEN;
    data['Coimbatore Gold  (USDXAU-COIM)'] = this.coimbatoreGoldUSDXAUCOIM;
    data['Delhi Gold  (USDXAU-DELH)'] = this.delhiGoldUSDXAUDELH;
    data['Hyderabad Gold  (USDXAU-HYDE)'] = this.hyderabadGoldUSDXAUHYDE;
    data['Kochi Gold  (USDXAU-KOCH)'] = this.kochiGoldUSDXAUKOCH;
    data['Kolkata Gold  (USDXAU-KOLK)'] = this.kolkataGoldUSDXAUKOLK;
    data['Mumbai Gold  (USDXAU-MUMB)'] = this.mumbaiGoldUSDXAUMUMB;
    data['Surat Gold  (USDXAU-SURA)'] = this.suratGoldUSDXAUSURA;
    data['Antimony (USDANTIMONY)'] = this.antimonyUSDANTIMONY;
    data['AED'] = this.AED;

    return data;
  }
}
