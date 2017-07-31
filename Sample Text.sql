SELECT  L.LastName
			,L.FirstName
			,L.TempID
			,R.RegionName
			,L.LastUpdate ImportDate
			,L.[FileName]
			,E.LicenseName			
	FROM MSN_Code.[dbo].[CSSDocumentInsertLog] L
	LEFT OUTER JOIN MSN_Live.dbo.License_elements E on E.LicenseID = L.LicenseID
	LEFT OUTER JOIN MSN_LIve.dbo.Profile_Temp T on L.TempID = T.RecordID
	LEFT OUTER JOIN MSN_Live.dbo.Regions R ON R.RegionID = T.HomeRegion
	WHERE 1=1
	AND WasInsertedToCSS = 1
	AND LastUpdate >= '6/11/2014' -- This is the date the new doc import started.
	AND LastUpdate BETWEEN @From AND DATEADD(DAY,1,@To)
	AND T.Certification in (@Certification)
	--and LicenseID = 2938   -- I9
	--and LicenseID =  2931 -- E-Verify
	ORDER BY LastName,FirstName DESC


	--Sample changes by Sujit
	
	--Sample changes online


--these are some sample changes done online


--changes done on pc
