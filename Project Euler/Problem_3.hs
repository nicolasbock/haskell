-- Prime factorization.
getFactor i lastF fs =
  if mod i (lastF+2) == 0 then
    getFactor (div i (lastF+2)) (lastF+2) ((lastF+2):fs)
  else
    getFactor i (lastF+2) fs
