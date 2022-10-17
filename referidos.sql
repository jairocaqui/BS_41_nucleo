--insert into MP_CRM_REFERIDOS(referidoid, tipo_documento,
--codigo_documento, nombre, apellido, empresa, edad, telefono, correo, direccion,
--cod_ubigeo, ubigeo, codigo_categoria, categoria,
--codigo_producto, producto, codigo_procedencia, procedencia, codigo_usuario_reg,
--usuario_registro, comentario, fecha_registro, codigo_usuario_asig,
--usuario_asignado, flg_cita, flg_contacto, flg_venta,
--flg_seguimiento, fecha_cita, fecha_contacto, fecha_nacimiento,
--placa, campaign_source, campaign_name, campaign_medium, first_visit,
--current_visit_started, times_visited, adicional, anio_mes_operacion)
--select r.referidoid,p.multitablaidtipodocumento, 
--p.nrodocumento,p.nombre,p.apellidopaterno, r.empresa, r.edad, p.telefono, p.email, p.direccion,
---r.ubigeoid,u.nombre, r.categoriaproductoid, c.nombre, 
--r.productoid, k.nombre,r.fuenteid, f.nombre, r.usuarioidregistra, 
--p.nombre, r.comentario,r.fecharegistra, r.usuarioidasignado, 
--p.nombre, r.respuesta_cita,r.respuesta_contacto, r.respuesta_venta, 
--r.respuesta_seguimiento, r.fecha_contacto,r.fecha_cita, p.fecha_nacimiento,
--r.placa_vehiculo, r.campaign_source,r.campaign_name, r.campaign_medium, r.first_visit, 
--r.current_visit_started, r.times_visited, r.adicional, '202204' as anio_mes_operacion
from REFERIDOS.referido r
inner join REFERIDOS.persona p on r.personaid=p.personaid
inner join REFERIDOS.ubigeo u on r.ubigeoid=u.ubigeoid
inner join REFERIDOS.categoria_producto c on r.categoriaproductoid=c.categoriaproductoid
inner join REFERIDOS.producto k on r.productoid=k.productoid
inner join REFERIDOS.FUENTE f on r.fuenteid=f.fuenteid
where r.fecharegistra between to_date( 202204,'yyyymm') and last_day( to_date( 202204,'yyyymm'))
order by r.fecharegistra desc;