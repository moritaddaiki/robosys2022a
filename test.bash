#!/bin/bash -xv
#SPDX-FileCopyrightText: 2022 Daiki Morita
#iSPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0
+ res=0

### I/0 test ###
out=$(./register.py 10 20 30)
[ "${out}" = 合計金額は60.0円（内税金6.0円） ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(./register.py あ)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
		                  　
out=$(./register.py  ) #空文字
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = 合計金額は0.0円（内税金0.0円） ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
+ '[' 0 = 0 ']'
+ echo OK
OK
exit $res
+ exit 0
exit $res
