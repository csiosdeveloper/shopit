/****** Object:  StoredProcedure [dbo].[srcprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[srcprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[srcprd]
GO
/****** Object:  StoredProcedure [dbo].[delbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delbrd]
GO
/****** Object:  StoredProcedure [dbo].[delord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delord]
GO
/****** Object:  StoredProcedure [dbo].[delorddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delorddet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delorddet]
GO
/****** Object:  StoredProcedure [dbo].[delprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprd]
GO
/****** Object:  StoredProcedure [dbo].[delprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprdpic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprdpic]
GO
/****** Object:  StoredProcedure [dbo].[delprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[delprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprf]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprf]
GO
/****** Object:  StoredProcedure [dbo].[delprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprfbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprfbrd]
GO
/****** Object:  StoredProcedure [dbo].[delprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprfprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delprfprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[delret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delret]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delret]
GO
/****** Object:  StoredProcedure [dbo].[delstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delstrlst]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delstrlst]
GO
/****** Object:  StoredProcedure [dbo].[delusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delusr]
GO
/****** Object:  StoredProcedure [dbo].[dispbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispbrd]
GO
/****** Object:  StoredProcedure [dbo].[dispord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispord]
GO
/****** Object:  StoredProcedure [dbo].[disporddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[disporddet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[disporddet]
GO
/****** Object:  StoredProcedure [dbo].[dispprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprd]
GO
/****** Object:  StoredProcedure [dbo].[dispprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprdpic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprdpic]
GO
/****** Object:  StoredProcedure [dbo].[dispprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[dispprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprf]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprf]
GO
/****** Object:  StoredProcedure [dbo].[dispprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprfbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprfbrd]
GO
/****** Object:  StoredProcedure [dbo].[dispprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprfprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispprfprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[dispret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispret]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispret]
GO
/****** Object:  StoredProcedure [dbo].[dispstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispstrlst]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispstrlst]
GO
/****** Object:  StoredProcedure [dbo].[dispusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dispusr]
GO
/****** Object:  StoredProcedure [dbo].[dsppndord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dsppndord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dsppndord]
GO
/****** Object:  StoredProcedure [dbo].[dspretord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dspretord]
GO
/****** Object:  StoredProcedure [dbo].[dspretprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dspretprd]
GO
/****** Object:  StoredProcedure [dbo].[dspretprd1]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretprd1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dspretprd1]
GO
/****** Object:  StoredProcedure [dbo].[dspsalmalusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspsalmalusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dspsalmalusr]
GO
/****** Object:  StoredProcedure [dbo].[dspusrord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspusrord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dspusrord]
GO
/****** Object:  StoredProcedure [dbo].[fndbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndbrd]
GO
/****** Object:  StoredProcedure [dbo].[fndord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndord]
GO
/****** Object:  StoredProcedure [dbo].[fndorddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndorddet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndorddet]
GO
/****** Object:  StoredProcedure [dbo].[fndprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprd]
GO
/****** Object:  StoredProcedure [dbo].[fndprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprdpic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprdpic]
GO
/****** Object:  StoredProcedure [dbo].[fndprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[fndprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprf]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprf]
GO
/****** Object:  StoredProcedure [dbo].[fndprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprfbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprfbrd]
GO
/****** Object:  StoredProcedure [dbo].[fndprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprfprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndprfprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[fndret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndret]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndret]
GO
/****** Object:  StoredProcedure [dbo].[fndstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndstrlst]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndstrlst]
GO
/****** Object:  StoredProcedure [dbo].[fndusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fndusr]
GO
/****** Object:  StoredProcedure [dbo].[insbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insbrd]
GO
/****** Object:  StoredProcedure [dbo].[insord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insord]
GO
/****** Object:  StoredProcedure [dbo].[insorddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insorddet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insorddet]
GO
/****** Object:  StoredProcedure [dbo].[insprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprd]
GO
/****** Object:  StoredProcedure [dbo].[insprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprdpic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprdpic]
GO
/****** Object:  StoredProcedure [dbo].[insprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[insprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprf]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprf]
GO
/****** Object:  StoredProcedure [dbo].[insprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprfbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprfbrd]
GO
/****** Object:  StoredProcedure [dbo].[insprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprfprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insprfprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[insret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insret]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insret]
GO
/****** Object:  StoredProcedure [dbo].[insstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insstrlst]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insstrlst]
GO
/****** Object:  StoredProcedure [dbo].[insusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[insusr]
GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logincheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[logincheck]
GO
/****** Object:  StoredProcedure [dbo].[updbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updbrd]
GO
/****** Object:  StoredProcedure [dbo].[updord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updord]
GO
/****** Object:  StoredProcedure [dbo].[updorddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updorddet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updorddet]
GO
/****** Object:  StoredProcedure [dbo].[updprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprd]
GO
/****** Object:  StoredProcedure [dbo].[updprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdpic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprdpic]
GO
/****** Object:  StoredProcedure [dbo].[updprdsalsts]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdsalsts]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprdsalsts]
GO
/****** Object:  StoredProcedure [dbo].[updprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[updprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprf]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprf]
GO
/****** Object:  StoredProcedure [dbo].[updprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprfbrd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprfbrd]
GO
/****** Object:  StoredProcedure [dbo].[updprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprfprdtyp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updprfprdtyp]
GO
/****** Object:  StoredProcedure [dbo].[updret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updret]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updret]
GO
/****** Object:  StoredProcedure [dbo].[updstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updstrlst]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updstrlst]
GO
/****** Object:  StoredProcedure [dbo].[updusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updusr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[updusr]
GO
/****** Object:  Table [dbo].[tbbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbbrd]') AND type in (N'U'))
DROP TABLE [dbo].[tbbrd]
GO
/****** Object:  Table [dbo].[tbord]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbord]') AND type in (N'U'))
DROP TABLE [dbo].[tbord]
GO
/****** Object:  Table [dbo].[tborddet]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tborddet]') AND type in (N'U'))
DROP TABLE [dbo].[tborddet]
GO
/****** Object:  Table [dbo].[tbprd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprd]') AND type in (N'U'))
DROP TABLE [dbo].[tbprd]
GO
/****** Object:  Table [dbo].[tbprdpic]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprdpic]') AND type in (N'U'))
DROP TABLE [dbo].[tbprdpic]
GO
/****** Object:  Table [dbo].[tbprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprdtyp]') AND type in (N'U'))
DROP TABLE [dbo].[tbprdtyp]
GO
/****** Object:  Table [dbo].[tbprf]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprf]') AND type in (N'U'))
DROP TABLE [dbo].[tbprf]
GO
/****** Object:  Table [dbo].[tbprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprfbrd]') AND type in (N'U'))
DROP TABLE [dbo].[tbprfbrd]
GO
/****** Object:  Table [dbo].[tbprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprfprdtyp]') AND type in (N'U'))
DROP TABLE [dbo].[tbprfprdtyp]
GO
/****** Object:  Table [dbo].[tbret]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbret]') AND type in (N'U'))
DROP TABLE [dbo].[tbret]
GO
/****** Object:  Table [dbo].[tbstrlst]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbstrlst]') AND type in (N'U'))
DROP TABLE [dbo].[tbstrlst]
GO
/****** Object:  Table [dbo].[tbusr]    Script Date: 04/26/2013 14:50:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbusr]') AND type in (N'U'))
DROP TABLE [dbo].[tbusr]
GO
/****** Object:  Table [dbo].[tbusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbusr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbusr](
	[usrcod] [int] IDENTITY(1,1) NOT NULL,
	[usreml] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[usrpass] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[usrretprfcod] [int] NULL,
	[usrtyp] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[tbusr] ON
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (1, N'cs@cssoftsolutions.com', N'abc123#', 2, N'R')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (2, N'ssharma@cssoftsolutions.com', N'abcdef#', 3, N'R')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (3, N'cs@csknowledgehub.com', N'xyz000##', 1, N'U')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (4, N'ranamother@gmail.com', N'asd', 2, N'U')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (5, N'admin@shopit.com', N'admin', 0, N'A')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpass], [usrretprfcod], [usrtyp]) VALUES (6, N'rn@gmail.com', N'asd', 3, N'U')
SET IDENTITY_INSERT [dbo].[tbusr] OFF
/****** Object:  Table [dbo].[tbstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbstrlst]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbstrlst](
	[strlstcod] [int] IDENTITY(1,1) NOT NULL,
	[strlstprfcod] [int] NULL,
	[strlstprdcod] [int] NULL,
	[strlstdat] [datetime] NULL,
 CONSTRAINT [PK_tbstrlst] PRIMARY KEY CLUSTERED 
(
	[strlstcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbstrlst] ON
INSERT [dbo].[tbstrlst] ([strlstcod], [strlstprfcod], [strlstprdcod], [strlstdat]) VALUES (1, 1, 1, CAST(0x0000A19400EDC864 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbstrlst] OFF
/****** Object:  Table [dbo].[tbret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbret]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbret](
	[retcod] [int] IDENTITY(1,1) NOT NULL,
	[retbusnam] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[retadd] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[retlog] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[retcnt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[retzipcod] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[retmetact] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbret] PRIMARY KEY CLUSTERED 
(
	[retcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbret] ON
INSERT [dbo].[tbret] ([retcod], [retbusnam], [retadd], [retlog], [retcnt], [retzipcod], [retmetact]) VALUES (2, N'Rama Creations', N'S.C.O 2251 Sector 22B', N'.jpg', N'India', N'160022', N'paypal@ramacreations.com')
INSERT [dbo].[tbret] ([retcod], [retbusnam], [retadd], [retlog], [retcnt], [retzipcod], [retmetact]) VALUES (3, N'Kapsons', N'S.C.O 35 Sector 17 E Chandigarh', N'.jpg', N'India', N'160017', N'paypal@kapsons.com')
SET IDENTITY_INSERT [dbo].[tbret] OFF
/****** Object:  Table [dbo].[tbprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprfprdtyp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprfprdtyp](
	[prfprdtypcod] [int] IDENTITY(1,1) NOT NULL,
	[prfprdtypprfcod] [int] NULL,
	[prfprdtypprdtypcod] [int] NULL,
 CONSTRAINT [PK_tbprfprdtyp] PRIMARY KEY CLUSTERED 
(
	[prfprdtypcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprfprdtyp] ON
INSERT [dbo].[tbprfprdtyp] ([prfprdtypcod], [prfprdtypprfcod], [prfprdtypprdtypcod]) VALUES (1, 1, 1)
INSERT [dbo].[tbprfprdtyp] ([prfprdtypcod], [prfprdtypprfcod], [prfprdtypprdtypcod]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[tbprfprdtyp] OFF
/****** Object:  Table [dbo].[tbprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprfbrd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprfbrd](
	[prfbrdcod] [int] IDENTITY(1,1) NOT NULL,
	[prfbrdprfcod] [int] NULL,
	[prfbrdbrdcod] [int] NULL,
 CONSTRAINT [PK_tbprfbrd] PRIMARY KEY CLUSTERED 
(
	[prfbrdcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprfbrd] ON
INSERT [dbo].[tbprfbrd] ([prfbrdcod], [prfbrdprfcod], [prfbrdbrdcod]) VALUES (1, 1, 1)
INSERT [dbo].[tbprfbrd] ([prfbrdcod], [prfbrdprfcod], [prfbrdbrdcod]) VALUES (2, 1, 3)
INSERT [dbo].[tbprfbrd] ([prfbrdcod], [prfbrdprfcod], [prfbrdbrdcod]) VALUES (3, 2, 2)
SET IDENTITY_INSERT [dbo].[tbprfbrd] OFF
/****** Object:  Table [dbo].[tbprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprf](
	[prfcod] [int] IDENTITY(1,1) NOT NULL,
	[prfdep] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prftopsiz] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfbotsiz] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfshosiz] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfnam] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfemlwhn] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfgnd] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfyob] [int] NULL,
	[prfcnt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prfzipcod] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbprf] PRIMARY KEY CLUSTERED 
(
	[prfcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprf] ON
INSERT [dbo].[tbprf] ([prfcod], [prfdep], [prftopsiz], [prfbotsiz], [prfshosiz], [prfnam], [prfemlwhn], [prfgnd], [prfyob], [prfcnt], [prfzipcod]) VALUES (1, N'', N'2', N'3', N'4', N'Shalini Sharma', N'Daily', N'F', 1980, N'India', N'160022')
INSERT [dbo].[tbprf] ([prfcod], [prfdep], [prftopsiz], [prfbotsiz], [prfshosiz], [prfnam], [prfemlwhn], [prfgnd], [prfyob], [prfcnt], [prfzipcod]) VALUES (2, N'', N'20', N'30', N'10', N'beeni', N'On Weekends', N'M', 1991, N'India', N'0172')
INSERT [dbo].[tbprf] ([prfcod], [prfdep], [prftopsiz], [prfbotsiz], [prfshosiz], [prfnam], [prfemlwhn], [prfgnd], [prfyob], [prfcnt], [prfzipcod]) VALUES (3, N'', N'', N'', N'', N'', N'', N' ', 0, N'', N'')
SET IDENTITY_INSERT [dbo].[tbprf] OFF
/****** Object:  Table [dbo].[tbprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprdtyp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprdtyp](
	[prdtypcod] [int] IDENTITY(1,1) NOT NULL,
	[prdtypnam] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdtypsizsts] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbprdtyp] PRIMARY KEY CLUSTERED 
(
	[prdtypcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprdtyp] ON
INSERT [dbo].[tbprdtyp] ([prdtypcod], [prdtypnam], [prdtypsizsts]) VALUES (1, N'Animal Print Handbags', N'N')
INSERT [dbo].[tbprdtyp] ([prdtypcod], [prdtypnam], [prdtypsizsts]) VALUES (2, N'Shirts', N'T')
SET IDENTITY_INSERT [dbo].[tbprdtyp] OFF
/****** Object:  Table [dbo].[tbprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprdpic]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprdpic](
	[prdpiccod] [int] IDENTITY(1,1) NOT NULL,
	[prdpicprdcod] [int] NULL,
	[prdpicpic] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdmanpicsts] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbprdpic] PRIMARY KEY CLUSTERED 
(
	[prdpiccod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprdpic] ON
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdmanpicsts]) VALUES (1, 1, N'.jpg', N'T')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdmanpicsts]) VALUES (2, 1, N'.jpg', N'F')
SET IDENTITY_INSERT [dbo].[tbprdpic] OFF
/****** Object:  Table [dbo].[tbprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbprd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbprd](
	[prdcod] [int] IDENTITY(1,1) NOT NULL,
	[prdnam] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdretcod] [int] NULL,
	[prddet] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdcol] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdsiz] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdprdtypcod] [int] NULL,
	[prdbrdcod] [int] NULL,
	[prdcom] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdprc] [float] NULL,
	[prdsalsts] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prdsalper] [float] NULL,
 CONSTRAINT [PK_tbprd] PRIMARY KEY CLUSTERED 
(
	[prdcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbprd] ON
INSERT [dbo].[tbprd] ([prdcod], [prdnam], [prdretcod], [prddet], [prdcol], [prdsiz], [prdprdtypcod], [prdbrdcod], [prdcom], [prdprc], [prdsalsts], [prdsalper]) VALUES (1, N'Paradome', 2, N'aa sf s df sdf', N'', N'', 1, 3, N'asd afs asf', 1200, N'Y', 13)
INSERT [dbo].[tbprd] ([prdcod], [prdnam], [prdretcod], [prddet], [prdcol], [prdsiz], [prdprdtypcod], [prdbrdcod], [prdcom], [prdprc], [prdsalsts], [prdsalper]) VALUES (3, N'inst', 3, N'i love this product', N'red', N'30', 2, 2, N' too good', 2000, N'N', 0)
SET IDENTITY_INSERT [dbo].[tbprd] OFF
/****** Object:  Table [dbo].[tborddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tborddet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tborddet](
	[orddetcod] [int] IDENTITY(1,1) NOT NULL,
	[orddetordcod] [int] NULL,
	[orddetqty] [int] NULL,
	[orddetprdcod] [int] NULL,
 CONSTRAINT [PK_tborddet] PRIMARY KEY CLUSTERED 
(
	[orddetcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tborddet] ON
INSERT [dbo].[tborddet] ([orddetcod], [orddetordcod], [orddetqty], [orddetprdcod]) VALUES (1, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[tborddet] OFF
/****** Object:  Table [dbo].[tbord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbord](
	[ordcod] [int] IDENTITY(1,1) NOT NULL,
	[orddat] [datetime] NULL,
	[ordprfcod] [int] NULL,
	[ordretcod] [int] NULL,
	[ordbiladd] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ordbilcnt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ordbilzipcod] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[orddelsts] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbord] PRIMARY KEY CLUSTERED 
(
	[ordcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbord] ON
INSERT [dbo].[tbord] ([ordcod], [orddat], [ordprfcod], [ordretcod], [ordbiladd], [ordbilcnt], [ordbilzipcod], [orddelsts]) VALUES (1, CAST(0x0000A1A400EB6912 AS DateTime), 1, 2, N'ssdsfdfs', N'New Zealand', N'124344', N'D')
SET IDENTITY_INSERT [dbo].[tbord] OFF
/****** Object:  Table [dbo].[tbbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbbrd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbbrd](
	[brdcod] [int] IDENTITY(1,1) NOT NULL,
	[brdnam] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbbrd] PRIMARY KEY CLUSTERED 
(
	[brdcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbbrd] ON
INSERT [dbo].[tbbrd] ([brdcod], [brdnam]) VALUES (1, N'Nike')
INSERT [dbo].[tbbrd] ([brdcod], [brdnam]) VALUES (2, N'Reebok')
INSERT [dbo].[tbbrd] ([brdcod], [brdnam]) VALUES (3, N'Louis Vuitton')
INSERT [dbo].[tbbrd] ([brdcod], [brdnam]) VALUES (4, N'Rado')
INSERT [dbo].[tbbrd] ([brdcod], [brdnam]) VALUES (5, N'Armani Exchange')
SET IDENTITY_INSERT [dbo].[tbbrd] OFF
/****** Object:  StoredProcedure [dbo].[updusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updusr]
(
@usrcod int,
@usreml varchar(100),
@usrpass varchar(100),
@usrretprfcod int,
@usrtyp char(1)
)
AS
	update tbusr set usreml=@usreml,usrpass=@usrpass,usrretprfcod=@usrretprfcod,usrtyp=@usrtyp where usrcod=@usrcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[updstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updstrlst]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updstrlst]
(
@strlstcod int,
@strlstprfcod int,
@strlstprdcod int,
@strlstdat datetime
)
AS
	update tbstrlst set strlstprfcod=@strlstprfcod,strlstprdcod=@strlstprdcod,strlstdat=@strlstdat where strlstcod=@strlstcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[updret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updret]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updret]
(
@retcod int,
@retbusnam  varchar(100),
@retadd varchar(100),
@retlog varchar(50),
@retcnt varchar(100),
@retzipcod varchar(100),
@retmetact varchar(100)

)
AS
	update tbret set retbusnam=@retbusnam,retadd=@retadd,retlog=@retlog,retcnt=@retcnt,retzipcod=@retzipcod,retmetact=@retmetact where retcod=@retcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprfprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprfprdtyp]
(
@prfprdtypcod int,
@prfprdtypprfcod int,
@prfprdtypprdtypcod int
)
AS
	update tbprfprdtyp set prfprdtypprfcod=@prfprdtypprfcod,prfprdtypprdtypcod=@prfprdtypprdtypcod where prfprdtypcod=@prfprdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprfbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprfbrd]
(
@prfbrdcod int,
@prfbrdprfcod int,
@prfbrdbrdcod int
)
AS
	update tbprfbrd set prfbrdprfcod=@prfbrdprfcod,prfbrdbrdcod=@prfbrdbrdcod where prfbrdcod=@prfbrdcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprf]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprf]
(
@prfcod int,
@prfdep varchar(100),
@prftopsiz varchar(100),
@prfbotsiz varchar(100),
@prfshosiz varchar(100),
@prfnam varchar(100),
@prfemlwhn varchar(100),
@prfgnd char(1),
@prfyob int,
@prfcnt varchar(100),
@prfzipcod varchar(100)
)
AS
	update tbprf set prfdep=@prfdep,prftopsiz=@prftopsiz,prfbotsiz=@prfbotsiz,prfshosiz=@prfshosiz,prfnam=@prfnam,prfemlwhn=@prfemlwhn,prfgnd=@prfgnd,
	prfyob=@prfyob,prfcnt=@prfcnt,prfzipcod=@prfzipcod where prfcod=@prfcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprdtyp]
(
@prdtypcod int,
@prdtypnam varchar(100),
@prdtypsizsts char(1)

)
AS
	update tbprdtyp set prdtypnam=@prdtypnam,prdtypsizsts=@prdtypsizsts where prdtypcod=@prdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprdsalsts]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdsalsts]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprdsalsts]
	(
	@prdcod int,
	@prdsalsts char(1),
	@prdsalper float
	)
AS
update tbprd set prdsalsts=@prdsalsts,prdsalper=
@prdsalper where prdcod=@prdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprdpic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprdpic]
(
@prdpiccod int,
@prdpicprdcod int,
@prdpicpic varchar(50),
@prdmanpicsts char(1)
)
AS
	update tbprdpic set prdpicprdcod=@prdpicprdcod,prdpicpic=@prdpicpic,prdmanpicsts=@prdmanpicsts where prdpiccod=@prdpiccod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updprd]
(
@prdcod int,
@prdnam varchar(100),
@prdretcod int,
@prddet varchar(1000),
@prdcol varchar(100),
@prdsiz varchar(100),
@prdprdtypcod int,
@prdbrdcod int,
@prdcom varchar(200),
@prdprc float
)
AS
	update tbprd set prdnam=@prdnam,prdretcod=@prdretcod,prddet=@prddet,prdcol=@prdcol,prdsiz=@prdsiz,prdprdtypcod=@prdprdtypcod,prdbrdcod=@prdbrdcod,
	prdcom=@prdcom,prdprc=@prdprc where prdcod=@prdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updorddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updorddet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updorddet]
(
@orddetcod int,
@orddetordcod int,
@orddetqty int,
@orddetprdcod int
)
AS
	update tborddet set orddetordcod=@orddetordcod,orddetqty=@orddetqty,orddetprdcod=@orddetprdcod where orddetcod=@orddetcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updord] 
(
@ordcod int,
@orddelsts char(1)
)
AS
	update tbord set orddelsts=@orddelsts where 
	ordcod=@ordcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[updbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[updbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[updbrd]
(
@brdcod int,
@brdnam varchar(100)
)
AS
	update tbbrd set brdnam=@brdnam  where brdcod=@brdcod ' 
END
GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logincheck]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[logincheck]
(
	@eml varchar(50),
	@pwd varchar(50),
	@cod int output,
	@typ char(1) output
)
AS
declare @actpwd varchar(50)
select @actpwd=usrpass from tbusr where
usreml=@eml
if @actpwd=@pwd
begin
select @cod=usrretprfcod,@typ=usrtyp
from tbusr where usreml=@eml
end
else
begin
set @cod=-1
set @typ=''N''
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insusr]
(
@usreml varchar(100),
@usrpass varchar(100),
@usrretprfcod int,
@usrtyp char(1)

)
AS
insert tbusr values(@usreml,@usrpass,@usrretprfcod,@usrtyp)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insstrlst]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insstrlst]
(
@strlstprfcod int,
@strlstprdcod int,
@strlstdst datetime
)
AS
delete from tbstrlst where strlstprdcod=@strlstprdcod
and strlstprfcod=@strlstprfcod
insert tbstrlst values(@strlstprfcod,@strlstprdcod,@strlstdst)' 
END
GO
/****** Object:  StoredProcedure [dbo].[insret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insret]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insret]
(
@retbusnam  varchar(100),
@retadd varchar(100),
@retlog varchar(50),
@retcnt varchar(100),
@retzipcod varchar(100),
@retmetact varchar(100)
)
AS
declare @r int
insert tbret values(@retbusnam,@retadd,@retlog,@retcnt,@retzipcod,@retmetact)
select @r=@@identity
return @r' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprfprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprfprdtyp]
(
@prfprdtypprfcod int,
@prfprdtypprdtypcod int
)
AS
	insert tbprfprdtyp values(@prfprdtypprfcod,@prfprdtypprdtypcod)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprfbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprfbrd]
(
@prfbrdprfcod int,
@prfbrdbrdcod int
)
AS
	insert tbprfbrd values(@prfbrdprfcod,@prfbrdbrdcod)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprf]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprf]
(
@prfdep varchar(100),
@prftopsiz varchar(100),
@prfbotsiz varchar(100),
@prfshosiz varchar(100),
@prfnam varchar(100),
@prfemlwhn varchar(100),
@prfgnd char(1),
@prfyob int,
@prfcnt varchar(100),
@prfzipcod varchar(100)
)
AS
declare @r int
insert tbprf values(@prfdep,@prftopsiz,@prfbotsiz,@prfshosiz,@prfnam,@prfemlwhn,@prfgnd,@prfyob,@prfcnt,@prfzipcod)
select @r=@@identity
return @r' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprdtyp]
(
@prdtypnam varchar(100),
@prdtypsizsts char(1)
)
AS
	insert tbprdtyp values(@prdtypnam,@prdtypsizsts)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprdpic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprdpic]
(
@prdpicprdcod int,
@prdpicpic varchar(50),
@prdmanpicsts char(1)
)
AS
declare @r int
insert tbprdpic values(@prdpicprdcod,@prdpicpic,@prdmanpicsts)
select @r=@@identity
return @r
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insprd]
(
@prdnam varchar(100),
@prdretcod int,
@prddet varchar(1000),
@prdcol varchar(100),
@prdsiz varchar(100),
@prdprdtypcod int,
@prdbrdcod int,
@prdcom varchar(200),
@prdprc float,
@prdsalsts char(1),
@prdsalper float
)
AS
declare @r int
insert tbprd values(@prdnam,@prdretcod,@prddet,@prdcol,@prdsiz,@prdprdtypcod,@prdbrdcod,@prdcom,@prdprc,@prdsalsts,@prdsalper)
select @r=@@identity
return @r' 
END
GO
/****** Object:  StoredProcedure [dbo].[insorddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insorddet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insorddet]
(
@orddetordcod int,
@orddetqty int,
@orddetprdcod int
)
AS
	insert tborddet values(@orddetordcod,@orddetqty,@orddetprdcod)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insord]
(
@orddat datetime,
@ordprfcod int,
@ordretcod int,
@ordbiladd varchar(200),
@ordbilcnt varchar(100),
@ordbilzipcod varchar(100),
@orddelsts char(1)
)
AS
declare @r int
insert tbord values (@orddat,@ordprfcod,@ordretcod,@ordbiladd,@ordbilcnt,@ordbilzipcod,@orddelsts)
select @r=@@identity
return @r
' 
END
GO
/****** Object:  StoredProcedure [dbo].[insbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[insbrd]
(
@brdnam varchar(100)
)
AS
	insert tbbrd values(@brdnam)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndusr]
(
@usrcod int
)
AS
select * from tbusr where usrcod=@usrcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndstrlst]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndstrlst]
(
@strlstcod int
)
AS
	select * from tbstrlst where strlstcod=@strlstcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndret]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndret]
(
@retcod int
)
AS
	select* from tbret where retcod=@retcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprfprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprfprdtyp]
(
@prfprdtypcod int
)
AS
	select * from tbprfprdtyp where prfprdtypcod=@prfprdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprfbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprfbrd]
(
@prfbrdcod int
)
AS
	select  * from tbprfbrd where prfbrdcod=@prfbrdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprf]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprf]
(
@prfcod int
)
AS
	select * from  tbprf where prfcod=@prfcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprdtyp]
(
@prdtypcod int
)
AS
	select * from tbprdtyp where prdtypcod=@prdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprdpic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprdpic]
(
@prdpiccod int
)
AS
	select * from tbprdpic where prdpiccod=@prdpiccod' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndprd]
(
@prdcod int
)
AS
	select * from tbprd where prdcod=@prdcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndorddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndorddet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndorddet]
(
@orddetcod int
)
AS
	select * from tborddet where orddetcod=@orddetcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndord]
(
@ordcod int
)
AS
	select * from tbord where ordcod=@ordcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[fndbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fndbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fndbrd]
(
@brdcod int
)
AS
	select * from tbbrd where brdcod=@brdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dspusrord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspusrord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dspusrord]
	@usrcod int
AS
select ordcod,orddat,retbusnam,usreml,orddelsts,prdnam,
orddetqty from tbord,tbret,tbusr,tborddet,tbprd where ordprfcod=
@usrcod and ordretcod=retcod and 
usrretprfcod=retcod and usrtyp=''R'' and
ordcod=orddetordcod and orddetprdcod=prdcod order by orddat desc' 
END
GO
/****** Object:  StoredProcedure [dbo].[dspsalmalusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspsalmalusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dspsalmalusr]
	(
		@prdcod int
	)
AS
select usreml from tbusr where usrtyp=''U'' and
usrretprfcod in(select prfbrdprfcod from
tbprfbrd,tbprd where prfbrdbrdcod=prdbrdcod and
prdcod=@prdcod) and
usrretprfcod in(select prfprdtypprfcod from
tbprfprdtyp,tbprd where prfprdtypprdtypcod=
prdprdtypcod and  prdcod=@prdcod)' 
END
GO
/****** Object:  StoredProcedure [dbo].[dspretprd1]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretprd1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dspretprd1]
(
	@retcod int,
	@brdcod int,
	@prdtypcod int
)
AS
select prdcod,prdnam,prdprc,prdsalsts,prdsalper,
(select top 1 cast(prdpiccod as varchar(50))+prdpicpic  from tbprdpic where
prdpicprdcod=a.prdcod and prdmanpicsts=''T'') pic
from tbprd a where prdretcod=@retcod and prdbrdcod=
@brdcod and prdprdtypcod=@prdtypcod order by prdnam
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dspretprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[dspretprd]
(
	@retcod int,
	@brdcod int,
	@prdtypcod int
)
AS
select prdcod,prdnam,prdprc,prdsalsts,prdsalper,
(select top 1 cast(prdpiccod as varchar(50))+prdpicpic  from tbprdpic where
prdpicprdcod=a.prdcod and prdmanpicsts=''T'') pic
from tbprd a where prdretcod=@retcod and prdbrdcod=
@brdcod and prdprdtypcod=@prdtypcod order by prdnam' 
END
GO
/****** Object:  StoredProcedure [dbo].[dspretord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dspretord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dspretord]
(
	@retcod int,
	@strdat datetime,
	@enddat datetime
)
AS
select ordcod,orddat,ordbiladd,ordbilcnt,
ordbilzipcod,orddelsts,prdnam,orddetqty
from tbord,tborddet,tbprd where ordcod=
orddetordcod and orddetprdcod=prdcod and
orddat>=@strdat and orddat<=@enddat and
ordretcod=@retcod order by orddat' 
END
GO
/****** Object:  StoredProcedure [dbo].[dsppndord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dsppndord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dsppndord]
(
	@retcod int
)
AS
select ordcod,orddat,ordbiladd,ordbilcnt,
ordbilzipcod,orddelsts,prdnam,orddetqty
from tbord,tborddet,tbprd where ordcod=
orddetordcod and orddetprdcod=prdcod and
orddelsts=''N'' and ordretcod=@retcod order by orddat
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispusr]
AS
	select * from tbusr' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispstrlst]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispstrlst]
(
	@prfcod int
)
AS
select prdcod,prdnam,prdretcod,retbusnam,prdprc,prdsalper,prdsalsts,
(select cast(prdpiccod as varchar(50))+prdpicpic from tbprdpic 
where prdmanpicsts=''T'' and prdpicprdcod=a.prdcod) pic
from tbprd a,tbret where prdretcod=retcod and  prdcod
in(select strlstprdcod from tbstrlst where strlstprfcod=
@prfcod)' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispret]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispret]
AS
	select * from tbret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprfprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprfprdtyp]
(
	@prfcod int
)
AS
select * from tbprfprdtyp where prfprdtypprfcod=@prfcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprfbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprfbrd]
(
@prfcod int
)
AS
	select * from tbprfbrd where prfbrdprfcod=@prfcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprf]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprf]

AS
	select * from tbprf' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprdtyp]
AS
	select * from tbprdtyp
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprdpic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprdpic]
(
	@prdcod int
)
AS
select * from tbprdpic where prdpicprdcod
=@prdcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispprd]
AS
	select * from tbprd ' 
END
GO
/****** Object:  StoredProcedure [dbo].[disporddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[disporddet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[disporddet]
AS
	select * from tborddet
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispord]
AS
	select*from tbord
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dispbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dispbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dispbrd]

AS
	select *from tbbrd
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delusr]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delusr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delusr]
(
@usrcod int
)
AS
	delete from tbusr where usrcod=@usrcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delstrlst]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delstrlst]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delstrlst]
(
@strlstcod int
)
AS
	delete from tbstrlst where strlstcod=@strlstcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delret]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delret]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delret]
(
@retcod int
)
AS
	delete from tbret where retcod=@retcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprfprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprfprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprfprdtyp]
(
@prfprdtypcod int
)
AS
	delete from tbprfprdtyp where prfprdtypprfcod
	=@prfprdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprfbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprfbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprfbrd]
(
@prfbrdcod int
)
AS
	delete from tbprfbrd where prfbrdprfcod=@prfbrdcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprf]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprf]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprf]
(
@prfcod int
)
AS
	delete from tbprf where prfcod=@prfcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprdtyp]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprdtyp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprdtyp]
(
@prdtypcod int
)
AS
	delete from tbprdtyp where prdtypcod=@prdtypcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprdpic]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprdpic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprdpic]
(

@prdpiccod int
)
AS
	delete from tbprdpic where prdpiccod=@prdpiccod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delprd]
(
@prdcod int
)
AS
	delete from  tbprd where prdcod=@prdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delorddet]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delorddet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delorddet]
(
@orddetcod int
)
AS
	delete from tborddet where orddetcod=@orddetcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[delord]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delord]
(
@ordcod int
)
AS
	delete from tbord where ordcod=@ordcod' 
END
GO
/****** Object:  StoredProcedure [dbo].[delbrd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delbrd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delbrd]
(
@brdcod int
)
AS
	delete from tbbrd where brdcod=@brdcod
' 
END
GO
/****** Object:  StoredProcedure [dbo].[srcprd]    Script Date: 04/26/2013 14:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[srcprd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[srcprd]
(
	@brd varchar(100),
	@prdtyp varchar(100)
)
as 
begin 
declare @temptable TABLE (items varchar(8000)) 
declare @idx int 
declare @slice varchar(8000) 
select @idx = 1 
while @idx!= 0 
begin 
set @idx = charindex('','',@brd) 
if @idx!=0 
set @slice = left(@brd,@idx - 1) 
else 
set @slice = @brd 
if(len(@slice)>0) 
insert into @temptable(Items) values(@slice) 
set @brd = right(@brd,len(@brd) - @idx) 
if len(@brd) = 0 break 
end 
declare @temptable1 TABLE (items varchar(8000)) 
declare @idx1 int 
declare @slice1 varchar(8000) 
select @idx1 = 1 
while @idx1!= 0 
begin 
set @idx1 = charindex('','',@prdtyp) 
if @idx1!=0 
set @slice1 = left(@prdtyp,@idx1 - 1) 
else 
set @slice1 = @prdtyp 
if(len(@slice1)>0) 
insert into @temptable1(Items) values(@slice1) 
set @prdtyp = right(@prdtyp,len(@prdtyp) - @idx1) 
if len(@prdtyp) = 0 break 
end 
select prdcod,prdnam,prdretcod,retbusnam,prdprc,prdsalper,prdsalsts,
(select cast(prdpiccod as varchar(50))+prdpicpic from tbprdpic 
where prdmanpicsts=''T'' and prdpicprdcod=a.prdcod) pic
from tbprd a,tbret where prdretcod=retcod and
prdbrdcod in(select items from @temptable) and prdprdtypcod in
(select items from @temptable1)
end' 
END
GO
