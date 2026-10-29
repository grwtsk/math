# Verification target: Scale Roots

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7a6e20349925544244c98518470ba4e279a64ea",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7a6e20349925544244c98518470ba4e279a64ea`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots.md) | 30 | `declaration-track:a1b23fa5ed4fb70b591e292d4a516d73b03b590ec66bcfdf51f935bcf36cf525` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/coeff-scaleroots.md) | 35 | `result-track:5841f6ed7c77248ddb8f4c45da96aedfef82dbd226a8739d01f73e8989ae2613` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/coeff-scaleroots-natdegree.md) | 40 | `result-track:0fdd64b550e18b723d1898b3878ee68be73a317e360a97fb8d0be547663609c5` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/zero-scaleroots.md) | 46 | `result-track:47e73bcc8275aa73a6d4e9a1d268b26ad1ffca97a3a35930398a1e45e16c7683` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-ne-zero.md) | 51 | `result-track:5d0ca9556f72a8be94247ba8a08cbff6da58a0e2683aecd356094f667ae83223` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/support-scaleroots-le.md) | 60 | `result-track:c65f8d5db0c76fddf2731396615f3964c366da55b8d29437b01e3c6040813361` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/support-scaleroots-eq.md) | 65 | `result-track:9eeb0ef34979bc01839d45b1d78981e33ceb33860d657d1dc1387e6bac3354c7` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/degree-scaleroots.md) | 76 | `result-track:f4c9f210c81cd06d878cd4eb4514c32c1698c505464716bdc58ceb5ef4ec6d24` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/natdegree-scaleroots.md) | 88 | `result-track:5499a6cc83a53d06b42d5e857a7e858b5a19793053b32fda09860f379f200caf` |
| 10 | `theorem` | [monic_scaleRoots_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/monic-scaleroots-iff.md) | 92 | `result-track:7a8b1fb56e6c1285d821f1aba04beb14d73bbd8ec172b4d9de7849881e228737` |
| 11 | `theorem` | [map_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/map-scaleroots.md) | 96 | `result-track:f1e84be1c5e92f3ee9be537b1ea664025a58f17dcdb3a8ec485fe74682329021` |
| 12 | `theorem` | [scaleRoots_eval₂_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-eval-mul.md) | 108 | `result-track:171460c41a85c2ce96759cf2f08ff18962a94296f88b3db0904604f5aff1a64a` |
| 13 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-eval-eq-zero.md) | 130 | `result-track:948da3c60252fcce282d7930c7d3ccf50eacd81456bef556072e181f054021fb` |
| 14 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-aeval-eq-zero.md) | 134 | `result-track:c03088dcc431ca7a7a54d3fe67a7f329df2a71b585325235efc176e89da4ce8b` |
| 15 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero.md) | 139 | `result-track:d716957ff444a4183561cd01bccafb1560e93ab872c2e44958e01e7f3a4c3a28` |
| 16 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRoots.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero.md) | 148 | `result-track:85a93a87c0034b471ba16a009a2e49fa40e60d234c42b600e958e92d4aa14fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acede24278341c2ba07b5ad104f61f85a38d9c0e5a3f5d9a871a7b3c2795d857 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
