% Inicio del sistema experto
:- dynamic(si/1).
:- dynamic(no/1).

iniciar:-
    write('---- Recomendador de ba\xF1\os en CUCEI ----'),nl,
    write('Responde a las preguntas con "si." o con "no." para poder recomendarte un ba\xF1\o '),nl,
    write('----------------------------------'),nl,
    analisis(_),
    cerrar.

% Ba\xF1\os
analisis(bano_modulo_alfa)                     :- bano_modulo_alfa, !.
analisis(bano_modulo_beta)                     :- bano_modulo_beta, !.
analisis(bano_biblioteca)                      :- bano_biblioteca, !.
analisis(bano_auditorio_enrique_diaz_de_leon)  :- bano_auditorio_enrique_diaz_de_leon, !.
analisis(bano_proulex_A_mano_derecha)          :- bano_proulex_A_mano_derecha, !.
analisis(bano_auditorio_antonio_rodriguez)     :- bano_auditorio_antonio_rodriguez, !.
analisis(bano_mano_derecha_modulo_e)           :- bano_mano_derecha_modulo_e, !.
analisis(bano_modulo_i)                        :- bano_modulo_i, !.
analisis(bano_modulo_o)                        :- bano_modulo_o, !.
analisis(bano_modulo_y)                        :- bano_modulo_y, !.
analisis(bano_modulo_z)                        :- bano_modulo_z, !.
analisis(bano_modulo_z1)                       :- bano_modulo_z1, !.
analisis(bano_frente_al_modulo_v2)             :- bano_frente_al_modulo_v2, !.
analisis(bano_modulo_v)                        :- bano_modulo_v, !.
analisis(bano_modulo_x_abajo)                  :- bano_modulo_x_abajo, !.
analisis(bano_modulo_x_arriba)                 :- bano_modulo_x_arriba, !.
analisis(bano_modulo_m)                        :- bano_modulo_m, !.
analisis(bano_modulo_n)                        :- bano_modulo_n, !.
analisis(bano_modulo_p)                        :- bano_modulo_p, !.
analisis(bano_entre_p_y_q)                     :- bano_entre_p_y_q, !.
analisis(bano_modulo_q_edificio)               :- bano_modulo_q_edificio, !.
analisis(bano_modulo_r)                        :- bano_modulo_r, !.
analisis(bano_modulo_t)                        :- bano_modulo_t, !.
analisis(bano_modulo_u)                        :- bano_modulo_u, !.

analisis(haste_aqui_mismo)                     :- haste_aqui_mismo, !.

% Reglas de identificación
bano_modulo_alfa :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo Alfa'),
    write('Te recomiendo ir al ba\xF1\o del modulo Alfa.'), nl.

bano_modulo_beta :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo Beta'),
    write('Te recomiendo ir al ba\xF1\o del modulo Beta.'), nl.

bano_biblioteca :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca de la Biblioteca o CID'),
    write('Te recomiendo ir al ba\xF1\o de la Biblioteca.'), nl.

bano_auditorio_enrique_diaz_de_leon :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del auditorio Enrique Diaz de Leon'),
    write('Te recomiendo ir al ba\xF1\o del auditorio Enrique Diaz de Leon.'), nl.

bano_proulex_A_mano_derecha :-
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca de proulex o coordinacion academica?'),
    write('Te recomiendo ir al ba\xF1\o que esta a mano derecha de la entrada del modulo A.'), nl.

bano_auditorio_antonio_rodriguez :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Estas cerca del auditorio Antonio Rodriguez'),
    write('Te recomiendo ir al ba\xF1\o a un lado del auditorio Antonio Rodriguez.'), nl.

bano_mano_derecha_modulo_e :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Estas cerca del modulo E'),
    write('Te recomiendo ir al ba\xF1\o a mano derecha del modulo E.'), nl.

bano_modulo_i :-
    verificar('Estas cerca del modulo I'),
    write('Te recomiendo ir al ba\xF1\o del modulo I.'), nl.

bano_modulo_o :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del modulo O'),
    write('Te recomiendo ir al ba\xF1\o del modulo O.'), nl.

bano_modulo_y :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo Y'),
    write('Te recomiendo ir al ba\xF1\o del modulo Y.'), nl.

bano_modulo_z :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo Z'),
    write('Te recomiendo ir al ba\xF1\o del modulo Z.'), nl.

bano_modulo_z1 :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del modulo Z1'),
    write('Te recomiendo ir al ba\xF1\o del modulo Z1.'), nl.

bano_frente_al_modulo_v2 :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del modulo V2'),
    write('Te recomiendo ir al ba\xF1\o frente al modulo V2.'), nl.

bano_modulo_v :-
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del modulo V'),
    write('Te recomiendo ir al ba\xF1\o del modulo V.'), nl.

bano_modulo_x_abajo :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo X'),
    write('Te recomiendo ir al ba\xF1\o del modulo X abajo.'), nl.

bano_modulo_x_arriba :-
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo X'),
    write('Te recomiendo ir al ba\xF1\o del modulo X arriba.'), nl.

bano_modulo_m :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Estas cerca del modulo M'),
    write('Te recomiendo ir al ba\xF1\o del modulo M.'), nl.

bano_modulo_n :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Estas cerca del modulo N o de la lonaria del N'),
    write('Te recomiendo ir al ba\xF1\o del modulo N.'), nl.

bano_modulo_p :-
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo P'),
    write('Te recomiendo ir al ba\xF1\o del modulo P.'), nl.

bano_entre_p_y_q :-
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca entre el modulo P y el modulo Q'),
    write('Te recomiendo ir al ba\xF1\o exterior que esta justo entre el modulo P y el Q.'), nl.

bano_modulo_q_edificio :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Estas cerca del modulo Q'),
    write('Te recomiendo ir al ba\xF1\o que esta dentro del edificio del modulo Q.'), nl.

bano_modulo_r :-
    verificar('Te importa que el ba\xF1\o tenga buenos insumos (papel de ba\xF1\o y jabon)'),
    verificar('Estas cerca del modulo R'),
    write('Te recomiendo ir al ba\xF1\o del modulo R.'), nl.

bano_modulo_t :-
    verificar('Te importa la disponibilidad (si normalmente esta abierto)'),
    verificar('Estas cerca del modulo T'),
    write('Te recomiendo ir al ba\xF1\o del modulo T.'), nl.

bano_modulo_u :-
    verificar('Te importa que el ba\xF1\o este limpio'),
    verificar('Te importa que el ba\xF1\o tenga buena infraestructura (que el piso y los asientos no esten rotos)'),
    verificar('Estas cerca del modulo U o del gimnasio'),
    write('Te recomiendo ir al ba\xF1\o del modulo U.'), nl.

haste_aqui_mismo :-
    write('Lo siento no hay ningun ba\xF1\os que cumpla tus estandares, recomendamos hacerte aqui mismo o bajar tus estandares'), nl.

% Reglas de preguntas y verificación
preguntar(Requisitos):-
    write(Requisitos), write('?'), nl,
    read(Respuesta), nl,
    ((Respuesta == si; Respuesta == s) -> assertz(si(Requisitos)); assertz(no(Requisitos)), fail).

verificar(Requisitos):-
    (si(Requisitos) -> true; (no(Requisitos) -> fail; preguntar(Requisitos))).

% Cierre del sistema
cerrar :- retract(si(_)), fail.
cerrar :- retract(no(_)), fail.
cerrar.
