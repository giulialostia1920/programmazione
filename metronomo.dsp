import("stdfaust.lib");
bpm2samp(t) = (60*ma.SR)/(t);
//freq=vslider("frequenza[style:knob]",1000,1000,5000,1.0);
beat= bpm2samp(vslider("tempo[style:knob]", 60,32,240,0.1));
process=ba.pulsen(1,beat) : fi.lowpass(128,1000);


//ba.pulsen è uguale al campione feq=si stabilisce da un pannello 
//stiamo lavorando con 44100
//ba pulsen produce un clic di durata stabilita  ogni quantità di campioni stabilita
//il primo numero indica quanto è lungo il campione
// il secondo numero è l'intervallo tra due numeri
//ba pulsen produce un clic ogni bit. il bit è una funzione che utilizza la funzione bpm2samp che converte in campioni una durata espressa in bit per minuto 
//la funzione bpm2samp ma.SR chiede alla macchina a che frequenza sta lavorando
