# Verification target: Commutative Coefficient Carriers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f91ae5a6d400061111e8ee96d05daf57a1ccd28",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f91ae5a6d400061111e8ee96d05daf57a1ccd28`.

Source path: `GRWTSK/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientContext](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/declarations/coefficientcontext.md) | 39 | `declaration-track:6d11f388d851d7ed21c88bfbeb6d2e47e6791f306ab4ce911d792d38dbfd6323` |
| 2 | `def` | [integral](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/declarations/integral.md) | 48 | `declaration-track:0282b0a26dd7c7f489b90a962146dc14476a0675194f1974fb8dc5ed38aae0ea` |
| 3 | `def` | [integralLifted](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/declarations/integrallifted.md) | 52 | `declaration-track:4ab2b3a9fb67fd7ff1a2022ca8fa37234b5551d4240d60086c1af10b1fdde169` |
| 4 | `def` | [rational](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/declarations/rational.md) | 56 | `declaration-track:dfe4188c7cbf16f5de5cd2c5527c6a59b8c3c6ef0c4b8d026aeea1f84c74d288` |
| 5 | `def` | [modulo](../../../../CommutativeAlgebra/CommutativeCoefficientCarriers.lean/declarations/modulo.md) | 60 | `declaration-track:3f4efcc1e58ff964df083a2def9449ca67dda4a5129b343d6d5823bee39d1e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12a89ab1fff7747f35b5f7fdea436292dc072c4a87a70372b087dd6fa0ababf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
