%let pgm=utl-stack-tables-when-tables-are-not-conguent-base-r-and-sql-r-python-excel;

%sub_submission;

Stack tables when tables are not conguent base r and sql r python excel

     1 sas sql
     2 r sql (same code in python and excel)
     3 base r merge


github
https://tinyurl.com/yt77ans2
https://github.com/rogerjdeangelis/utl-stack-tables-when-tables-are-not-conguent-base-r-and-sql-r-python-excel

stackoverfow r
https://tinyurl.com/3sbt2nmv
https://stackoverflow.com/questions/8169323/r-concatenate-two-dataframes

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                             |                                                             |                            */
/*    INPUT                    |   PROCESS                                                   |                            */
/*                             |                                                             |                            */
/*                             |                                                             |       OUTPUT               */
/*   TOP TABLE                 |  STACK TOP AND BOTTON TABLE                                 |                            */
/*                             |                                                             |    A    B     C            */
/*    A    B     C             |    A    B     C                                             |                            */
/*                             |                                                             |    0    6     9            */
/*    0    6     9             |    0    6     9                                             |    1    7    10            */
/*    1    7    10             |    1    7    10                                             |    2    8    11            */
/*    2    8    11             |    2    8    11                                             |    3    .    12            */
/*                             |    3    .    12                                             |    4    .    13            */
/*   BOTTOM TABLE              |    4    .    13                                             |    5    .    14            */
/*                             |    5    .    14                                             |                            */
/*    A          C             |                                                             |                            */
/*                             |------------------------------------------------------------------------------------------*/
/*    3         12             |                                                             |                            */
/*    4         13             |   1 SAS SQL                                                 |                            */
/*    5         14             |   =========                                                 |                            */
/*                             |                                                             |                            */
/*   options                   |   proc sql;                                                 |                            */
/*    validvarname=upcase;     |     create                                                  |                            */
/*   libname sd1 "d:/sd1";     |       table want as                                         |                            */
/*   data sd1.top;             |     select                                                  |                            */
/*   input                     |       a,b,c                                                 |                            */
/*     a b c;                  |     from                                                    |                            */
/*   cards4;                   |       sd1.top                                               |                            */
/*   0 6 9                     |     union                                                   |                            */
/*   1 7 10                    |        all                                                  |                            */
/*   2 8 11                    |     select                                                  |                            */
/*   ;;;;                      |       a, . as b, c                                          |                            */
/*   run;quit;                 |     from                                                    |                            */
/*                             |       sd1.bot                                               |                            */
/*   data sd1.bot;             |   ;quit;                                                    |                            */
/*   input                     |                                                             |                            */
/*    a c ;                    |------------------------------------------------------------------------------------------*/
/*   cards4;                   |   2 R SQL (SAME CODE SAS                                    |                            */
/*   3  12                     |       PYTHON AND EXCEL)                                     |                            */
/*   4  13                     |   ======================                                    |                            */
/*   5  14                     |                                                             |                            */
/*   ;;;;                      |   %utl_rbeginx;                                             |                            */
/*   run;quit;                 |   parmcards4;                                               |                            */
/*                             |   library(haven)                                            |                            */
/*                             |   library(sqldf)                                            |                            */
/*                             |   source("c:/oto/fn_tosas9x.R")                             |                            */
/*                             |   top<-read_sas("d:/sd1/top.sas7bdat")                      |                            */
/*                             |   bot<-read_sas("d:/sd1/bot.sas7bdat")                      |                            */
/*                             |   want<-sqldf('                                             |                            */
/*                             |      select                                                 |                            */
/*                             |        a,b,c                                                |                            */
/*                             |      from                                                   |                            */
/*                             |        top                                                  |                            */
/*                             |      union                                                  |                            */
/*                             |         all                                                 |                            */
/*                             |      select                                                 |                            */
/*                             |        a, null as b, c                                      |                            */
/*                             |      from                                                   |                            */
/*                             |        bot                                                  |                            */
/*                             |      ')                                                     |                            */
/*                             |   want                                                      |                            */
/*                             |   fn_tosas9x(                                               |                            */
/*                             |         inp    = want                                       |                            */
/*                             |        ,outlib ="d:/sd1/"                                   |                            */
/*                             |        ,outdsn ="want"                                      |                            */
/*                             |        )                                                    |                            */
/*                             |   ;;;;                                                      |                            */
/*                             |   %utl_rendx;                                               |                            */
/*                             |                                                             |                            */
/*                             |   proc print data=sd1.want;                                 |                            */
/*                             |   run;quit;                                                 |                            */
/*                             |                                                             |                            */
/*                             |------------------------------------------------------------------------------------------*/
/*                             |                                                             |                            */
/*                             |   3 BASE R MERGE                                            |                            */
/*                             |   ==============                                            |                            */
/*                             |                                                             |                            */
/*                             |   %utl_rbeginx;                                             |                            */
/*                             |   parmcards4;                                               |                            */
/*                             |   library(haven)                                            |                            */
/*                             |   library(dplyr)                                            |                            */
/*                             |   library(sqldf)                                            |                            */
/*                             |   source("c:/oto/fn_tosas9x.R")                             |                            */
/*                             |   top<-read_sas("d:/sd1/top.sas7bdat")                      |                            */
/*                             |   bot<-read_sas("d:/sd1/bot.sas7bdat")                      |                            */
/*                             |   want <-merge(top,bot,all=TRUE)[c("A","B","C")]            |                            */
/*                             |   str(want )                                                |                            */
/*                             |   fn_tosas9x(                                               |                            */
/*                             |         inp    = want                                       |                            */
/*                             |        ,outlib ="d:/sd1/"                                   |                            */
/*                             |        ,outdsn ="want"                                      |                            */
/*                             |        )                                                    |                            */
/*                             |   ;;;;                                                      |                            */
/*                             |   %utl_rendx;                                               |                            */
/*                             |                                                             |                            */
/*                             |   proc print data=sd1.want;                                 |                            */
/*                             |   run;quit;                                                 |                            */
/*                             |                                                             |                            */
/**************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
top<-read_sas("d:/sd1/top.sas7bdat")
bot<-read_sas("d:/sd1/bot.sas7bdat")
want<-sqldf('
   select
     a,b,c
   from
     top
   union
      all
   select
     a, null as b, c
   from
     bot
   ')
want
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

proc print data=sd1.want;
run;quit;
options
 validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.top;
input
  a b c;
cards4;
0 6 9
1 7 10
2 8 11
;;;;
run;quit;

data sd1.bot;
input
 a c ;
cards4;
3  12
4  13
5  14
;;;;
run;quit;

/**************************************************************************************************************************/
/*                 |                                                                                                      */
/*  TOP            |   BOT                                                                                                */
/*                 |                                                                                                      */
/*   A    B     C  |    A     C                                                                                           */
/*                 |                                                                                                      */
/*   0    6     9  |    3    12                                                                                           */
/*   1    7    10  |    4    13                                                                                           */
/*   2    8    11  |    5    14                                                                                           */
/*                 |                                                                                                      */
/**************************************************************************************************************************/

