ALTER proc [dbo].[Licenses_Delete_ById]
				@Id int

as

/*

declare @Id int = 19;

execute dbo.Licenses_Delete_ById @Id

select * from  dbo.Licenses

*/

begin

DELETE FROM [dbo].[Licenses]
      WHERE Id = @Id

end 
