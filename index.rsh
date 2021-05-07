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
            //accTransfer: ? böyle bir şeye ihtiyacım var mı emin değilim
        }),
        View('NFT', {
            owner: Address,
        }),
        ],
        (Creator, Buyer, vNFT) => {
            Creator.only(() => {
                const id = declassify(interact.getId());
            });
            Creator.publish(id);

            var [owner, price] = [Creator, 0];
            { vNFT.owner.is(owner); };
            invariant(balance() == 0);
            while (true) {
                commit();}
            }),
            
            const[keepGoing, owner, price ] = 
            Creator.only (() => {
                const _params = interact.getParams();   
                const initPrice = declassify(_params.initialPrice);
                const lifetime = declassify(_params.lifetime);
                });
                Creator.publish(initPrice, lifetime);
                parallel_reduce(true, 0, 0 )
                  .invariant(balance() == initialPrice)
                  .while(keepGoing)
                  .case(Creator, (() => ({ 
                    when: declassify(interact.keepGoing())})),
                    (_) => {
                        each([Creator, Buyer], () => {
                            interact.lifetime(true); });
                        return [ true, owner, initialPrice * (timeRemaining/lifetime)]; })
                  .case(Buyer, (() => ({ 
                    when: declassify(interact.keepGoing())})),
                    (_) => {
                        each([Creator, Buyer], () => {
                            interact.lifetime(true); });
                        return [ true, owner, initialPrice * (timeRemaining/lifetime)]; })
                   .timeout((deadline, () => {
                    showOutcome(TIMEOUT)();
                    //commit ve exit eklenip programdan çıkılabilir
                commit();
                exit();
            }));