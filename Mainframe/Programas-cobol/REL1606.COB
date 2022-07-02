      *====================================================             00010000
       IDENTIFICATION                            DIVISION.              00020000
      *====================================================             00030000
       PROGRAM-ID. REL1605.                                             00040050
      *====================================================             00061000
      *             T R E I N A M E N T O                 *             00062000
      *====================================================             00063000
      * PROGRAMA......: REL1605.                          *             00064050
      *---------------------------------------------------*             00066000
      * PROGRAMADOR...: LUCIANO GUIMARAES.                *             00067000
      * DATA..........: 29/06/2022                        *             00068041
      * EMPRESA.......: FOURSYS                           *             00069000
      * INSTRUTOR.....: IVAN SANCHES                      *             00069100
      *---------------------------------------------------*             00069200
      * OBJETIVO......: LEITURA DE UM ARQUIVO E CRIAR UM  *             00069341
      *                 RELATORIO COM LEITURA TOTAL       *             00069443
      *                                                   *             00070041
      *---------------------------------------------------*             00080031
      *  ARQUIVOS   :                                     *             00090031
      *   DDNAME          I/O             INCLUDE/BOOK    *             00100031
      *   RELFUNC          I                    -         *             00101046
      *   GRAVFUNC         O                                            00101154
      *===================================================*             00102031
      *====================================================             00110000
       ENVIRONMENT                               DIVISION.              00120000
      *====================================================             00130000
       CONFIGURATION                             SECTION.               00131000
       SPECIAL-NAMES.                                                   00132000
           DECIMAL-POINT  IS COMMA.                                     00133000
                                                                        00133112
       INPUT-OUTPUT                              SECTION.               00133212
       FILE-CONTROL.                                                    00133312
            SELECT RELFUNC  ASSIGN TO RELFUNC                           00133445
                FILE STATUS IS WRK-FS-RELFUNC.                          00133545
            SELECT GRAVFUNC ASSIGN TO GRAVFUNC                          00133654
                FILE STATUS IS WRK-FS-GRAVFUNC.                         00133754
                                                                        00133833
      *====================================================             00135000
       DATA                                      DIVISION.              00136000
      *====================================================             00137000
       FILE                                      SECTION.               00137113
      *----------------------------------------------------             00137213
       FD RELFUNC                                                       00137345
           RECORDING MODE IS F                                          00137413
           BLOCK CONTAINS 0 RECORDS.                                    00137513
                                                                        00137641
      *-LRECL: 45-                                                      00137754
                                                                        00137841
        01 FD-RELFUNC.                                                  00137945
           05 FD-ID      PIC 9(05).                                     00138045
           05 FD-NOME    PIC X(30).                                     00138145
           05 FD-SETOR   PIC X(04).                                     00138245
           05 FD-SALARIO PIC 9(06).                                     00138345
                                                                        00138445
       FD GRAVFUNC                                                      00138554
           RECORDING MODE IS F.                                         00138655
                                                                        00138748
       01 FD-GRAVFUNC    PIC X(45).                                     00138855
                                                                        00138948
                                                                        00139048
      *----------------------------------------------------             00139113
       WORKING-STORAGE                           SECTION.               00139201
      *----------------------------------------------------             00139301
      *----------------------------------------------------             00139440
       01 FILLER              PIC X(70) VALUE                           00139540
              '---------GRAVALOG-----------------'.                     00139640
                                                                        00139740
           COPY '#GLOG'.                                                00139840
                                                                        00139940
                                                                        00140040
       77 WRK-ERRORLOG        PIC X(08) VALUE 'ERRORLOG'.               00140140
                                                                        00140226
      *----------------------------------------------------             00140343
       01 FILLER              PIC X(70) VALUE                           00140426
              '---------VARIAVEL DADOS E STATUS--'.                     00140533
                                                                        00140645
       01 WRK-RELFUNC.                                                  00140745
          05 WRK-ID      PIC 9(05).                                     00140845
          05 FILLER      PIC X(04) VALUE SPACES.                        00140948
          05 WRK-NOME    PIC X(30).                                     00141045
          05 WRK-SETOR   PIC X(04).                                     00141148
          05 FILLER      PIC X(07) VALUE SPACES.                        00141248
          05 WRK-SALARIO PIC 9(06).                                     00141345
                                                                        00141445
       01 WRK-CABECALHO.                                                00141549
          05 FILLER      PIC X(10) VALUE SPACES.                        00141645
          05 WRK-CABEC   PIC X(40) VALUE 'RELATORIO DE FUNCIONARIOS'.   00141745
          05 WRK-PAG     PIC X(05) VALUE 'PAG: '.                       00141849
          05 WRK-PAGINA  PIC 9(02) VALUE 1.                             00141949
                                                                        00142048
       01 WRK-CABECALHO-2.                                              00142149
          05 WRK-IDD      PIC X(02) VALUE 'ID'.                         00142245
          05 FILLER       PIC X(07) VALUE SPACES.                       00142345
          05 WRK-NOMEE    PIC X(30) VALUE 'NOME'.                       00142445
          05 WRK-SETORR   PIC X(06) VALUE 'SETOR'.                      00142545
          05 FILLER       PIC X(05) VALUE SPACES.                       00142648
          05 WRK-SALARIOO PIC X(07) VALUE 'SALARIO'.                    00142745
                                                                        00142855
       01 WRK-IMPRIME-TOTAL.                                            00143055
          05 FILLER       PIC X(25) VALUE 'ACUMULADO SALARIO TOTAL.'.   00143155
          05 WRK-SALARIO-TOT   PIC 9(07).                               00143255
                                                                        00143338
       77 WRK-FS-RELFUNC      PIC 9(02).                                00143446
       77 WRK-FS-GRAVFUNC     PIC 9(02).                                00143555
       77 WRK-SPACES          PIC X(30) VALUE SPACES.                   00143655
       77 WRK-REG-LIDOS       PIC 9(02) VALUE ZEROS.                    00143755
       77 WRK-CONTA-REG       PIC 9(02) VALUE ZEROS.                    00143855
       77 WRK-SALARIO-TOTAL   PIC 9(07).                                00143955
       77 WRK-SALARIO-SETOR   PIC 9(07).                                00144055
       77 WRK-SETOR-ATUAL     PIC X(04).                                00144155
                                                                        00145041
      *====================================================             00153000
       PROCEDURE                                 DIVISION.              00154000
      *====================================================             00155000
      *****************************************************             00155100
      *          R O T I N A   P R I N C I P A L          *             00155200
      *****************************************************             00155300
      *----------------------------------------------------             00156000
       0000-PRINCIPAL                            SECTION.               00157000
      *----------------------------------------------------             00157100
            PERFORM 1000-INICIALIZAR                                    00157214
            PERFORM 7000-TESTA-VAZIO                                    00157336
            PERFORM 2000-PROCESSAR UNTIL WRK-FS-RELFUNC EQUAL 10.       00157446
            PERFORM 3000-FINALIZAR.                                     00157514
            STOP RUN.                                                   00157634
      *----------------------------------------------------             00158200
       0000-99-FIM.                               EXIT.                 00158300
      *----------------------------------------------------             00158400
      *****************************************************             00158500
      *             I N I C I A L I Z A R                 *             00158600
      *****************************************************             00158700
      *----------------------------------------------------             00158800
       1000-INICIALIZAR                           SECTION.              00158900
      *----------------------------------------------------             00159000
            OPEN INPUT RELFUNC                                          00159155
                 OUTPUT GRAVFUNC.                                       00159355
                                                                        00159455
            PERFORM 4000-TESTAR-STATUS.                                 00159534
            PERFORM 3500-IMPRIME-CABECALHO.                             00159649
                                                                        00159750
            READ RELFUNC.                                               00159946
            MOVE FD-SETOR  TO WRK-SETOR-ATUAL.                          00160053
      *----------------------------------------------------             00160400
       1000-99-FIM.                                 EXIT.               00160500
      *----------------------------------------------------             00161000
      *****************************************************             00163606
      *               P R O C E S S A R                   *             00163706
      *****************************************************             00163806
      *----------------------------------------------------             00163906
       2000-PROCESSAR                             SECTION.              00164006
      *----------------------------------------------------             00164106
            IF WRK-SETOR EQUAL WRK-SETOR-ATUAL                          00164353
               CONTINUE                                                 00164453
            ELSE                                                        00164553
               MOVE FD-SETOR TO WRK-SETOR-ATUAL                         00164750
            END-IF.                                                     00165250
                                                                        00165353
            IF WRK-SETOR-ATUAL NOT EQUAL FD-SETOR                       00165453
              WRITE FD-GRAVFUNC FROM WRK-SPACES                         00165655
              ADD 1 TO WRK-PAGINA                                       00165853
              PERFORM 3500-IMPRIME-CABECALHO                            00165952
              MOVE 0 TO WRK-CONTA-REG                                   00166052
            END-IF.                                                     00166249
                                                                        00166353
              ADD 1 TO WRK-REG-LIDOS                                    00166448
              ADD 1 TO WRK-CONTA-REG                                    00166549
              ADD FD-SALARIO  TO WRK-SALARIO-TOTAL                      00166652
              MOVE FD-ID      TO WRK-ID                                 00166752
              MOVE FD-NOME    TO WRK-NOME                               00166852
              MOVE FD-SETOR   TO WRK-SETOR                              00166952
              MOVE FD-SALARIO TO WRK-SALARIO                            00167049
              WRITE FD-GRAVFUNC FROM WRK-RELFUNC                        00167155
            READ RELFUNC.                                               00167249
      *----------------------------------------------------             00167806
       2000-99-FIM.                                EXIT.                00167906
      *----------------------------------------------------             00168006
      *****************************************************             00168106
      *               F I N A L I Z A R                   *             00168206
      *****************************************************             00168306
      *----------------------------------------------------             00168406
       3000-FINALIZAR                             SECTION.              00168506
      *----------------------------------------------------             00168606
            CLOSE RELFUNC.                                              00169047
            PERFORM 4000-TESTAR-STATUS.                                 00169140
            MOVE WRK-SALARIO-TOTAL TO WRK-SALARIO-TOT.                  00169255
            DISPLAY WRK-SPACES.                                         00169343
            DISPLAY 'TOTAL DE REGISTROS LIDOS: ' WRK-REG-LIDOS.         00169443
            WRITE FD-GRAVFUNC FROM WRK-SPACES.                          00169555
            WRITE FD-GRAVFUNC FROM WRK-IMPRIME-TOTAL                    00169655
            DISPLAY WRK-SPACES.                                         00169749
            DISPLAY '-----FIM DE PROCESSAMENTO----'.                    00170040
      *----------------------------------------------------             00170823
       3000-99-FIM.                                  EXIT.              00170923
      *----------------------------------------------------             00171000
      *----------------------------------------------------             00260015
       3500-IMPRIME-CABECALHO                     SECTION.              00270049
      *----------------------------------------------------             00280015
            WRITE FD-GRAVFUNC FROM WRK-SPACES                           00290055
            WRITE FD-GRAVFUNC FROM WRK-CABECALHO                        00300055
            WRITE FD-GRAVFUNC FROM WRK-SPACES                           00301055
            WRITE FD-GRAVFUNC FROM WRK-CABECALHO-2.                     00302055
      *----------------------------------------------------             00310021
       3500-99-FIM.                                  EXIT.              00320049
      *----------------------------------------------------             00330021
      *----------------------------------------------------             00331049
       4000-TESTAR-STATUS                         SECTION.              00332049
      *----------------------------------------------------             00333049
             IF WRK-FS-RELFUNC NOT EQUAL 0                              00334049
               MOVE '4000'                TO WRK-SECAO                  00335049
               MOVE 'ERRO NO OPEN RELFUNC' TO WRK-MENSAGEM              00336049
               MOVE WRK-FS-RELFUNC        TO WRK-STATUS                 00337049
               PERFORM 8000-TRATA-ERROS                                 00338049
            END-IF.                                                     00339049
      *----------------------------------------------------             00339149
       4000-99-FIM.                                  EXIT.              00339249
      *----------------------------------------------------             00339349
      *----------------------------------------------------             00340034
       7000-TESTA-VAZIO                           SECTION.              00350035
      *----------------------------------------------------             00360034
            IF WRK-FS-RELFUNC EQUAL 10                                  00370046
              DISPLAY 'FIM DO ARQUIVO'                                  00380035
              GO TO 3000-FINALIZAR                                      00390035
            END-IF.                                                     00400034
      *----------------------------------------------------             00410034
       7000-99-FIM.                                  EXIT.              00420046
      *----------------------------------------------------             00430034
      *----------------------------------------------------             00440035
       8000-TRATA-ERROS                           SECTION.              00450046
      *----------------------------------------------------             00460035
            MOVE 'REL1601'   TO    WRK-PROGRAMA.                        00470042
            CALL WRK-ERRORLOG USING WRK-DADOS.                          00480040
            DISPLAY WRK-DADOS.                                          00490039
            GOBACK.                                                     00500039
      *----------------------------------------------------             00510035
       8000-99-FIM.                                  EXIT.              00520046
      *----------------------------------------------------             00530035
