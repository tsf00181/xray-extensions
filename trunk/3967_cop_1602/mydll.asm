.686
.XMM

.model flat,  C

include addr.inc

_code segment byte public 'CODE' use32
	assume cs:_code
	assume ds:_code
; �������� ��� ����������
LibMain proc STDCALL instance:DWORD,reason:DWORD,unused:DWORD 
    ret
LibMain ENDP

; ������� �� ������� ����
include xrgame_stubs.asm

; ������� � ��� �����, ��� � ������� DLL ���������� ���� ������
org sec1_sec2_dist

include global_ns_fix.asm
include level_ns_fix.asm
include cuistatic_fix.asm
include actor_hit_callback.asm
include console_fix.asm
include pda_fix.asm
include car_fix.asm
include level_input_fix.asm

_code ENDS

end LibMain

