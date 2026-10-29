# Verification target: Reduction01 Faile Reduction Failed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "417665fc3af7b5009a9fd86a0d6751867872d726",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `417665fc3af7b5009a9fd86a0d6751867872d726`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/det-fin-three-normalize-first-row.md) | 17 | `result-track:5268fe99dbe00c4ec04055a33b66130b78df65dde0d45bd378090067b9ffb497` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/det-fin-three-normalized-eq-differences.md) | 28 | `result-track:23a5e1683807e23bde4a39db4ba9045a0398e5314cb4f48c11fa929c4331a2a0` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/det-fin-three-normalized-eq-secants.md) | 35 | `result-track:4137d5a80dadd7f8d50ad5113851b2564cae1cd5140bd76b7346c5f562f83998` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/oriented-plucker-three-scalar.md) | 44 | `result-track:4de436f11e7085ccfd7f1456799f3f7abf1be7e4239d05bcb5c10ae18628d933` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/oriented-plucker-three.md) | 51 | `result-track:3f49d1be96cc50e42017aabdae160baae566b386f7d674c084be18ba7012e525` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/image-sub-neg-of-hasderivat-neg.md) | 59 | `result-track:7f3848c0d6ba07e3404f9ef4c90544926ce5292d7342cf378ee8ac0b077cd534` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Reduction01FaileReductionFailedNamespaced.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio.md) | 67 | `result-track:74562a8c0ef1737e372e21d6e1ec7b08384d8284eb033b68176530a3b5d78999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03a6cfc0c9b9f8105dbe9533fee01db38c8cd846bd2e85b6662c4f8dc7571a3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Varianta2902510ce97ed50240c3bd5196365613f8d7305b50e8a1388ac7a5925d85470.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
