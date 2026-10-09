% Inicio del sistema experto
iniciar:-
    write('---- Recomendacion De Baños ----'),nl,
    write('Responde a las preguntas con "si." o con "no." para poder darte una recomendacion'),nl,
    write('----------------------------------'),nl,
    analisis(A),
	write(A),
    cerrar.

% Baños
analisis(resfriado) :- resfriado, !.
analisis(gripa)     :- gripa, !.
analisis(tifoidea)  :- tifoidea, !.
analisis(sarampion) :- sarampion, !.
analisis(malaria)   :- malaria, !.
analisis(desconocido):- desconocido, !.

% Reglas de identificación
resfriado :-
    verificar('Dolor de cabeza'),
    verificar('Escurrimiento nasal'),
    verificar('Estornudos'),
    verificar('Dolor de garganta'),
    write('Posiblemente tengas un resfriado'), nl,
    write('Consejos y sugerencias de tratamiento:'), nl,
    write('1. Tylenol'), nl,
    write('2. Panadol'), nl,
    write('3. Spray para la nariz'), nl,
    write('Por favor mantente abrigado'), nl.

gripa :-
    verificar('Calentura'),
    verificar('Dolor de cabeza'),
    verificar('Escalosfrios'),
    verificar('Cuerpo cortado'),
    write('Posiblemente tengas gripa'), nl,
    write('Consejos y sugerencias de tratamiento:'), nl,
    write('1. Tamigripa'), nl,
    write('2. Panadol'), nl,
    write('3. Zanamivir'), nl,
    write('Por favor toma un baño tibio y haga gargaras con sal'), nl.

tifoidea :-
    verificar('Dolor de cabeza'),
    verificar('Dolor abdominal'),
    verificar('Poco apetito'),
    verificar('Calentura'),
    write('Posiblemente tengas tifoidea'), nl,
    write('Consejos y sugerencias de tratamiento:'), nl,
    write('1. Chloramphenicol '), nl,
    write('2. Amoxicilina '), nl,
    write('3. Ciprofloxacino '), nl,
    write('Por favor haga reposo absoluto en cama y tome una dieta blanda '), nl.

sarampion :-
    verificar('Calentura'),
    verificar('Escurrimiento nasal'),
    verificar('Ronchas'),
    verificar('Conjuntivitis'),
    write('Posiblemente tengas sarampion'), nl,
    write('Consejos y sugerencias de tratamiento:'), nl,
    write('1. Tylenol '), nl,
    write('2. Aleve '), nl,
    write('3. Advil '), nl,
    write('4. Vitamina A '), nl,
    write('Por favor descance y tome muchos liquidos '), nl.

malaria :-
    verificar('Calentura'),
    verificar('Suda mucho'),
    verificar('Dolor de cabeza'),
    verificar('Nauseas'),
    verificar('Vomitos'),
    verificar('Diarrea'),
    write('Posiblemente tengas malaria'), nl,
    write('Consejos y sugerencias de tratamiento:'), nl,
    write('1. Aralen '), nl,
    write('2. Qualaquin '), nl,
    write('3. Plaquenil '), nl,
    write('4. Mofloquine '), nl,
    write('Por favor no duerma al aire libre y cubra su cuerpo '), nl.

desconocido :-
    write('Lo siento, tu diagnostico es desconocido'), nl.


% Reglas de preguntas y verificación
preguntar(Sintoma):-
    write('El paciente tiene alguno de estos sintomas: '), 
    write(Sintoma), write('?'), nl,
    read(Respuesta), nl,
    ((Respuesta == si; Respuesta == s) -> assert(si(Sintoma)); assert(no(Sintoma)), fail).
:- dynamic si/1, no/1.

verificar(Sintoma):-
    (si(Sintoma) -> true; (no(Sintoma) -> fail; preguntar(Sintoma))).
    

% Cierre del sistema
cerrar :- retract(si(_)), fail.
cerrar :- retract(no(_)), fail.
cerrar.