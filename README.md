# MAKRES ACADEMY TECH-TEST WEEK (Bank Tech-TEST)

>## Specification

>### Requirements

>* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement >a command line interface that takes input from STDIN.)
>* Deposits, withdrawal.
>* Account statement (date, amount, balance) printing.
>* Data can be kept in memory (it doesn't need to be stored to a database or anything).

>### Acceptance criteria

>**Given** a client makes a deposit of 1000 on 10-01-2012
>**And** a deposit of 2000 on 13-01-2012
>**And** a withdrawal of 500 on 14-01-2012
>**When** she prints her bank statement
**Then** she would see
>
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

## Installation

1. `git clone https://github.com/9sarah0/bank-tech-test.git`
2. `cd bank-tech-test`
3. `bundle`
4. `irb`
5. `require './lib/account'`
6. To create a new a account:`my_account = Account.new`.
7. To add a money to your account: `my_account.deposit(7)`.
8. To withdraw money from your account: `my_account.withdraw(2)`.
9. To print your account statement: `my_account.prints_statement`.
