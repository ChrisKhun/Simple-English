# SimpleEnglish: A Custom Programming Language Grammar

## 📘 Project Overview

**SimpleEnglish** is a custom programming language grammar designed to resemble natural English. Its goal is to make programming more intuitive and accessible, especially for beginners, by using human-readable syntax that closely mimics regular instructions in English.

---

## 🧠 Language Concept and Purpose

- **Name**: SimpleEnglish  
- **Purpose**: Reduce the barrier to programming by making it feel like writing or giving instructions in plain English.  
- **Design Goals**:
  - Use readable, natural-language-based syntax.
  - Minimize symbols and technical jargon.
  - Support simple automation, decision-making, and calculations.

---

## 🧩 Core Language Features

### 📦 Variables & Data Handling

Declare variables using plain phrases:

```
Make age 25.
Make name "Chris".
```

---

### ➕ Operators & Expressions

Use common English for arithmetic and logical operations:

#### Arithmetic Operations

```
Make total 10 plus 5.
Make total 10 minus 5.
Make total 10 times 5.
Make total 10 divided by 5.
Make remainder 10 mod 3.
```

#### Logical Operations

```
If age is equal to 18, say "You are 18 years old".
If age is greater than 18, say "You are an adult".
If age is less than 18, say "You are a minor".
If age is greater than or equal to 18, say "You can vote".
If age is less than or equal to 18, say "You cannot vote yet".
```

---

### 🔁 Control Flow

#### Conditionals

```
If temperature is less than 32,
say "It is freezing".
Otherwise,
say "The temperature is fine".
```

#### Loops

```
Repeat 5 times,
   say "Hello!".
```

---

### 🔧 Functions

Define and call functions in a readable, natural style:

#### Function Definition

```
To add two numbers,
   take x and y,
   return x plus y.
```

#### Function Call

```
Make result add 5 and 10.
Say result.
```

---

### 💬 Input/Output

#### User Input

```
Ask "What is your name?", make userName the answer.
Ask "What is your age?", make userAge the answer.
Ask "What is your favorite color?", make color the answer.
```

#### Output to User

```
Say "Hello, world!".
Say "Hello, " plus userName.
Say "Your age is " plus userAge.
```

---

## 🧪 Example Program

```
Ask "What is your age?", make age the answer.
If age is greater than or equal to 18,
say "You can vote".
Otherwise,
say "You cannot vote yet".
```

---

## ✅ Expected Output & Behavior

- Programs behave like natural instructions.
- Errors are clearly explained (e.g., "I don't understand that statement. Did you mean...?").
- User input is handled with simple prompts and intuitive responses.

---

## 📍 Project Status

Work in progress — grammar rules are being refined, and a parser/interpreter may follow for implementation.

---

## 👨‍💻 Author

Created as part of a final project to explore the intersection of natural language and programming.
