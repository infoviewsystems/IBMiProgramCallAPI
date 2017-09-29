     H DEBUG DATFMT(*ISO)
     H*================================================================
     H*  C R E A T I O N     P A R A M E T E R S                      *
     H*CRT: CRTBNDRPG                DFTACTGRP(*NO) ACTGRP(TRNAG)   +:*
     H*CRT:  dbgview(*all) option(*nodebugio)                       +:*
     H*CRT:  PGMINFO(*PCML) INFOSTMF('/tmp/postorders.pcml')         :*
     H*================================================================
     H AlwNull(*UsrCtl)

     D i               s             10i 0 inz(0)

     d main            pr                  extpgm('ZZCUST')
     D  orderID                       8p 0
     D  nbrLines                      4p 0
     d    linesIn                          likeds(linesInFmt) dim(10)
     d    linesOut                         likeds(linesOutFmt) dim(10)

     D linesInfmt      DS                  Dim(10) qualified
     D item                          35a
     D qty                           11p 3
     D price                         14p 4
     D linesOutFmt     DS                  Dim(10) qualified
     D item                          35a
     D qty                           11p 3
     D price                         14p 4

     d main            pi
     D   orderID                      8p 0
     D   nbrLines                     4p 0
     d   linesIn                           likeds(linesInfmt) dim(10)
     d   linesOut                          likeds(linesOutfmt) dim(10)

      /free
        clear linesOut;
        // update the values in the INOUT fields
        orderID = orderID + 100;
           for i = 1 to nbrLines;
             linesOut(i).item = %trim(linesIn(i).item) + %char(i);
             linesOut(i).qty =  linesIn(i).qty + 20;
             linesOut(i).price =  linesIn(i).price + 10;
           endfor;
        return; // *inlr = *on;
      /end-free
