CREATE OR REPLACE PACKAGE REFERIDOS.PKT_pivote_referido_mpe

IS
   TYPE t_cursor IS REF CURSOR;
PROCEDURE SP_GUARDAR_REFERIDO_BI ();

END;
/
CREATE OR REPLACE PACKAGE BODY  REFERIDOS.PKT_pivote_referido_mpe
IS

PROCEDURE SP_GUARDAR_REFERIDO_BI (as_MES       IN     VARCHAR2,
                                 as_ANIO      IN     VARCHAR2,
                                 an_Retorno      OUT NUMBER,
                                 as_Mensaje      OUT VARCHAR2)
IS 
 Error_Periodo   EXCEPTION;

insert into MP_CRM_REFERIDOS(referidoid, tipo_documento,
codigo_documento, nombre, apellido, empresa, edad, telefono, correo, direccion,
cod_ubigeo, ubigeo, codigo_categoria, categoria,
codigo_producto, producto, codigo_procedencia, procedencia, codigo_usuario_reg,
usuario_registro, comentario, fecha_registro, codigo_usuario_asig,
usuario_asignado, flg_cita, flg_contacto, flg_venta,
flg_seguimiento, fecha_cita, fecha_contacto, fecha_nacimiento,
placa, campaign_source, campaign_name, campaign_medium, first_visit,
current_visit_started, times_visited, adicional, anio_mes_operacion)
select r.referidoid,p.multitablaidtipodocumento, 
p.nrodocumento,p.nombre,p.apellidopaterno, r.empresa, r.edad, p.telefono, p.email, p.direccion,
r.ubigeoid,u.nombre, r.categoriaproductoid, c.nombre, 
r.productoid, k.nombre,r.fuenteid, f.nombre, r.usuarioidregistra, 
p.nombre, r.comentario,r.fecharegistra, r.usuarioidasignado, 
p.nombre, r.respuesta_cita,r.respuesta_contacto, r.respuesta_venta, 
r.respuesta_seguimiento, r.fecha_contacto,r.fecha_cita, p.fecha_nacimiento,
r.placa_vehiculo, r.campaign_source,r.campaign_name, r.campaign_medium, r.first_visit, 
r.current_visit_started, r.times_visited, r.adicional, '202204' as anio_mes_operacion
from 	   NC_PE_BI.ODS_REF_REFERIDO r
inner join NC_PE_BI.ODS_REF_PERSONA p on r.personaid=p.personaid
inner join NC_PE_BI.ODS_REF_UBIGEO u on r.ubigeoid=u.ubigeoid
inner join NC_PE_BI.ODS_REF_CATEGORIA_PRODUCTO c on r.categoriaproductoid=c.categoriaproductoid
inner join NC_PE_BI.ODS_REF_PRODUCTO k on r.productoid=k.productoid
inner join NC_PE_BI.ODS_REF_FUENTE f on r.fuenteid=f.fuenteid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;
END SP_GUARDAR_REFERIDO_BI;
      COMMIT;

END;
/