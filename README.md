# Solidity

Create an ethereum comptaible blockchain contract to distribute profits and equity to eligible<br>
company employees.  To demonstrate the use we created three different contracts, an equal profit<br>
splitter, a tiered profit splitter, and a contract that distrubutes shares in a company after a<br>
prescribed time period.<br>

The first contract splits the profits (an amoutn we define) equally between three employees.<br>
We used account numbers in our testnet from Ganache.  The code can be accessed in the code files<br>
In this case we have chosen to send 3 ether that would be equally distributed to three employees<br>
After writing our code in remix and succesfully compiling, our account in Ganache account looks as<br>
follows.

![ganachecontractonebefore](https://github.com/dowdlea86/Solidity/blob/main/png_files/ganachecontractonebefore.png) 

In remix, the screen should look as follows, we can deploy the selected value and confirm with metamix:<br>

![codetransactionone](https://github.com/dowdlea86/Solidity/blob/main/png_files/codetransactionone.png) 

To show our contract deploy was succesful, we can look through our accounts in Ganache and see that 3 ether<br>
was transferred from one acccount and split evenly between 3.<br>

![ganachecontractoneafter](https://github.com/dowdlea86/Solidity/blob/main/png_files/ganachecontractoneafter.png) 

The first contract is similar to the first one except we tier the amount of profit between 3 employees<br>
The first employee gets 60%, second one gets 25%, third one gets 15%.  The contract balance looks as follows<br>
before.<br>

![ganachecontracttwobefore](https://github.com/dowdlea86/Solidity/blob/main/png_files/ganachecontracttwobefore.png) 

In this case we will transact 10 ether between three employees:<br>

![codetransactiontwo](https://github.com/dowdlea86/Solidity/blob/main/png_files/codetransactiontwo.png) 

After, our accounts will reflect the new balances:<br>

![ganachecontracttwoafter](https://github.com/dowdlea86/Solidity/blob/main/png_files/ganachecontracttwoafter.png) 

For the final contract, we will demonstrate a slightly different use case and distribute 1000 shares to an<br>
employee over a 4 year period.  The employee has his shares vested over a 4 year period, with 250 shares vesting<br>
per year.  Our code will look as follows:

![codetransactionthree](https://github.com/dowdlea86/Solidity/blob/main/png_files/codetransactionthree.png) 

As we demonstrate this contract it is important to note that because the shares vest we have included a fast<br>
forward function that simulates time passing so our shares can vest at the appropriate time.<br>
In our deployed contract you can see our functions, with the fast forward function we can fast forward time<br>
as we deploy 1000 shares.  After fast forward 250 days at a time respective to our code you can see, in this case<br>
250 shares vested<br>

![contractthreedeploy](https://github.com/dowdlea86/Solidity/blob/main/png_files/contractthreedeploy.png) 



