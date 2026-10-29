import GRWTSK.Logic.FiniteSequences.BatchCertificate

open GRWTSK.Logic.FiniteSequences.DecisionCertificate
open GRWTSK.Logic.FiniteSequences.BatchCertificate

-- Expected type mismatch: old evidence proves length zero of [], not of the full appended history.
example : Certificate Nat Nat :=
  { entries := [(11, 7)]
    predicate := emptyHistoryCertificate.predicate
    evidence := emptyHistoryCertificate.evidence }
