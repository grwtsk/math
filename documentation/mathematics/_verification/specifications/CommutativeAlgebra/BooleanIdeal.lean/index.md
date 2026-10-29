# Verification target: Boolean Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e85e72a404a4ba1da197e35f37f6027d4980560",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant6f8dcad79bf6662396942b7a3ca1424a359f04f3618af04a37d9d7ca2be6f3ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/BooleanIdeal.lean/index.md) · [Full source](../../../../CommutativeAlgebra/BooleanIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e85e72a404a4ba1da197e35f37f6027d4980560`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant6f8dcad79bf6662396942b7a3ca1424a359f04f3618af04a37d9d7ca2be6f3ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/BooleanIdeal/Variant6f8dcad79bf6662396942b7a3ca1424a359f04f3618af04a37d9d7ca2be6f3ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.ShiftSemantics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanCoordinateRing](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleancoordinatering.md) | 15 | `declaration-track:86824ff1e55220cdb2735ad6c4ee44529f55b65a802f77c6a4f4cf7adb5bc8a8` |
| 2 | `def` | [bitfieldCoordinate](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/bitfieldcoordinate.md) | 18 | `declaration-track:69cba750b4ebc848a7db8b413bc5e00be3193cdc3cfa674ec37bfee6466547a9` |
| 3 | `structure` | [BooleanIdeal](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleanideal.md) | 23 | `declaration-track:101140d6a5bcf759eccb53777832e20ca95a4b39e00fc97c750ee56c8c05a2bf` |
| 4 | `def` | [BooleanIdeal.IsModel](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleanideal-ismodel.md) | 29 | `declaration-track:daaa6821b86a3e6989b1fe3fe4112e0f5cabe46ed8ec3278b1618a28245c01b6` |
| 5 | `abbrev` | [BooleanVariety](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleanvariety.md) | 36 | `declaration-track:c1a3d85ce56a6627cbb2584e4a53960eaa0d0340a5addf6743010650f89adabc` |
| 6 | `theorem` | [BooleanIdeal.variety_empty_of_one_mem](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleanideal-variety-empty-of-one-mem.md) | 39 | `result-track:e5e420b5be9757f587736897954b0a93e71234620492eac9bcad42f9a2fea1e2` |
| 7 | `structure` | [BooleanNullstellensatzCertificate](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/booleannullstellensatzcertificate.md) | 49 | `declaration-track:662bafb940e43884f4d6391f754c4b09885ef1db27943a8b73a3cce2a24aede9` |
| 8 | `theorem` | [boolean_variety_empty_iff_one_mem](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/boolean-variety-empty-iff-one-mem.md) | 55 | `result-track:57f446f2ab911ae35c253ef742bdcfc33d3755ff9f08d7ab0f1d294bb2120e4e` |
| 9 | `structure` | [TypedBooleanIdealSystem](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/typedbooleanidealsystem.md) | 65 | `declaration-track:2ae23003c73f9512c809b7a376f077fe43bee33c4efd79b3c6bc6b204664b1d8` |
| 10 | `structure` | [HammingBudgetCertificate](../../../../CommutativeAlgebra/BooleanIdeal.lean/declarations/hammingbudgetcertificate.md) | 74 | `declaration-track:1c7e5a28935504f0552ae6a86cceaa0bbbb77771602306034975cb55cf567eb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=172bd6499059ac6e79788a3051c53861dbbab17db33a024bfea0ade6bdc38a9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant6f8dcad79bf6662396942b7a3ca1424a359f04f3618af04a37d9d7ca2be6f3ac.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/BooleanIdeal/Variant6f8dcad79bf6662396942b7a3ca1424a359f04f3618af04a37d9d7ca2be6f3ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
