//rumore 
// parametri suono: ampiezza,frequenza,durata,timbro,ecc.
// è rumore tutto ciò che non ci informa o che non comprendiamo.
import("stdfaust.lib");
process = no.noise : fi.lowpass(2,6000) : fi.highpass(2,6000);
// il filtro lowpass o filtro passa bassa è un filtro che atenua porzioni di spetro sopra una frequenza data
