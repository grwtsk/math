# Verification target: Coeff List

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae92a560262bb6d9d367dc1a9fa3c1667635f28",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae92a560262bb6d9d367dc1a9fa3c1667635f28`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffList](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist.md) | 45 | `declaration-track:0ad20046ac3833c5c476aa3c3961e679b37c9a9f4da416cbebf26105daef7d0b` |
| 2 | `theorem` | [coeffList_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-zero.md) | 52 | `result-track:e4e530454ca90a9cdb0d22081800a4f3c61f750795147a3818657d4c2e19b190` |
| 3 | `theorem` | [coeffList_eq_nil](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-eq-nil.md) | 57 | `result-track:8d9add26315b2653466e4031a4d33de04e07a30d0a4e0d21f1b610e5d669e370` |
| 4 | `theorem` | [coeffList_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-c.md) | 61 | `result-track:40eada8e4ab8d56d8d6459b82a6fe5c6d713115636721c22991ef4753ac4de01` |
| 5 | `theorem` | [coeffList_eq_cons_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-eq-cons-leadingcoeff.md) | 64 | `result-track:2e68ca61e92aca23f98e988c4209cc19362023794929beb0df1a3ad0c7637241` |
| 6 | `theorem` | [head?_coeffList](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/head-coefflist.md) | 69 | `result-track:40cd30ed742ced0b9c7718bcdcafd1b4710fb0ca6e5fd52d266862e1331ad3e4` |
| 7 | `theorem` | [head_coeffList](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/head-coefflist-source-edition-2.md) | 73 | `result-track:e82fc3b7bc9f374b65e1fb1b0dde4a1a56ba869b6941a5db809ddc5507c82d8b` |
| 8 | `theorem` | [length_coeffList_eq_withBotSucc_degree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/length-coefflist-eq-withbotsucc-degree.md) | 79 | `result-track:d7621a289802b07af98c4300073ec3bf0bdc1de9650f57036414c33ea29284c3` |
| 9 | `theorem` | [length_coeffList_eq_ite](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/length-coefflist-eq-ite.md) | 83 | `result-track:3ee70d3aaabefb1bed2355196bf39ff1a62edc36ee8ed673232f26e7e0ca2182` |
| 10 | `theorem` | [leadingCoeff_cons_eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/leadingcoeff-cons-eraselead.md) | 87 | `result-track:9410fa48cf0f66ab41a80e214b8ac258e65c67fdd7d8ac7985277384e3837745` |
| 11 | `theorem` | [coeffList_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-monomial.md) | 96 | `result-track:7a2565aaff67c7a2d12b3099a6aa3240c5683946ac939e7ec4e43a94832261b0` |
| 12 | `theorem` | [coeffList_eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-eraselead.md) | 110 | `result-track:b7ed18ba464c96da306f42f61f00ed6b2f214cd56c67258513b441ad7b54f8e3` |
| 13 | `theorem` | [coeffList_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-neg.md) | 161 | `result-track:b1e777900e67af308b4e8b3c420d46eb871461f9dfae2a6f6f51f89b9c2892f6` |
| 14 | `theorem` | [coeffList_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/CoeffList.lean/declarations/coefflist-c-mul.md) | 171 | `result-track:2c2fde46dd4ef9a67ceb78bfb151d890ba84b74c040da2588e35d1ff75701d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc9d12021c08202bdb5a50271c3a2fa5db45f921b9931bb5f78381dcb229febb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
