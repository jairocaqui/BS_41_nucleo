create or replace PACKAGE             PKG_INT_PIVOTAL
IS
   TYPE t_cursor IS REF CURSOR;

   --==========================================================================
   --PROPOSITO:    CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE, RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    an_cod_reclamo            -> CODIGO DEL RECLAMO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE, RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO
   --===========================================================================
   PROCEDURE CONSULTAR_DATOS_GENERALES (
      an_cod_reclamo   IN     SASSL00.CSLCTD%TYPE,
      o_cursor            OUT t_cursor);

   --==========================================================================
   --PROPOSITO:    CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE,
   -- RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO, POR TIPO Y NUMERO DE DOCUMENTO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    an_cod_reclamo            -> CODIGO DEL RECLAMO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   -- CONSULTA LOS DATOS POR TIPO Y NUMERO DE DOCUMENTO DEL CONTRATANTE
   --===========================================================================
   PROCEDURE CONSULTAR_DATOS_GEN_TIP_NUM (
      as_TIPDOCUME   IN     SASSL03.TDCMNTO%TYPE,
      as_NUMDOCUME   IN     SASSL03.NDCMNTO%TYPE,
      o_cursor          OUT t_cursor);

   --==========================================================================
   --PROPOSITO:   GUARDA EN LA TABLA DE BI LOS DATOS GENERALES DEL RECLAMO POR PERIODO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    as_MES            ->MES DEL PERIODO
   --   AS_ANIO          ->  ANIO DEL PERIODO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   -- GUARDA EN LA TABLA DE BI LOS DATOS GENERALES DEL RECLAMO POR PERIODO
   --===========================================================================
   PROCEDURE GUARDAR_RECLAMO_BI (as_MES       IN     VARCHAR2,
                                 as_ANIO      IN     VARCHAR2,
                                 an_Retorno      OUT NUMBER,
                                 as_Mensaje      OUT VARCHAR2);

   --=============================================================================
   --PROPOSITO: REGISTRAR SOLICITUD DE PIVOTAL
   --AUTOR: RDIAZ                                                 FECHA: 06/10/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_NRO_SERVICIO                  -> NRO DE SERVICIO
   --    p_NRO_ASISTENCIA                -> NRO DE ASISTENCIA
   --    p_FEC_LLAMADA                   -> FECHA DE LLAMADA
   --    p_HORA_LLAMADA                  -> HOA DE LLAMADA
   --    p_NUM_POLIZA_PIV                -> NUMERO DE POLIZA
   --    p_NUM_SINI_PIV                  -> NUMERO DE SINIESTRO
   --    p_FEC_SINI                      -> FECHA DE SINI
   --    p_DIR_DESTINO                   -> direccion de destino
   --    p_TXT_CATEGORIA                 -> CATEGORIA
   --    p_TXT_ASUNTO                    -> ASUNTO
   --    p_TXT_TEMA                      -> TEMA
   --    p_TXT_ESTADO_ASIST              -> estado asistencia
   --    p_TXT_TELEFONO                  -> TElefno
   --    p_TXT_EMAIL                     -> Email
   --    p_TXT_RELATO                    -> RELATO
   --    p_TIP_DOCUM_CL                  -> tipo doc cliente
   --    p_COD_DOCUM_CLI                 -> codigodoc doc docum
   --   p_NOM_CONTRATANTE                -> contratante nombre
   --   o_RESULTADO                      -> resultado
   --   o_MENSAJE                        -> MensajeError
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --registrar solicitud
   --==============================================
   PROCEDURE GUARDAR_SOLICITUD_PIVOTAL (p_NRO_SERVICIO       IN     VARCHAR2,
                                        p_NRO_ASISTENCIA     IN     VARCHAR2,
                                        p_FEC_LLAMADA        IN     DATE,
                                        p_HORA_LLAMADA       IN     VARCHAR2,
                                        p_NUM_POLIZA_PIV     IN     VARCHAR2,
                                        p_NUM_SINI_PIV       IN     VARCHAR2,
                                        p_FEC_SINI           IN     DATE,
                                        p_DIR_DESTINO        IN     VARCHAR2,
                                        p_TXT_CATEGORIA      IN     VARCHAR2,
                                        p_TXT_ASUNTO         IN     VARCHAR2,
                                        p_TXT_TEMA           IN     VARCHAR2,
                                        p_TXT_ESTADO_ASIST   IN     VARCHAR2,
                                        p_TXT_TELEFONO       IN     VARCHAR2,
                                        p_TXT_EMAIL          IN     VARCHAR2,
                                        p_TXT_RELATO         IN     VARCHAR2,
                                        p_TIP_DOCUM_CLI      IN     VARCHAR2,
                                        p_COD_DOCUM_CLI      IN     VARCHAR2,
                                        p_NOM_CONTRATANTE    IN     VARCHAR2,
                                        o_RESULTADO             OUT NUMBER,
                                        o_MENSAJE               OUT VARCHAR2);

   --=============================================================================
   --PROPOSITO: REGISTRAR SOLICITUD DE PIVOTAL
   --AUTOR: RDIAZ                                                 FECHA: 06/10/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_codigoSolicitud                  -> NRO DE SOLICITUD
   --    p_tipoReporte                     -> Tipo de Reorte: Consuta, Requerimiento
   --    p_tipUsuRecla                     -> Tipo de usuario Reclamo: USU, PER
   --    p_nombrePDF                       -> Nombre del PDF
   --    p_usuario                         ->  Usuario: true, false
   --    p_proceso                         -> Proceso
   --    p_destinatario                   -> destinatario MAPFRE, CONSUMIDOR
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --enviar correo solicitud
   --==============================================
   PROCEDURE ENVIA_CORREO_RECLAMO (p_codigoSolicitud    NUMBER,
                                   p_tipoReporte        VARCHAR2,
                                   p_tipUsuRecla        VARCHAR2,
                                   p_nombrePDF          VARCHAR2,
                                   p_usuario            BOOLEAN,
                                   p_proceso            NUMBER,
                                   p_destinatario       VARCHAR2);

   --=============================================================================
   --PROPOSITO: INSERTAR LOG
   --AUTOR: RDIAZ                                                 FECHA: 30/11/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_cDescripcio                -> Decripcion de Log
   --    p_cReferencia                -> Referencia
   --    p_cAplic                     -> Aplicacion
   --    p_cCodUsuario                -> Usuario
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --Guardar Logs de proceso
   --==============================================
   PROCEDURE INSERTA_LOG (
      p_cDescripcion   IN SCTRMINERIA.Log_Error.descripcion%TYPE,
      p_cReferencia    IN SCTRMINERIA.Log_Error.referencia%TYPE,
      p_cAplic         IN SCTRMINERIA.Log_Error.cod_aplic%TYPE,
      p_cCodUsuario    IN SCTRMINERIA.Log_Error.cod_usuario_creador%TYPE);
END;


