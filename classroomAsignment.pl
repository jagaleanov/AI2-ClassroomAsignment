

% diaHabil(Id,Dia).
diaHabil(1,lunes).
diaHabil(2,martes).
diaHabil(3,miercoles).
diaHabil(4,jueves).
diaHabil(5,viernes).
diaHabil(6,sabado).

diaContinuo(DiaNombre,DiaCNombre) :-
    diaHabil(Dia,DiaNombre),
    diaHabil(DiaC,DiaCNombre),
    ((DiaC is Dia +1);(Dia is DiaC +1)).


% tiempoBloque(HoraInicio,HoraFin).
tiempoBloque(8,10).
tiempoBloque(10,12).
tiempoBloque(14,16).
tiempoBloque(16,18).
tiempoBloque(12,14).
tiempoBloque(6,8).

% tiempoClase(HoraInicio,HoraFin,Dia)
tiempoClase(HoraInicio,HoraFin,Dia) :-
    tiempoBloque(HoraInicio,HoraFin),
    diaHabil(_,Dia),
    ((Dia \== sabado);(HoraFin =< 12)).
    
:- dynamic aula/3.
% aula(Edificio, CodigoSalon, CantidadEstudiantes).
aula('sabio Caldas', '101', 50).
aula('sabio Caldas', '102', 50).
aula('sabio Caldas', '103', 50).
aula('cll 34', '401', 50).
aula('cll 34', '402', 50).
aula('cll 34', '301', 50).
aula('cll 34', '302', 50).

:- dynamic laboratorio/4.
% laboratorio(Edificio, CodigoSalon, TipoLaboratorio, CantidadEstudiantes).
laboratorio('sabio Caldas', '501', 'informatica', 50).
laboratorio('sabio Caldas', '706', 'informatica', 50).
laboratorio('sabio Caldas', '701', 'informatica', 50).
laboratorio('sabio Caldas', '707', 'informatica', 50).
laboratorio('sabio Caldas', '505', 'informatica', 50).
laboratorio('sabio Caldas', '502', 'informatica', 50).
laboratorio('sabio Caldas', '702', 'informatica', 50).
laboratorio('sabio Caldas', '703', 'informatica', 50).
laboratorio('sabio Caldas', '506', 'informatica', 50).
laboratorio('sabio Caldas', '504', 'informatica', 50).
laboratorio('sabio Caldas', '503', 'informatica', 50).
laboratorio('sabio Caldas', '601', 'informatica', 50).
laboratorio('sabio Caldas', '510', 'fisica', 20).
laboratorio('sabio Caldas', '509', 'fisica', 20).

:- dynamic requiereAula/2.
% requiereAula(Asignatura,BloquesTeoricosSemanales).
requiereAula('fisica 1', 2).
requiereAula('fisica 2', 2).
requiereAula('fisica 3', 2).
requiereAula('programacion basica', 1).
requiereAula('programacion orientada a objetos', 1).
requiereAula('programacion avanzada', 1).
requiereAula('calculo diferencial', 3).
requiereAula('calculo integral', 3).
requiereAula('algebra lineal', 3).
requiereAula('modelos de programacion 1', 1).
requiereAula('modelos de programacion 2', 1).
requiereAula('fundamentos de bases de datos', 1).
requiereAula('ciencias de la computacion 1', 1).
requiereAula('ciencias de la computacion 2', 1).

:- dynamic requiereLaboratorio/3.
% requiereLaboratorio(Asignatura,TipoLaboratorio,BloquesPracticosSemanales).
requiereLaboratorio('fisica 1', 'fisica', 1).
requiereLaboratorio('fisica 2', 'fisica', 1).
requiereLaboratorio('fisica 3', 'fisica', 1).
requiereLaboratorio('programacion basica', 'informatica', 2).
requiereLaboratorio('programacion orientada a objetos', 'informatica', 2).
requiereLaboratorio('programacion avanzada', 'informatica', 2).
requiereLaboratorio('modelos de programacion 1', 'informatica', 1).
requiereLaboratorio('modelos de programacion 2', 'informatica', 1).
requiereLaboratorio('fundamentos de bases de datos', 'informatica', 1).
requiereLaboratorio('ciencias de la computacion 1', 'informatica', 2).
requiereLaboratorio('ciencias de la computacion 2', 'informatica', 1).