/*___                     _               _   _                                    _
|___ \   _ __   ___  __ _| |  _ __  _   _| |_| |__   ___  _ __    _____  _____ ___| |
  __) | | `__| / __|/ _` | | | `_ \| | | | __| `_ \ / _ \| `_ \  / _ \ \/ / __/ _ \ |
 / __/  | |    \__ \ (_| | | | |_) | |_| | |_| | | | (_) | | | ||  __/>  < (_|  __/ |
|_____| |_|    |___/\__, |_| | .__/ \__, |\__|_| |_|\___/|_| |_| \___/_/\_\___\___|_|
                       |_|   |_|    |___/
*/

%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
top<-read_sas("d:/sd1/top.sas7bdat")
bot<-read_sas("d:/sd1/bot.sas7bdat")
want<-sqldf('
   select
     a,b,c
   from
     top
   union
      all
   select
     a, null as b, c
   from
     bot
   ')
want
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

proc print data=sd1.want;
run;quit;

/**************************************************************************************************************************/
/*            |                                                                                                           */
/* > want     |                                                                                                           */
/*            |                                                                                                           */
/*   A  B  C  |  ROWNAMES    A    B     C                                                                                 */
/*            |                                                                                                           */
/* 1 0  6  9  |      1       0    6     9                                                                                 */
/* 2 1  7 10  |      2       1    7    10                                                                                 */
/* 3 2  8 11  |      3       2    8    11                                                                                 */
/* 4 3 NA 12  |      4       3    .    12                                                                                 */
/* 5 4 NA 13  |      5       4    .    13                                                                                 */
/* 6 5 NA 14  |      6       5    .    14                                                                                 */
/*            |                                                                                                           */
/**************************************************************************************************************************/

/*____   _
|___ /  | |__   __ _ ___  ___   _ __   _ __ ___   ___ _ __ __ _  ___
  |_ \  | `_ \ / _` / __|/ _ \ | `__| | `_ ` _ \ / _ \ `__/ _` |/ _ \
 ___) | | |_) | (_| \__ \  __/ | |    | | | | | |  __/ | | (_| |  __/
|____/  |_.__/ \__,_|___/\___| |_|    |_| |_| |_|\___|_|  \__, |\___|
                                                          |___/
*/

%utl_rbeginx;
parmcards4;
library(haven)
library(dplyr)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
top<-read_sas("d:/sd1/top.sas7bdat")
bot<-read_sas("d:/sd1/bot.sas7bdat")
want <-merge(top, bot, all = TRUE)[c("A","B","C")]
want
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

proc print data=sd1.want;
run;quit;


/**************************************************************************************************************************/
/*            |                                                                                                           */
/* > want     |                                                                                                           */
/*            |                                                                                                           */
/*   A  B  C  |  ROWNAMES    A    B     C                                                                                 */
/*            |                                                                                                           */
/* 1 0  6  9  |      1       0    6     9                                                                                 */
/* 2 1  7 10  |      2       1    7    10                                                                                 */
/* 3 2  8 11  |      3       2    8    11                                                                                 */
/* 4 3 NA 12  |      4       3    .    12                                                                                 */
/* 5 4 NA 13  |      5       4    .    13                                                                                 */
/* 6 5 NA 14  |      6       5    .    14                                                                                 */
/*            |                                                                                                           */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
