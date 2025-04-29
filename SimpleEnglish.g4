grammar SimpleEnglish;

program: statement+;

statement
    : variableDeclaration
    | expressionStatement
    | conditional
    | loop
    | functionDeclaration
    | functionCall
    | inputStatement
    | outputStatement
    ;

variableDeclaration
    : 'Make' ID value '.'
    ;

value
    : NUMBER
    | STRING
    | ID
    | arithmeticExpression
    ;

arithmeticExpression
    : NUMBER arithmeticOp NUMBER
    ;

arithmeticOp
    : 'plus'
    | 'minus'
    | 'times'
    | 'divided by'
    | 'mod'
    ;

expressionStatement
    : 'Make' ID arithmeticExpression '.'
    ;

conditional
    : 'If' condition ',' 'say' STRING '.' ('Otherwise' ',' 'say' STRING '.')?
    ;

condition
    : ID comparator value
    ;

comparator
    : 'is equal to'
    | 'is greater than or equal to'
    | 'is less than or equal to'
    | 'is greater than'
    | 'is less than'
    ;

loop
    : 'Repeat' NUMBER 'times' ',' statement+
    ;

functionDeclaration
    : 'To' ID (',' 'take' paramList)? ',' 'return' returnExpression '.'
    ;

paramList
    : ID ('and' ID)?
    ;

returnExpression
    : ID arithmeticOp ID
    ;

functionCall
    : 'Make' ID ID value ('and' value)? '.'
    ;

inputStatement
    : 'Ask' STRING ',' 'make' ID 'the answer.'
    ;

outputStatement
    : 'Say' (STRING | STRING 'plus' ID) '.'
    ;

ID      : [a-zA-Z_][a-zA-Z_0-9]* ;
NUMBER  : [0-9]+ ;
STRING  : '"' .*? '"' ;

WS      : [ \t\r\n]+ -> skip ;
