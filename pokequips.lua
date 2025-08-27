if SMODS.JimboQuip then
  for i=1,10 do
      SMODS.JimboQuip{
          key = "lose_quip"..tostring(i),
          type = 'loss',
      }
  end
  for i=1,10 do
      SMODS.JimboQuip{
          key = "win_quip"..tostring(i),
          type = 'win',
      }
  end
end