Create proc Sp_Login
@Admin_id nvarchar(100),
@Password nvarchar(100),
@IsValid bit out 
as 
begin
Set @IsValid = (select count(1)from tbl_login where Admin_id = @Admin_id and Ad_Password = @Password )
end 