-- Prime factorization.
getFactor i lastF fs =
  if mod i lastF == 0 then
    getFactor (div i lastF) lastF (lastF:fs)
  else
    if i <= lastF then fs
    else getFactor i lastF fs
  where
    lastF = lastF+1
