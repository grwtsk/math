# Verification target: Slope Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a069b4b84202584d20e35b6abc461fb589538624",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Slope/Variantbaf4a6a35bc2392c709af017ebe712964cf2f1a9c75e2a91170725ee99a304d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a069b4b84202584d20e35b6abc461fb589538624`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Slope/Variantbaf4a6a35bc2392c709af017ebe712964cf2f1a9c75e2a91170725ee99a304d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Slope/Variantbaf4a6a35bc2392c709af017ebe712964cf2f1a9c75e2a91170725ee99a304d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [slope](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope.md) | 36 | `declaration-track:758601a2bad8ae1a3eff5645544bcf562a0c416acf815ceec79d2341c4aa5128` |
| 2 | `theorem` | [slope_fun_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-fun-def.md) | 39 | `result-track:fab32d52f1a80bac15b2a9041db0bae1570a98f1d17cc4c0336df138e828f683` |
| 3 | `theorem` | [slope_def_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-def-field.md) | 42 | `result-track:a20f80109bbee38eebcaccbfe7ed763edb810b005dfee71811413eb43f686127` |
| 4 | `theorem` | [slope_fun_def_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-fun-def-field.md) | 45 | `result-track:09b4f654a7ddb207a6072c44f8157edfc8f1b817f779d01433969b61d34263ff` |
| 5 | `theorem` | [slope_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-same.md) | 49 | `result-track:37a568024ef552e2859becdbc543bd2a44c4a0d5dd3e1c70254d5b08fcd45df3` |
| 6 | `theorem` | [slope_def_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-def-module.md) | 52 | `result-track:b7d44d41858044500b779d1b54489a23abad934f69f5679b7eabc83446f64bc4` |
| 7 | `theorem` | [sub_smul_slope](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/sub-smul-slope.md) | 56 | `result-track:a41ec7a443030ff2add0912c2099587f3c6fe488825faff27b02358236d3010d` |
| 8 | `theorem` | [sub_smul_slope_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/sub-smul-slope-vadd.md) | 61 | `result-track:61d33ce17db3e08fc1083e2d1f017ab24443dd82089f89c5bd7b21b0e018c742` |
| 9 | `theorem` | [slope_vadd_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-vadd-const.md) | 65 | `result-track:100d9a3218be0164ac242a81d617b8435456bbe0eeeca0ce097dffe058a8747d` |
| 10 | `theorem` | [slope_sub_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-sub-smul.md) | 70 | `result-track:ff280f8273b0c3a0d91daea2cf7b1f72f1b15fd41ddb12c380b45cc6f9e22235` |
| 11 | `theorem` | [eq_of_slope_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/eq-of-slope-eq-zero.md) | 74 | `result-track:8414c835e4c8ff8d6d33e904d42453afe15dddb43ed1299dd104cd88d0574e1d` |
| 12 | `theorem` | [AffineMap.slope_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/affinemap-slope-comp.md) | 77 | `result-track:e7a944ba4b3f1802978ad97f4d4d7ec8bb509fbeb7514847bce34bb6d53fbe88` |
| 13 | `theorem` | [LinearMap.slope_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/linearmap-slope-comp.md) | 81 | `result-track:7c53c40e6ae8a8a2a7aa5edb7807bfa9f1f9516d7ad63bdddef3533dda1cc83c` |
| 14 | `theorem` | [slope_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-comm.md) | 85 | `result-track:9727fb1f77f525313d0aea9cd13a92c12818ff0213b8c468189b6d3e822567c4` |
| 15 | `lemma` | [slope_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-neg.md) | 88 | `result-track:5f40094795e6e0788cf64c22568fb9cdc8b319c1d7b951c2ce260e9729e112e6` |
| 16 | `lemma` | [slope_neg_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/slope-neg-fun.md) | 91 | `result-track:4c97f403543a45380b3f907e8be6d44c94683b89d543430fb10a3fd4ce0f39ab` |
| 17 | `theorem` | [sub_div_sub_smul_slope_add_sub_div_sub_smul_slope](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/sub-div-sub-smul-slope-add-sub-div-sub-smul-slope.md) | 97 | `result-track:a345a8954600db6de6a65f664c97888d33b1f63b19f11d7ae53d88ed0a96287a` |
| 18 | `theorem` | [lineMap_slope_slope_sub_div_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/linemap-slope-slope-sub-div-sub.md) | 115 | `result-track:b25c9a58f69e382caf5014d7c1555b064a93632eb6cf95cc23d95a281aeba04d` |
| 19 | `theorem` | [lineMap_slope_lineMap_slope_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespaced.lean/declarations/linemap-slope-linemap-slope-linemap.md) | 122 | `result-track:6421b07ca0aa3ce5a08762238d0438e1995dde5e841235fe2cd9874285c27d65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8fef744a385fb9e876160597a3543debc05b241331acef847c040fcf94a453c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Slope/Variantbaf4a6a35bc2392c709af017ebe712964cf2f1a9c75e2a91170725ee99a304d4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Slope/Variantbaf4a6a35bc2392c709af017ebe712964cf2f1a9c75e2a91170725ee99a304d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
