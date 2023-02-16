
ALTER proc [dbo].[Licenses_QueryStateAndNumber]
			@PageIndex int
			,@PageSize int
			,@Query nvarchar(100)
			,@LicenseNumber nvarchar(100)

as

/*
declare @PageIndex int = 0
		,@PageSize int = 10
		,@Query nvarchar(100) = 'cal'
		,@LicenseNumber nvarchar(100) = '8'

execute dbo.[Licenses_QueryStateAndNumber] 
		@PageIndex 
                ,@PageSize 
		,@Query
		,@LicenseNumber


select * from dbo.licenses
*/

begin

   declare @offset int = @PageIndex * @PageSize


	SELECT l.Id
		,s.Id
		,s.Code
		,s.Name
		,l.LicenseNumber
		,l.DateAdmitted
		,l.CreatedBy
		,u.FirstName
		,u.LastName
		,l.DateCreated
		,l.IsActive
		,TotalCount = COUNT(1) OVER()
  FROM [dbo].[Licenses] as l inner join dbo.States as s
  on l.LicenseStateId = s.Id
  	inner join [dbo].[Users] as u
			ON l.CreatedBy = u.Id
			WHERE (l.LicenseNumber LIKE '%' + @LicenseNumber + '%') AND (s.Name LIKE '%' + @Query + '%')
  order by l.Id
	OFFSET @offSet Rows
	Fetch Next @PageSize Rows ONLY

end
