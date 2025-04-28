grammar SimpleEnglish;

// Parser Rules

program: statement+ EOF;

statement
    : variableDeclaration
    | arithmeticOperation
    | logicalOperation
    | conditionalStatement
    | loopStatement
    | functionDefinition
    | functionCall
    | userInput
    | outputStatement
    ;

variableDeclaration
    : 'Make' ID valueExpression '.'
    ;

valueExpression
    : INT
    | STRING
    | ID
    | arithmeticExpression
    ;

arithmeticOperation
    : 'Make' ID arithmeticExpression '.'
    ;

arithmeticExpression
    : valueExpression ('plus' | 'minus' | 'times' | 'divided by' | 'mod') valueExpression
    ;

logicalOperation
    : 'If' comparisonExpression ',' outputStatement
    ;

comparisonExpression
    : ID comparisonOperator valueExpression
    ;

comparisonOperator
    : 'is equal to'
    | 'is greater than'
    | 'is less than'
    | 'is greater than or equal to'
    | 'is less than or equal to'
    ;

conditionalStatement
    : 'If' comparisonExpression ',' outputStatement ',' 'Otherwise,' outputStatement
    ;

loopStatement
    : 'Repeat' INT 'times,' statement
    ;

functionDefinition
    : 'To' ID 'take' ID 'and' ID ',' functionBody
    ;

functionBody
    : statement+ 'return' arithmeticExpression '.'
    ;

functionCall
    : 'Make' ID ID valueExpression 'and' valueExpression '.'
    | 'Say' ID '.'
    ;

userInput
    : 'Ask' STRING ',' 'make' ID 'the answer.'
    ;

outputStatement
    : 'Say' (STRING | (STRING 'plus' ID)) '.'
    ;

// Lexer Rules

ID: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
STRING: '"' (~["\r\n])* '"';

WS: [ \t\r\n]+ -> skip;
