      *====================================================             00010000
       IDENTIFICATION                            DIVISION.              00020000
      *====================================================             00030000
       PROGRAM-ID. FR16CIP2.                                            00040033
                                                                        00061009
      *====================================================*            00062009
      *   AUTOR....:LUCIANO GUIMARAES                      *            00063009
      *   ANALISTA.:IVAN SANCHES                           *            00063110
      *   DATA ....:29/06/2022                             *            00063242
      *----------------------------------------------------*            00063309
      *   OBJETIVO:INVOCAR UM MAPA BMS CICS RELACIONADO    *            00063414
      *            COM UM ARQUIVO VSAM E EXECUTAR AS       *            00063533
      *            FUNCOES ESCOLHIDAS PELO USUARIOS E USO  *            00063841
      *            DE LOGICA PSEUDO DE SAIDA.              *            00063942
      *----------------------------------------------------*            00064010
      *   BASE DE DADOS:                                   *            00066010
      *   TABELA.VSAM                                      *            00067033
      *    ------              I/O        INCLUDE/BOOK     *            00068010
      *====================================================*            00080009
      *====================================================             00081036
       ENVIRONMENT                               DIVISION.              00082036
      *====================================================             00083036
       CONFIGURATION                              SECTION.              00090036
                                                                        00091036
       SPECIAL-NAMES.                                                   00100036
           DECIMAL-POINT IS COMMA.                                      00110036
                                                                        00110136
      *====================================================             00111036
       DATA                                      DIVISION.              00119510
      *====================================================             00119636
       WORKING-STORAGE                           SECTION.               00138001
      *----------------------------------------------------             00138101
                                                                        00139414
            COPY DFHAID.                                                00139622
                                                                        00139710
      *----------------------------------------------------             00143610
       01 FILLER              PIC X(70) VALUE                           00143710
              '---------FILE STATUS E DADOS----------'.                 00143833
                                                                        00143944
       01 WRK-ENTRADA.                                                  00144044
          05 WRK-TRANS        PIC X(04).                                00144144
          05 WRK-ID           PIC X(05).                                00144244
          05 WRK-NOME         PIC X(30) VALUE SPACES.                   00144344
          05 WRK-SETOR        PIC X(04) VALUE SPACES.                   00144444
          05 WRK-SALARIO      PIC X(10) VALUE SPACES.                   00144544
          05 WRK-DATAADM      PIC X(10) VALUE SPACES.                   00144645
          05 WRK-EMAIL        PIC X(40) VALUE SPACES.                   00144744
          05 WRK-STATUS       PIC X(01) VALUE SPACES.                   00144844
                                                                        00144944
                                                                        00145027
       01 WRK-DADOS.                                                    00145133
          05 WRK-CHAVE        PIC X(05) VALUE SPACES.                   00145247
          05 WRK-NOME         PIC X(30) VALUE SPACES.                   00145347
          05 WRK-SETOR        PIC X(04) VALUE SPACES.                   00145447
          05 WRK-SALARIO      PIC X(10) VALUE SPACES.                   00145547
          05 WRK-DATAADM      PIC X(10) VALUE SPACES.                   00145647
          05 WRK-EMAIL        PIC X(40) VALUE SPACES.                   00145747
                                                                        00146233
       77 WRK-RESP            PIC S9(04) COMP.                          00146337
                                                                        00146934
      *====================================================             00153000
       PROCEDURE                                 DIVISION.              00154000
      *====================================================             00155000
      *****************************************************             00155100
      *          R O T I N A   P R I N C I P A L          *             00155200
      *****************************************************             00155300
      *----------------------------------------------------             00156000
       0000-PRINCIPAL                            SECTION.               00157000
      *----------------------------------------------------             00157100
            PERFORM 1000-INICIALIZAR.                                   00157344
            PERFORM 2000-PROCESSAR                                      00157444
                                                                        00157544
             EXEC CICS SEND                                             00157644
               FROM(WRK-ENTRADA)                                        00157744
               ERASE                                                    00157844
             END-EXEC.                                                  00157944
                                                                        00158044
             EXEC CICS                                                  00158144
               RETURN                                                   00158244
             END-EXEC.                                                  00158344
      *----------------------------------------------------             00158444
       0000-99-FIM.                               EXIT.                 00158700
      *----------------------------------------------------             00158800
      *****************************************************             00162325
      *             I N I C I A L I Z A R                 *             00162425
      *****************************************************             00162525
      *----------------------------------------------------             00166527
       1000-INICIALIZAR                           SECTION.              00166627
      *----------------------------------------------------             00166727
            EXEC CICS RECEIVE                                           00166844
               INTO(WRK-ENTRADA)                                        00166944
            END-EXEC.                                                   00167044
      *----------------------------------------------------             00168927
       1000-99-FIM.                                 EXIT.               00169027
      *----------------------------------------------------             00169127
      *----------------------------------------------------             00169227
      *****************************************************             00169327
      *               P R O C E S S A R                   *             00169427
      *****************************************************             00170027
      *----------------------------------------------------             00171727
       2000-PROCESSAR                             SECTION.              00171827
      *----------------------------------------------------             00171927
            MOVE WRK-ID TO WRK-CHAVE.                                   00172044
            EXEC CICS READ                                              00172144
              FILE ('FUNC')                                             00172244
              RIDFLD(WRK-CHAVE)                                         00172344
              INTO(WRK-DADOS)                                           00172444
              RESP(WRK-RESP)                                            00172544
            END-EXEC.                                                   00172644
                                                                        00172744
            EVALUATE WRK-RESP                                           00172844
                                                                        00172944
            WHEN DFHRESP(NORMAL)                                        00173044
               MOVE CORR WRK-DADOS TO WRK-ENTRADA                       00173144
               MOVE '1' TO WRK-STATUS                                   00173244
                IF WRK-EMAIL OF WRK-DADOS EQUAL SPACES                  00173344
                  MOVE '4' TO WRK-STATUS                                00173644
                END-IF                                                  00173744
                IF WRK-SALARIO OF WRK-DADOS EQUAL ZEROES OR             00173844
                   WRK-SALARIO OF WRK-DADOS IS NOT NUMERIC              00173949
                  MOVE '3' TO WRK-STATUS                                00174044
                END-IF                                                  00174144
            WHEN DFHRESP(NOTFND)                                        00174244
               MOVE CORR WRK-DADOS TO WRK-ENTRADA                       00174444
               MOVE '2' TO WRK-STATUS                                   00174544
            END-EVALUATE.                                               00174844
                                                                        00174949
            IF WRK-STATUS NOT EQUAL 1                                   00175049
               INITIALIZE WRK-DADOS                                     00175149
               MOVE CORR WRK-DADOS TO WRK-ENTRADA                       00176049
            END-IF.                                                     00176149
      *----------------------------------------------------             00176732
       2000-99-FIM.                                EXIT.                00176832
      *----------------------------------------------------             00176906
