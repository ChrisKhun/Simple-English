grammar SimpleEnglish;

// Entry point
program: statement+; // A program is a list of one or more statements

// All types of statements allowed
statement
    : variableDeclaration     // Variable assignment
    | expressionStatement     // Variable with expression
    | conditional             // If-else statement
    | loop                    // Repeat block
    | functionDeclaration     // Function definition
    | functionCall            // Function invocation
    | inputStatement          // Input from user
    | outputStatement         // Output to screen
    ;

// Variable assignment
variableDeclaration
    : 'Make' ID value '.'     // Example: Make x 5.
    ;

// Possible values a variable can hold
value
    : NUMBER                  // A number literal
    | STRING                  // A string literal
    | ID                      // Reference to another variable
    | arithmeticExpression    // Math expression
    ;

// Basic arithmetic with numbers or variables
arithmeticExpression
    : (ID | NUMBER) arithmeticOp (ID | NUMBER) // e.g., x plus 3
    ;

// Supported math operators
arithmeticOp
    : 'plus'
    | 'minus'
    | 'times'
    | 'divided by'
    | 'mod'
    ;

// Math expression stored in variable
expressionStatement
    : 'Make' ID arithmeticExpression '.' // e.g., Make sum x plus y.
    ;

// If-Else condition
conditional
    : 'If' condition ',' 'say' STRING '.' ('Otherwise' ',' 'say' STRING '.')?
    ;

// The condition in an if-statement
condition
    : ID comparator value // e.g., x is greater than 5
    ;

// Comparison operators
comparator
    : 'is equal to'
    | 'is greater than or equal to'
    | 'is less than or equal to'
    | 'is greater than'
    | 'is less than'
    ;

// Loop structure
loop
    : 'Repeat' NUMBER 'times' ',' statement+ // Repeat block of statements
    ;

// Function definition
functionDeclaration
    : 'To' ID (',' 'take' paramList)? ',' 'return' returnExpression '.'
    ;

// Function parameters
paramList
    : ID ('and' ID)? // One or two parameters
    ;

// Function return expression
returnExpression
    : ID arithmeticOp ID // e.g., a plus b
    ;

// Calling a function
functionCall
    : 'Make' ID ID value ('and' value)? '.' // e.g., Make result add 3 and 4.
    ;

// Asking user for input
inputStatement
    : 'Ask' STRING ',' 'make' ID 'the answer.' // Input prompt
    ;

// Print to output
outputStatement
    : 'Say' (STRING | STRING 'plus' ID | ID) '.' // Print a string, var, or both
    ;

// Token definitions
ID      : [a-zA-Z_][a-zA-Z_0-9]* ; // Variable or function name
NUMBER  : [0-9]+ ;                // Integer number
STRING  : '"' .*? '"' ;           // Quoted string

WS      : [ \t\r\n]+ -> skip ;    // Ignore whitespace
