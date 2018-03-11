#!/bin/sh



read

(wget -q -O- "http://www.handbook.unsw.edu.au/vbook2017/brCoursesByAtoZ.jsp?StudyLevel=Undergraduate&descr=all" | egrep "${1}[0-9]+" | egrep "</A></TD>$"|cut -d'<' -f3|cut -c68-75,82-|tr '>' ' ' 
wget -q -O- "http://www.handbook.unsw.edu.au/vbook2017/brCoursesByAtoZ.jsp?StudyLevel=Postgraduate&descr=all" | egrep "${1}[0-9]+" | egrep "</A></TD>$"|cut -d'<' -f3|cut -c67-74,81-|tr '>' ' ')  | sed 's/[ \t]*$//g' | sort | uniq


