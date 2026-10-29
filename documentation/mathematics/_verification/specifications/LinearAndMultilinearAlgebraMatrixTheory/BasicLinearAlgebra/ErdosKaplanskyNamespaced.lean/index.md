# Verification target: Erdos Kaplansky Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c8f2b82808c32bb6c6f2c8bb07f8901c8b83fa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ErdosKaplansky/Variant6d4c8f59acb15c313ef4b813db54981dccfafc01a38e12be8ebb83f0feeaf7e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c8f2b82808c32bb6c6f2c8bb07f8901c8b83fa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ErdosKaplansky/Variant6d4c8f59acb15c313ef4b813db54981dccfafc01a38e12be8ebb83f0feeaf7e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ErdosKaplansky/Variant6d4c8f59acb15c313ef4b813db54981dccfafc01a38e12be8ebb83f0feeaf7e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Subfield` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_aleph0_card_le_rank_fun_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/max-aleph0-card-le-rank-fun-nat.md) | 45 | `result-track:7dbeba146fad45b6e17a588fa9584c8345e876995f3f14eb5a09ed5aa40f785d` |
| 2 | `theorem` | [rank_fun_infinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/rank-fun-infinite.md) | 94 | `result-track:3671aa847703335b3e13475ad280efe3379477db8dcafca070a82d8b39bfa802` |
| 3 | `theorem` | [rank_dual_eq_card_dual_of_aleph0_le_rank'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/rank-dual-eq-card-dual-of-aleph0-le-rank-source-edition-2.md) | 110 | `result-track:c303fe20e8c66e38f1d761b67aa5442aa0be6ef950596f7b015bc951b2fcc731` |
| 4 | `theorem` | [rank_dual_eq_card_dual_of_aleph0_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/rank-dual-eq-card-dual-of-aleph0-le-rank.md) | 120 | `result-track:7f4782de3d3f9fdf0cb64a51a5e0dbe877e7c56739fd5a9fa4b88cc931cf1943` |
| 5 | `theorem` | [lift_rank_lt_rank_dual'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/lift-rank-lt-rank-dual.md) | 128 | `result-track:776583908e4ba7dbe064a43b14238670affa01533b282236403dbff256068035` |
| 6 | `theorem` | [lift_rank_lt_rank_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/lift-rank-lt-rank-dual-source-edition-2.md) | 138 | `result-track:807bedf74318814fed2bac5894fce6db51c9cf191fc0438f055e3b931e4f30a7` |
| 7 | `theorem` | [rank_lt_rank_dual'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/rank-lt-rank-dual.md) | 144 | `result-track:5c99a190eba2c8a6abdc59289dc21d097c02c3c7308f1d315fdbba050c4298bd` |
| 8 | `theorem` | [rank_lt_rank_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ErdosKaplanskyNamespaced.lean/declarations/rank-lt-rank-dual-source-edition-2.md) | 148 | `result-track:b319147cbf1c876fb2c624a0c39d656360105536b0cb554903fdc6597cf16e01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=160bb7b6be56f473ef2e41776d2b5940d8184adde4c0f06e3ae24cd5809fb085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ErdosKaplansky/Variant6d4c8f59acb15c313ef4b813db54981dccfafc01a38e12be8ebb83f0feeaf7e2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ErdosKaplansky/Variant6d4c8f59acb15c313ef4b813db54981dccfafc01a38e12be8ebb83f0feeaf7e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
