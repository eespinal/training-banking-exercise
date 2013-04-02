training-banking-exercise
=========================

Banking exercise for Ruby training

An owner of a bank has recently decided to expose their banking functionality over a web based interface to reach a larger audience. You have been brought in to work on the core object model that will be leveraged from the user interface layer. The bank owner presents you with a list of the following stories that the object model needs to accommodate.

A bank manager should be able to get a list of all the account holders that bank with the bank so that they can keep track of the number of customers they have on a day to day basis.
An account holder should be able to get the current balance of their account so they can make informed choices about how to manage their money.
An account holder should be able to withdraw money, up to the balance, from their account so that they can use it to manage purchases.
An account holder should be able to transfer money between their account and the account of another account holder, upto the balance of the account being transferred from, so that they can securely transfer between friends/businesses/and spouses they bank with
A teller can get the balance for any account as of a certain date so they can provide information to customers at the counter.
A bank manager can get a list of :
The Top Five Account Holders (Based on Balance) – Sorted by balance descending
The Bottom Five Account Holders (Based on Balance), sorted by balance ascending
For the purpose of simplicity, an account holder can have at most 1 account.

CONSTRAINTS:
You need to create the tests FIRST and then the implementation. 
The tests must be as atomic as possible (Unit Testing).

TIPS:
Code it like you want it.
Remember to start in a happy scenario and then consider all the possibilities.
