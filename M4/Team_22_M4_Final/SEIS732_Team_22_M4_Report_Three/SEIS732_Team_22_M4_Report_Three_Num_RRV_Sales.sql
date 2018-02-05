select count(sales.RRV_Actual_Sales_Amount_in_Dollars) as 'Number of RRV Sales'

from [SEIS732_Team_22_Star_Schema].[dbo].[RRV_SALES] sales, [SEIS732_Team_22_Star_Schema].[dbo].[PURCHASE_DATE] date,
[SEIS732_Team_22_Star_Schema].[dbo].[PACKAGE] package

where sales.PDAT_Key = date.PDAT_Key and sales.PKG_Key = package.PKG_Key
	and date.PDAT_Year = 2012
	and date.PDAT_Month_Name = 'December'
	and package.PKG_Seat_Material = 'Stain-Guarded Cloth'
	and package.PKG_Bathroom = 'Three Quarter'