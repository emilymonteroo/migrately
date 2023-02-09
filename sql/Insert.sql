
ALTER proc [dbo].[Licenses_Insert]
				@LicenseStateId int
				,@LicenseNumber varchar(50)
				,@DateAdmitted date
				,@CreatedBy int
				,@IsActive bit
				,@Id int OUTPUT
as

/*

declare @Id int = 1;

declare @LicenseStateId int = 1
				,@LicenseNumber varchar(50) = 'peer review'
				,@DateAdmitted date = '2022-12-19'
				,@CreatedBy int = 1
				,@IsActive bit = 1

execute dbo.Licenses_Insert
				@LicenseStateId
				,@LicenseNumber
				,@DateAdmitted
				,@CreatedBy
				,@IsActive
				,@Id OUTPUT

select * from dbo.Licenses
WHERE Id = @Id

*/

begin

	INSERT INTO [dbo].[Licenses]
			   ([LicenseStateId]
			   ,[LicenseNumber]
				,DateAdmitted
			   ,[CreatedBy]
			   ,[IsActive])
		 VALUES
			   (@LicenseStateId 
					,@LicenseNumber 
					,@DateAdmitted
					,@CreatedBy 
					,@IsActive)
	
	SET @Id = SCOPE_IDENTITY()
end 
