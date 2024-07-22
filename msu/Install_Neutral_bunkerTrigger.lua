function Install_Neutral_bunkerTrigger()
    ------ Neutral bunker trigger ------
for i = 0, 3 do
    Trigger2(Force1, {Bring(CurrentPlayer,AtLeast,1,"Men","neutralbunker"..(i+1)),Bring(P12,AtLeast,1,125,"neutralbunker"..(i+1))}, 
    {GiveUnits(All,125,P12,"neutralbunker"..(i+1),CurrentPlayer),
    SetInvincibility(Disable, 125, CurrentPlayer, "neutralbunker"..(i+1))
},preserved)
end

for i = 0, 3 do
    Trigger2(Force1, {Bring(CurrentPlayer,Exactly,0,"Men","neutralbunker"..(i+1)),Bring(CurrentPlayer,AtLeast,1,125,"neutralbunker"..(i+1))},
    { 
        GiveUnits(All,125,CurrentPlayer,"neutralbunker"..(i+1),P12)
    },preserved)
end
end