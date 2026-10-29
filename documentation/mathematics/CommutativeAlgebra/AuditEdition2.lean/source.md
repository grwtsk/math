# Audit Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36929687274374e6537250bdb942253bfeb891af` · SHA-256 `7a070ba8598b11e4c22c9c2b7e40164e4ea1fe0100e688e4dbe72c5ce9222616`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import PhasePolynomialBudget

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

#check @phasePolynomialCoefficient
#print axioms phasePolynomialCoefficient
#check @phasePolynomialCoefficient_pos
#print axioms phasePolynomialCoefficient_pos
#check @positiveMass_ge_taylor
#print axioms positiveMass_ge_taylor
#check @positiveMass_gt_polynomial
#print axioms positiveMass_gt_polynomial
#check @positiveMass_eventually_gt_polynomial
#print axioms positiveMass_eventually_gt_polynomial
#check @positiveMass_not_eventually_polynomial_bounded
#print axioms positiveMass_not_eventually_polynomial_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1408b46e7e1c84e430689e794f389dcab907e4c28a81628198e056d258f4ba1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Audit/Variant7a070ba8598b11e4c22c9c2b7e40164e4ea1fe0100e688e4dbe72c5ce9222616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
