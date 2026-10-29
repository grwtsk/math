# Verification target: LSum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2ddcf9583cf21555ca01bd648488cdb56e37967",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2ddcf9583cf21555ca01bd648488cdb56e37967`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/smul-sum.md) | 41 | `result-track:fab522778f051defa925a3922c626482a7c91813ee80c07e30fa592bc7c58581` |
| 2 | `theorem` | [sum_smul_index_semilinearMap'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/sum-smul-index-semilinearmap.md) | 46 | `result-track:e7d8767aa8b8352631f6af69934ae6f5b5759e6e3f261a12edc737b82bd16309` |
| 3 | `theorem` | [sum_smul_index_linearMap'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/sum-smul-index-linearmap.md) | 54 | `result-track:dc574abcb65cdcf9d82153b115cf5ac63d8555489cea6d3d30cdff6e02f36f9f` |
| 4 | `instance` | [_root_.LinearMap.CompatibleSMul.finsupp_dom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/root-linearmap-compatiblesmul-finsupp-dom.md) | 73 | `declaration-track:0268d2dc5be993699a682d4b0634e28f6f8431fd5ca0d3ffe733c1fa1e3c3be5` |
| 5 | `instance` | [_root_.LinearMap.CompatibleSMul.finsupp_cod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/root-linearmap-compatiblesmul-finsupp-cod.md) | 80 | `declaration-track:c654adcfd34834220950e1e5580204d4f171914d772972c54029faf5a38bfd7b` |
| 6 | `def` | [lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lsum.md) | 97 | `declaration-track:7b81d295b7a0a575cb0d4ce25b818011a06b471b4e23e3d92a2f8e1b76fb1c52` |
| 7 | `theorem` | [coe_lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/coe-lsum.md) | 117 | `result-track:71d17351ab372985f23389bac7e5f35b84ab204e298b8fbd1520c4dd66adedf4` |
| 8 | `theorem` | [lsum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lsum-apply.md) | 120 | `result-track:ce04e5822041f90e9edd9def551762d4c063b9daa563e7b9294ad75c9c286d55` |
| 9 | `theorem` | [lsum_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lsum-single.md) | 123 | `result-track:c999c9d65d62d02e07c9c916e14389e36bc261cb639faf396f59a9e091d4dbfa` |
| 10 | `theorem` | [lsum_comp_lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lsum-comp-lsingle.md) | 127 | `result-track:286b2b5d04e3d9c17c8a6f99968fb9f655c932425667d83634577054dad54642` |
| 11 | `theorem` | [lsum_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lsum-symm-apply.md) | 130 | `result-track:726a96614c44bcf765ac99eb721056d60f2a7d725c702627ae05ab302427f9db` |
| 12 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lift.md) | 143 | `declaration-track:052a4f7b6a6128b3f61f02f64650671e159bf610fdd1e2e141d8cf8f5d4c8a7c` |
| 13 | `theorem` | [lift_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lift-symm-apply.md) | 148 | `result-track:3e67c9de63411992473f4ce8962421e262cc20b50aee4cfc6b8a03bd4e410c71` |
| 14 | `theorem` | [lift_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lift-apply.md) | 152 | `result-track:a4895348fc93ffbdc30e71bf7d4a774fd2ad97931774f8f7a8ace5fbf36ebd13` |
| 15 | `def` | [llift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/llift.md) | 159 | `declaration-track:8dc77782fb423a6adfba1bf3bd57c9a8839f1909f388ade32cfbe697fb3fd7ad` |
| 16 | `theorem` | [llift_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/llift-apply.md) | 169 | `result-track:2983ba9d5abbd220dda5688a3ff1bc7d1ad7b54653768de6efb43be86356af57` |
| 17 | `theorem` | [llift_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/llift-symm-apply.md) | 173 | `result-track:68c9c3113073c1e9906b6d4d9da3d1dacf8a4b22cdd19b82e03bb43455c9ac63` |
| 18 | `def` | [domLCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr.md) | 183 | `declaration-track:6d4fa294eb4e72f5e085f8d0503547f21cbaebe063b16c08ffce2fe51a993123` |
| 19 | `theorem` | [domLCongr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr-apply.md) | 188 | `result-track:a3cb2a16b6172bd84967e4069b8c46c7650bd4734bfa05db5a51c35cb4e4fa79` |
| 20 | `theorem` | [domLCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr-refl.md) | 193 | `result-track:1040f5d785856a70ab907e12d7cb835b4dcdd43cc1c30034f4241634299017eb` |
| 21 | `theorem` | [domLCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr-trans.md) | 196 | `result-track:16323a8fe6c8e56f5f19a2876705961fe19de53d8738b2e10fa3b6ec499e7f0f` |
| 22 | `theorem` | [domLCongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr-symm.md) | 202 | `result-track:7b86d66586dc861c10682f0fa2dba2683a3d9713dd613a6ce5e4c3386ff384d1` |
| 23 | `theorem` | [domLCongr_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/domlcongr-single.md) | 206 | `result-track:b1e635f64c81959a0f7354bad6d6005fbc24099117cc456cbbf4ff9b0fcb0f85` |
| 24 | `def` | [lcongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lcongr.md) | 216 | `declaration-track:80a4e8dcd0a5321e2822562cffa55f7128d9e69935d48a4e28727e76d8746e47` |
| 25 | `theorem` | [lcongr_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lcongr-single.md) | 220 | `result-track:415645a28ba1df8f4db1b90f4d62b2fec0830ec4f5296c3085153ad801aa9522` |
| 26 | `theorem` | [lcongr_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lcongr-apply-apply.md) | 224 | `result-track:061eb8c90cccc58b3553dbad180550851171bbc1a0a1281ffd58ecdafd874229` |
| 27 | `theorem` | [lcongr_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lcongr-symm-single.md) | 228 | `result-track:9e9b193db86d48adfc1206e00736c0c8f20b823fd8e640253efb174c9603fd55` |
| 28 | `theorem` | [lcongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/lcongr-symm.md) | 234 | `result-track:dbcc24c82c5ec21dc2e14d5bd899c714dba2815a58c002cab3d7dc72b8e4a42c` |
| 29 | `theorem` | [Submodule.finsuppSum_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/submodule-finsuppsum-mem.md) | 252 | `result-track:c1b037e4ed984c216e307653e77412a177ccab1fd8521d91451c2f39e27d229d` |
| 30 | `def` | [splittingOfFinsuppSurjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/splittingoffinsuppsurjective.md) | 266 | `declaration-track:7d20c8e591ac52bbb26781d6625345089699e46804b62c2a40b32e600ba23ea8` |
| 31 | `theorem` | [splittingOfFinsuppSurjective_splits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/splittingoffinsuppsurjective-splits.md) | 269 | `result-track:5b9e524cd3f27bf612e3ce871de11fe5612908f3a2ba413ba195e56dbcf96bd5` |
| 32 | `theorem` | [leftInverse_splittingOfFinsuppSurjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/leftinverse-splittingoffinsuppsurjective.md) | 278 | `result-track:e6e056367cfffaff8575653fa71497152fe5a3ee0b0523e7363e18190858c155` |
| 33 | `theorem` | [splittingOfFinsuppSurjective_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/splittingoffinsuppsurjective-injective.md) | 282 | `result-track:ffcaeb9433dd687dab449b20fd247f27ff2f05c38c6bcf2bcca8f0805152ee74` |
| 34 | `theorem` | [coe_finsupp_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/coe-finsupp-sum.md) | 299 | `result-track:64431a75fa89881dbd4dbc9a7725e78c1eba182d16a8d6061993080a95f895aa` |
| 35 | `theorem` | [finsupp_sum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/finsupp-sum-apply.md) | 303 | `result-track:2c31cd1305a750e560b1e044bfb243c734a1c99dc60a9faca7dc88d4c66e2fca` |
| 36 | `def` | [mulLeftMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulleftmap.md) | 323 | `declaration-track:144ed44cafe431a15c9358850c13b75e0c422b4ac7b5f9b0176220038a7401d9` |
| 37 | `theorem` | [mulLeftMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulleftmap-apply.md) | 326 | `result-track:4952c78f20562860cf1e202ea6342350f6dc942c443e7fa3b137e839115f23a6` |
| 38 | `theorem` | [mulLeftMap_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulleftmap-apply-single.md) | 330 | `result-track:882a39cd665760a84851bc8bd699adb605cb44bf94db189f924b6a33bce2380e` |
| 39 | `def` | [mulRightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulrightmap.md) | 341 | `declaration-track:799a539597b7d6ae2f4f19cc5bf8579e6f1987d1598d6c41c90a277f36118c14` |
| 40 | `theorem` | [mulRightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulrightmap-apply.md) | 344 | `result-track:9f134e1a5c5c6c16a9e1f0898057742646493c5d0a39336935d27b2323e95e7a` |
| 41 | `theorem` | [mulRightMap_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulrightmap-apply-single.md) | 348 | `result-track:db49473974819278efd3504b99449d2662d775e46a0aae9740c2c272e748cf7d` |
| 42 | `theorem` | [mulLeftMap_eq_mulRightMap_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulleftmap-eq-mulrightmap-of-commute.md) | 352 | `result-track:a9e7fb575ffd20a3a502ad969b31cde14ab669ddd3d895546eb67a943c547329` |
| 43 | `theorem` | [mulLeftMap_eq_mulRightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumPublic.lean/declarations/mulleftmap-eq-mulrightmap.md) | 357 | `result-track:4976b4829f38fdbc18370555651796220071fb69ee0ebb4d5098570decb3fa35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffcffff04b7f082f8e44bebb3cce00657200e6a2d3c211c66bbad511b5a24941 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LSum/Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
