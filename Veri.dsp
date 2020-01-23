// Sintesi sottrattiva significa analizzare attraverso strumenti come spettrogramma,
// oscilloscopio e sonogramma il suono o rumore preso in considerazione seconda vari
// aspetti. Oscilloscopio è uno strumento che ci permette attraverso il grafico
// ampiezza-tempo di vedere i processi di rarefazione e di condensazione di un suono.
// Lo spettrogramma ci serve a capire attraverso il grafico freq.-tempo l'intensità di
// un suono nel tempo. Il sonogramma ci serve per capire l'altezza di un
// Il rumore è un qualcosa che non trasmette informazioni o che non capiamo,
// quindi un qualcosa di cui non riusciamo a distinguerne ne la frequenza ne l'ampiezza.
// Noi uttilizzando filtri passa-bassa(lowpass) e filtri passa-alta(highpass) possiamo
// distinguere questi 2 parametri. Il filtro lowpass si traduce in passabasso, serve ad
// attenuare l'ampiezza delle frequenze sopra un punto di taglio. Il filtro highpass
// serve a far passare le frequenze alte di un determinato suono o rumore da un punto
// di taglio. Nel linguaggio standard di faust il rumore è scritto con il codice no.noise,
// il filtro bassa è scritto con il codice fi.lowpass

import("stdfaust.lib");
fcut = vslider("cut-off [style:knob][scale:exp]", 1000, 20, 20000, 1);
order = 8;
process = no.noise : fi.lowpass(order,fcut) : fi.highpass(order,fcut);
