grammar Logo;


@parser::members {

private Turtle turtle;

public LogoParser(TokenStream input, Turtle turtle) {
    this(input);
    this.turtle = turtle;
}

}

start
:
	'hello' 'world' 
;

WS:	[ \t\r\n]+ -> skip;
LET:'let';
ID: [a-zA-Z_]+[0-9]*;

ASIGN:'=';

AND:'&&';
OR:'||';
NEGATION:'!';

ADD:'+';
SUBSTARCT:'-';
MULT:'*';
DIV:'/';
MOD:'%';

LESSTHAN:'<';
GREATERTHAN:'>';
LTEQUAL:'<=';
GTEQUAL:'>=';
EQUAL:'==';
DIFF:'<>';

NUMB:[0-9]+('.'[0-9])?;
BOOL:'true'|'false';
STRING:'"'(~'"'|'\\"')* '"';

COMMA:',';
PRIGHT:'(';
PLEFT:')';

COLON:':';

IF:'if';
THEN:'then';
END_IF:'end_if';
ELSE:'else';
WHILE:'while';
DO:'do';
END_WHILE:'end_while';
DEF:'def';
END_DEF:'end_def';

MOVE_FORW:'move_forw';
MOVE_BACK:'move_back';
ROT_L:'rot_l';
ROT_R:'rot_r';
SET_COLOR:'set_color';

READ:'read';
PRINTLN:'println';
