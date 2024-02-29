select *
from IVADB.dbo.Venta v 
WHERE FechaAplicacionRetencion != V.FechaComprobanteRetencion AND ConsecutivoCompania !=2


select *
from Comun.dbo.Venta v 


SELECT CodigoProveedor, NombreProveedor, NumeroRIF, Telefonos, 
Direccion, email, PorcentajeRetencionIva, TipoProveedor, NombreOperador, FechaUltimaModificacion, 
CodigoRetencionUsual, PorcentajeARI
FROM IVADB.dbo.proveedor where ConsecutivoCompania =9
ORDER BY NumeroRIF;


SELECT ConsecutivoCompania, CodigoProveedor, NombreProveedor, Contacto, NumeroRIF, NumeroNIT, Telefonos, Direccion, Fax, email, PorcentajeRetencionIva, TipoProveedor, CuentaContableCxP, CuentaContableGastos, NumeroDeLote, NombreOperador, FechaUltimaModificacion, CuentaIvaGastoCosto, CuentaContableRetencionISLR, TipoDePersona, CodigoRetencionUsual, NumeroRUC, CodigoContribuyente, fldTimeStamp, PorcentajeARI
FROM IVADB.dbo.proveedor
where CodigoProveedor='V298848976';

SELECT ConsecutivoCompania, CodigoProveedor, NombreProveedor, Contacto, NumeroRIF, NumeroNIT, Telefonos, Direccion, Fax, email, PorcentajeRetencionIva, TipoProveedor, CuentaContableCxP, CuentaContableGastos, NumeroDeLote, NombreOperador, FechaUltimaModificacion, CuentaIvaGastoCosto, CuentaContableRetencionISLR, TipoDePersona, CodigoRetencionUsual, NumeroRUC, CodigoContribuyente, fldTimeStamp, PorcentajeARI
FROM IVADB.dbo.proveedor
where NumeroRIF ='V121027433';


-- Sillaca
select CodigoProveedor, p.NumeroRIF, NombreProveedor 
from IVADB.dbo.proveedor p 
WHERE ConsecutivoCompania=6;


-- BEVAL
select CodigoProveedor, p.NumeroRIF, NombreProveedor 
from IVADB.dbo.proveedor p 
WHERE ConsecutivoCompania=4;


-- BEVAL
select CodigoProveedor, p.NumeroRIF, NombreProveedor 
from IVADB.dbo.proveedor p 
WHERE ConsecutivoCompania=4;


-- PRISMA
select CodigoProveedor, p.NumeroRIF, NombreProveedor 
from IVADB.dbo.proveedor p 
WHERE ConsecutivoCompania=9;


-- FEBECA
select CodigoProveedor, p.NumeroRIF, NombreProveedor 
from IVADB.dbo.proveedor p 
WHERE ConsecutivoCompania=8;