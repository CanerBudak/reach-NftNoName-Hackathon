'reach 0.1';
'use strict';

export const main =
    Reach.App(
        {},
        [Participant('Creator', {
            getId: Fun([], UInt),
        }),
        ParticipantClass('Buyer', {
            newOwner: Fun([], Address),
            showOwner: Fun([UInt, Address], Null),
            shouldBuy: if () {
                return ;
              } else {
                return  ;}
                
        }),
        View('NFT', {
            owner: Address,
        }),
        ],
        (Creator, Buyer, vNFT) => {
            Creator.only (() => {
                const id = declassify(interact.getId())
                const _params = interact.getParams();   
                const initPrice = declassify(_params.initialPrice);
                const lifetime = declassify(_params.lifetime);
                });
                Creator.publish(initPrice, lifetime, id);
            const[keepGoing, owner, price, ownerCount] = 
                parallelReduce(true, Creator, 0 )
                  .invariant(balance() == initialPrice)
                  .while(keepGoing)
                  .case(Creator, (() => ({ 
                    when: declassify(interact.keepGoing())})),
                    (_) => {
                        each([Creator, Buyer], () => {
                             });
                        return [ true, owner, initialPrice * (timeRemaining/lifetime)]; })
                  .case(Buyer, (() => ({ 
                    when: declassify(interact.keepGoing())})),
                    (_) => {
                        each([Creator, Buyer], () => {
                            Buyer.only(() => {
                                if(interact.shouldBuy()){
                                    return[true, Buyer, initialPrice * (timeRemaining/lifetime)];
                                }   else {
                                    return[];
                                }
                                
                        return [ true, owner, initialPrice * (timeRemaining/lifetime)]; })
                   .timeout((deadline, () => {
                    showOutcome(TIMEOUT)();
                commit();
                exit();
            }));