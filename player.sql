SELECT
	playerpergame.Player, playerpergame.Pos, playerpergame.Age, playerpergame.Tm,
    playerpergame.G, playerpergame.GS,
    
    playerpergame.MP AS MPpergame,
    playerpergame.FG AS FGpergame, playerpergame.FGA AS FGApergame, playerpergame.`FG%` AS 'FG%',
    playerpergame.`3P` AS 3Ppergame, playerpergame.`3PA` AS 3PApergame, playerpergame.`3P%` AS '3P%',
    playerpergame.`2P` AS 2Ppergame, playerpergame.`2PA` AS 2PApergame, playerpergame.`2P%` AS '2P%',
    playerpergame.FT AS FTpergame, playerpergame.FTA AS FTApergame, playerpergame.`FT%` AS 'FT%',
    playerpergame.ORB AS ORBpergame, playerpergame.DRB AS DRBpergame, playerpergame.TRB AS TRBpergame,
    playerpergame.AST AS ASTpergame, playerpergame.STL AS STLpergame, playerpergame.BLK AS BLKpergame,
    playerpergame.TOV AS TOVpergame, playerpergame.PF AS PFpergame, playerpergame.PTS AS PTSpergame,
    
    playertotals.MP AS MPtotal,
    playertotals.FG AS FGtotal, playertotals.FGA AS FGAtotal,
    playertotals.`3P` AS 3Ptotal, playertotals.`3PA` AS 3PAtotal,
    playertotals.`2P` AS 2Ptotal, playertotals.`2PA` AS 2PAtotal,
    playertotals.FT AS FTtotal, playertotals.FTA AS FTAtotal,
    playertotals.ORB AS ORBtotal, playertotals.DRB AS DRBtotal, playertotals.TRB AS TRBtotal,
    playertotals.AST AS ASTtotal, playertotals.STL AS STLtotal, playertotals.BLK AS BLKtotal,
    playertotals.TOV AS TOVtotal, playertotals.PF AS PFtotal, playertotals.PTS AS PTStotal

FROM playerpergame

JOIN playertotals
  ON playerpergame.Player = playertotals.Player;