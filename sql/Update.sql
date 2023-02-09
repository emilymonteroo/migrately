
ALTER proc [dbo].[Licenses_Update]
			@LicenseStateId int
			,@LicenseNumber varchar(50)
			,@DateAdmitted date
			,@IsActive bit
			,@Id int 

as

/*

declare @Id int = 1;

declare @LicenseStateId int = 1
		,@LicenseNumber varchar(50) = '7CE2A2S'
		,@DateAdmitted date	= '1990-12-12'
		,@IsActive bit = 1
		

execute dbo.Licenses_Update
			@LicenseStateId
			,@LicenseNumber
			,@DateAdmitted
			,@IsActive
			,@Id

select * 
from dbo.Licenses
where Id = @Id

*/

begin

UPDATE [dbo].[Licenses]
   SET [LicenseStateId] = @LicenseStateId
      ,[LicenseNumber] = @LicenseNumber
      ,[DateAdmitted] = @DateAdmitted   
      ,[IsActive] = @IsActive
 WHERE @Id =  Id


 end
