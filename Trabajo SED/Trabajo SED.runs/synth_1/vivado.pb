
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:142

00:00:162	
522.9842	
235.344Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/utils_1/imports/synth_1/top_entity_global.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2{
yC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/utils_1/imports/synth_1/top_entity_global.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
m
Command: %s
53*	vivadotcl2<
:synth_design -top top_entity_global -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
13888Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1391.527 ; gain = 446.820
h px� 
�
synthesizing module '%s'638*oasys2
top_entity_global2l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_global.vhd2
248@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
gestor_entradas2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_proyecto.vhd2
52
gestor_entradas_top2
gestor_entradas2l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_global.vhd2
768@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
gestor_entradas2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_proyecto.vhd2
178@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sincronizador2i
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/SYNCHRNZR.vhd2
42
sincronizador_combined2
sincronizador2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_proyecto.vhd2
508@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
sincronizador2k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/SYNCHRNZR.vhd2
138@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sincronizador2
02
12k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/SYNCHRNZR.vhd2
138@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
detector_flanco2i
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/EDGEDTCTR.vhd2
42
detector_flanco_combined2
detector_flanco2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_proyecto.vhd2
598@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
detector_flanco2k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/EDGEDTCTR.vhd2
138@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
detector_flanco2
02
12k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/EDGEDTCTR.vhd2
138@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
gestor_entradas2
02
12n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_proyecto.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
top_fsm2g
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
42
top_fsm_top2	
top_fsm2l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_global.vhd2
898@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
top_fsm2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
188@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	fsm_modos2i
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_modos.vhd2
42
fsm_modos_combined2
	fsm_modos2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
588@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	fsm_modos2k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_modos.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	fsm_modos2
02
12k
gC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_modos.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
rgb_intensity_manager2k
iC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/modo_manual.vhd2
262
fsm_manual_combined2
rgb_intensity_manager2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
698@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
rgb_intensity_manager2m
iC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/modo_manual.vhd2
398@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
color_counter2j
fC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/contador.vhd2
178@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
color_counter2
02
12j
fC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/contador.vhd2
178@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rgb_intensity_manager2
02
12m
iC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/modo_manual.vhd2
398@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fsm_automatico2n
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_automatico.vhd2
252
fsm_automatico_combined2
fsm_automatico2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
818@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
fsm_automatico2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_automatico.vhd2
348@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter F_out bound to: 5 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivisorFrecuencia2q
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
52

Frecuencia2
DivisorFrecuencia2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_automatico.vhd2
628@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DivisorFrecuencia2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter F_out bound to: 5 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DivisorFrecuencia2
02
12s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
counter2g
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/counter.vhd2
52
contador_estados2	
counter2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_automatico.vhd2
738@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
counter2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/counter.vhd2
138@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
count2i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/counter.vhd2
168@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
counter2
02
12i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/counter.vhd2
138@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fsm_automatico2
02
12p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/fsm_automatico.vhd2
348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
top_fsm2
02
12i
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_fsm.vhd2
188@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
GestorSalidas2q
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
342
Gestor_Salidas_top2
GestorSalidas2l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_global.vhd2
1038@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
GestorSalidas2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
478@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ModuladorPWM2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ModuladorPWM.vhd2
352
Modulador_R2
ModuladorPWM2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ModuladorPWM2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ModuladorPWM.vhd2
428@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ModuladorPWM2
02
12n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ModuladorPWM.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ModuladorPWM2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ModuladorPWM.vhd2
352
Modulador_G2
ModuladorPWM2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
838@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ModuladorPWM2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ModuladorPWM.vhd2
352
Modulador_B2
ModuladorPWM2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
898@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
GestorParpadeo2n
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
342

Parpadeo2
GestorParpadeo2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
GestorParpadeo2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
428@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter F_out bound to: 10 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivisorFrecuencia2q
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
52	
Divisor2
DivisorFrecuencia2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
638@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
!DivisorFrecuencia__parameterized12s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter F_out bound to: 10 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
!DivisorFrecuencia__parameterized12
02
12s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-256h px� 
�
clock signal used as data2897*oasys2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
788@Z8-2897h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	encendido2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
858@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
Vin2p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
858@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
GestorParpadeo2
02
12p
lC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestorParpadeo.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
GestionSieteSegmentos2u
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
342	
Display2
GestionSieteSegmentos2s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
1068@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
GestionSieteSegmentos2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
428@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter F_out bound to: 10000 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivisorFrecuencia2q
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
52

Frecuencia2
DivisorFrecuencia2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
888@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
!DivisorFrecuencia__parameterized32s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-638h px� 
P
%s
*synth28
6	Parameter F_in bound to: 1000000000 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter F_out bound to: 10000 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
!DivisorFrecuencia__parameterized32
02
12s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DivisorFrecuencia.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ConversorBCD2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
352
Conversor_R2
ConversorBCD2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
998@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ConversorBCD2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
428@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
BIN2n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
458@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ConversorBCD2
02
12n
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ConversorBCD2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
352
Conversor_G2
ConversorBCD2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
1068@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ConversorBCD2l
jC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/ConversorBCD.vhd2
352
Conversor_B2
ConversorBCD2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
1138@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

DecoderBCD2j
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DecoderBCD.vhd2
252
DIGITO2

DecoderBCD2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
1208@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

DecoderBCD2l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DecoderBCD.vhd2
308@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

DecoderBCD2
02
12l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/DecoderBCD.vhd2
308@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
counter2g
eC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/counter.vhd2
52
c2	
counter2w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
1268@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
GestionSieteSegmentos2
02
12w
sC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/GestionSieteSegmentos.vhd2
428@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
GestorSalidas2
02
12s
oC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/GestorSalidas/GestorSalidas.srcs/sources_1/new/GestorSalidas.vhd2
478@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top_entity_global2
02
12l
hC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/top_global.vhd2
248@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
active_var_reg2m
iC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.srcs/sources_1/new/modo_manual.vhd2
528@Z8-6014h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
RESET2	
counterZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1503.855 ; gain = 559.148
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1503.855 ; gain = 559.148
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1503.855 ; gain = 559.148
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0162

1503.8552
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2W
SC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2W
SC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2U
SC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Nexys-A7-100T-Master.xdc2%
#.Xil/top_entity_global_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1544.7702
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0062

1544.7702
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 18    
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               18 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 13    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    5 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   7 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 6     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:44 ; elapsed = 00:00:47 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:54 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:54 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    30|
h px� 
2
%s*synth2
|3     |LUT1   |   107|
h px� 
2
%s*synth2
|4     |LUT2   |    39|
h px� 
2
%s*synth2
|5     |LUT3   |    13|
h px� 
2
%s*synth2
|6     |LUT4   |    24|
h px� 
2
%s*synth2
|7     |LUT5   |    27|
h px� 
2
%s*synth2
|8     |LUT6   |    64|
h px� 
2
%s*synth2
|9     |FDCE   |    55|
h px� 
2
%s*synth2
|10    |FDRE   |   134|
h px� 
2
%s*synth2
|11    |FDSE   |    30|
h px� 
2
%s*synth2
|12    |IBUF   |    10|
h px� 
2
%s*synth2
|13    |OBUF   |    24|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:55 ; elapsed = 00:00:57 . Memory (MB): peak = 1544.770 ; gain = 600.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:39 ; elapsed = 00:00:55 . Memory (MB): peak = 1544.770 ; gain = 559.148
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1544.770 ; gain = 600.062
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0092

1544.7702
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
30Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1544.7702
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

10f2c108Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822
82
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:032

00:01:082

1544.7702

1015.355Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0042

1544.7702
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2k
iC:/Users/jsepc/Desktop/Apuntes Y Cosas Uni/SED/Trabajo SED/Trabajo SED.runs/synth_1/top_entity_global.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2m
kreport_utilization -file top_entity_global_utilization_synth.rpt -pb top_entity_global_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jan 16 12:20:06 2025Z17-206h px� 


End Record