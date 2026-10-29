# Verification target: Martingale Centering Centering Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7274e7cc878a1a12809d12715e366b0c8e55a53",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7274e7cc878a1a12809d12715e366b0c8e55a53`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/predictablepart.md) | 45 | `declaration-track:795604484a041dc927176d65791d96af527600c2d99b2d3c3f616e35e754cac1` |
| 2 | `theorem` | [predictablePart_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/predictablepart-zero.md) | 50 | `result-track:d6e5bfb299a44a90858fef22831a0dbb46c8827c23635aa8fd7539e0e0d4b433` |
| 3 | `theorem` | [adapted_predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/adapted-predictablepart-source-edition-2.md) | 54 | `result-track:fc808f23dbe2114e468badbabf4a641d0a1eccea2deee67a5662bb20e07e248f` |
| 4 | `theorem` | [adapted_predictablePart'](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/adapted-predictablepart.md) | 59 | `result-track:07f50144d95b6b2c5931c23b408dc8cd38c8aa2996e1a8bf728900127c4617e6` |
| 5 | `def` | [martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingalepart.md) | 66 | `declaration-track:dd4cc735820eae3c281b2420423130f6cbfacd6a8e953f6d9bed38e895e9bb9e` |
| 6 | `theorem` | [martingalePart_add_predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingalepart-add-predictablepart.md) | 70 | `result-track:c15b28aab41f9b3b5de8ff82436ec12edcf7ae61284bd1cd958e5b35a2fd618a` |
| 7 | `theorem` | [martingalePart_eq_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingalepart-eq-sum.md) | 75 | `result-track:45e77e51a9943d439243ec5649619c99fc4ad3cfa79fd3475121508a371b3b06` |
| 8 | `theorem` | [adapted_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/adapted-martingalepart.md) | 82 | `result-track:65a6f89e78a685b160ca5cc4290e65e7d72bdac519b50bada1f0db11ac7c863e` |
| 9 | `theorem` | [integrable_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/integrable-martingalepart.md) | 86 | `result-track:39689545fbef5ff224740ea0200bcd78e700aa364734ee2b8c6934978644bff3` |
| 10 | `theorem` | [martingale_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingale-martingalepart.md) | 93 | `result-track:75f078d6467b34419505d03c0aae16698dce7370b34af767957d405d15370322` |
| 11 | `theorem` | [martingalePart_add_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingalepart-add-ae-eq.md) | 135 | `result-track:a1079dd323f77f05547701d0ee2216a6d957400680af08a0262899dfd66c5f36` |
| 12 | `theorem` | [predictablePart_add_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/predictablepart-add-ae-eq.md) | 155 | `result-track:d1df86feb97f0fd1876bece605f0ee810e47c039af52d74346d383be6cb2edb5` |
| 13 | `theorem` | [predictablePart_bdd_difference](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/predictablepart-bdd-difference.md) | 166 | `result-track:a6591cb3b206a44e3c8bf895a8114ec1d17125fe7b1cc1fdfeac7f6612405aef` |
| 14 | `theorem` | [martingalePart_bdd_difference](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringSourceEdition2.lean/declarations/martingalepart-bdd-difference.md) | 173 | `result-track:cf0711b4bb304e83644a896dad741434c19a5c90736c53f4d941319372a144cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca70649680e9abfd51b67f2c3d57d43fe18d7cdb801e86abef30d62f9ebb4d3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant25810999fef502881bd362e26d6fad794169cea05ed5790f72ca264172bd977e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
