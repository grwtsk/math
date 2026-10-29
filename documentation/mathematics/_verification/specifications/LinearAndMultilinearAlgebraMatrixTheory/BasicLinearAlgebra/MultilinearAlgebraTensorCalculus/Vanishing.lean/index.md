# Verification target: Vanishing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb4998b3e55af4d09d6f84eec3d8097aa0461186",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb4998b3e55af4d09d6f84eec3d8097aa0461186`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vanishing/Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vanishing/Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VanishesTrivially](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially.md) | 77 | `declaration-track:3fee35dc986d5342a6ab36857feab6ee0a067872dc8c5bb1d41d281402176616` |
| 2 | `theorem` | [VanishesTrivially.of_fintype](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially-of-fintype.md) | 83 | `result-track:6c2fcd978496d7946b6d22ba9c69fafb06e380b8a3f2d79de00101320ac0bb77` |
| 3 | `theorem` | [_root_.Equiv.vanishesTrivially_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/root-equiv-vanishestrivially-comp.md) | 90 | `result-track:bb72de3a383a86c732a2b5e8055d5ba925453d519ac145ca299b678d78d5a541` |
| 4 | `theorem` | [sum_tmul_eq_zero_of_vanishesTrivially](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/sum-tmul-eq-zero-of-vanishestrivially.md) | 103 | `result-track:da0acd807338c9fd30e51c3edcfa104ac2252e4eb9f543602188ed3fa10e2c6f` |
| 5 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero.md) | 116 | `result-track:7921e9c937db460fe89031f574fcbac96c3a4381982f3abfd2652473ea8475d6` |
| 6 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero.md) | 176 | `result-track:e6659fe92a2d0a8bcfdddc9ab71a7773de10feaa51fe9ebf9b506b7579c81efc` |
| 7 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero_of_rTensor_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero-of-rtensor-injective.md) | 187 | `result-track:a936fcb8e38aa1ff6fa5356becec5ea0dbb5fd53905e803130d88fa7aa2d40eb` |
| 8 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero_of_rTensor_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero-of-rtensor-injective.md) | 213 | `result-track:e858e32f180034de8046829918c9c7dae52801108e5cd335ad7f4a1bf51678a5` |
| 9 | `theorem` | [rTensor_injective_of_forall_vanishesTrivially](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/rtensor-injective-of-forall-vanishestrivially.md) | 223 | `result-track:5b3ad883463ab6603f112ee8eac3d6c5255b7cddb776c13c9bc7a66378dc6139` |
| 10 | `theorem` | [forall_vanishesTrivially_iff_forall_rTensor_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/forall-vanishestrivially-iff-forall-rtensor-injective.md) | 245 | `result-track:a410a2eadb68af2d15b8ab661e412ff1ad0194091981434729267b4101b68f12` |
| 11 | `theorem` | [forall_vanishesTrivially_iff_forall_fg_rTensor_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/forall-vanishestrivially-iff-forall-fg-rtensor-injective.md) | 258 | `result-track:5688119de6fb87295d1ce115aa3f9905cf576cd413e055482cfa428187742b5c` |
| 12 | `theorem` | [rTensor_injective_of_forall_fg_rTensor_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/Vanishing.lean/declarations/rtensor-injective-of-forall-fg-rtensor-injective.md) | 271 | `result-track:4a9b8be7814fbb6f95fb2fd54ee935fe48898e9f18ff9ca8047f37a507da605e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35a0e74beb0846e85cf8f8036f60c56d1164aa0d23262eda5cda9a0cbe055cdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Vanishing/Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Vanishing/Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
