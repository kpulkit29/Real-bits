var Crowdsale = artifacts.require("GustavoCoinCrowdsale");
var Token = artifacts.require("GustavoCoin");
contract("Crowdsale",function(acc){
    it("should be able to put money",function(){
   return Crowdsale.deployed().then(function(ins){
      contract_obj=ins;
     return contract_obj.sendTransaction({value:web3.toWei(10,"ether"),address:contract_obj.address,from:acc[2],gas:5000000});
   }).then(function(hash){
       console.log(hash);
      //assert.equal(web3.eth.getBalance(contract_obj.address).toNumber(),web3.toWei(10,"ether"),"eq they are");
   });

    });
    it("get the total amount raised",function(){
        return Crowdsale.deployed().then(function(ins){
           contract_obj=ins;
          return contract_obj.getTotalRaised()
        }).then(function(hash){
            console.log(hash);
           //assert.equal(web3.eth.getBalance(contract_obj.address).toNumber(),web3.toWei(10,"ether"),"eq they are");
        });
     
         })
    
});