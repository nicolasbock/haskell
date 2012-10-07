#!/usr/bin/env python

import sys

def getFactor (i, lastF, fs):
  lastF += 1
  if i%lastF == 0:
    # Found new factor.
    while i%lastF == 0:
      i = i/lastF
    fs.append(lastF)
  if i <= lastF:
    return fs
  else:
    return getFactor(i, lastF, fs)

print("%s" % (getFactor(13195, 1, [])))
print("%s" % (getFactor(600851475143, 1, [])))
