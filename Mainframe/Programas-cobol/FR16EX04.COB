      *=============================================================*   00010000
       IDENTIFICATION                            DIVISION.              00020000
      *=============================================================*   00030000
                                                                        00040000
       PROGRAM-ID. FR16EX04.                                            00050017
      *=============================================================*   00060000
      *             T R E I N A M E N T O                           *   00061000
      *=============================================================*   00062000
      * PROGRAMA......: FR16EX04.                                   *   00062117
      *-------------------------------------------------------------*   00062200
      * PROGRAMADOR...: LUCIANO GUIMARAES.                          *   00062300
      * DATA..........: 26/05/2022                                  *   00062400
      * EMPRESA.......: FOURSYS                                     *   00062500
      * INSTRUTOR.....: IVAN SANCHES                                *   00062600
      *-------------------------------------------------------------*   00062700
      * OBJETIVO......: BALANCE LINE DOS ARQUIVOS CLIENTES E MOV0106*   00062817
      *                 GRAVACAO DE RELATORIO NO MOV0106A E M0V0106C*   00062917
      *                 DE ACORDO COM A REGRA DE NEGOCIO            *   00063017
      *-------------------------------------------------------------*   00064000
      *   ARQUIVOS...:                                              *   00065000
      *    DDNAME              I/O                                  *   00066000
      *    CLIENTES             I                                   *   00067017
      *    MOV0106              I                                   *   00067117
      *    MOV0106A             O                                   *   00068017
      *    MOV0106C             O                                   *   00069017
      *-------------------------------------------------------------*   00070000
      *   MODULOS....:                             INCLUDE/BOOK     *   00080000
      *   GRAVALOG -   TRATAMENTO DE ERROS            GLOG2         *   00090000
      *=============================================================*   00100000
                                                                        00120000
      *=============================================================*   00130000
       ENVIRONMENT                               DIVISION.              00140000
      *=============================================================*   00150000
      *-------------------------------------------------------------*   00160000
       CONFIGURATION                             SECTION.               00170000
      *-------------------------------------------------------------*   00180000
       SPECIAL-NAMES.                                                   00190000
           DECIMAL-POINT IS COMMA.                                      00200000
                                                                        00210000
       INPUT-OUTPUT                              SECTION.               00220000
       FILE-CONTROL.                                                    00230000
            SELECT CLIENTES  ASSIGN TO CLIENTES                         00240012
                FILE STATUS  IS WRK-FS-CLIENTES.                        00250012
                                                                        00251000
            SELECT MOV0106   ASSIGN TO MOV0106                          00260017
                FILE STATUS  IS WRK-FS-MOV0106.                         00261017
                                                                        00261104
            SELECT MOV0106A ASSIGN TO MOV0106A                          00262017
                FILE STATUS  IS WRK-FS-MOV0106A.                        00263017
                                                                        00263117
            SELECT MOV0106C ASSIGN TO MOV0106C                          00264017
                FILE STATUS  IS WRK-FS-MOV0106C.                        00265017
      *=============================================================*   00270000
       DATA                                      DIVISION.              00280000
      *=============================================================*   00290000
       FILE                                      SECTION.               00300000
      *-------------------------------------------------------------*   00300100
                                                                        00301000
       FD CLIENTES                                                      00310012
           RECORDING MODE IS F                                          00320000
           BLOCK CONTAINS 0 RECORDS.                                    00340000
                                                                        00350000
       01 FD-CLIENTES.                                                  00351012
          05 FD-CLIENTES-CHAVE.                                         00351112
             10 FD-CLIENTES-AGENCIA    PIC X(04).                       00352012
             10 FD-CLIENTES-CONTA      PIC X(04).                       00353015
          05 FD-CLIENTES-NOME       PIC X(30).                          00354012
          05 FD-CLIENTES-SALDO      PIC 9(08).                          00355012
                                                                        00355100
                                                                        00355200
       FD MOV0106                                                       00355317
           RECORDING  MODE IS F                                         00355400
           BLOCK CONTAINS 0 RECORDS.                                    00355500
                                                                        00355600
       01 FD-MOV0106.                                                   00355717
          05 FD-MOV0106-CHAVE.                                          00355817
             10 FD-MOV0106-AGENCIA    PIC X(04).                        00355917
             10 FD-MOV0106-CONTA      PIC X(04).                        00356017
          05 FD-MOV0106-MOVIMENTO  PIC X(30).                           00356117
          05 FD-MOV0106-VALORMOV   PIC 9(08).                           00356217
          05 FD-MOV0106-TIPOMOV    PIC X(01).                           00356317
                                                                        00357004
                                                                        00358004
       FD MOV0106A                                                      00359017
           RECORDING  MODE IS F.                                        00360004
                                                                        00370004
       01 FD-MOV0106A.                                                  00380017
          05 FD-MOV0106A-AGENCIA   PIC X(04).                           00390017
          05 FD-MOV0106A-CONTA     PIC X(04).                           00400017
          05 FD-MOV0106A-MOVIMENTO PIC X(30).                           00410017
          05 FD-MOV0106A-SALDO     PIC 9(08).                           00420017
                                                                        00421017
       FD MOV0106C                                                      00430017
           RECORDING  MODE IS F.                                        00440017
                                                                        00450017
       01 FD-MOV0106C.                                                  00460017
          05 FD-MOV0106C-AGENCIA   PIC X(04).                           00470017
          05 FD-MOV0106C-CONTA     PIC X(04).                           00471017
          05 FD-MOV0106C-MOVIMENTO PIC X(30).                           00472017
          05 FD-MOV0106C-SALDO     PIC 9(08).                           00473017
      *-------------------------------------------------------------*   00480000
       WORKING-STORAGE                           SECTION.               00490000
      *-------------------------------------------------------------*   00500000
                                                                        00501000
      *-------------------------------------------------------------*   00501100
       01 FILLER PIC X(45) VALUE                                        00501200
              '------------------#GLOG----------------------'.          00501300
      *-------------------------------------------------------------*   00501400
                                                                        00501500
       COPY '#GLOG'.                                                    00502000
                                                                        00503000
                                                                        00516500
      *-------------------------------------------------------------*   00516600
       01 FILLER PIC X(45) VALUE                                        00516700
              '-----------DADOS E FILE STATUS---------------'.          00516810
      *-------------------------------------------------------------*   00516900
       77 WRK-FS-CLIENTES   PIC 9(02).                                  00520012
       77 WRK-FS-MOV0106    PIC 9(02).                                  00521017
       77 WRK-FS-MOV0106A   PIC 9(02).                                  00521117
       77 WRK-FS-MOV0106C   PIC 9(02).                                  00521217
       77 WRK-ERRORLOG      PIC X(08) VALUE 'ERRORLOG'.                 00521317
       77 WRK-REGLIDOS      PIC 9(02) VALUE ZEROS.                      00521418
       77 WRK-GRAVADOS-A    PIC 9(02) VALUE ZEROS.                      00521518
       77 WRK-CONTADOR      PIC 9(01) VALUE ZEROS.                      00521618
       77 WRK-GRAVADOS-C    PIC 9(02) VALUE ZEROS.                      00521718
       77 WRK-GRAVADOS      PIC 9(02) COMP VALUE ZEROS.                 00521918
                                                                        00522018
      *=============================================================*   00540000
       PROCEDURE                                 DIVISION.              00550000
      *=============================================================*   00560000
      ***************************************************************   00570000
      *          R O T I N A   P R I N C I P A L                    *   00571000
      ***************************************************************   00572000
      *--------------------------------------------------------------   00573000
       0000-PRINCIPAL                            SECTION.               00574000
      *--------------------------------------------------------------   00575000
             PERFORM 1000-INICIALIZAR.                                  00580000
             PERFORM 2000-PROCESSAR UNTIL WRK-FS-CLIENTES EQUAL 10 AND  00590012
                                          WRK-FS-MOV0106  EQUAL 10.     00591017
             PERFORM 3000-FINALIZAR.                                    00600000
             STOP RUN.                                                  00610000
      *--------------------------------------------------------------   00611000
       0000-99-FIM.                              EXIT.                  00612000
      *--------------------------------------------------------------   00613000
      ***************************************************************   00614000
      *             I N I C I A L I Z A R                           *   00615000
      ***************************************************************   00616000
      *--------------------------------------------------------------   00617000
       1000-INICIALIZAR                          SECTION.               00618000
      *--------------------------------------------------------------   00619000
             OPEN INPUT CLIENTES MOV0106                                00630017
                 OUTPUT MOV0106A MOV0106C.                              00640017
                  PERFORM 5100-TESTAR-STATUS.                           00640100
                  PERFORM 5200-TESTAR-VAZIO.                            00640207
      *--------------------------------------------------------------   00671000
       1000-99-FIM.                              EXIT.                  00672000
      *--------------------------------------------------------------   00673000
      ***************************************************************   00676900
      *               P R O C E S S A R                             *   00677000
      ***************************************************************   00677100
      *--------------------------------------------------------------   00677200
       2000-PROCESSAR                            SECTION.               00678000
      *--------------------------------------------------------------   00679000
                                                                        00679809
            PERFORM 5500-TESTA-FIM.                                     00679910
                                                                        00680010
            EVALUATE TRUE                                               00681007
             WHEN FD-CLIENTES-CHAVE LESS  FD-MOV0106-CHAVE              00690017
                IF FD-CLIENTES-SALDO GREATER 9999                       00700019
                  WRITE FD-MOV0106A FROM FD-CLIENTES                    00700119
                  ADD 1 TO WRK-GRAVADOS-A                               00700219
                  MOVE 0 TO WRK-CONTADOR                                00700319
                ELSE                                                    00700519
                  WRITE FD-MOV0106C FROM FD-CLIENTES                    00700619
                  ADD 1 TO WRK-GRAVADOS-C                               00700719
                  MOVE 0 TO WRK-CONTADOR                                00700819
                END-IF                                                  00700919
                READ CLIENTES                                           00701019
                IF WRK-CONTADOR EQUAL 0                                 00701219
                  ADD 1 TO WRK-REGLIDOS                                 00701319
                END-IF                                                  00701419
             WHEN FD-CLIENTES-CHAVE EQUAL FD-MOV0106-CHAVE              00701517
                IF FD-MOV0106-TIPOMOV EQUAL 'C'                         00702019
                  ADD FD-MOV0106-VALORMOV TO FD-CLIENTES-SALDO          00703019
                  ADD 1 TO WRK-CONTADOR                                 00703119
                ELSE                                                    00704019
                  IF FD-CLIENTES-SALDO GREATER FD-MOV0106-VALORMOV OR   00704119
                     FD-CLIENTES-SALDO EQUAL FD-MOV0106-VALORMOV        00704219
                    SUBTRACT FD-MOV0106-VALORMOV FROM FD-CLIENTES-SALDO 00704919
                    ADD 1 TO WRK-CONTADOR                               00705019
                  ELSE                                                  00705119
                  DISPLAY 'SALDO INSUFICIENTE - CLIENTE: '              00705218
                                                      FD-CLIENTES-NOME  00705318
                  END-IF                                                00705419
                END-IF                                                  00705519
                READ MOV0106                                            00705619
            END-EVALUATE.                                               00706009
      *-------------------------------------------------------------    00706109
       2000-99-FIM.                              EXIT.                  00706209
      *--------------------------------------------------------------   00706309
      ***************************************************************   00706409
      *               F I N A L I Z A R                             *   00706500
      ***************************************************************   00706600
      *--------------------------------------------------------------   00707000
       3000-FINALIZAR                            SECTION.               00708000
      *--------------------------------------------------------------   00709000
            CLOSE CLIENTES MOV0106 MOV0106A MOV0106C.                   00710117
            COMPUTE WRK-GRAVADOS = WRK-GRAVADOS-A + WRK-GRAVADOS-C.     00710218
                                                                        00710318
            IF WRK-GRAVADOS - WRK-REGLIDOS NOT EQUAL 0                  00710418
              DISPLAY 'ERRO, DEVERIA SER ZERO'                          00710518
            ELSE                                                        00710618
              DISPLAY 'BALANCO CORRETO!'                                00710718
            END-IF.                                                     00710818
                                                                        00710918
            DISPLAY ' '.                                                00711000
            DISPLAY 'TOTAL DE REGISTROS GRAVADOS A : ' WRK-GRAVADOS-A.  00711118
            DISPLAY '--------------------'                              00711218
            DISPLAY 'TOTAL DE REGISTROS GRAVADOS C : ' WRK-GRAVADOS-C.  00711318
            DISPLAY '--------------------'                              00711418
            DISPLAY 'TOTAL DE REGISTROS GRAVADOS   : ' WRK-GRAVADOS.    00711518
            DISPLAY '--------------------'                              00711618
            DISPLAY 'REGISTROS LIDOS               : ' WRK-REGLIDOS.    00711718
            DISPLAY '--------------------'                              00711818
            DISPLAY 'FIM DO PROCESSAMENTO'.                             00711918
            DISPLAY '--------------------'                              00712018
            DISPLAY ' '.                                                00713015
      *--------------------------------------------------------------   00731000
       3000-99-FIM.                              EXIT.                  00732000
      *--------------------------------------------------------------   00733000
      *--------------------------------------------------------------   00830000
       5100-TESTAR-STATUS                        SECTION.               00840000
      *--------------------------------------------------------------   00850000
            EVALUATE TRUE                                               00860004
             WHEN WRK-FS-CLIENTES NOT EQUAL 0                           00860112
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00861017
               MOVE '5100'                 TO WRK-SECAO                 00861100
               MOVE 'ERRO NO OPEN CLIENTES' TO WRK-MENSAGEM             00861212
               MOVE WRK-FS-CLIENTES        TO WRK-STATUS                00861312
                 PERFORM 6000-TRATA-ERROS                               00862000
             WHEN WRK-FS-MOV0106 NOT EQUAL 0                            00862117
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00863017
               MOVE '5100'                 TO WRK-SECAO                 00864004
               MOVE 'ERRO NO OPEN MOV0106' TO WRK-MENSAGEM              00865017
               MOVE WRK-FS-CLIENTES        TO WRK-STATUS                00866012
                 PERFORM 6000-TRATA-ERROS                               00867004
             WHEN WRK-FS-MOV0106A NOT EQUAL 0                           00868017
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00869017
               MOVE '5100'                 TO WRK-SECAO                 00870004
               MOVE 'ERRO NO OPEN MOV0106A' TO WRK-MENSAGEM             00871017
               MOVE WRK-FS-CLIENTES        TO WRK-STATUS                00872012
                 PERFORM 6000-TRATA-ERROS                               00873004
             WHEN WRK-FS-MOV0106C NOT EQUAL 0                           00873117
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00873217
               MOVE '5100'                 TO WRK-SECAO                 00873317
               MOVE 'ERRO NO OPEN MOV0106C' TO WRK-MENSAGEM             00873417
               MOVE WRK-FS-CLIENTES        TO WRK-STATUS                00873517
                 PERFORM 6000-TRATA-ERROS                               00873617
            END-EVALUATE.                                               00874004
      *--------------------------------------------------------------   00880000
       5100-99-FIM.                              EXIT.                  00890000
      *--------------------------------------------------------------   00900000
      *--------------------------------------------------------------   00910004
       5200-TESTAR-VAZIO                         SECTION.               00920004
      *--------------------------------------------------------------   00930004
            IF WRK-FS-CLIENTES NOT EQUAL 0                              00940012
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00950017
               MOVE '5200'                 TO WRK-SECAO                 00960010
               MOVE 'ERRO NO READ CLIENTES' TO WRK-MENSAGEM             00970012
               MOVE WRK-FS-CLIENTES        TO WRK-STATUS                00980012
                 PERFORM 6000-TRATA-ERROS                               00981010
            ELSE                                                        00981110
               READ CLIENTES                                            00981212
            END-IF.                                                     00982010
            IF WRK-FS-MOV0106 NOT EQUAL 0                               00982117
               MOVE 'FR16EX04'             TO WRK-PROGRAMA              00982217
               MOVE '5200'                 TO WRK-SECAO                 00982310
               MOVE 'ERRO NO READ CLIENTES' TO WRK-MENSAGEM             00982412
               MOVE WRK-FS-MOV0106         TO WRK-STATUS                00982517
                 PERFORM 6000-TRATA-ERROS                               00982610
            ELSE                                                        00982710
               READ MOV0106                                             00982817
            END-IF.                                                     00982910
      *--------------------------------------------------------------   00983210
       5200-99-FIM.                              EXIT.                  00984004
      *--------------------------------------------------------------   00985004
      *--------------------------------------------------------------   00986010
       5500-TESTA-FIM                            SECTION.               00987010
      *--------------------------------------------------------------   00988010
            IF WRK-FS-MOV0106 EQUAL 10                                  00989017
               MOVE HIGH-VALUES TO FD-MOV0106-CHAVE                     00989117
            END-IF.                                                     00989211
                                                                        00989310
      *     IF WRK-FS-CLIENTES EQUAL 10                                 00989412
      *        MOVE HIGH-VALUES TO FD-CLIENTES-IDCLIENTES               00989512
      *     END-IF.                                                     00989612
      *--------------------------------------------------------------   00989710
       5500-99-FIM.                              EXIT.                  00989810
      *--------------------------------------------------------------   00989910
      *--------------------------------------------------------------   00990000
       6000-TRATA-ERROS                          SECTION.               01000000
      *--------------------------------------------------------------   01010000
            CALL WRK-ERRORLOG USING WRK-DADOS.                          01011100
            GOBACK.                                                     01012000
      *--------------------------------------------------------------   01020000
       6000-99-FIM.                              EXIT.                  01030000
      *--------------------------------------------------------------   01040000
