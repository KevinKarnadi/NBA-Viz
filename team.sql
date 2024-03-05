SELECT
	standings.Team,
    odratings.Conf AS Conference,
    odratings.W AS Win, odratings.L AS Lose,
    odratings.aORtg AS ORtg, odratings.aDRtg AS DRtg,
    
    teampergame.FG AS FGpergame, teampergame.FGA AS FGApergame, teampergame.`FG%` AS 'FG%',
    teampergame.`3P` AS 3Ppergame, teampergame.`3PA` AS 3PApergame, teampergame.`3P%` AS '3P%',
    teampergame.`2P` AS 2Ppergame, teampergame.`2PA` AS 2PApergame, teampergame.`2P%` AS '2P%',
    teampergame.FT AS FTpergame, teampergame.FTA AS FTApergame, teampergame.`FT%` AS 'FT%',
    teampergame.ORB AS ORBpergame, teampergame.DRB AS DRBpergame, teampergame.TRB AS TRBpergame,
    teampergame.AST AS ASTpergame, teampergame.STL AS STLpergame, teampergame.BLK AS BLKpergame,
    teampergame.TOV AS TOVpergame, teampergame.PF AS PFpergame, teampergame.PTS AS PTSpergame,
    
    teamtotals.FG AS FGtotal, teamtotals.FGA AS FGAtotal,
    teamtotals.`3P` AS 3Ptotal, teamtotals.`3PA` AS 3PAtotal,
    teamtotals.`2P` AS 2Ptotal, teamtotals.`2PA` AS 2PAtotal,
    teamtotals.FT AS FTtotal, teamtotals.FTA AS FTAtotal,
    teamtotals.ORB AS ORBtotal, teamtotals.DRB AS DRBtotal, teamtotals.TRB AS TRBtotal,
    teamtotals.AST AS ASTtotal, teamtotals.STL AS STLtotal, teamtotals.BLK AS BLKtotal,
    teamtotals.TOV AS TOVtotal, teamtotals.PF AS PFtotal, teamtotals.PTS AS PTStotal

FROM standings

JOIN odratings
  ON standings.Team = odratings.Team

JOIN teampergame
  ON REPLACE(teampergame.Team, '*', '') = odratings.Team

JOIN teamtotals
  ON REPLACE(teamtotals.Team, '*', '') = odratings.Team

ORDER BY Win DESC;