create view [dbo].[S_INS_���ս��ɵ���] AS
select AREA.AREANAME,ARSYS.SYSTEMID AREA_SYSTEMID ,PC1.ITEMNAME,PSN.PERSONID
	from PAYINSUREAREA AREA
	left join (SELECT TOP 1 PERSONID FROM PSNACCOUNT WHERE ACCESSIONSTATE = 1) PSN ON 1=1
	left join PAYINSURESYSTEM ARSYS ON AREA.AREAID = ARSYS.AREAID
	left join PAYPAYROLLPUBCODEITEM PC1 ON PC1.ITEMID=ARSYS.PERSONPROPID AND PC1.CODEID = 'd54bac3f-c608-4292-907d-38edbaa698b5'

GO