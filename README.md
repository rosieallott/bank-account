Bank Account Tech Test
=======================
```
,--------------------------------------------------------------------------.
| OV"|OOOOOO>   U N I T E D  S T A T E S   OF  A M E R I C A   <OOOOOV"|OO |
| OO |OOOOOOOOOOOOmmmmOOOOOOmmmmmmmmmmmmmmmmmmOOOOOOOmmmmOOOOOOOOOOOOO |OO |
| OO_|OO@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@OO_|OO |
| OOOOO@6@@@@@@@@@@@@@@@@@@@@@'"           "`@@@@@@@@@@F@81497973A@@OOOOOO |
| OO@@@@@@@@@@@@@@@@@@@@@@@@`  ,,:@@@@@@*.    `@@@@@@@@@@@@@@@@@@@@@@@@@OO |
| OOO@@@@@' _`@@@@@@@@@@@@@`  W@@@@@@@@@@@;    `@@@@@@@@@@@@@@@@6@@@@@@OOO |
| OOO@@@@' |_ `@@@@@@@@@@@'  (@@@@@;--;;--@'    `@@@@@@@@@@@@@@@@@@@@@@OOO |
| OOO@@@@. |  .@@@@@@@@@@@   (@@@@  @  \@ ;@     @@@@@@@@@@@@@@@@@@@@@@OOO |
| OOO@@@@@,  ,@@@@@@@@@@@@   (@@@@     _\ }@     @@@@@@@@'==`@@@@@@@@@@OOO |
| OOO@@@@@@@@@@@@@@@@@@@@@.    \_@;;; __ ;;     .@@@@@@@@./\,@@@@@@@@@@OOO |
| OO@@@@@F@81497973A@@@@@@@.   ,;;\_ .__/;,    .@@@@@@@@@@@@@@@@@@@@@@@@OO |
| OOOOOO@@@@@@@@@@@@@@@@@@@@@. ,;;;\  , /;;;; .@@@@@@@@@@@@@@@@@@@@@OOOOOO |
| OV"|OO@@@6@@@@@@@@@@@@@@@@@@@. Washington .@@@@@@@@@@@@@@@@@@@6@@@OV"IOO |
| OO |OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO IOO |
| OO_|OOOOOOOOOOOOOO>   O  N  E     D  O  L  L  A  R   <OOOOOOOOOOOOOO_IOO |
`--------------------------------------------------------------------------'

```
## Using the app

* Fork this repo, clone it down and run bundle
* Open up IRB (or another REPL) and interact with the app as follows:
  - Require the master file by typing the command: 'require "./lib/atm.rb"'
  - Set yourself up an account by calling the command: 'account = Account.new'
  - Get yourself to an ATM (by calling the command: 'atm = Atm.new(account)')
  - You can now:
    - make deposits: 'atm.deposit(amount)'
    - withdraw money: 'atm.withdraw(amount)'
    - view your statement: 'atm.view_statement'

Your statement will look something like this:
```
date           || credit || debit || balance
16/10 15:03:07 ||        ||   25  ||  125
16/10 15:03:05 ||   50   ||       ||  150
16/10 15:03:01 ||   100  ||       ||  100

```

### Brief for this tech test:

* This is an IRB interactive app - implementing a command line interface that takes input from STDIN was not required
* User should be able to deposit and withdraw from their account
* An account statement should be viewable, containing: date, amount deposited/withdraw, balance
* Data is stored in local memory - a database was not required
