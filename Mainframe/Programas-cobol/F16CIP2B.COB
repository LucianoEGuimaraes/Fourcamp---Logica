      *====================================================             00010000
       IDENTIFICATION                            DIVISION.              00020000
      *====================================================             00030000
       PROGRAM-ID. F16CIP1.                                             00040014
                                                                        00061009
      *====================================================*            00062009
      *   AUTOR....:LUCIANO GUIMARAES                      *            00063009
      *   ANALISTA.:IVAN SANCHES                           *            00063110
      *   DATA ....:22/06/2022                             *            00063214
      *----------------------------------------------------*            00063309
      *   OBJETIVO:FAZER A LEITURA DE UM MAPA BMS E RETOR  *            00063414
      *            NAR DADOS ESCOLHIDOS PELO USUARIO       *            00063514
      *                                                    *            00063810
      *====================================================*            00080009
       ENVIRONMENT                               DIVISION.              00100010
      *====================================================             00112010
       DATA                                      DIVISION.              00119510
      *====================================================             00119610
       WORKING-STORAGE                           SECTION.               00138001
      *----------------------------------------------------             00138101
                                                                        00138214
            COPY F16CIM1.                                               00138614
                                                                        00140401
      *====================================================             00153000
       PROCEDURE                                 DIVISION.              00154000
      *====================================================             00155000
      *****************************************************             00155100
      *          R O T I N A   P R I N C I P A L          *             00155200
      *****************************************************             00155300
            EXEC CICS SEND                                              00155415
               MAPSET('F16CIM1')                                        00155515
               MAP('MAPA01')                                            00155615
                ERASE                                                   00155715
               MAPONLY                                                  00155815
            END-EXEC.                                                   00155915
                                                                        00156015
            EXEC CICS RECEIVE                                           00157015
               MAPSET('F16CIM1')                                        00158015
               MAP('MAPA01')                                            00159015
               INTO(MAPA01I)                                            00160015
            END-EXEC.                                                   00170015
                                                                        00180015
            EVALUATE IDI                                                00190015
              WHEN '00001'                                              00191015
                MOVE 'SILVIO SANTOS'           TO NOMEO                 00200015
                MOVE 'DPTI'                    TO SETORO                00210015
                MOVE '00220100'                TO SALARIOO              00220015
                MOVE '05'                      TO DATADIAO              00230015
                MOVE '05'                      TO DATAMESO              00240015
                MOVE '2020'                    TO DATAANOO              00250015
                MOVE 'SILVIO@SANTOS.COM'       TO EMAILO                00260015
                MOVE 'REGISTRO ENCONTRADO'     TO MSGO                  00270015
              WHEN '00002'                                              00271015
                MOVE 'LUCIANO GUIMARAES'       TO NOMEO                 00272015
                MOVE 'DPTI'                    TO SETORO                00273015
                MOVE '00050000'                TO SALARIOO              00274015
                MOVE '11'                      TO DATADIAO              00275015
                MOVE '05'                      TO DATAMESO              00276015
                MOVE '2022'                    TO DATAANOO              00277015
                MOVE 'LUCIANO@GMAIL.COM'       TO EMAILO                00278015
                MOVE 'REGISTRO ENCONTRADO'     TO MSGO                  00279015
              WHEN OTHER                                                00280015
             MOVE 'REGISTRO NAO ENCONTRADO' TO MSGO                     00290015
            END-EVALUATE.                                               00300015
                                                                        00310015
            EXEC CICS SEND                                              00320015
               MAPSET('F16CIM1')                                        00330015
               MAP('MAPA01')                                            00340015
               DATAONLY                                                 00350015
               FROM(MAPA01O)                                            00360015
            END-EXEC.                                                   00370015
                                                                        00380015
            EXEC CICS                                                   00390015
               RETURN TRANSID ('T161')                                  00400015
            END-EXEC.                                                   00410015