:- dynamic grupo/3.
% grupo(CodigoGrupo, Asignatura, CantidadEstudiantes).
grupo('020-81', 'fisica 1', 20).
grupo('020-82', 'fisica 1', 19).
grupo('020-83', 'fisica 1', 19).
grupo('020-84', 'fisica 1', 19).
grupo('020-86', 'fisica 1', 19).
grupo('020-88', 'fisica 1', 19).
grupo('020-90', 'fisica 1', 19).
grupo('020-92', 'fisica 1', 19).
grupo('020-81', 'fisica 2', 20).
grupo('020-82', 'fisica 2', 22).
grupo('020-84', 'fisica 2', 21).
grupo('020-86', 'fisica 2', 21).
grupo('020-81', 'fisica 3', 19).
grupo('020-82', 'fisica 3', 17).
grupo('020-84', 'fisica 3', 19).
grupo('020-81', 'calculo diferencial', 40).
grupo('020-82', 'calculo diferencial', 39).
grupo('020-83', 'calculo diferencial', 40).
grupo('020-84', 'calculo diferencial', 35).
grupo('020-85', 'calculo diferencial', 35).
grupo('020-86', 'calculo diferencial', 35).
grupo('020-87', 'calculo diferencial', 40).
grupo('020-88', 'calculo diferencial', 22).
grupo('020-81', 'calculo integral', 39).
grupo('020-82', 'calculo integral', 35).
grupo('020-83', 'calculo integral', 40).
grupo('020-85', 'calculo integral', 40).
grupo('020-81', 'algebra lineal', 40).
grupo('020-82', 'algebra lineal', 39).
grupo('020-84', 'algebra lineal', 40).
grupo('020-85', 'algebra lineal', 40).
grupo('020-81', 'programacion basica', 20).
grupo('020-82', 'programacion basica', 20).
grupo('020-83', 'programacion basica', 20).
grupo('020-84', 'programacion basica', 5).
grupo('020-85', 'programacion basica', 20).
grupo('020-86', 'programacion basica', 19).
grupo('020-87', 'programacion basica', 20).
grupo('020-88', 'programacion basica', 19).
grupo('020-89', 'programacion basica', 20).
grupo('020-90', 'programacion basica', 15).
grupo('020-91', 'programacion basica', 20).
grupo('020-92', 'programacion basica', 20).
grupo('020-81', 'programacion orientada a objetos', 20).
grupo('020-82', 'programacion orientada a objetos', 19).
grupo('020-83', 'programacion orientada a objetos', 19).
grupo('020-84', 'programacion orientada a objetos', 19).
grupo('020-85', 'programacion orientada a objetos', 19).
grupo('020-87', 'programacion orientada a objetos', 20).
grupo('020-88', 'programacion orientada a objetos', 19).
grupo('020-81', 'programacion avanzada', 21).
grupo('020-82', 'programacion avanzada', 22).
grupo('020-83', 'programacion avanzada', 21).
grupo('020-84', 'programacion avanzada', 23).
grupo('020-81', 'modelos de programacion 1', 21).
grupo('020-82', 'modelos de programacion 1', 22).
grupo('020-84', 'modelos de programacion 1', 21).
grupo('020-81', 'modelos de programacion 2', 20).
grupo('020-82', 'modelos de programacion 2', 21).
grupo('020-84', 'modelos de programacion 2', 21).
grupo('020-81', 'fundamentos de bases de datos', 22).
grupo('020-82', 'fundamentos de bases de datos', 23).
grupo('020-83', 'fundamentos de bases de datos', 24).
grupo('020-84', 'fundamentos de bases de datos', 22).
grupo('020-81', 'ciencias de la computacion 1', 24).
grupo('020-82', 'ciencias de la computacion 1', 24).
grupo('020-83', 'ciencias de la computacion 1', 21).
grupo('020-81', 'ciencias de la computacion 2', 23).
grupo('020-82', 'ciencias de la computacion 2', 21).
grupo('020-83', 'ciencias de la computacion 2', 21).

:- dynamic salonAsignado/8.
% salonAsignado(Edificio, CodigoSalon, TipoSalon, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin).

