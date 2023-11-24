  :- use_module(library(dom)).
    :- use_module(library(lists)).
    :- use_module(library(js)).
    :- use_module(library(concurrent)).

    init:- 
    hypothesis(Padecimientos),
    write('El padecimiento de tu paciente es: '),
    write(Padecimientos),
    apply('showResult',[Padecimientos],_),
    nl,
    undo.


     

    % Hipotesis que se van a probar

    hypothesis(zika) :- zika, !.
    hypothesis(coronavirus) :- coronavirus, !.
    hypothesis(hepatitis) :- hepatitis, !.
    hypothesis(varicela) :- varicela, !.
    hypothesis(chikungunya) :- chikungunya, !.
    hypothesis(arritmia) :- arritmia, !.
    hypothesis(gastroenteritis) :- gastroenteritis, !.
    hypothesis(vph) :- vph, !.
    hypothesis(malaria) :- malaria, !.
    hypothesis(sarampion) :- sarampion, !. 
    hypothesis(anemia) :- anemia, !.
    hypothesis(neumonia) :- neumonia, !.
    hypothesis(paperas) :- paperas, !.
    hypothesis(dengue) :- dengue, !.
    hypothesis(ojo_seco) :- ojo_seco, !.
    hypothesis(catarata) :- catarata, !.
    hypothesis(conjuntivitis) :- conjuntivitis, !.
    hypothesis(estrabismo) :- estrabismo, !.
    hypothesis(glaucoma) :- glaucoma, !.
    hypothesis(astigmatismo) :- astigmatismo, !.
    hypothesis(miopia) :- miopia, !.
    hypothesis(amigdalitis) :- amigdalitis, !.
    hypothesis(hipoglucemia) :- hipoglucemia, !.
    hypothesis(cirrosis) :- cirrosis, !.
    hypothesis(herpes_labial) :- herpes_labial, !.
    hypothesis(aftas_buscales) :- aftas_buscales, !.
    hypothesis(bronquitis) :- bronquitis, !.
    hypothesis(tuberculosis) :- tuberculosis, !.
    hypothesis(colico_nefritico) :- colico_nefritico, !.
    hypothesis(lipotimia) :- lipotimia, !.
    hypothesis(lepra) :- lepra, !.
    hypothesis(diarrea) :- diarrea, !.
    hypothesis(tetanos) :- tetanos, !.
    hypothesis(desconocido). /* no se puede diagnosticar */

    % Reglas de identificacion de padecimientos


    tetanos :- verify('Rigidez en los músculos de la mandíbula'),
    verify('Rigidez del cuello, los brazos o las piernas'),
    verify('Fiebre'),
    verify('Disfagia(dificultad para tragar)'),
    verify('Sudoración excesiva'),
    verify('Espasmos').
    



    diarrea :- verify('Dolor abdominal'),
    verify('Deshidratación'),
    verify('Pérdida de control de las evacuaciones intestinales').






    lepra :- verify('Debilidad'),
    verify('Lesiones cutáneas que son más claras que el color normal de la piel'),
    verify('Lesiones que no sanan después de algunas semanas o meses'),
    verify('Ausencia de sensibilidad en manos, brazos, pies y piernas').

    lipotimia :- verify('Debilidad'),
    verify('Palidez'),
    verify('Síncope(pérdida relativamente brusca de la conciencia)'),
    verify('Sudoración fría'),
    verify('Visión borrosa'),
    verify('Pulso débil').





    

    colico_nefritico :- verify('Sangre en la orina'),
    verify('Dolor al orinar'),
    verify('Dolor en la zona genital').

    bronquitis :- verify('Fiebre'),
    verify('Tos con expectoración purulenta(flemas)'),
    verify('Dificultad para respirar').

    tuberculosis :- verify('Fiebre'),
    verify('Tos con sangre'),
    verify('Tos seca'),
    verify('Fatiga'),
    verify('Pérdida de peso'),
    verify('Sudoración nocturna').



    aftas_buscales :- verify('Heridas de color blanco en la boca').


    herpes_labial :- verify('Vesículas o úlceras en la boca'),
    verify('Sensación de hormigueo, picor o quemazón en la boca').



    cirrosis :- verify('Debilidad'),
    verify('Náuseas'),
    verify('Vómito'),
    verify('Fatiga'),
    verify('Falta de apetito'),
    verify('Dolor abdominal'),
    verify('Hinchazón abdominal'),
    verify('Pérdida de peso'),
    verify('Ictericia'),
    verify('Los vasos sanguíneos adquieren forma de araña en la superficie de la piel').

    

    hipoglucemia :- verify('Debilidad'),
    verify('Náuseas'),
    verify('Palpitaciones'),
    verify('Sudoración'),
    verify('Hambre').

    amigdalitis :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Disfagia(dificultad para tragar)'),
    verify('Dolor de garganta'),
    verify('Inflamación en las amígdalas'),
    verify('Aparición de zonas blancas o amarillas en las amígdalas (placas)').


    miopia :- verify('Dolor de cabeza'),
    verify('Visión borrosa de lejos'),
    verify('Cansancio ocular').



    astigmatismo :- verify('Dolor de cabeza'),
    verify('Percepción de las imágenes distorsionadas').

    glaucoma :- verify('Dolor de cabeza'),
    verify('Enrojecimiento de los ojos'),
    verify('Disminución del campo visual periférico'),
    verify('Sutiles trastornos visuales').




    estrabismo :- verify('Falta de paralelismo entre los ojos'),
    verify('Diplopía (visión doble)'),
    verify('Pérdida de visión binocular').


    conjuntivitis :- verify('Sensación de un cuerpo extraño dentro del ojo'),
    verify('Sensibilidad a la luz'),
    verify('Enrojecimiento del ojo'),
    verify('Ardor en los ojos'),
    verify('Secreción en el ojo').


    catarata :- verify('Visión borrosa'),
    verify('Sensibilidad a la luz'),
    verify('Diplopía (visión doble)'),
    verify('Percepción alterada de los colores').



    ojo_seco :- verify('Sensación de un cuerpo extraño dentro del ojo'),
    verify('Visión borrosa'),
    verify('Senbilidad a la luz'),
    verify('Enrojecimiento del ojo'),
    verify('Ardor en los ojos').


    dengue :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Cansancio'),
    verify('Náuseas'),
    verify('Vómito'),
    verify('Sarpullido'),
    verify('Dolor detrás de los ojos'),
    verify('Dolor muscular'),
    verify('Dolor de articulación').



    paperas :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Cansancio'),
    verify('Falta de apetito'),
    verify('Dolor muscular'),
    verify('Inflamación y dolor glándulas salivares').

    neumonia :- verify('Dolor de cabeza'),
    verify('Náuseas'),
    verify('Vómito'),
    verify('Tos con expectoración purulenta(flemas)'),
    verify('Escalofríos'),
    verify('Falta de apetito'),
    verify('Dificultad para respirar'),
    verify('Dolor de pecho'),
    verify('Labios o uñas de color azul').

    anemia :- verify('Debilidad'),
    verify('Palidez'),
    verify('Mareos'),
    verify('Fatiga'),
    verify('Palpitaciones'),
    verify('Dificultad para respirar').

    hepatitis :- 
    verify('Ictericia'),
    verify('Náuseas'),
    verify('Vómito'),
    verify('Fatiga'),
    verify('Diarrea'),
    verify('Dolor abdominal'),
    verify('Orina oscura').


    sarampion :- verify('Fiebre'),
    verify('Cansancio'),
    verify('Tos'),
    verify('Sarpullido'),
    verify('Falta de apetito'),
    verify('Conjuntivitis'),
    verify('Secreción nasal').



    malaria :- verify('Fiebre'),
    verify('Escalofríos'),
    verify('síntomas gripales(gripe)'),
    verify('Dolor de cabeza'),
    verify('Vómito'),
    verify('Dolor muscular'),
    verify('hepatomegalia(agrandamiento del hígado)').


    vph :- verify('Verrugas genitales').

    gastroenteritis :- verify('Náuseas'),
    verify('Vómito'),
    verify('Diarrea'),
    verify('Dolor abdominal').

    zika :- verify('Fiebre'),verify('Conjuntivitis'),
    verify('Dolor de cabeza'),
    verify('Dolor muscular'),
    verify('Dolor de articulación'),
    verify('Sarpullido').

    coronavirus :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Cansancio'),
    verify('Tos'),
    verify('Dolor de garganta'),
    verify('Dificultad para respirar'),
    verify('Pérdida del sentido del olfato'),
    verify('Pérdida del sentido del gusto').

    varicela :- verify('Fiebre'),
    verify('Cansancio'),
    verify('Sarpullido'),
    verify('Costras'),
    verify('Falta de apetito').

    chikungunya :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Sarpullido'),
    verify('Fatiga'),
    verify('Dolor de articulación').


    arritmia :- verify('Palpitaciones'),
    verify('Cansancio'),
    verify('Síncope(pérdida relativamente brusca de la conciencia)').

    
    :- dynamic(yes/1).
    :- dynamic(no/1).

    % Preguntar

    ask(Question) :-
        
        apply('addMessageDoctor',[Question],_),
        write('¿Tu paciente tiene el siguiente sintoma: '),
        write(Question),
        apply('input',[],C),
        write(C),
        await(C,Response),
        (   (Response == si ; Response == s; Response == yes ; Response == y)
        ->
        asserta(yes(Question)) ;
        asserta(no(Question)), fail).


    verify(S) :-
    (   yes(S)
    ->
    true ;
    (   no(S)
    ->
    fail ;
    ask(S))).
    
    undo :- retract(yes(_)),fail.
    undo :- retract(no(_)),fail.
    undo.


   
