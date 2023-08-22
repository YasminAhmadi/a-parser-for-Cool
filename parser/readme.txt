#Yasmin Ahmadi - 610398190

All code in Cool is organized into classes. 
class_list --> class  (for a single class)
           --> class_list class (for more than one class)
	

Classes should be of the form:

class <type> [ inherits <type> ] { <feature_list>
};

But if for example there is an error in type, we want to also catch that but throw it away (by setting RESULT = null; )

Features:
The body of a class definition consists of a list of feature definitions. A feature is either an attribute or a method.

Attribute is of the form <object>:<type>;
Method is of the form <object> ( formals ) : <type> { exp }


Attributes:
<id> : <type> [ <- <expr> ];

Methods:
<id>(<id> : <type>,...,<id> : <type>): <type> { <expr> };

Dispatch; 

<expr>.<id>(<expr>,...,<expr>)
<id>(<expr>,...,<expr>) <expr>@<type>.id(<expr>,...,<expr>)
self.<id>(<expr>,...,<expr>)  Without the self.

Here self. Is eliminated so we have to get self from abstract table and feed it as argument to constructor object

Conditionals:
if <expr> then <expr> else <expr> fi
4
Blocks:
{ <expr>; ... <expr>; }

Inside the braces should be of form:

--> exp:l1 SEMI
--> exp_list:l1 exp:l2 SEMI
To handle errors we also catch error that is terminated by ; and ignore it (by setting RESULT to null)
--> error SEMI

Let:
let <id1> : <type1> [ <- <expr1> ], ..., <idn> : <typen> [ <- <exprn> ] in <expr>
We first have a run for "LET" then for the rest we use nonterminal "letexp"
        ::= OBJECTID:l1 COLON TYPEID:l2 IN exp:l4

        | OBJECTID COLON TYPEID COMMA letexp

        | OBJECTID COLON TYPEID ASSIGN exp IN exp

        | OBJECTID COLON TYPEID ASSIGN exp COMMA letexp

        | error IN exp

        | error COMMA letexp
The ones not ending with IN could be use to have multiple of them, ending with one that has IN at the end

For the terminals plus , minus, ... also for if, while, ... the rules are the exact same and there is no trick to it and we pass the according arguments as before

Case has to be of the form:
case <expr0> of
<id1> : <type1> => <expr1>; ...
<idn> : <typen> => <exprn>;
esac

New:
new <type>

Isvoid:
isvoid expr



