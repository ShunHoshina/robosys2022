#!/bin/bash
# SPDX-FileCopyrightText: 2022 Shun Hoshina
# SPDX-License-Identifier: BSD-3-Clause
　
ng () {
	      echo NG at Line $1
	            res=1
	    }
	    　
	    res=0
	    　
	    ### I/O TEST ###
	    out=$(seq 5 | ./plus)
	    [ "${out}" = 15 ] || ng ${LINENO} #判定する文字
	    　
	    [ "$res" = 0 ] && echo OK      
	    # &&（AND記号）は左側が成功すると右側を実行
	    exit $res
