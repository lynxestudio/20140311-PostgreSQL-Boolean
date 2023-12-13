--Boolean queries
SELECT * FROM propositions;
SELECT p,q,(p AND q) as "^" FROM propositions;
SELECT p,r,(p AND r) as "^" FROM propositions;
SELECT p,q,(p OR q) as "v" FROM propositions;
SELECT p,t,(p OR t) as "v" FROM propositions;
SELECT s,(NOT s) as "!" FROM propositions;
SELECT v,(NOT v) as "!" FROM propositions;
