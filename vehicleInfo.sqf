

[{
    private ["_name","_price","_stock","_special","_inventory"];
    switch (typeOf cursorObject) do {

        //RUS
        case ("rhs_gaz66_r142_vv"): {
            _name = "OPFOR Funktruck";
            _price = "n/a";
            _stock = "n/a";
            _special = "Übermittelt die wichtige Funknachricht für OPFOR. OPFOR kann hier Fahrzeuge und Equipment kaufen. Sobald der Funktruck zerstört ist, gewinnt BLUFOR. Ausnahme: OPFOR hat das Radio Relay gekauft.";
            _inventory = [
                "* Spraypaint schwarz, 10",
                "* Spraypaint schwarz, 10",
                "* Spraypaint schwarz, 10",
                "* Spraypaint schwarz, 10",
                "* Entrenching Tool, 10",
                "* NVG Gen2, 50",
                "* Fadak Funkgerät, 10",
                "* GPS, 1"
            ];
        };
        case ("rhs_tigr_m_vdv"): {
            _name = "TIGR-M";
            _price = 500;
            _stock = 8;
            _special = "";
            _inventory = ["* GPS, 1"];
        };
        case ("rhs_Igla_AA_pod_msv"): {
            _name = "MPAD";
            _price = 500;
            _stock = 2;
            _special = "Tragbar, ziehbar, verladbar";
            _inventory = [];
        };
        case ("rhs_gaz66_repair_vdv"): {
            _name = "GAZ-66 Ammo";
            _price = 1000;
            _stock = 1;
            _special = "Hat GRAD-Fortifications geladen. Werden mit ACE-Interaction benutzt.";
            _inventory = [
                "* Smoke Grenade, 20",
                "* Smoke Grenade Red, 20",
                "* 30 Rnd 7.62 Tracer, 30",
                "* 30 Rnd 7.62, 30",
                "* 16 Rnd 9mm, 20",
                "* PG7VL, 5",
                "* PG7VR, 5",
                "* 100 Rnd 7.62 Tracer, 10",
                "* 100 Rnd 7.62, 10",
                "* RGD-5, 20",
                "* GRD40 White, 10",
                "* GRD40 Green, 10",
                "* GRD40 Red, 10",
                "* VG40OP White, 10",
                "* VG40OP Green, 10",
                "* Earplugs, 15",
                "* Morphine, 40",
                "* Epinephrine, 40",
                "* Bandage, 100",
                "* Bllog 250ml, 20",
                "* GPS, 5"
            ];
        };
        case ("rhsgref_nat_uaz_dshkm"): {
            _name = "UAZ DshKm";
            _price = 1100;
            _stock = 4;
            _special = "";
            _inventory = ["* GPS, 1"];
        };
        case ("rhs_btr70_msv"): {
            _name = "BTR-70";
            _price = 1500;
            _stock = 2;
            _special = "";
            _inventory = [
                "* GPS, 1",
                "* Tsh 4 Helmet, 3"
            ];
        };
        case ("rhs_bmp1_msv"): {
            _name = "BMP-1";
            _price = 3000;
            _stock = 1;
            _special = "keine HE Munition";
            _inventory = [
                "* GPS, 1",
                "* Tsh 4 Helmet, 3"
            ];
        };
        case ("rhs_t72ba_tv"): {
            _name = "T72";
            _price = 4000;
            _stock = 1;
            _special = "keine HE Munition";
            _inventory = [
                "* GPS, 1",
                "* Tsh 4 Helmet, 3"
            ];
        };
        case ("Land_DataTerminal_01_F"): {
            _name = "Radio Relay";
            _price = 1000;
            _stock = 1;
            _special = "Ersetzt die Funkfähigkeit des Trucks. Hängt beim Kauf am Funktruck. Kann beim Fahren funken. Kann vom Truck abgebaut werden und selbstständig funken.";
            _inventory = [];
        };


        //US
        case ("rhsusf_m998_w_4dr"): {
            _name = "BLUFOR Führungsfahrzeug";
            _price = "n/a";
            _stock = "n/a";
            _special = "BLUFOR kann hier Fahrzeuge und Equipment kaufen. Für den weiteren Spielverlauf unwichtig. BLUFOR verliert nicht, wenn das Führungsfahrzeug zerstört wird.";
            _inventory = [
                "* Spraypaint schwarz, 10",
                "* Spraypaint blau, 10",
                "* Spraypaint grün, 10",
                "* Spraypaint rot, 10",
                "* NVG Gen2, 50",
                "* AN/PRC 148 Funkgerät, 10",
                "* GPS, 1"
            ];
        };
        case ("rhsusf_mrzr4_d"): {
            _name = "MRZR4";
            _price = 400;
            _stock = 10;
            _special = "Enthält ein Schlauchboot, das mit ACE-Interaction entladen werden kann.";
            _inventory = [
                "* GPS, 1",
                "* Wetsuit, 6",
                "* Rebreather, 6",
                "* Diving Goggles, 6"
            ];
        };
        case ("rhsusf_m1025_w_m2"): {
            _name = "HMMWV M2";
            _price = 1000;
            _stock = 4;
            _special = "";
            _inventory = ["* GPS, 1"];
        };
        case ("rhsusf_m113_usarmy"): {
            _name = "M113 M2";
            _price = 1300;
            _stock = 2;
            _special = "";
            _inventory = ["* GPS, 1"];
        };
        case ("rhsusf_m998_w_s_2dr_fulltop"): {
            _name = "HMMWV Ammo";
            _price = 1500;
            _stock = 1;
            _special = "Enthält 4 Schlauchboote, die mit ACE-Interaction entladen werden können.";
            _inventory = [
                "* Smoke Grenade, 20",
                "* Smoke Grenade Red, 20",
                "* 30 Rnd 5.56 Tracer, 30",
                "* 30 Rnd 5.56, 30",
                "* 16 Rnd 9mm, 20",
                "* M136 Launcher, 4",
                "* 200 Rnd 5.56 Tracer, 10",
                "* 200 Rnd 5.56, 10",
                "* Grenade, 20",
                "* M714 White, 15",
                "* M713 Red, 15",
                "* M661 Green, 15",
                "* SMAW HEAA, 5",
                "* Earplugs, 15",
                "* Morphone, 40",
                "* Epinephrine, 40",
                "* Bandage, 100",
                "* Blood 205ml, 20",
                "* GPS, 5"
            ];
        };
        case ("RHS_MELB_MH6M"): {
            _name = "MH6M MELB";
            _price = 2500;
            _stock = 3;
            _special = "Mit FRIES ausgestattet.";
            _inventory = [
                "* NVG Wide, 2",
                "* GPS, 1"
            ];
        };
        case ("RHS_UH60M"): {
            _name = "UH60M";
            _price = 4500;
            _stock = 1;
            _special = "Mit FRIES ausgestattet.";
            _inventory = [
                "* NVG Wide, 2",
                "* Parachute, 30",
                "* GPS, 1"
            ];
        };
        case ("ACE_Box_Ammo"): {
            _name = "Recon Box";
            _price = 800;
            _stock = 2;
            _special = "Kann in Fahrzeuge verladen werden.";
            _inventory = [
                "* HuntIR Monitor, 2",
                "* HuntIR Thermal Round, 4"
            ];
        };
        default {
            _name = "";
        };
    };
    if (_name == "") then {
        [] call grad_techcheck_fnc_displayVehicleInfo
    } else {
        _inventoryText = "";
        {
            _inventoryText = _inventoryText + format ["%1<br/>",_x];
        } forEach _inventory;
        _text = parseText format ["<t size='2.8'>%1</t><br/><br/><t size='2.0'>Preis: %2<br/>Vorrat: %3<br/>Spezial: %4<br/>Inventar:<br/></t><t size='1.5'>%5</t>",_name,_price,_stock,_special,_inventoryText];
        [_text] call grad_techcheck_fnc_displayVehicleInfo
    };
} , 0.2, []] call CBA_fnc_addPerFrameHandler;
