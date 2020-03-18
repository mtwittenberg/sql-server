ALTER PROCEDURE [dbo].[Nulls_to_zero]

AS
Begin

--Update tables with NULL values to 0, multiple tables and columns as stored procedure 
Update stg_1 set NewProductValue = 0 where Column_1 is null
Update stg_2 set NewProductValue = 0 where Column_1 is null
Update stg_3 set NewProductValue = 0 where Column_1 is null
Update stg_4 set NewProductValue = 0 where Column_1 is null
Update stg_5 set NewProductValue = 0 where Column_1 is null
Update stg_6 set NewProductValue = 0 where Column_1 is null
Update stg_7 set NewProductValue = 0 where Column_1 is null
Update stg_8 set NewProductValue = 0 where Column_1 is null
End
Begin
Update stg_1 set Inventory_Units = 0 where Column_2 is null
Update stg_2 set Inventory_Units = 0 where Column_2 is null
Update stg_3 set Inventory_Units = 0 where Column_2 is null
Update stg_4 set Inventory_Units = 0 where Column_2 is null
Update stg_5 set Inventory_Units = 0 where Column_2 is null
Update stg_6 set Inventory_Units = 0 where Column_2 is null
Update stg_7 set Inventory_Units = 0 where Column_2 is null
Update stg_8 set Inventory_Units = 0 where Column_2 is null
End