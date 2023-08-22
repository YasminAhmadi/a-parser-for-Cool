(*
 *  execute "coolc bad.cl" to see the error messages that the coolc parser
 *  generates
 *class Cons inherits List {
xcar : Int;;
xcdr : List;
isNil() : Bool { false };
init(hd : Int, tl : List) : Cons {
  {
xcar <- hd; xcdr <- tl; self;
} };
};
 *  execute "parsetest < bad.cl" to see the error messages that your parser
 *  generates
 *)

(* error in this class but terminated properly *)
class A {
add(stack: Stack): Object{
let first: Int,
			second: Int,
			result: String
		in {
			mystack <- mystack.pop();  -- pop "+" from front
			first <- (new A2I).a2i(mystack.top());
			mystack <- mystack.pop()
			second <- (new A2I).a2i(mystack.top());
			mystack <- mystack.pop();
			result <- (new A2I).i2a(first + second);
			mystack <- mystack.push(result);  -- add the result back to stack
		}
};
}; 
(* no error *)
class A {
add(stack: Stack): Object{
let first: Int,
			second: Int,
			result: String
		in {
			mystack <- mystack.pop();  -- pop "+" from front
			first <- (new A2I).a2i(mystack.top());
			mystack <- mystack.pop();
			second <- (new A2I).a2i(mystack.top());
			mystack <- mystack.pop();
			result <- (new A2I).i2a(first + second);
			mystack <- mystack.push(result);  -- add the result back to stack;
		}
};
}; 

(* no error *)
class A {
};

(* error:  b is not a type identifier *)
Class b inherits A {
};

(* error:  a is not a type identifier *)
Class C inherits a {
};

(* error:  keyword inherits is misspelled *)
Class D inherts A {
};

(* error:  closing brace is missing *)
Class E inherits A {
;