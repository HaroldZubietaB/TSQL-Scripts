USE [msdb]
GO
EXEC msdb.dbo.sp_add_alert @name=N'Tamaño de TempDB MDF > 5GB', 
		@enabled=1, 
		@delay_between_responses=0, 
		@include_event_description_in=1, 
		@performance_condition=N'SQLServer:Databases|Data File(s) Size (KB)|tempdb|>|5242880', 
		@job_id=N'00000000-0000-0000-0000-000000000000'
GO
EXEC msdb.dbo.sp_add_notification @alert_name=N'Tamaño de TempDB MDF > 5GB', @operator_name=N'hzubieta', @notification_method = 1
GO