% 1. los laboratorios se asignan aparte de las aulas
asignarLaboratorios :-
    order_by([desc(BloquesPracticosSemanales)], requiereLaboratorio(Asignatura, TipoLaboratorio, BloquesPracticosSemanales)), % 2. asignaturas que requieren laboratorios empezando por la que necesite mas horas semanales
    order_by([desc(CantidadEstudiantesGrupo)], grupo(CodigoGrupo, Asignatura, CantidadEstudiantesGrupo)), % 3. grupos de asignaturas ordenados de mayor a menor tamaño
    order_by([desc(CantidadEstudiantesLaboratorio)], laboratorio( Edificio, CodigoSalon, TipoLaboratorio, CantidadEstudiantesLaboratorio)), % 4. laboratorios especializados ordenados de mayor a menor capacidad
    distinct(tiempoClase(HoraInicio, HoraFin, Dia)), % 5. la lista de horas esta ordenada para priorizar horarios diferentes a 12-14 y 6-8
    % 6. los dias habiles son de lunes a sabado
    % 7. el horario de lunes a viernes es de 6 a 18 y los sabados de 6 a 12
    % 8. el horario los sabados es de 6 a 12
    concat('laboratorio ',TipoLaboratorio, TipoSalon),
    CantidadEstudiantesLaboratorio >= CantidadEstudiantesGrupo, % 9. el grupo debe caber en el laboratorio
    \+(salonAsignado(Edificio, CodigoSalon, _, _, _, Dia, HoraInicio, HoraFin)), % 10. el laboratorio debe estar libre
    \+(salonAsignado(_, _, _, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin)), % 11. el grupo debe estar libre
    aggregate_all(count, salonAsignado(_, _, TipoSalon, CodigoGrupo, Asignatura, _, _, _), Count), 
    Count < BloquesPracticosSemanales, % 12. el maximo de asignaciones de un grupo a cualquier laboratorio debe ser igual o menor a la cantidad de horas bloque estipuladas
    (
        (
            salonAsignado(_, _, _, CodigoGrupo, Asignatura, DiaC, _, _),
            \+diaContinuo(Dia,DiaC), % 13. si ya hay asignaciones se dara prioridad a que un grupo no vea una asginatura 2 fechas continuas
            assert(salonAsignado(Edificio, CodigoSalon, TipoSalon, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        );(
            diaContinuo(Dia,DiaX),
            diaContinuo(Dia,DiaY),
            DiaX \== DiaY,
            \+salonAsignado(_, _, _, CodigoGrupo, Asignatura, DiaY, _, _), % 14. si no es posible evitar fechas continuas, se permitira maximo tener 2 fechas continuas
            assert(salonAsignado(Edificio, CodigoSalon, TipoSalon, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        );(
            \+salonAsignado(_, _, _, CodigoGrupo, Asignatura, _, _, _), % 15. si no se ha asignado aun un salon a este grupo
            assert(salonAsignado(Edificio, CodigoSalon, TipoSalon, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        )
    ).

asignarAulas :-
    order_by([desc(BloquesTeoricosSemanales)], requiereAula(Asignatura,BloquesTeoricosSemanales)), % 2. asignaturas que requieren aulas empezando por la que necesite mas horas semanales
    order_by([desc(CantidadEstudiantesGrupo)], grupo(CodigoGrupo, Asignatura, CantidadEstudiantesGrupo)), % 3. grupos de asignaturas ordenados de mayor a menor tamaño
    order_by([desc(CantidadEstudiantesSalon)], aula( Edificio, CodigoSalon, CantidadEstudiantesSalon)), % 4. aulas ordenadas de mayor a menor capacidad
    distinct(tiempoClase(HoraInicio, HoraFin, Dia)), % 5. la lista de horas esta ordenada para priorizar horarios diferentes a 12-14 y 6-8
    % 6. los dias habiles son de lunes a sabado
    % 7. el horario de lunes a viernes es de 6 a 18 
    % 8. el horario los sabados es de 6 a 12
    CantidadEstudiantesSalon >= CantidadEstudiantesGrupo, % 9. el grupo debe caber en el aula
    \+(salonAsignado(Edificio, CodigoSalon, _, _, _, Dia, HoraInicio, HoraFin)), % 10. el aula debe estar libre
    \+(salonAsignado(_, _, _, CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin)), % 11. el grupo debe estar libre
    aggregate_all(count, salonAsignado(_, _, 'aula', CodigoGrupo, Asignatura, _, _, _), Count),
    Count < BloquesTeoricosSemanales, % 12. el maximo de asignaciones de un grupo a cualquier aula debe ser igual o menor a la cantidad de horas bloque estipuladas
    (
        (
            salonAsignado(_, _, _, CodigoGrupo, Asignatura, DiaC, _, _),
            \+diaContinuo(Dia,DiaC), % 13. si ya hay asignaciones se dara prioridad a que un grupo no vea una asginatura 2 fechas continuas
            assert(salonAsignado(Edificio, CodigoSalon, 'aula', CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        );(
            diaContinuo(Dia,DiaX),
            diaContinuo(Dia,DiaY),
            DiaX \== DiaY,
            \+salonAsignado(_, _, _, CodigoGrupo, Asignatura, DiaY, _, _), % 14. si no es posible evitar fechas continuas, se permitira maximo tener 2 fechas continuas
            assert(salonAsignado(Edificio, CodigoSalon, 'aula', CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        );(
            \+salonAsignado(_, _, _, CodigoGrupo, Asignatura, _, _, _), % 15. si no se ha asignado aun un salon a este grupo
            assert(salonAsignado(Edificio, CodigoSalon, 'aula', CodigoGrupo, Asignatura, Dia, HoraInicio, HoraFin))
        )
    ).

asignar:-
    reiniciar,
    asignarLaboratorios,
    asignarAulas.
asignarAlterno:-
    reiniciar,
    asignarLaboratorios,
    asignarAulas.



asignaturas_(Asignatura) :-
    requiereAula(Asignatura,_);requiereLaboratorio(Asignatura,_,_).
asignaturas(Asignatura) :-
    distinct(asignaturas_(Asignatura)).

insertar :-
    write('que desea insertar? '), nl,
    write('1 asignatura '), nl,
    write('2 aula '), nl,
    write('3 laboratorio '), nl,
    write('4 grupo '), nl,
    write('5 salir '), nl,
    write('digite una opcion: '), read(Opt), nl,
    (
        (
            Opt = 1,
            write('opcion seleccionada: añadir asignatura'), nl,
            write('cual es el nombre de la asignatura?: '), read(Asignatura), nl,
            write('cual es la cantidad de bloques (2 horas) teoricos por semana a aplicar?: '), read(BloquesTeoricosSemanales), nl,
            
            write('la asignatura requiere un laboratorio? '), nl,
            write('1 Si '), nl,
            write('2 No '), nl,
            write('digite una opcion: '), read(ReqLab), nl,
            (
                (
                    ReqLab = 1,
                    write('opcion seleccionada: requiere laboratorio'), nl,
                    write('que tipo de laboratorio se necesita? '), nl,
                    write('1 fisica'), nl,
                    write('2 informatica'), nl,
                    write('digite una opcion: '), read(TipoLab), nl,
                    (
                        (
                            TipoLab = 1,
                            write('opcion seleccionada: laboratorio de fisica'), nl,
                            TipoLaboratorio is 'fisica'
                        );(
                            TipoLab = 2,
                            write('opcion seleccionada: laboratorio de informatica'), nl,
                            TipoLaboratorio is 'informatica'
                        );(
                            write('opcion invalida, desea intentarlo nuevamente?: '), read(Respuesta),nl, ((Respuesta==s)->insertar;fail)
                        )
                    ),
                    write('cual es la cantidad de bloques (2 horas) practicos por semana a aplicar?: '), read(BloquesPracticosSemanales), nl,
                    assert(requiereLaboratorio(Asignatura,TipoLaboratorio,BloquesPracticosSemanales))

                );(
                    ReqLab = 2,
                    write('opcion seleccionada: no requiere laboratorio'), nl
                );(
                    write('opcion invalida, desea intentarlo nuevamente?: '), read(Respuesta),nl, ((Respuesta==s)->insertar;fail)
                )
            ),
            assert(requiereAula(Asignatura,BloquesTeoricosSemanales)),
            write('se ha añadido una nueva asignatura'), nl,
            insertarMas
        );
        (
            Opt = 2,
            write('opcion seleccionada: añadir aula'), nl,
            write('cual es el nombre del edificio donde se ubica?: '), read(Edificio), nl,
            write('cual es el codigo del salon?: '), read(CodigoSalon), nl,
            write('cual es la capacidad de estudaintes?: '), read(CantidadEstudiantes), nl,
            assert(aula(Edificio, CodigoSalon, CantidadEstudiantes)),
            write('se ha añadido una nueva aula'), nl,
            insertarMas
        );
        (
            Opt = 3,
            write('opcion seleccionada: añadir laboratorio'), nl,
            write('cual es el nombre del edificio donde se ubica?: '), read(Edificio), nl,
            write('cual es el codigo del salon?: '), read(CodigoSalon), nl,
            write('que tipo de laboratorio es? '), nl,
            write('1 fisica'), nl,
            write('2 informatica'), nl,
            write('digite una opcion: '), read(TipoLab), nl,
            (
                (
                    TipoLab = 1,
                    write('opcion seleccionada: laboratorio de fisica'), nl,
                    TipoLaboratorio is 'fisica'
                );(
                    TipoLab = 2,
                    write('opcion seleccionada: laboratorio de informatica'), nl,
                    TipoLaboratorio is 'informatica'
                );(
                    write('opcion invalida, desea intentarlo nuevamente?: '), read(Respuesta),nl, ((Respuesta==s)->insertar;fail)
                )
            ),
            write('cual es la capacidad de estudiantes?: '), read(CantidadEstudiantes), nl,
            assert(laboratorio(Edificio, CodigoSalon, TipoLaboratorio, CantidadEstudiantes)),
            write('se ha añadido un nuevo laboratorio'), nl,
            insertarMas
        );
        (
            Opt = 4,
            write('opcion seleccionada: añadir grupo'), nl,
            write('cual sera el codigo del grupo?: '), read(CodigoGrupo), nl,
            write('a que asignatura pertenece este grupo? '), nl,
            foreach(asignaturas(AsignaturaOpcion),(write(AsignaturaOpcion),nl)),
            write('digite al nombre de una asignatura: '), read(Asignatura), nl,
            (
                (
                    asignaturas(Asignatura),
                    write('opcion seleccionada: '),
                    write(Asignatura), nl
                );(
                    write('opcion invalida, desea intentarlo nuevamente?: '), read(Respuesta),nl, ((Respuesta==s)->insertar;fail)
                )
            ),
            write('cuantos estudiantes hay en este grupo?: '), read(CantidadEstudiantes), nl,
            assert(grupo(CodigoGrupo, Asignatura, CantidadEstudiantes)),
            write('se ha añadido un nuevo grupo'), nl,
            insertarMas
        );
        (
            Opt = 5
        )
    ).
    
insertarMas:- write('Desea insertar mas datos? (s/n) '), read(Respuesta),nl, ((Respuesta==s)->insertar;fail).
reiniciar :-
    retractall(salonAsignado(_, _, _, _, _, _, _, _)).

:- nl,nl,
write('************************************'), nl,
write('* SISTEMA DE ASIGNACION DE SALONES *'), nl,
write('************************************'), nl, nl,
write('ACCIONES'), nl,
write('* insertar.'), nl,
write('* asignar.'), nl,
write('* asignarAlterno.'), nl,
write('* reiniciar.'), nl, nl,
write('PREGUNTAS'), nl,
write('* asignaturas(+Asignatura).'), nl,
write('* aula(+Edificio, +CodigoSalon, +CantidadEstudiantes).'), nl,
write('* laboratorio+(Edificio, +CodigoSalon, +TipoLaboratorio, +CantidadEstudiantes).'), nl,
write('* grupo(+CodigoGrupo, +Asignatura, +CantidadEstudiantes).'), nl,
write('* salonAsignado(+Edificio, +CodigoSalon, +TipoSalon, +CodigoGrupo, +Asignatura, +Dia, +HoraInicio, +HoraFin).'), nl, 
write('* diaHabil(+Id,+Dia).'), nl,
write('* tiempoBloque(+HoraInicio,+HoraFin).'), nl,
write('* tiempoClase(+HoraInicio,+HoraFin,+Dia).'), nl,
write('* requiereAula(+Asignatura,+BloquesTeoricosSemanales).'), nl,
write('* requiereLaboratorio(+Asignatura,+TipoLaboratorio,+BloquesPracticosSemanales).'), nl, nl.