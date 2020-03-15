ALTER PROCEDURE [dbo].[Data_Cleansing]

AS
BEGIN

--Clean dataset by removing various special characters and spaces
Select replace(replace(replace(replace(replace(Column_1, '.', ''), '-', ''), ' ', ''), '/', ''), '\', '') as Column1_Cleaned, *
into temptable1
from sourcedata_table
End