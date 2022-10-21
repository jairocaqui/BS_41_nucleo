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
r.ubigeoid, u.nombre, r.categoriaproductoid, c.nombre, 
r.productoid, k.nombre,r.fuenteid, f.nombre, r.usuarioidregistra, 
p.nombre, r.comentario,r.fecharegistra, r.usuarioidasignado, 
p.nombre, r.respuesta_cita,r.respuesta_contacto, r.respuesta_venta, 
r.respuesta_seguimiento, r.fecha_contacto,r.fecha_cita, p.fecha_nacimiento,
r.placa_vehiculo, r.campaign_source,r.campaign_name, r.campaign_medium, r.first_visit, 
r.current_visit_started, r.times_visited, r.adicional, '202204' as anio_mes_operacion
from REFERIDOS.referido r
inner join REFERIDOS.persona p on r.personaid=p.personaid
inner join REFERIDOS.ubigeo u on r.ubigeoid=u.ubigeoid
inner join REFERIDOS.categoria_producto c on r.categoriaproductoid=c.categoriaproductoid
inner join REFERIDOS.producto k on r.productoid=k.productoid
inner join REFERIDOS.FUENTE f on r.fuenteid=f.fuenteid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;


-------referido
insert into NC_PE_BI.ODS_REF_REFERIDO 
(
referidoid,  
empresa ,  edad, 
ubigeoid ,  categoriaproductoid,
productoid,  fuenteid,   usuarioidregistra,
comentario, fecharegistra, usuarioidasignado, 
respuesta_cita, respuesta_contacto, respuesta_venta, 
respuesta_seguimiento,  fecha_contacto, fecha_cita,
placa_vehiculo,  campaign_source, campaign_name,  campaign_medium,  first_visit, 
current_visit_started,  times_visited,  adicional
)
select
r.referidoid,  
r.empresa , r.edad, 
r.ubigeoid , r.categoriaproductoid,
r.productoid, r.fuenteid,  r.usuarioidregistra,
r.comentario,r.fecharegistra, r.usuarioidasignado, 
r.respuesta_cita,r.respuesta_contacto, r.respuesta_venta, 
r.respuesta_seguimiento, r.fecha_contacto,r.fecha_cita,
r.placa_vehiculo, r.campaign_source,r.campaign_name, r.campaign_medium, r.first_visit, 
r.current_visit_started, r.times_visited, r.adicional
--relacion

from REFERIDOS.referido r
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;

--------------------persona
insert into 
()
select  p.multitablaidtipodocumento, 
p.nrodocumento,p.nombre,p.apellidopaterno, p.telefono, p.email, p.direccion,
p.nombre,
p.fecha_nacimiento,
--relacion

from REFERIDOS.referido r
inner join REFERIDOS.persona p on r.personaid=p.personaid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;

---------------ubigeo
insert into NC_PE_BI.ODS_REF_PERSONA p 
()
select 
u.nombre
--
u.CODDIST
u.CODDPTO
u.CODPROV
u.FEC_CARGA
u.FECHAMODIFICA
u.FECHAREGISTRA
--relacion
u.ubigeoid
--
from REFERIDOS.referido r
inner join REFERIDOS.ubigeo u on r.ubigeoid=u.ubigeoid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;

---------------categoria_producto
insert into NC_PE_BI.ODS_REF_CATEGORIA_PRODUCTO c
()
select c.nombre, 
--relacion
c.categoriaproductoid, 
---
from REFERIDOS.referido r
inner join REFERIDOS.categoria_producto c on r.categoriaproductoid=c.categoriaproductoid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;


/*from 	   NC_PE_BI.ODS_REF_REFERIDO r
inner join NC_PE_BI.ODS_REF_PERSONA p on r.personaid=p.personaid
inner join NC_PE_BI.ODS_REF_UBIGEO u on r.ubigeoid=u.ubigeoid
inner join NC_PE_BI.ODS_REF_CATEGORIA_PRODUCTO c on r.categoriaproductoid=c.categoriaproductoid
inner join NC_PE_BI.ODS_REF_PRODUCTO k on r.productoid=k.productoid
inner join NC_PE_BI.ODS_REF_FUENTE f on r.fuenteid=f.fuenteid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;*/