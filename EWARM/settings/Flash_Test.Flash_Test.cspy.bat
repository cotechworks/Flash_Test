@REM ���̃o�b�`�t�@�C����IAR Embedded WorkbenchC-SPY�f�o�b�K�ɂ����
@REM  �K�؂Ȑݒ���g�p����cspybat�R�}���h���C��
@REM ���[�e�B���e�B�����s���邽�߂̃R�}���h���C���̏������x��������̂Ƃ��Đ�������Ă��܂��B
@REM
@REM ���̃t�@�C���͐V�����f�o�b�O�Z�b�V����������������邽�тɐ�������邽�߁A
@REM �t�@�C���𖼏̕ύX�܂��͈ړ����Ă���
@REM �ύX���s�����Ƃ𐄏����܂��B
@REM
@REM cspybat�́A���̃o�b�`�t�@�C�����ɑ����ăf�o�b�O�t�@�C����(�ʏ��ELF/DWARF�܂���UBROF�t�@�C��)����͂��邱�Ƃɂ��A
@REM �N���ł��܂��B
@REM
@REM �g�p�\�ȃR�}���h���C���̃p�����[�^�ɂ��ẮAC-SPY�f�o�b�O�K�C�h���Q�Ƃ��Ă��������B
@REM ����̏ꍇ�ɖ𗧂R�}���h���C���p�����[�^�Ɋւ��鑼�̃q���g
@REM :
@REM   --download_only   ��Ƀf�o�b�O�Z�b�V�������N�������ɃR�[�h�̃C���[�W���_�E�����[�h���܂�
@REM                     �B
@REM   --silent          �T�C���I���̃��b�Z�[�W���ȗ����܂��B
@REM   --timeout         ���s���Ԃ̏����ݒ肵�܂��B
@REM 


@echo off 

if not "%~1" == "" goto debugFile 

@echo on 

"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.2\common\bin\cspybat" -f "C:\Users\KOKUBO\Desktop\Flash_Test\EWARM\settings\Flash_Test.Flash_Test.general.xcl" --backend -f "C:\Users\KOKUBO\Desktop\Flash_Test\EWARM\settings\Flash_Test.Flash_Test.driver.xcl" 

@echo off 
goto end 

:debugFile 

@echo on 

"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.2\common\bin\cspybat" -f "C:\Users\KOKUBO\Desktop\Flash_Test\EWARM\settings\Flash_Test.Flash_Test.general.xcl" "--debug_file=%~1" --backend -f "C:\Users\KOKUBO\Desktop\Flash_Test\EWARM\settings\Flash_Test.Flash_Test.driver.xcl" 

@echo off 
:end