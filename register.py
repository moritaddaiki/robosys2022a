#!/usr/bin/python3
#SPDX-FileCopyrightText: 2022 Daiki Morita
#SPDX-License-Identifier: BSD-3-Clause

import sys

ans=0.0
ans1=0.0

def totum(s):
    try:
        return int(s)
    except:
        return float(s)


for line in sys.argv[1:]:
    # line.strip()
    ans += totum(line)
    ans1 += totum(line) * 0.1
else:
    print('合計金額は%.1lf円（内税金%.1lf円）' %(ans ,ans1))
