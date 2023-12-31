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
    hypothesis(coronavirus) :- coronavirus, !.
    hypothesis(dengue) :- dengue, !.
    hypothesis(zika) :- zika, !.
    hypothesis(chikungunya) :- chikungunya, !.
    hypothesis(hepatitis) :- hepatitis, !.
    hypothesis(varicela) :- varicela, !.
    hypothesis(arritmia) :- arritmia, !.
    hypothesis(gastroenteritis) :- gastroenteritis, !.
    hypothesis(malaria) :- malaria, !.
    hypothesis(sarampion) :- sarampion, !. 
    hypothesis(anemia) :- anemia, !.
    hypothesis(neumonia) :- neumonia, !.
    hypothesis(paperas) :- paperas, !.
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
    hypothesis(golpe_de_calor) :- golpe_de_calor, !.
    hypothesis(gastritis) :- gastritis, !.
    hypothesis(asma) :- asma, !.
    hypothesis(fibrosis_pulmonar) :- fibrosis_pulmonar, !.
    hypothesis(edema_pulmonar) :- edema_pulmonar, !.
    hypothesis(tos_ferina) :- tos_ferina, !.
    hypothesis(gripe) :- gripe, !.
    hypothesis(apnea_del_sueno) :- apnea_del_sueno, !.
    hypothesis(gota) :- gota, !.
    hypothesis(eccema) :- eccema, !.
    hypothesis(neurotorax) :- neurotorax, !.
    hypothesis(infarto_de_miocardio) :- infarto_de_miocardio, !.
    hypothesis(difteria) :- difteria, !.
    hypothesis(varices) :- varices, !.
    hypothesis(ojo_seco) :- ojo_seco, !.
    hypothesis(catarata) :- catarata, !.
    hypothesis(conjuntivitis) :- conjuntivitis, !.
    hypothesis(estrabismo) :- estrabismo, !.
    hypothesis(glaucoma) :- glaucoma, !.
    hypothesis(astigmatismo) :- astigmatismo, !.
    hypothesis(miopia) :- miopia, !.
    hypothesis(estrenimiento) :- estrenimiento, !.
    hypothesis(edema) :- edema, !.
    hypothesis(pie_de_atleta) :- pie_de_atleta, !.
    hypothesis(vph) :- vph, !.
    hypothesis(desconocido). /* no se puede diagnosticar */


    

    % Reglas de identificacion de padecimientos

    varices :- verify('Edemas (hinchazón) de pies'),
    verify('Picazón en las piernas'),
    verify('Sensación de piernas cansadas'),
    verify('Calambres en las piernas').


    difteria :- verify('Fiebre'),
    verify('Debilidad'),
    verify('Escalofríos'),
    verify('Dolor de garganta'),
    verify('Dificultad para respirar'),
    verify('Inflamación de los ganglios linfáticos'),
    verify('Formación de una membrana grisácea en la garganta').


    infarto_de_miocardio :- verify('Dolor de pecho'),
    verify('Palidez'),
    verify('Náuseas'),
    verify('Vómito'),
    verify('Fatiga'),
    verify('Dificultad para respirar'),
    verify('Sudoración excesiva'),
    verify('Ansiedad').

    neurotorax :- verify('Dificultad para respirar'),
    verify('Tos'),
    verify('Palidez'),
    verify('Dolor de pecho'),
    verify('Sudoración excesiva'),
    verify('Hiperventilación'),
    verify('Ansiedad'),
    verify('Coloración azulada de la piel').







    edema :- verify('Hinchazón'),
    verify('Sensación de pesadez').

    estrenimiento :- 
    verify('Heces duras y secas'),
    verify('Sensación de evacuación incompleta').


    eccema :- verify('Enrojecimiento de la piel'),
    verify('Costras'),
    verify('Piel seca en escamas'),
    verify('Picazón intensa'),
    verify('Engrosamiento de la piel').

    gota :- verify('Dolor articular(intenso)'),
    verify('Hichazon en las articulaciones'),
    verify('Enrojecimiento de la piel'),
    verify('Limitación del rango de movimiento').

    apnea_del_sueno :- verify('Dolor de cabeza'),
    verify('Cansancio'),
    verify('Ronquidos'),
    verify('Boca seca al despertar'),
    verify('Problemas de memoria y de concentración'),
    verify('Somnolencia diurna').


    gripe :- verify('Fiebre'),
    verify('Dolor de cabeza'),
    verify('Escalofríos'),
    verify('Dolor muscular'),
    verify('secresión nasal').

    tos_ferina :- verify('Tos paroxística(agotadora y causa dolor)'),
    verify('Fiebre'),
    verify('Vómito'),
    verify('Dificultad para respirar'),
    verify('Secreción nasal').

    edema_pulmonar :- verify('Dificultad para respirar'),
    verify('Sudoración excesiva'),
    verify('sibilancias (sonido silbante al respirar)'),
    verify('Tos con sangre'),
    verify('Ansiedad'),
    verify('Piel Pálida').



    fibrosis_pulmonar :- verify('Tos seca'),
    verify('Cansancio'),
    verify('Pérdida de peso'),
    verify('Dolor muscular'),
    verify('Dificultad para respirar'),
    verify('Dolor articular(intenso)'),
    verify('Edemas (hinchazón) de pies').


    asma :- verify('Tos seca'),
    verify('Dificultad para respirar'),
    verify('Sibilancias (sonido silbante al respirar)'),
    verify('Opresión en el pecho').


    gastritis :- verify('Náuseas'), 
    verify('Vómito'),
    verify('Dolor abdominal'),
    verify('Acidez estomacal').



    pie_de_atleta :- verify('Mal olor proveniente de los pies'),
    verify('Piel seca en escamas'),
    verify('Picor (zona de los pies)').

    golpe_de_calor :- verify('Dolor de cabeza'),
    verify('Mareos'),
    verify('Palpitaciones'),
    verify('Sequedad y enrojecimiento de la piel'),
    verify('Hiperventilación'),
    verify('Síncope(pérdida relativamente brusca de la conciencia)').



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
    verify('Náuseas'),
    verify('Vómito'),
    verify('Fatiga'),
    verify('Diarrea'),
    verify('Ictericia'),
    verify('Dolor abdominal'),
    verify('Orina oscura').


    sarampion :- verify('Fiebre'),
    verify('Cansancio'),
    verify('Tos'),
    verify('Sarpullido'),
    verify('Falta de apetito'),
    verify('Conjuntivitis'),
    verify('Secreción nasal').



    malaria :- verify('Fiebre'),verify('Dolor de cabeza'),
    verify('Escalofríos'),
    verify('síntomas gripales(gripe)'),
    verify('Vómito'),
    verify('Dolor muscular'),
    verify('hepatomegalia(agrandamiento del hígado)').


    vph :- verify('Verrugas genitales').

    gastroenteritis :- verify('Náuseas'),
    verify('Vómito'),
    verify('Diarrea'),
    verify('Dolor abdominal').

    zika :- verify('Fiebre'),verify('Dolor de cabeza'),verify('Conjuntivitis'),
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
    verify('Dolor de articulación'),
    verify('Sarpullido'),
    verify('Fatiga').


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


   