/
create or replace PACKAGE BODY             PKG_INT_PIVOTAL
IS
   /* INICIO - MULTIPLICA - BSAENZ - PROYECTO MIGRACION - 2018-06-26 */
   -- Se retira el DB_LINK a los siguiente objetos
   -- MP_SEG_COM_RANGOS@TRON   --> MP_SEG_COM_RANGOS
   -- a2000030@tron    --> a2000030
   -- A1001399@tron    --> A1001399
   -- A1001331@tron    --> A1001331
   -- cubos.mp_crm_reclamos --> cubos.mp_crm_reclamos
   /* FIN - MULTIPLICA - BSAENZ - PROYECTO MIGRACION - 2018-06-26 */

   --==========================================================================
   --PROPOSITO:    CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE, RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    an_cod_reclamo            -> CODIGO DEL RECLAMO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE, RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO
   --===========================================================================
   PROCEDURE CONSULTAR_DATOS_GENERALES (
      an_cod_reclamo   IN     SASSL00.CSLCTD%TYPE,
      o_cursor            OUT t_cursor)
   IS
   BEGIN
      OPEN o_cursor FOR
         SELECT                                                    /*COSTO=7*/
               DECODE (
                   A.CPRCSO,
                   1,    LPAD (A.CCRGSTRO, 3, '0')
                      || '-'
                      || A.CORGSTRO
                      || '-'
                      || A.ARGSTRO
                      || '-'
                      || LPAD (A.CRGSTRO, 5, '0'),
                   '')
                   CCRGSTRO,
                A.CSLCTD,
                A.FRCPCN                                                   --5
                        ,
                CASE
                   WHEN A.CTVRCLMO = '1'
                   THEN                                             --RECLAMOS
                      CASE
                         WHEN A.CVRCLMO = '1' THEN 'RECLAMO CARTA' --WHEN A.CVRCLMO ='4' THEN 'RECLAMO TELEFONICO'
                         ELSE 'RECLAMO VIRTUAL'
                      END
                   ELSE                                               --QUEJAS
                      CASE
                         WHEN A.CVRCLMO = '1' THEN 'QUEJA CARTA' -- WHEN A.CVRCLMO ='4' THEN 'QUEJA TELEFONICA'
                         ELSE 'QUEJA VIRTUAL'
                      END
                END
                   TIPO_RECLAMO,
                NVL ( (SELECT X.NVRCLMO
                         FROM WEBRECLAMOS.SASMT07 X
                        WHERE X.CVRCLMO = A.CVRCLMO),
                     'NINGUNO')
                   VRCLMO                                        --VIA RECLAMO
                         ,
                (SELECT X.NPRCSO
                   FROM WEBRECLAMOS.SASMT04 X
                  WHERE X.CPRCSO = A.CPRCSO)
                   TVRCLMO                                 -- TIPO_VIA_RECLAMO
                          ,
                C.TDCMNTO TDCMNTOCNTTE                -- TIP_DOCUM_CONTRATANTE
                                      ,
                C.NDCMNTO NDCMNTOCNTTE               -- NUM_DOCUM_CONTRATANTE,
                                      ,
                (SELECT RG.TXT_RANGO_SEG
                   FROM TRON2000.MP_SEG_COM_RANGOS RG
                  WHERE RG.COD_RANGO_SEG = C.SCMRCL)
                   SCCMRCL                        --SGMNTO_COMERCIAL_CONTRATA,
                          ,
                C.NPLZA NPLZA,
                C.NSNSTRO NSNSTRO,
                (SELECT X.NREMPRSA
                   FROM WEBRECLAMOS.SASMT22 X
                  WHERE X.CREMPRSA = B.CREMPRSA)
                   REMPRSA,
                (SELECT X.NTUSRO
                   FROM WEBRECLAMOS.SASMT24 X
                  WHERE X.CTUSRO = B.CTUSRO AND X.cremprsa = B.cremprsa)
                   TUSRO                                       --TIPO_USUARIO,
                        ,
                B.TDCMNTO TDCMNTORMNTE                -- TIP_DOCUM_RECLAMANTE,
                                      ,
                B.NDCMNTO NDCMNTORMNTE                -- NUM_DOCUM_RECLAMANTE,
                                      --,DECODE(B.TDCMNTO, 'RUC',B.RSCL,B.PNMBRE  ||' '|| B.APTRNO||' ' || B.AMTRNO) NMBRERMTE -- NOMBRE_COMPLETO_RECLAMANTE,
                ,
                CASE
                   WHEN B.TDCMNTO = 'RUC' AND B.RSCL IS NOT NULL THEN B.RSCL
                   ELSE B.PNMBRE || ' ' || B.APTRNO || ' ' || B.AMTRNO
                END
                   NMBRERMTE                    -- NOMBRE_COMPLETO_RECLAMANTE,
                            ,
                CASE B.CPRNTSCO
                   WHEN 5
                   THEN
                      B.DPRNTSCO
                   ELSE
                      (SELECT VDTVRA
                         FROM WEBRECLAMOS.sasmt30
                        WHERE CTVRA = 6 AND CDTVRA = B.CPRNTSCO)
                END
                   PRNTSCORMNTE                      -- PARENTESCO_RECLAMANTE,
                               ,
                B.DRCCN DRCCN,
                (SELECT X.NOM_ESTADO
                   FROM TRON2000.A1000104 X
                  WHERE X.COD_PAIS = 'PE' AND X.COD_ESTADO = B.CDPRTMNTO)
                   DPRTMNTO,
                (SELECT X.NOM_prov
                   FROM TRON2000.A1000100 X
                  WHERE     X.COD_PAIS = 'PE'
                        AND X.COD_ESTADO = B.CDPRTMNTO
                        AND x.cod_prov = B.CPRVNCA)
                   PRVNCA,
                (SELECT x.NOM_LOCALIDAD
                   FROM TRON2000.A1000102 x
                  WHERE     x.COD_PAIS = 'PE'
                        AND x.COD_PROV = B.CPRVNCA
                        AND x.COD_LOCALIDAD = B.CDSTRTO)
                   DSTRTO,
                B.TLFNO TLFNORMNTE,
                B.CLLR CLLRRMNTE,
                B.CELCTRNCO CELCTRNCORMNTE                                --26
                                          ,
                (SELECT X.NOFCNA
                   FROM WEBRECLAMOS.SASMT10 X
                  WHERE X.COFCNA = A.CORGNRDRA)
                   OFICINA_GENERADORA                                     --27
                                     ,
                (SELECT X.NARA
                   FROM WEBRECLAMOS.SASMT09 X
                  WHERE     X.CCMPNA = A.CCRGNRDRA
                        AND X.CPRCSO = A.CPRCSO
                        AND X.CARA = A.CARA
                        AND X.COFCNA = A.CORGNRDRA)
                   ARGNRDRA                                --AREA_GENERADORA ,
                           ,
                CASE A.CPRDCTO
                   WHEN 1000
                   THEN
                      A.DPRDCTO
                   ELSE
                      (SELECT NPRDCTO
                         FROM WEBRECLAMOS.SASMT16 P
                        WHERE A.CPRDCTO = P.CPRDCTO AND ROWNUM = 1)
                END
                   PRDCTO                                     --DESC_PRODUCTO,
                         ,
                CASE A.CSRVCO
                   WHEN 999
                   THEN
                      A.DSRVCO
                   ELSE
                      (SELECT X.NSRVCO
                         FROM WEBRECLAMOS.SASMT15 X
                        WHERE A.CSRVCO = X.CSRVCO AND ROWNUM = 1)
                END
                   SRVCO                                     -- DESC_SERVICIO,
                        ,
                (SELECT X.NMTVO
                   FROM WEBRECLAMOS.SASMT14 X
                  WHERE     X.CMTVO = A.CMTVO
                        AND X.CCMPNA = A.CCRGNRDRA
                        AND ROWNUM = 1)
                   MTVO                                        -- DESC_MOTIVO,
                       ,
                DECODE (A.CMTVO,
                        999, WEBRECLAMOS.f_DescripcionMotivo (A.CMTVO,
                                                              A.DMTVO,
                                                              A.CCRGNRDRA,
                                                              B.CREMPRSA,
                                                              'TXT'),
                        '')
                   DMTVO                                  -- CAUSA_ESPECIFICA,
                        ,
                --CAST (A.ROCRRNCA AS VARCHAR2 (4000)) ROCRRNCA --DETALLE_RECLAMO,
				DBMS_LOB.SUBSTR(REGEXP_REPLACE(A.ROCRRNCA, '[^0-9A-Za-z ,.Â°:()/-]', ' '),3900,1)  as ROCRRNCA
                                                             ,
                (SELECT DISTINCT UPPER (X.VDTVRA)
                   FROM WEBRECLAMOS.SASMT30 X
                  WHERE X.CTVRA = 8 AND X.CDTVRA = A.CESLCTD AND ROWNUM = 1)
                   ESLCTD                                  --  ESTADO_RECLAMO,
                         ,
                A.FRSPSTA FRSPSTA                          -- FECHA_RESPUESTA,
                                 ,
                A.SRSLTDO SRSLTDO                          --DETALLE_RESPUESTA
                                 ,
                (SELECT X.NOFCNA
                   FROM WEBRECLAMOS.SASMT10 X
                  WHERE X.COFCNA = A.CORGSTRO)
                   OFICINA_REGISTRO                                       --37
                                   ,
                A.RGSTN EJECUTIVO                                         --38
           FROM WEBRECLAMOS.SASSL00 A,
                WEBRECLAMOS.SASSL03 B,
                WEBRECLAMOS.SASSL03 C
          WHERE     (A.CGSTN <> '3' OR A.CGSTN IS NULL)
                AND A.CSLCTD = an_cod_reclamo                       --20120032
                AND A.CSLCTD = B.CSLCTD
                AND A.CPRCSO = B.CPRCSO
                AND A.CSPRCSO = B.CSPRCSO
                AND A.CSLCTD = C.CSLCTD
                AND A.CPRCSO = C.CPRCSO
                AND A.CSPRCSO = C.CSPRCSO
                AND B.CTCNSMDR = 1
                AND C.CTCNSMDR = 2;
   END CONSULTAR_DATOS_GENERALES;

   --==========================================================================
   --PROPOSITO:    CONSULTA LOS DATOS DE LAS TABLAS: RECLAMOS_RECLAMO,  RECLAMOS_COTRATANTE,
   -- RECLAMOS_SOLICITANTE Y INDECOPI_RECLAMO, POR TIPO Y NUMERO DE DOCUMENTO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    an_cod_reclamo            -> CODIGO DEL RECLAMO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   -- CONSULTA LOS DATOS POR TIPO Y NUMERO DE DOCUMENTO DEL CONTRATANTE
   --===========================================================================
   PROCEDURE CONSULTAR_DATOS_GEN_TIP_NUM (
      as_TIPDOCUME   IN     SASSL03.TDCMNTO%TYPE,
      as_NUMDOCUME   IN     SASSL03.NDCMNTO%TYPE,
      o_cursor          OUT t_cursor)
   IS
   BEGIN
      OPEN o_cursor FOR
         SELECT                                                   /*COSTO=23*/
               DECODE (
                   A.CPRCSO,
                   1,    LPAD (A.CCRGSTRO, 3, '0')
                      || '-'
                      || A.CORGSTRO
                      || '-'
                      || A.ARGSTRO
                      || '-'
                      || LPAD (A.CRGSTRO, 5, '0'),
                   '')
                   CCRGSTRO,
                A.CSLCTD,
                A.FRCPCN                                                   --5
                        ,
                CASE
                   WHEN A.CTVRCLMO = '1'
                   THEN                                             --RECLAMOS
                      CASE
                         WHEN A.CVRCLMO = '1' THEN 'RECLAMO CARTA' --WHEN A.CVRCLMO ='4' THEN 'RECLAMO TELEFONICO'
                         ELSE 'RECLAMO VIRTUAL'
                      END
                   ELSE                                               --QUEJAS
                      CASE
                         WHEN A.CVRCLMO = '1' THEN 'QUEJA CARTA' --WHEN A.CVRCLMO ='4' THEN 'QUEJA TELEFONICA'
                         ELSE 'QUEJA VIRTUAL'
                      END
                END
                   TIPO_RECLAMO,
                NVL ( (SELECT X.NVRCLMO
                         FROM WEBRECLAMOS.SASMT07 X
                        WHERE X.CVRCLMO = A.CVRCLMO),
                     'NINGUNO')
                   VRCLMO                                        --VIA RECLAMO
                         ,
                (SELECT X.NPRCSO
                   FROM WEBRECLAMOS.SASMT04 X
                  WHERE X.CPRCSO = A.CPRCSO)
                   TVRCLMO                                 -- TIPO_VIA_RECLAMO
                          ,
                C.TDCMNTO TDCMNTOCNTTE                -- TIP_DOCUM_CONTRATANTE
                                      ,
                C.NDCMNTO NDCMNTOCNTTE               -- NUM_DOCUM_CONTRATANTE,
                                      ,
                (SELECT RG.TXT_RANGO_SEG
                   FROM TRON2000.MP_SEG_COM_RANGOS RG
                  WHERE RG.COD_RANGO_SEG = C.SCMRCL)
                   SCCMRCL                        --SGMNTO_COMERCIAL_CONTRATA,
                          ,
                C.NPLZA NPLZA,
                C.NSNSTRO NSNSTRO,
                (SELECT X.NREMPRSA
                   FROM WEBRECLAMOS.SASMT22 X
                  WHERE X.CREMPRSA = B.CREMPRSA)
                   REMPRSA,
                (SELECT X.NTUSRO
                   FROM WEBRECLAMOS.SASMT24 X
                  WHERE X.CTUSRO = B.CTUSRO AND X.cremprsa = B.cremprsa)
                   TUSRO                                       --TIPO_USUARIO,
                        ,
                B.TDCMNTO TDCMNTORMNTE                -- TIP_DOCUM_RECLAMANTE,
                                      ,
                B.NDCMNTO NDCMNTORMNTE                -- NUM_DOCUM_RECLAMANTE,
                                      --,DECODE(B.TDCMNTO, 'RUC',B.RSCL,B.PNMBRE  ||' '|| B.APTRNO||' ' || B.AMTRNO) NMBRERMTE -- NOMBRE_COMPLETO_RECLAMANTE,
                ,
                CASE
                   WHEN B.TDCMNTO = 'RUC' AND B.RSCL IS NOT NULL THEN B.RSCL
                   ELSE B.PNMBRE || ' ' || B.APTRNO || ' ' || B.AMTRNO
                END
                   NMBRERMTE                    -- NOMBRE_COMPLETO_RECLAMANTE,
                            ,
                CASE B.CPRNTSCO
                   WHEN 5
                   THEN
                      B.DPRNTSCO
                   ELSE
                      (SELECT VDTVRA
                         FROM WEBRECLAMOS.sasmt30
                        WHERE CTVRA = 6 AND CDTVRA = B.CPRNTSCO)
                END
                   PRNTSCORMNTE                      -- PARENTESCO_RECLAMANTE,
                               ,
                B.DRCCN DRCCN,
                (SELECT X.NOM_ESTADO
                   FROM TRON2000.A1000104 X
                  WHERE X.COD_PAIS = 'PE' AND X.COD_ESTADO = B.CDPRTMNTO)
                   DPRTMNTO,
                (SELECT X.NOM_prov
                   FROM TRON2000.A1000100 X
                  WHERE     X.COD_PAIS = 'PE'
                        AND X.COD_ESTADO = B.CDPRTMNTO
                        AND x.cod_prov = B.CPRVNCA)
                   PRVNCA,
                (SELECT x.NOM_LOCALIDAD
                   FROM TRON2000.A1000102 x
                  WHERE     x.COD_PAIS = 'PE'
                        AND x.COD_PROV = B.CPRVNCA
                        AND x.COD_LOCALIDAD = B.CDSTRTO)
                   DSTRTO,
                B.TLFNO TLFNORMNTE,
                B.CLLR CLLRRMNTE,
                B.CELCTRNCO CELCTRNCORMNTE                                --26
                                          ,
                (SELECT X.NOFCNA
                   FROM WEBRECLAMOS.SASMT10 X
                  WHERE X.COFCNA = A.CORGNRDRA)
                   OFICINA_GENERADORA                                     --27
                                     ,
                (SELECT X.NARA
                   FROM WEBRECLAMOS.SASMT09 X
                  WHERE     X.CCMPNA = A.CCRGNRDRA
                        AND X.CPRCSO = A.CPRCSO
                        AND X.CARA = A.CARA
                        AND X.COFCNA = A.CORGNRDRA)
                   ARGNRDRA                                --AREA_GENERADORA ,
                           ,
                CASE A.CPRDCTO
                   WHEN 1000
                   THEN
                      A.DPRDCTO
                   ELSE
                      (SELECT NPRDCTO
                         FROM WEBRECLAMOS.SASMT16 P
                        WHERE A.CPRDCTO = P.CPRDCTO AND ROWNUM = 1)
                END
                   PRDCTO                                     --DESC_PRODUCTO,
                         ,
                CASE A.CSRVCO
                   WHEN 999
                   THEN
                      A.DSRVCO
                   ELSE
                      (SELECT X.NSRVCO
                         FROM WEBRECLAMOS.SASMT15 X
                        WHERE A.CSRVCO = X.CSRVCO AND ROWNUM = 1)
                END
                   SRVCO                                     -- DESC_SERVICIO,
                        ,
                (SELECT X.NMTVO
                   FROM WEBRECLAMOS.SASMT14 X
                  WHERE     X.CMTVO = A.CMTVO
                        AND X.CCMPNA = A.CCRGNRDRA
                        AND ROWNUM = 1)
                   MTVO                                        -- DESC_MOTIVO,
                       ,
                DECODE (A.CMTVO,
                        999, WEBRECLAMOS.f_DescripcionMotivo (A.CMTVO,
                                                              A.DMTVO,
                                                              A.CCRGNRDRA,
                                                              B.CREMPRSA,
                                                              'TXT'),
                        '')
                   DMTVO                                  -- CAUSA_ESPECIFICA,
                        ,
                --CAST (A.ROCRRNCA AS VARCHAR2 (4000)) ROCRRNCA --DETALLE_RECLAMO,
				DBMS_LOB.SUBSTR(REGEXP_REPLACE(A.ROCRRNCA, '[^0-9A-Za-z ,.Â°:()/-]', ' '),3900,1)  as ROCRRNCA
                                                             ,
                (SELECT DISTINCT UPPER (X.VDTVRA)
                   FROM WEBRECLAMOS.SASMT30 X
                  WHERE X.CTVRA = 8 AND X.CDTVRA = A.CESLCTD AND ROWNUM = 1)
                   ESLCTD                                  --  ESTADO_RECLAMO,
                         ,
                A.FRSPSTA FRSPSTA                          -- FECHA_RESPUESTA,
                                 ,
                A.SRSLTDO SRSLTDO                          --DETALLE_RESPUESTA
                                 ,
                (SELECT X.NOFCNA
                   FROM WEBRECLAMOS.SASMT10 X
                  WHERE X.COFCNA = A.CORGSTRO)
                   OFICINA_REGISTRO                                       --37
                                   ,
                A.RGSTN EJECUTIVO                                         --38
           FROM WEBRECLAMOS.SASSL00 A,
                WEBRECLAMOS.SASSL03 B,
                WEBRECLAMOS.SASSL03 C
          WHERE     (A.CGSTN <> '3' OR A.CGSTN IS NULL)
                AND A.CSLCTD = B.CSLCTD
                AND A.CPRCSO = B.CPRCSO
                AND A.CSPRCSO = B.CSPRCSO
                AND A.CSLCTD = C.CSLCTD
                AND A.CPRCSO = C.CPRCSO
                AND A.CSPRCSO = C.CSPRCSO
                AND B.CTCNSMDR = 1
                AND B.TDCMNTO = as_TIPDOCUME
                AND B.NDCMNTO = as_NUMDOCUME
                AND C.CTCNSMDR = 2;
   END CONSULTAR_DATOS_GEN_TIP_NUM;


   --==========================================================================
   --PROPOSITO:   GUARDA EN LA TABLA DE BI LOS DATOS GENERALES DEL RECLAMO POR PERIODO
   --AUTOR: AALVARADO                                                                FECHA: 07/04/14
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    as_MES            ->MES DEL PERIODO
   --   AS_ANIO          ->  ANIO DEL PERIODO
   ----------------------------------------------------------------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   -- GUARDA EN LA TABLA DE BI LOS DATOS GENERALES DEL RECLAMO POR PERIODO
   --===========================================================================
   PROCEDURE GUARDAR_RECLAMO_BI (as_MES       IN     VARCHAR2,
                                 as_ANIO      IN     VARCHAR2,
                                 an_Retorno      OUT NUMBER,
                                 as_Mensaje      OUT VARCHAR2 --o_cursor                     OUT      t_cursor
                                                             )
   IS
      Error_Periodo   EXCEPTION;

      CURSOR c_DataReclamos
      IS
         WITH DataReclamos
                 AS (SELECT DISTINCT
                            TO_NUMBER (as_ANIO || as_MES) anio_mes_operacion --01
                                                                            ,
                            TO_NUMBER (A.CCRGSTRO) cod_cia                --02
                                                          ,
                            A.CSLCTD CSLCTD                               --03
                                           ,
                            DECODE (
                               A.CPRCSO,
                               1,    LPAD (A.CCRGSTRO, 3, '0')
                                  || '-'
                                  || A.CORGSTRO
                                  || '-'
                                  || A.ARGSTRO
                                  || '-'
                                  || LPAD (A.CRGSTRO, 5, '0'),
                               '')
                               CCRGSTRO                                   --04
                                       ,
                            A.FRCPCN FRCPCN                               --05
                                           ,
                            CASE
                               WHEN A.CTVRCLMO = '1'
                               THEN                                 --RECLAMOS
                                  CASE
                                     WHEN A.CVRCLMO = '1'
                                     THEN
                                        'RECLAMO CARTA'
                                     ELSE
                                        'RECLAMO VIRTUAL'
                                  END
                               ELSE                                   --QUEJAS
                                  CASE
                                     WHEN A.CVRCLMO = '1' THEN 'QUEJA CARTA'
                                     ELSE 'QUEJA VIRTUAL'
                                  END
                            END
                               TRCLMO                                     --06
                                     ,
                            (SELECT X.NVRCLMO
                               FROM WEBRECLAMOS.SASMT07 X
                              WHERE X.CVRCLMO = A.CVRCLMO)
                               VRCLMO                                     --07
                                     ,
                            (SELECT SUBSTR (X.NPRCSO, 1, 20)
                               FROM WEBRECLAMOS.SASMT04 X
                              WHERE X.CPRCSO = A.CPRCSO)
                               TVRCLMO                                    --08
                                      --RECLAMOS_CONTRATANTE
                            ,
                            C.TDCMNTO TDCMNTOCNTTE                        --09
                                                  ,
                            C.NDCMNTO NDCMNTOCNTTE                        --10
                                                  ,
                            (SELECT RG.TXT_RANGO_SEG
                               FROM TRON2000.MP_SEG_COM_RANGOS RG
                              WHERE RG.COD_RANGO_SEG = C.SCMRCL)
                               SCCMRCL          --11 SGMNTO_COMERCIAL_CONTRATA
                                      ,
                            SUBSTR (C.NPLZA, 1, 13) NPLZA                 --12
                                                         ,
                            C.NSNSTRO NSNSTRO                             --13
                                             ,
                            (SELECT SUBSTR (X.NREMPRSA, 1, 20)
                               FROM WEBRECLAMOS.SASMT22 X
                              WHERE X.CREMPRSA = B.CREMPRSA)
                               REMPRSA                                    --14
                                      ,
                            (SELECT SUBSTR (X.NTUSRO, 1, 100)
                               FROM WEBRECLAMOS.SASMT24 X
                              WHERE X.CTUSRO = B.CTUSRO
                                    AND X.cremprsa = B.cremprsa)
                               TUSRO                                      --15
                                    --RECLAMOS_RECLAMANTE
                            ,
                            B.TDCMNTO TDCMNTORMNTE                        --16
                                                  ,
                            B.NDCMNTO NDCMNTORMNTE                        --17
                                                  --,DECODE(B.TDCMNTO, 'RUC',B.RSCL,B.PNMBRE  ||' '|| B.APTRNO||' ' || B.AMTRNO)  NMBRERMTE--18
                            ,
                            CASE
                               WHEN B.TDCMNTO = 'RUC' AND B.RSCL IS NOT NULL
                               THEN
                                  B.RSCL
                               ELSE
                                  SUBSTR (
                                        B.PNMBRE
                                     || ' '
                                     || B.APTRNO
                                     || ' '
                                     || B.AMTRNO,
                                     1,
                                     200)
                            END
                               NMBRERMTE                                 -- 18
                                        ,
                            CASE B.CPRNTSCO
                               WHEN 5
                               THEN
                                  B.DPRNTSCO
                               ELSE
                                  (SELECT VDTVRA
                                     FROM WEBRECLAMOS.sasmt30
                                    WHERE CTVRA = 6 AND CDTVRA = B.CPRNTSCO)
                            END
                               PRNTSCORMNTE                               --19
                                           ,
                            SUBSTR (B.DRCCN, 1, 150) DRCCN                --20
                                                          ,
                            (SELECT X.NOM_ESTADO
                               FROM TRON2000.A1000104 X
                              WHERE X.COD_PAIS = 'PE'
                                    AND X.COD_ESTADO = B.CDPRTMNTO)
                               DPRTMNTO                                   --21
                                       ,
                            (SELECT X.NOM_prov
                               FROM TRON2000.A1000100 X
                              WHERE     X.COD_PAIS = 'PE'
                                    AND X.COD_ESTADO = B.CDPRTMNTO
                                    AND x.cod_prov = B.CPRVNCA)
                               PRVNCA                                     --22
                                     ,
                            (SELECT x.NOM_LOCALIDAD
                               FROM TRON2000.A1000102 x
                              WHERE     x.COD_PAIS = 'PE'
                                    AND x.COD_PROV = B.CPRVNCA
                                    AND x.COD_LOCALIDAD = B.CDSTRTO)
                               DSTRTO                                     --23
                                     ,
                            B.TLFNO TLFNORMNTE                            --24
                                              ,
                            B.CLLR CLLRRMNTE                              --25
                                            ,
                            SUBSTR (B.CELCTRNCO, 1, 50) CELCTRNCORMNTE    --26
                                                                      ,
                            (SELECT SUBSTR (X.NOFCNA, 1, 100)
                               FROM WEBRECLAMOS.SASMT10 X
                              WHERE X.COFCNA = A.CORGNRDRA)
                               ORGNRDRA            -- OFICINA_GENERADORA, --27
                                       ,
                            (SELECT SUBSTR (X.NARA, 1, 50)
                               FROM WEBRECLAMOS.SASMT09 X
                              WHERE     X.CCMPNA = A.CCRGNRDRA
                                    AND X.CPRCSO = A.CPRCSO
                                    AND X.CARA = A.CARA
                                    AND X.COFCNA = A.CORGNRDRA)
                               ARGNRDRA                                   --28
                                       ,
                            CASE A.CPRDCTO
                               WHEN 1000
                               THEN
                                  SUBSTR (A.DPRDCTO, 1, 100)
                               ELSE
                                  (SELECT SUBSTR (NPRDCTO, 1, 100)
                                     FROM WEBRECLAMOS.SASMT16 P
                                    WHERE A.CPRDCTO = P.CPRDCTO
                                          AND ROWNUM = 1)
                            END
                               PRDCTO                                     --29
                                     ,
                            CASE A.CSRVCO
                               WHEN 999
                               THEN
                                  SUBSTR (A.DSRVCO, 1, 100)
                               ELSE
                                  (SELECT SUBSTR (X.NSRVCO, 1, 100)
                                     FROM WEBRECLAMOS.SASMT15 X
                                    WHERE A.CSRVCO = X.CSRVCO AND ROWNUM = 1)
                            END
                               SRVCO                                      --30
                                    ,
                            (SELECT X.NMTVO
                               FROM WEBRECLAMOS.SASMT14 X
                              WHERE     X.CMTVO = A.CMTVO
                                    AND X.CCMPNA = A.CCRGNRDRA
                                    AND ROWNUM = 1)
                               MTVO                                       --31
                                   ,
                            DECODE (A.CMTVO,
                                    999, WEBRECLAMOS.
                                         f_DescripcionMotivo (A.CMTVO,
                                                              A.DMTVO,
                                                              A.CCRGNRDRA,
                                                              B.CREMPRSA,
                                                              'TXT'),
                                    '')
                               DMTVO                     --32 CAUSA_ESPECIFICA
                                    ,
                            --SUBSTR (
                              -- REPLACE (
                                --  REPLACE (
                                  --   CAST (A.ROCRRNCA AS VARCHAR2 (4000)),
                                    -- CHR (10),
                                     --' '),
                                  --CHR (13),
                                  --' '),
                               --1,
                               --3800)
							   DBMS_LOB.SUBSTR(REGEXP_REPLACE(A.ROCRRNCA, '[^0-9A-Za-z ,.Â°:()/-]', ' '),3900,1)  AS
                               ROCRRNCA                  --33  DETALLE_RECLAMO
                                       ,
                            (SELECT DISTINCT UPPER (SUBSTR (X.VDTVRA, 1, 50))
                               FROM WEBRECLAMOS.SASMT30 X
                              WHERE     X.CTVRA = 8
                                    AND X.CDTVRA = A.CESLCTD
                                    AND ROWNUM = 1)
                               ESLCTD                      --34 ESTADO_RECLAMO
                                     ,
                            A.FRSPSTA FRSPSTA                             --35
                                             ,
                            SUBSTR (
                               REPLACE (REPLACE (A.SRSLTDO, CHR (10), ' '),
                                        CHR (13),
                                        ' '),
                               1,
                               3800)
                               SRSLTDO                  --36 DETALLE_RESPUESTA
                                      ,
                            (SELECT SUBSTR (X.NOFCNA, 1, 100)
                               FROM WEBRECLAMOS.SASMT10 X
                              WHERE X.COFCNA = A.CORGSTRO)
                               ORGSTRO                                    --37
                                      ,
                            SUBSTR (A.RGSTN, 1, 200) NEJCTVO              --38
                       FROM WEBRECLAMOS.SASSL00 A,
                            WEBRECLAMOS.SASSL03 B,
                            WEBRECLAMOS.SASSL03 C
                      WHERE (TO_CHAR (A.FRCPCN, 'MMYYYY') = as_MES || as_ANIO
                             OR TO_CHAR (A.FRSPSTA, 'MMYYYY') =
                                   as_MES || as_ANIO
                             OR A.CESLCTD IN (1, 2) -- 1: ESTADO EN TRAMITE  / 2: ESTADO EN TRAMITE DOCUMENTARIO
                                                   )
                            AND TO_CHAR (A.FRCPCN, 'YYYYMM') <=
                                   as_ANIO || as_MES
                            AND ( (A.CPRCSO = 1 AND A.CSPRCSO = 1)
                                 OR (A.CPRCSO = 3))
                            AND (A.CGSTN <> '3' OR A.CGSTN IS NULL)
                            AND A.CSLCTD = B.CSLCTD
                            AND A.CPRCSO = B.CPRCSO
                            AND A.CSPRCSO = B.CSPRCSO
                            AND A.CSLCTD = C.CSLCTD
                            AND A.CPRCSO = C.CPRCSO
                            AND A.CSPRCSO = C.CSPRCSO
                            AND B.CTCNSMDR = 1
                            AND C.CTCNSMDR = 2)
         SELECT *
           FROM DataReclamos;
   BEGIN
      IF TO_NUMBER (as_MES) > 12 OR TO_NUMBER (as_ANIO) < 1000
      THEN
         RAISE Error_Periodo;
      END IF;

      DELETE cubos.mp_crm_reclamos@bi
       WHERE anio_mes_operacion = TO_NUMBER (as_ANIO || as_MES);

      FOR a IN c_DataReclamos
      LOOP
         INSERT INTO cubos.mp_crm_reclamos@bi (anio_mes_operacion,
                                               cod_cia,                    --2
                                               CSLCTD,
                                               CCRGSTRO,
                                               FRCPCN,
                                               TRCLMO,
                                               VRCLMO,
                                               TVRCLMO,                    --8
                                               TDCMNTOCNTTE,
                                               NDCMNTOCNTTE,
                                               SCCMRCL,
                                               NPLZA,                     --12
                                               NSNSTRO,
                                               REMPRSA,
                                               TUSRO,
                                               TDCMNTORMNTE,
                                               NDCMNTORMNTE,              --17
                                               NMBRERMTE,
                                               PRNTSCORMNTE,
                                               DRCCN,
                                               DPRTMNTO,                  --21
                                               PRVNCA,
                                               DSTRTO,
                                               TLFNORMNTE,
                                               CLLRRMNTE,
                                               CELCTRNCORMNTE,            --26
                                               ORGNRDRA,
                                               ARGNRDRA,
                                               PRDCTO,
                                               SRVCO,
                                               MTVO,
                                               DMTVO,                     --32
                                               ROCRRNCA,
                                               ESLCTD,
                                               FRSPSTA,
                                               SRSLTDO,                   --36
                                               ORGSTRO,
                                               NEJCTVO)
              VALUES (a.anio_mes_operacion,
                      a.cod_cia,                                           --2
                      a.CSLCTD,
                      a.CCRGSTRO,
                      a.FRCPCN,
                      a.TRCLMO,
                      a.VRCLMO,
                      a.TVRCLMO,                                           --8
                      a.TDCMNTOCNTTE,
                      a.NDCMNTOCNTTE,
                      a.SCCMRCL,
                      a.NPLZA,                                            --12
                      a.NSNSTRO,
                      a.REMPRSA,
                      a.TUSRO,
                      a.TDCMNTORMNTE,
                      a.NDCMNTORMNTE,                                     --17
                      a.NMBRERMTE,
                      a.PRNTSCORMNTE,
                      a.DRCCN,
                      a.DPRTMNTO,                                         --21
                      a.PRVNCA,
                      a.DSTRTO,
                      a.TLFNORMNTE,
                      a.CLLRRMNTE,
                      a.CELCTRNCORMNTE,                                   --26
                      a.ORGNRDRA,
                      a.ARGNRDRA,
                      a.PRDCTO,
                      a.SRVCO,
                      a.MTVO,
                      a.DMTVO,                                            --32
                      a.ROCRRNCA,
                      a.ESLCTD,
                      a.FRSPSTA,
                      a.SRSLTDO,                                          --36
                      a.ORGSTRO,
                      a.NEJCTVO);
      END LOOP;

      COMMIT;
      an_Retorno := 1;
   --     EXCEPTION
   --        WHEN Error_Periodo THEN
   --            ROLLBACK;
   --            an_Retorno :=-1;
   --            as_Mensaje :='Perido no valido';
   --        WHEN OTHERS THEN
   --            ROLLBACK;
   --            an_Retorno :=-1;
   --            as_Mensaje  := SQLERRM;
   END GUARDAR_RECLAMO_BI;



   --=============================================================================
   --PROPOSITO: REGISTRAR SOLICITUD DE PIVOTAL
   --AUTOR: RDIAZ                                                 FECHA: 06/10/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_NRO_SERVICIO                  -> NRO DE SERVICIO
   --    p_NRO_ASISTENCIA                -> NRO DE ASISTENCIA
   --    p_FEC_LLAMADA                   -> FECHA DE LLAMADA
   --    p_HORA_LLAMADA                  -> HOA DE LLAMADA
   --    p_NUM_POLIZA_PIV                -> NUMERO DE POLIZA
   --    p_NUM_SINI_PIV                  -> NUMERO DE SINIESTRO
   --    p_FEC_SINI                      -> FECHA DE SINI
   --    p_DIR_DESTINO                   -> direccion de destino
   --    p_TXT_CATEGORIA                 -> CATEGORIA
   --    p_TXT_ASUNTO                    -> ASUNTO
   --    p_TXT_TEMA                      -> TEMA
   --    p_TXT_ESTADO_ASIST              -> estado asistencia
   --    p_TXT_TELEFONO                  -> TElefno
   --    p_TXT_EMAIL                     -> Email
   --    p_TXT_RELATO                    -> RELATO
   --    p_TIP_DOCUM_CL                  -> tipo doc cliente
   --    p_COD_DOCUM_CLI                 -> codigodoc doc docum
   --   p_NOM_CONTRATANTE                -> contratante nombre
   --   o_RESULTADO                      -> resultado
   --   o_MENSAJE                        -> MensajeError
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --registrar solicitud
   --==============================================
   PROCEDURE GUARDAR_SOLICITUD_PIVOTAL (p_NRO_SERVICIO       IN     VARCHAR2,
                                        p_NRO_ASISTENCIA     IN     VARCHAR2,
                                        p_FEC_LLAMADA        IN     DATE,
                                        p_HORA_LLAMADA       IN     VARCHAR2,
                                        p_NUM_POLIZA_PIV     IN     VARCHAR2,
                                        p_NUM_SINI_PIV       IN     VARCHAR2,
                                        p_FEC_SINI           IN     DATE,
                                        p_DIR_DESTINO        IN     VARCHAR2,
                                        p_TXT_CATEGORIA      IN     VARCHAR2,
                                        p_TXT_ASUNTO         IN     VARCHAR2,
                                        p_TXT_TEMA           IN     VARCHAR2,
                                        p_TXT_ESTADO_ASIST   IN     VARCHAR2,
                                        p_TXT_TELEFONO       IN     VARCHAR2,
                                        p_TXT_EMAIL          IN     VARCHAR2,
                                        p_TXT_RELATO         IN     VARCHAR2,
                                        p_TIP_DOCUM_CLI      IN     VARCHAR2,
                                        p_COD_DOCUM_CLI      IN     VARCHAR2,
                                        p_NOM_CONTRATANTE    IN     VARCHAR2,
                                        o_RESULTADO             OUT NUMBER,
                                        o_MENSAJE               OUT VARCHAR2)
   IS
      v_proceso        VARCHAR2 (100 CHAR);
      v_configcate     VARCHAR2 (10 CHAR);

      v_subproceso     VARCHAR2 (100 CHAR);
      v_respuesta      VARCHAR2 (100 CHAR);
      v_configasun     VARCHAR2 (10 CHAR);

      v_tiporeq        VARCHAR2 (100 CHAR);

      v_msjerror       VARCHAR2 (500 CHAR);

      v_codcia         NUMBER;
      v_anio           NUMBER;
      v_codramo        NUMBER;
      v_codprod        NUMBER;
      v_usuario        VARCHAR2 (20 CHAR) := 'WEBMASTER';
      v_nroslctud      NUMBER;
      v_corslctud      NUMBER;
      v_correo         VARCHAR2 (500 CHAR);
      v_flag           NUMBER := 0;
      v_nombre         VARCHAR2 (100);
      v_apellidop      VARCHAR2 (100) := '';
      v_apellidom      VARCHAR2 (100) := '';
      v_rsocial        VARCHAR2 (200);
      v_departamento   NUMBER := NULL;
      v_provincia      NUMBER := NULL;
      v_distrito       NUMBER := NULL;
      v_relacion       NUMBER := 0;
      v_plainRequest   VARCHAR2 (20000);

      PRAGMA AUTONOMOUS_TRANSACTION;
   BEGIN
      o_RESULTADO := 0;

      PKG_INT_PIVOTAL.
      INSERTA_LOG (
         (   '[INICIO] Proceso carga PIVOTAL | NRO_SERVICIO = '
          || p_NRO_SERVICIO
          || ' | NRO_ASISTENCIA = '
          || p_NRO_ASISTENCIA),
         'PKG_SAS01.PSASSL18',
         'PIVOTAL',
         v_usuario);

      BEGIN
         SELECT CDTVRA, VADTVRA
           INTO v_configcate, v_proceso
           FROM WEBRECLAMOS.SASMT30
          WHERE     CTVRA = 38
                AND UPPER (VDTVRA) = UPPER (p_TXT_CATEGORIA)
                AND ERGSTRO = 'A';
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            PKG_INT_PIVOTAL.
            INSERTA_LOG (
                  '[FIN] Proceso carga PIVOTAL '
               || p_NRO_SERVICIO
               || '/'
               || p_NRO_ASISTENCIA
               || ' | CATEGORIA NO CONFIG.',
               'PKG_SAS01.PSASSL18',
               'PIVOTAL',
               v_usuario);
            RETURN; -- Si no se encuentra configurada la categoria entonces no sigue procesando
      END;

      BEGIN
         SELECT CDTVRA, V2DTVRA, V3DTVRA
           INTO v_configasun, v_subproceso, v_respuesta
           FROM WEBRECLAMOS.SASMT30
          WHERE     CTVRA = 39
                AND UPPER (VDTVRA) = UPPER (p_TXT_ASUNTO)
                AND VADTVRA = v_configcate
                AND ERGSTRO = 'A';
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            PKG_INT_PIVOTAL.
            INSERTA_LOG (
                  '[FIN] Proceso carga PIVOTAL '
               || p_NRO_SERVICIO
               || '/'
               || p_NRO_ASISTENCIA
               || ' | ASUNTO NO CONFIG.',
               'PKG_SAS01.PSASSL18',
               'PIVOTAL',
               v_usuario);
            RETURN; -- Si no se encuentra configurado el asunto entonces no sigue procesando
      END;



      BEGIN
         SELECT V2DTVRA
           INTO v_tiporeq
           FROM WEBRECLAMOS.SASMT30
          WHERE     CTVRA = 40
                AND UPPER (VDTVRA) = UPPER (p_TXT_TEMA)
                AND VADTVRA = v_configasun
                AND ERGSTRO = 'A';

         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[0-OK] ('
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ') BUSCANDO REQ:'
            || v_configasun
            || ' | '
            || p_TXT_TEMA
            || ' | '
            || v_tiporeq,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            BEGIN
               SELECT V2DTVRA
                 INTO v_tiporeq
                 FROM WEBRECLAMOS.SASMT30
                WHERE     CTVRA = 40
                      AND VDTVRA = '*'
                      AND VADTVRA = v_configasun
                      AND ERGSTRO = 'A';

               PKG_INT_PIVOTAL.
               INSERTA_LOG (
                     '[0-OK] ('
                  || p_NRO_SERVICIO
                  || '/'
                  || p_NRO_ASISTENCIA
                  || ') BUSCANDO REQ:'
                  || v_configasun
                  || ' | '
                  || p_TXT_TEMA
                  || ' | '
                  || v_tiporeq,
                  'PKG_SAS01.PSASSL18',
                  'PIVOTAL',
                  v_usuario);
            EXCEPTION
               WHEN NO_DATA_FOUND
               THEN
                  PKG_INT_PIVOTAL.
                  INSERTA_LOG (
                        '[FIN] Proceso carga PIVOTAL '
                     || p_NRO_SERVICIO
                     || '/'
                     || p_NRO_ASISTENCIA
                     || ' | TEMA NO CONFIG.',
                     'PKG_SAS01.PSASSL18',
                     'PIVOTAL',
                     v_usuario);
                  RETURN; -- Si no se encuentra configurado el tema entonces no sigue procesando
            END;
      END;


      --Calculando cia
      IF p_NUM_POLIZA_PIV IS NULL
      THEN
         v_codcia := 1;
         v_codramo := 999;
         v_relacion := 2;
      ELSE
         v_relacion := 1;

         BEGIN
            SELECT COD_CIA, COD_RAMO
              INTO v_codcia, v_codramo
              FROM tron2000.a2000030
             WHERE NUM_POLIZA = p_NUM_POLIZA_PIV AND ROWNUM = 1;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               o_RESULTADO := -1;
               o_MENSAJE := 'NO SE PUDO ENCONTRAR POLIZA';
               PKG_INT_PIVOTAL.
               INSERTA_LOG (
                  (   '[FIN-ERR] Proceso carga PIVOTAL '
                   || p_NRO_SERVICIO
                   || '/'
                   || p_NRO_ASISTENCIA
                   || ' | '
                   || o_MENSAJE),
                  'PKG_SAS01.PSASSL18',
                  'PIVOTAL',
                  v_usuario);
               RETURN;
         END;
      END IF;

      BEGIN
         SELECT TRIM (NOM_TERCERO)
                || DECODE (NVL (NOM2_TERCERO, ''),
                           '', '',
                           ' ' || TRIM (NOM2_TERCERO)),
                TRIM (APE1_TERCERO),
                TRIM (APE2_TERCERO)
           INTO v_nombre, v_apellidop, v_apellidom
           FROM TRON2000.A1001399
          WHERE     TIP_DOCUM = p_TIP_DOCUM_CLI
                AND COD_DOCUM = p_COD_DOCUM_CLI
                AND ROWNUM = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            NULL;
      END;

      BEGIN
         SELECT CASE
                   WHEN COD_ESTADO_ETIQUETA IS NULL THEN COD_ESTADO_ETIQUETA
                   ELSE COD_ESTADO
                END,
                CASE
                   WHEN COD_ESTADO_ETIQUETA IS NULL THEN COD_PROV_ETIQUETA
                   ELSE COD_PROV
                END,
                CASE
                   WHEN COD_ESTADO_ETIQUETA IS NULL
                   THEN
                      COD_LOCALIDAD_ETIQUETA
                   ELSE
                      COD_LOCALIDAD
                END
           INTO v_departamento, v_provincia, v_distrito
           FROM TRON2000.A1001331
          WHERE     TIP_DOCUM = p_TIP_DOCUM_CLI
                AND COD_DOCUM = p_COD_DOCUM_CLI
                AND ROWNUM = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            NULL;
      END;

      --Calculando PRoducto
      BEGIN
         SELECT CPRDCTO
           INTO v_codprod
           FROM WEBRECLAMOS.SASMT16
          WHERE     CCMPNA IN (SELECT CCMPNA
                                 FROM WEBRECLAMOS.SASMT12
                                WHERE CCRG = v_codcia AND ERGSTRO = 'A')
                AND CRMO = v_codramo
                AND ERGSTRO = 'A'
                AND ROWNUM = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            o_RESULTADO := -1;
            o_MENSAJE := 'NO SE PUDO ENCONTRAR CODIGO DE PRODUCTO';
            PKG_INT_PIVOTAL.
            INSERTA_LOG (
               (   '[FIN-ERR] Proceso carga PIVOTAL '
                || p_NRO_SERVICIO
                || '/'
                || p_NRO_ASISTENCIA
                || ' | '
                || o_MENSAJE),
               'PKG_SAS01.PSASSL18',
               'PIVOTAL',
               v_usuario);
            RETURN;
      END;

      --Calculando anio
      SELECT TO_NUMBER (TO_CHAR (NVL (p_FEC_LLAMADA, SYSDATE), 'YYYY'))
        INTO v_anio
        FROM DUAL;


      WEBRECLAMOS.PKG_SAS01.PSASSL00 (TO_NUMBER (v_proceso), -- CODIGO PROCESO
                                      TO_NUMBER (v_subproceso), -- CODIGO SUB PROCESO
                                      0,            -- CODIGO TIPO SUB PROCESO
                                      p_FEC_LLAMADA,        -- FECHA RECEPCION
                                      0,                 -- CODITO VIA RECLAMO
                                      0,            -- CODIGO TIPO VIA RECLAMO
                                      v_codcia,    -- CODIGO COMPANIA REGISTRO
                                      1001,         -- CODIGO OFICINA REGISTRO
                                      v_anio,                 -- ANIO REGISTRO
                                      NULL,            -- CORRELATIVO REGISTRO
                                      NULL,      -- CODIGO COMPANIA GENERADORA
                                      0,          -- CODIGO OFICINA GENERADORA
                                      0,                        -- CODIGO AREA
                                      0,           -- CODIGO UNIDAD GENERADORA
                                      v_codprod,            -- CODIGO PRODUCTO
                                      NULL,                -- DETALLE PRODUCTO
                                      0,                    -- CODIGO SERVICIO
                                      NULL,                -- DETALLE SERVICIO
                                      0,                      -- CODIGO MOTIVO
                                      NULL,                  -- DETALLE MOTIVO
                                      0,               -- CODIGO TIPO REVISION
                                      0,                 -- CODIGO UNIDAD SOAT
                                      0,                   -- CODIGO TIPO SOAT
                                      0,       -- CODIGO CAUSA ESPECIFICA SOAT
                                      NULL,   -- DETALLE CAUSA ESPECIFICA SOAT
                                      p_TXT_RELATO, -- RELATO DE LA OCURRENCIA
                                      NULL,       -- RELATO DE LA OCURRENCIA 2
                                      NULL,          -- RESPONSABLE DE GESTION
                                      p_NOM_CONTRATANTE,         -- ATENCION A
                                      NULL,            -- FECHA RECEPCION AREA
                                      NULL,      -- FECHA TRAMITE DOCUMENTARIO
                                      NULL, -- TIPO ENVIO (COURRIER, NOTARIO, OTROS)
                                      NULL,                  -- NUMERO DE GUIA
                                      NULL,                 -- FECHA RESPUESTA
                                      v_respuesta, -- REMISION DE RESPUESTA (DOMICILIO, CORREO ELECTRONICO)
                                      NULL,           -- SUSTENTO DE RESULTADO
                                      0,                    -- MOTIVO BITACORA
                                      NULL,                -- DETALLE BITACORA
                                      NULL,                 -- FECHA OPERACION
                                      NULL,               -- USUARIO OPERACION
                                      0,                       -- PLAZO LIMITE
                                      NULL,    -- TIPO DOCUMENTO GUBERNAMENTAL
                                      NULL,  -- NUMERO DOCUMENTO GUBERNAMENTAL
                                      NULL,               -- NUMERO EXPEDIENTE
                                      NULL,                      -- REFERENCIA
                                      NULL,     -- FLAG TRANSFERENCIA CONSULTA
                                      NULL,                      -- CODIGO EPS
                                      'A',                  -- ESTADO REGISTRO
                                      NULL,           -- FECHA ESTADO REGISTRO
                                      v_usuario,           -- USUARIO CREACION
                                      SYSDATE,               -- FECHA CREACION
                                      NULL,            -- USUARIO MODIFICACION
                                      NULL,              -- FECHA MODIFICACION
                                      NULL,  -- CORRELATIVO REGISTRO SOLICITUD
                                      NULL,      -- CODIGO BLOQUE TABCONTAINER
                                      1, -- CODIGO ESTADO SOLICITUD ( 1= TRAMITE )
                                      NULL,     -- FLAG ENVIO HOJA RECLAMACION
                                      NULL,                   -- FECHA SUCEDIO
                                      NULL,                -- CODIGO PROVEEDOR
                                      NULL,           -- DESCRIPCION PROVEEDOR
                                      NULL,         -- TIPO DOCUMENTO CONTADOR
                                      NULL,               -- NRO DOC. CONTADOR
                                      NULL,            -- Tipo doc. reclamante
                                      NULL,             -- Nro doc. reclamante
                                      p_NUM_POLIZA_PIV,       -- Nro de Poliza
                                      p_NOM_CONTRATANTE,        -- Adquiriente
                                      NULL,    -- Numero de boleta y/o factura
                                      NULL, -- Numero de proforma y/o ccontrato
                                      NULL,               -- Nro hoja respaldo
                                      NULL, -- Fecha de numero de hoja de respaldo
                                      NULL,           -- Pedido del consumidor
                                      NULL,          -- Tipo moneda del pedido
                                      NULL,                -- Monto del Pedido
                                      NULL,                -- Nombre fallecido
                                      NULL,          -- fecha de fallecimineto
                                      NULL,             -- referencia remision
                                      NULL,                         -- cdgocnl
                                      NULL,                   -- refr_envio_hr
                                      NULL,         -- PROCEDENCIA DEL RECLAMO
                                      NULL,             -- PLAZO DE AMPLIACION
                                      NULL, -- FECHA EN LA QUE SE NOTIFICA LA AMPLIACION DEL RECLAMO
                                      v_nroslctud,       -- OUT: Nro Solicitud
                                      v_corslctud,      -- OUT: Corr Solicitud
                                      v_correo, -- OUT Correo de unidad del producto + correo administrador
                                      v_msjerror -- OUT: Mensaje Error de Procso
                                                );

      IF v_nroslctud = -1 AND v_corslctud = -1
      THEN
         o_RESULTADO := -1;
         o_MENSAJE := 'ERROR AL EJECUTAR GUARDADO DE SOLICITUD.';
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[FIN-ERR] Proceso carga PIVOTAL '
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ' | '
            || o_MENSAJE
            || ' => '
            || v_msjerror,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[FIN-ERR] Proceso carga PIVOTAL '
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ' | Guardando Solicitud : '
            || v_proceso
            || ','
            || v_subproceso
            || ','
            || '0,'
            || p_FEC_LLAMADA
            || ','
            || '0,'
            || '0,'
            || v_codcia
            || ','
            || '1001,'
            || v_anio
            || ','
            || 'NULL,'
            || 'NULL,'
            || '0,'
            || '0,'
            || '0,'
            || v_codprod
            || ','
            || 'NULL,'
            || '0,'
            || 'NULL,'
            || '0,'
            || 'NULL,'
            || '0,'
            || '0,'
            || '0,'
            || '0,'
            || 'NULL,'
            || p_TXT_RELATO
            || ','
            || 'NULL,'
            || 'NULL,'
            || p_NOM_CONTRATANTE
            || ','
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || v_respuesta
            || ','
            || 'NULL,'
            || '0,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || '0,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || '''A'','
            || 'NULL,'
            || v_usuario
            || ','
            || 'sysdate,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || '1,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || p_NUM_POLIZA_PIV
            || ','
            || p_NOM_CONTRATANTE
            || ','
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || 'NULL,'
            || v_nroslctud
            || ','
            || v_corslctud
            || ','
            || v_correo
            || ','
            || v_msjerror,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
         RETURN;
      ELSE
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[1-OK] ('
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ') SOLICITUD GENERADA = '
            || v_nroslctud
            || ' | '
            || v_corslctud,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
      END IF;

      -- Actualizando
      UPDATE WEBRECLAMOS.SASSL00
         SET NRO_SERVICIO = p_NRO_SERVICIO,
             NRO_ASISTENCIA = p_NRO_ASISTENCIA,
             ORIGEN = 'PIVOTAL',
             UMDFCCN = v_usuario,
             FMDFCCN = SYSDATE
       WHERE cslctd = v_nroslctud AND crgstro = v_corslctud;


      IF TRIM (p_TIP_DOCUM_CLI) = 'RUC'
      THEN
         v_rsocial := SUBSTR (p_NOM_CONTRATANTE, 1, 200);
         v_nombre := '';
      ELSE
         v_rsocial := '';
         v_nombre := SUBSTR (p_NOM_CONTRATANTE, 1, 100);
      END IF;

      WEBRECLAMOS.PKG_SAS01.PSASSL04 (TO_NUMBER (v_proceso),
                                      TO_NUMBER (v_subproceso),
                                      v_nroslctud,
                                      p_TIP_DOCUM_CLI,
                                      p_COD_DOCUM_CLI,
                                      1,               --CONSUMIDOR RECLAMANTE
                                      v_nombre,
                                      NULL,
                                      v_rsocial,
                                      v_apellidop,                  -- ape pat
                                      v_apellidom,                  -- ape mat
                                      v_departamento,                -- depart
                                      v_provincia,                  -- provinc
                                      v_distrito,                  -- distrito
                                      NULL,                         -- urbaniz
                                      p_DIR_DESTINO,              -- direccion
                                      p_TXT_EMAIL,        -- correo electroico
                                      SUBSTR (p_TXT_TELEFONO, 1, 20), -- telefono
                                      NULL,                         -- celular
                                      NULL,              -- SEGMENTO COMERCIAL
                                      p_NUM_POLIZA_PIV,    -- numero de poliza
                                      p_NUM_SINI_PIV,   -- numero de siniestro
                                      NULL,                 -- Codigo Afiliado
                                      NULL,                            -- Sexo
                                      NULL,                -- fecha nacimiento
                                      NULL,                      -- parentesco
                                      'A',                  -- estado registro
                                      SYSDATE,               -- fecha registro
                                      v_usuario,                    -- usuario
                                      NULL,                 -- usuario modific
                                      NULL,              -- fecha modificacion
                                      NULL,       -- Codigo Parentezco titular
                                      NULL,                   -- representante
                                      NULL,             -- Codigo tipo usuario
                                      v_relacion,    -- Codgo relacion empresa
                                      NULL,          -- descripcion parentesco
                                      v_flag,                          -- flag
                                      v_msjerror,             -- mensaje error
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL);

      IF v_flag = -1
      THEN
         o_RESULTADO := -1;
         o_MENSAJE := 'ERROR AL EJECUTAR GUARDADO DE RECLAMANTE.';
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[FIN-ERR] Proceso carga PIVOTAL '
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ' | '
            || o_MENSAJE
            || ' => '
            || v_msjerror,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
         RETURN;
      ELSE
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[2-OK] ('
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ') RECLAMANTE GUARDADO',
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
      END IF;

      WEBRECLAMOS.PKG_SAS01.PSASSL04 (TO_NUMBER (v_proceso),
                                      TO_NUMBER (v_subproceso),
                                      v_nroslctud,
                                      p_TIP_DOCUM_CLI,
                                      p_COD_DOCUM_CLI,
                                      2,              --CONSUMIDOR CONTRATANTE
                                      v_nombre,
                                      NULL,
                                      v_rsocial,
                                      v_apellidop,                  -- ape pat
                                      v_apellidom,                  -- ape mat
                                      v_departamento,                -- depart
                                      v_provincia,                  -- provinc
                                      v_distrito,                  -- distrito
                                      NULL,                         -- urbaniz
                                      p_DIR_DESTINO,              -- direccion
                                      p_TXT_EMAIL,        -- correo electroico
                                      SUBSTR (p_TXT_TELEFONO, 1, 20), -- telefono
                                      NULL,                         -- celular
                                      NULL,              -- SEGMENTO COMERCIAL
                                      p_NUM_POLIZA_PIV,    -- numero de poliza
                                      p_NUM_SINI_PIV,   -- numero de siniestro
                                      NULL,                 -- Codigo Afiliado
                                      NULL,                            -- Sexo
                                      NULL,                -- fecha nacimiento
                                      NULL,                      -- parentesco
                                      'A',                  -- estado registro
                                      SYSDATE,               -- fecha registro
                                      v_usuario,                    -- usuario
                                      NULL,                 -- usuario modific
                                      NULL,              -- fecha modificacion
                                      NULL,       -- Codigo Parentezco titular
                                      NULL,                   -- representante
                                      NULL,             -- Codigo tipo usuario
                                      v_relacion,    -- Codgo relacion empresa
                                      NULL,          -- descripcion parentesco
                                      v_flag,                          -- flag
                                      v_msjerror,             -- mensaje error
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL,
                                      NULL);

      IF v_flag = -1
      THEN
         o_RESULTADO := -1;
         o_MENSAJE := 'ERROR AL EJECUTAR GUARDADO DE CONTRATANTE.';
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[FIN-ERR] Proceso carga PIVOTAL '
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ' | '
            || o_MENSAJE
            || ' => '
            || v_msjerror,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
         RETURN;
      ELSE
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[2-OK] ('
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ') CONTRATANTE GUARDADO',
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
      END IF;



      IF v_tiporeq IS NOT NULL
      THEN
         WEBRECLAMOS.PKG_SAS04.PSAS00 (TO_NUMBER (v_proceso),
                                       TO_NUMBER (v_subproceso),
                                       v_nroslctud,
                                       TO_NUMBER (v_tiporeq),
                                       p_TXT_TEMA,
                                       'A',
                                       SYSDATE,
                                       v_usuario,
                                       SYSDATE,
                                       NULL,
                                       NULL,
                                       v_flag,
                                       v_msjerror);

         IF v_flag = -1
         THEN
            o_RESULTADO := -1;
            o_MENSAJE := 'ERROR AL EJECUTAR GUARDADO DE REQUERIMIENTOS.';
            PKG_INT_PIVOTAL.
            INSERTA_LOG (
                  '[FIN-ERR] Proceso carga PIVOTAL '
               || p_NRO_SERVICIO
               || '/'
               || p_NRO_ASISTENCIA
               || ' | '
               || o_MENSAJE
               || ' => '
               || v_msjerror,
               'PKG_SAS01.PSASSL18',
               'PIVOTAL',
               v_usuario);
            RETURN;
         ELSE
            PKG_INT_PIVOTAL.
            INSERTA_LOG (
                  '[3-OK] ('
               || p_NRO_SERVICIO
               || '/'
               || p_NRO_ASISTENCIA
               || ') REQUERIMIENTO GUARDADO',
               'PKG_SAS01.PSASSL18',
               'PIVOTAL',
               v_usuario);
         END IF;
      END IF;

      PKG_INT_PIVOTAL.
      INSERTA_LOG (
            '[PRE-FIN] ANTES DE COMMIT '
         || p_NRO_SERVICIO
         || '/'
         || p_NRO_ASISTENCIA,
         'PKG_SAS01.PSASSL18',
         'PIVOTAL',
         v_usuario);

      COMMIT;       -- AQUI YA FINALIZO EL PROCESO, SOLO FALTA ENVIO DE CORREO

      PKG_INT_PIVOTAL.
      INSERTA_LOG (
            '[PRE-FIN] Envio Correo '
         || p_NRO_SERVICIO
         || '/'
         || p_NRO_ASISTENCIA,
         'PKG_SAS01.PSASSL18',
         'PIVOTAL',
         v_usuario);


      IF v_proceso = 6
      THEN
         PKG_INT_PIVOTAL.
         ENVIA_CORREO_RECLAMO (v_nroslctud,
                               'Requerimiento',
                               'PER',
                               (v_nroslctud || '_CartaRequerimiento'),
                               FALSE,
                               3,
                               'CONSUMIDOR');
      ELSIF v_proceso = 2
      THEN
         --PKG_INT_PIVOTAL.ENVIA_CORREO_RECLAMO(v_nroslctud, 'Consulta', 'PER',(v_nroslctud||'_ReclamoPersonal_MAPFRE'),true,v_proceso,'MAPFRE');
         PKG_INT_PIVOTAL.ENVIA_CORREO_RECLAMO (v_nroslctud,
                                               'Consulta',
                                               'PER',
                                               (v_nroslctud || '_Consulta'),
                                               FALSE,
                                               v_proceso,
                                               'CONSUMIDOR');
      END IF;


      PKG_INT_PIVOTAL.
      INSERTA_LOG (
            '[FIN] Proceso carga PIVOTAL '
         || p_NRO_SERVICIO
         || '/'
         || p_NRO_ASISTENCIA,
         'PKG_SAS01.PSASSL18',
         'PIVOTAL',
         v_usuario);
   EXCEPTION
      WHEN OTHERS
      THEN
         PKG_INT_PIVOTAL.
         INSERTA_LOG (
               '[FIN-ERR] Proceso carga PIVOTAL '
            || p_NRO_SERVICIO
            || '/'
            || p_NRO_ASISTENCIA
            || ' | ERROR='
            || SQLERRM,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            v_usuario);
   END;



   --=============================================================================
   --PROPOSITO: REGISTRAR SOLICITUD DE PIVOTAL
   --AUTOR: RDIAZ                                                 FECHA: 06/10/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_codigoSolicitud                  -> NRO DE SOLICITUD
   --    p_tipoReporte                     -> Tipo de Reorte: Consuta, Requerimiento
   --    p_tipUsuRecla                     -> Tipo de usuario Reclamo: USU, PER
   --    p_nombrePDF                       -> Nombre del PDF
   --    p_usuario                         ->  Usuario: true, false
   --    p_proceso                         -> Proceso
   --    p_destinatario                   -> destinatario MAPFRE, CONSUMIDOR
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --enviar correo solicitud
   --==============================================
   PROCEDURE ENVIA_CORREO_RECLAMO (p_codigoSolicitud    NUMBER,
                                   p_tipoReporte        VARCHAR2,
                                   p_tipUsuRecla        VARCHAR2,
                                   p_nombrePDF          VARCHAR2,
                                   p_usuario            BOOLEAN,
                                   p_proceso            NUMBER,
                                   p_destinatario       VARCHAR2)
   IS
      v_plainRequest      VARCHAR2 (20000);
      v_actionName        VARCHAR2 (1024); --SOAP Action ( in WCF, attribute [OperationContract(Action="ActionName")
      v_url               VARCHAR2 (1024);
      v_isAsynchronous    BOOLEAN := FALSE;
      v_proxy             VARCHAR2 (1024) := NULL;
      v_transferTimeout   NUMBER := NULL;
      v_charset           VARCHAR2 (1024) := 'AL32UTF8';               --utf-8
      v_request           UTL_HTTP.REQ;
      v_response          UTL_HTTP.RESP;
      v_plainResponse     VARCHAR2 (32767);
      v_url_service       VARCHAR2 (150);
      v_usuario_char      VARCHAR2 (10);
   BEGIN
      IF p_usuario
      THEN
         v_usuario_char := 'true';
      ELSE
         v_usuario_char := 'false';
      END IF;


      v_plainRequest :=
         '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
                           <soapenv:Header/>
                           <soapenv:Body>
                              <tem:fr_EnviarCorreo>
                                 <tem:codigoSolicitud>'
         || p_codigoSolicitud
         || '</tem:codigoSolicitud>
                                 <tem:tipoReporte>'
         || p_tipoReporte
         || '</tem:tipoReporte>
                                 <tem:tipUsuRecla>'
         || p_tipUsuRecla
         || '</tem:tipUsuRecla>
                                 <tem:nombrePDF>'
         || p_nombrePDF
         || '</tem:nombrePDF>
                                 <tem:usuario>'
         || v_usuario_char
         || '</tem:usuario>
                                 <tem:proceso>'
         || p_proceso
         || '</tem:proceso>
                                 <tem:destinatario>'
         || p_destinatario
         || '</tem:destinatario>
                              </tem:fr_EnviarCorreo>
                           </soapenv:Body>
                        </soapenv:Envelope>';

      --
      v_actionName := 'http://tempuri.org/IEnvioCorreo/fr_EnviarCorreo';

      --

      BEGIN
         SELECT VADTVRA
           INTO v_url_service
           FROM WEBRECLAMOS.SASMT30
          WHERE CTVRA = 41 AND CDTVRA = 'URL1' AND ERGSTRO = 'A';
      EXCEPTION
         WHEN OTHERS
         THEN
            v_url_service := '';
      END;

      --
      v_url := UTL_URL.ESCAPE (url => v_url_service);

      IF v_TransferTimeout > 0
      THEN
         UTL_HTTP.SET_TRANSFER_TIMEOUT (timeout => v_transferTimeout);
      END IF;

      --
      IF v_proxy IS NOT NULL
      THEN
         UTL_HTTP.SET_PROXY (proxy => v_proxy);
      END IF;

      --
      UTL_HTTP.SET_RESPONSE_ERROR_CHECK (enable => TRUE);
      UTL_HTTP.SET_DETAILED_EXCP_SUPPORT (enable => TRUE);

      v_request :=
         UTL_HTTP.
         BEGIN_REQUEST (url            => v_url,
                        method         => 'POST',
                        http_version   => 'HTTP/1.1');
      --
      UTL_HTTP.
      SET_HEADER (r => v_request, name => 'Content-Type', VALUE => 'text/xml');
      UTL_HTTP.
      SET_HEADER (r       => v_request,
                  name    => 'Content-Length',
                  VALUE   => LENGTH (v_plainRequest));
      UTL_HTTP.
      SET_HEADER (r => v_request, name => 'SOAPAction', VALUE => v_actionName);
      UTL_HTTP.WRITE_TEXT (r => v_request, data => v_plainRequest);
      --
      v_response := UTL_HTTP.GET_RESPONSE (v_request);

      --
      IF v_isAsynchronous
      THEN
         UTL_HTTP.END_RESPONSE (v_response);
      END IF;

      --
      UTL_HTTP.READ_TEXT (v_response, v_plainResponse);
      UTL_HTTP.END_RESPONSE (v_response);
      --
      DBMS_OUTPUT.
      PUT_LINE ('Response from: ' || v_url || ' is ' || v_plainResponse);
   EXCEPTION
      WHEN OTHERS
      THEN
         SCTRMINERIA.PKG_LOG_ERROR.
         Insertar (
               '[ERR] Proceso Envio Mail PIVOTAL '
            || p_codigoSolicitud
            || '/'
            || p_tipoReporte
            || ' | ERROR MAIL='
            || SQLERRM,
            'PKG_SAS01.PSASSL18',
            'PIVOTAL',
            'WEBMASTER');
   END;

   --=============================================================================
   --PROPOSITO: INSERTAR LOG
   --AUTOR: RDIAZ                                                 FECHA: 30/11/17
   --------------------------------------------------------------------------------
   --DATOS RELEVANTES
   --    p_cDescripcio                -> Decripcion de Log
   --    p_cReferencia                -> Referencia
   --    p_cAplic                     -> Aplicacion
   --    p_cCodUsuario                -> Usuario
   --------------------------------------------------------------------------------
   --DESCRIPCION FUNCIONAL
   --Guardar Logs de proceso
   --==============================================
   PROCEDURE INSERTA_LOG (
      p_cDescripcion   IN SCTRMINERIA.Log_Error.descripcion%TYPE,
      p_cReferencia    IN SCTRMINERIA.Log_Error.referencia%TYPE,
      p_cAplic         IN SCTRMINERIA.Log_Error.cod_aplic%TYPE,
      p_cCodUsuario    IN SCTRMINERIA.Log_Error.cod_usuario_creador%TYPE)
   IS
      PRAGMA AUTONOMOUS_TRANSACTION;
   --nCorrelativo     NUMBER;

   BEGIN
      --SELECT SCTRMINERIA.SQ_Log_Error.NEXTVAL
      --INTO nCorrelativo
      --FROM Dual;
      SCTRMINERIA.PKG_LOG_ERROR.Insertar (p_cDescripcion,
                                          p_cReferencia,
                                          p_cAplic,
                                          p_cCodUsuario);
      --INSERT INTO SCTRMINERIA.Log_Error (Id_Error,Descripcion,Referencia,Cod_Aplic,Cod_Usuario_Creador,Fec_Creacion)
      --VALUES (nCorrelativo,p_cDescripcion, p_cReferencia, p_cAplic, p_cCodUsuario, SYSDATE);

      COMMIT;
   END;
END;
/