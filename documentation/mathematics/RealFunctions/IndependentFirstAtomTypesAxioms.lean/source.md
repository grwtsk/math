# Independent First Atom Types Axioms — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f561ab33be275136131f87cce3a55b1d688c2a2` · SHA-256 `ec05c3bd1b63bd27a53490241a82d10628cbb05a06bb152a38d5aba4c74a4e9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFirstAtomSignedWork
import SourceFirstAtomDirectConsumer

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork RH16ResumeApplication

#check @firstAtomHeadWork
#print axioms firstAtomHeadWork

#check @remainingAtomWork
#print axioms remainingAtomWork

#check @firstAtomHeadWork_eq_empty_prefix
#print axioms firstAtomHeadWork_eq_empty_prefix

#check @actual_criticalPrimeTest_deriv_first_interval
#print axioms actual_criticalPrimeTest_deriv_first_interval

#check @firstAtomHeadWork_signed_bounds
#print axioms firstAtomHeadWork_signed_bounds

#check @firstAtomHeadWork_nonpositive
#print axioms firstAtomHeadWork_nonpositive

#check @criticalMangoldtWork_eq_head_add_remaining
#print axioms criticalMangoldtWork_eq_head_add_remaining

#check @criticalMangoldtWork_lower_of_remaining_lower
#print axioms criticalMangoldtWork_lower_of_remaining_lower

#check @remaining_lower_of_criticalMangoldtWork_lower
#print axioms remaining_lower_of_criticalMangoldtWork_lower

#check @residual_upper_of_remaining_lower
#print axioms residual_upper_of_remaining_lower

#check @estimate_of_remainingAtomWork_tail
#print axioms estimate_of_remainingAtomWork_tail

#check @residual_upper_of_remaining_signed_lower
#print axioms residual_upper_of_remaining_signed_lower

#check @all_real_source_lower_of_remaining_signed_tail
#print axioms all_real_source_lower_of_remaining_signed_tail

#check @estimate_of_remaining_signed_tail
#print axioms estimate_of_remaining_signed_tail
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9264c43281268ad06350d257a060b21301dafd1b9bd2052317cd011b3c1bbcc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IndependentFirstAtomTypesAxioms/Variantec05c3bd1b63bd27a53490241a82d10628cbb05a06bb152a38d5aba4c74a4e9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
