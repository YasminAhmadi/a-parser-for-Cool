class Node inherits IO{
        item: String;
        next: Node;

        init(i: String) : Object {
          item<-i
         };
        add(z:Node): Object{
          next<-z
         };
        getitem() : String{
          item
         };
        getnext() : Node{
          next
         };
};

class Main inherits IO{
        atoii:A2I;
        inputn:Bool;
        plus:Bool;
        ss:Bool;
        dd:Bool;
        ee:Bool;
        xx:Bool;
        top:String;
        temp1:String;
        temp2:String;
        dummy:Int;
        len:Int;
        a:Node;
        popstring:String;
        flag:Bool;
        input:String;
        head:Node;
    main():Object{{
        atoii<-new A2I;
        plus<-false;
        ss<-false;
        dd<-false;
        ee<-false;
        xx<-false;
        inputn<-false;
    flag<-true;
        len<-0;
        out_string(">");
        input<-in_string();
        if input="x" then flag<-false
                else {dummy<-0;} fi;
        while flag loop {
                      
                       if input ="x" then {flag<-false;xx<-true;}
              
                        else {dummy<-0;}
              
                       fi;

                       if input ="d" then {
                          a<-head;
                          dd<-true;
                  while not isvoid a
                     loop
                           {out_string(a.getitem());out_string("\n");
                           a<-a.getnext();
                           }
                     pool;
                       }
              
                        else {dummy<-0;}
              
                       fi;

                       if input="+" then {plus<-true; push("+");}
                       
                   else {dummy<-0;}
              
                       fi;

                       if input ="s" then {ss<-true; push("s");}
                       
                   else {dummy<-0;}
              
                       fi;



                       if input ="e" then
                                   {
                                     if not len<2  then
                                                                                 {top<-pop();
                                                                                 if top="s" then{
                                                                                 temp1<-pop(); temp2<-pop(); push(temp1); push(temp2);ee<-true;
                                                                                 }
                                                                                 else {push(top);dummy<-0;}
                                                                                 fi;
                                                                                 }
                                               
                                      else {dummy<-0;}
                                      fi;
                                      }
                                    
                   else {dummy<-0;}
              
                       fi;

                       if input ="e" then
                                     {
                                         if not len<2 then
                                            {
                                             if not ee=true  then
                                                          {ee<-true;top<-pop();
                                                          if top="+" then{
                                                          temp1<-pop(); temp2<-pop(); push(atoii.i2a((atoii.a2i(temp1)+atoii.a2i(temp2))));
                                                           }
                                                         else {push(top);dummy<-0;}
                                                          fi;
                                                          }
                                                         else {dummy<-0;}
                                                          fi;
                                             }

                                       
                                     else {dummy<-0;}
                                      fi;
                                      }
                                    
                   else {dummy<-0;}
              
                       fi;

                       if input ="e" then
                                    {
                                     if  len<2 then {inputn<-true;}
                                      else {dummy<-0;}
                                      fi;}
          
       
                   else {dummy<-0;}
              
                       fi;
                     

                       if plus=false  then
                                    {
                                     if dd=false  then{
                                           if ss=false  then{
                                                   if dd=false  then{
                                                            if xx=false  then{
                                                                    if inputn=false then{
                                                                           if ee=false then{
                                                                                           push(input);}
                                                                           else {dummy<-0;}
                                                                           fi;
                                                                           }
                                                            else {dummy<-0;}
                                                            fi;
                                                            }
                                                         else{dummy<-0;}
                                                         fi;
                                                         }
                                                    else {dummy<-0;}
                                                    fi;
                                                    }
                                             else {dummy<-0;}
                                             fi;
  
                                             }
                                      else {dummy<-0;}
                                      fi;
                                       }
                                    
                    else {dummy<-0;}
              
                        fi;



                      

                       if flag=true then {
                           out_string(">");
                           input<-in_string();
                       }
                        else {dummy<-0;}
              
                       fi;
                       plus<-false;
                       ss<-false;
                       dd<-false;
                       ee<-false;
                       xx<-false;
                       inputn<-false;
                              
                       }

                   pool;
                        
    }};

        push ( newitem:String):Object{{
  
    a <-new Node;
        a.init(newitem);
        if len=0 then head<-a  else
        {a.add(head);
            head<-a;}
       
        fi;
        len<-len+1;
    
        }};
        pop():String{{
        len<-len-1;
        popstring<-head.getitem();
        head<-head.getnext();
        popstring;
    
    
        }};
};
