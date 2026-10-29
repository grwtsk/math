# Verification target: Tensor Product Tower Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e96c3b96ddcaabda397daee32a310c5340c99ee",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e96c3b96ddcaabda397daee32a310c5340c99ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/smul-eq-lsmul-rtensor.md) | 81 | `result-track:664a27cac9d1710ed31955e612144011461d45bf0dc25e88dca304daecc8ba77` |
| 2 | `def` | [curry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/curry.md) | 90 | `declaration-track:0d2eb6c715532566b975af5387ba06dc7860c4b38a4107e2fcdab10a05c99cb4` |
| 3 | `theorem` | [restrictScalars_curry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/restrictscalars-curry.md) | 97 | `result-track:86b0d0d262b93a900549b794321d18352edfd11a2429066e768d0380052f4515` |
| 4 | `theorem` | [curry_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/curry-injective.md) | 107 | `result-track:4ecee0a02d42ade36ac397778c7dc5e1d98a960ec256031ba96928bae18cf4fc` |
| 5 | `theorem` | [ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/ext.md) | 113 | `result-track:8a80e16e1cd786cce016ad1c540f7e005223bd5d8801b9c5f1fc8bcaf8dedecc` |
| 6 | `def` | [lift](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/lift.md) | 122 | `declaration-track:9f544ef30d3c3876d5844681c8392aab1cfd121b2188d771893ec089adac620e` |
| 7 | `theorem` | [lift_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/lift-apply.md) | 138 | `result-track:a23fa956449f6f686c2aacd04dcd8b2269034ee7a0f1c617d8e35feb35061a40` |
| 8 | `theorem` | [lift_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/lift-tmul.md) | 143 | `result-track:ec9509bc513bd69169b33681492c3781911066696b068be9de5e2979a4dd7943` |
| 9 | `def` | [uncurry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/uncurry.md) | 155 | `declaration-track:383ff058b307703e68c402ced73c14a5c753f23f74d7defbb3c23816eb731143` |
| 10 | `def` | [lcurry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/lcurry.md) | 167 | `declaration-track:ca936dd87d6dc7b7452b6bb0d14a02ca39e6bdf1e585c42ee220b3838db1a702` |
| 11 | `def` | [lift.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/lift-equiv.md) | 179 | `declaration-track:c7f2f8a5a9f059bb455eb5b29d69cd9016f0709357bc8915fba16b4be30ffd0b` |
| 12 | `def` | [mk](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/mk.md) | 190 | `declaration-track:f2dc7ab30f8e0c0775e5a143429bf621a25483b715a3a2416b4b1d0e526bc866` |
| 13 | `def` | [map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map.md) | 198 | `declaration-track:e4b3bcd97dca30fa7cfac559127975bc195442ef175d5f26f36222b0c8ab4168` |
| 14 | `theorem` | [map_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map-tmul.md) | 204 | `result-track:7b03f3ac92e51c07ed3a46e569a1823f7ccc4dd6dfa81120e54ab66abc761fc2` |
| 15 | `theorem` | [map_add_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map-add-left.md) | 208 | `result-track:2a6942132c2baf7f185e02fbe35ffce608e2cb7750992f75a7a2b7df02adb44b` |
| 16 | `theorem` | [map_add_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map-add-right.md) | 214 | `result-track:9ed89fc47e277daacdb0624282960a894760935064f6a3b5bf4b5e705e8bb629` |
| 17 | `theorem` | [map_smul_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map-smul-right.md) | 220 | `result-track:c6b55ee5182d240dec709b607d524f1ca54fd82ce9a1cfc350d1c37ef27f78af` |
| 18 | `theorem` | [map_smul_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/map-smul-left.md) | 225 | `result-track:70c783b509aace6e7ed93d43ca624e679504925ef1f159c664a537b1cde0d802` |
| 19 | `def` | [mapBilinear](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/mapbilinear.md) | 233 | `declaration-track:3a9161aa8d7d8f2f13e8b3e9ca4fe696de0c2a19723e1dda2e31ace84c65513d` |
| 20 | `theorem` | [mapBilinear_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/mapbilinear-apply.md) | 239 | `result-track:bfcd54a76a2ad480462c60cb3833a06850c9ed46e52fc343a1f6cbd3ad944f83` |
| 21 | `def` | [homTensorHomMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/homtensorhommap.md) | 246 | `declaration-track:2a3d01589c07ba67080c41662f04b19edc7557a2681b47e0891b463d1d35ee35` |
| 22 | `theorem` | [homTensorHomMap_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/homtensorhommap-apply.md) | 251 | `result-track:85bee1af9374507695580c6b43d9e982069764979fb45a9e0c358ff13fab679d` |
| 23 | `def` | [congr](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/congr.md) | 256 | `declaration-track:568611b37d168376f212ec13e668453ca425ddc23e34779bd449c6ef20e3553e` |
| 24 | `theorem` | [congr_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/congr-tmul.md) | 261 | `result-track:1ffd26a60b643604e536873d3918374299856a829ec1e908772d7af025829895` |
| 25 | `theorem` | [congr_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/congr-symm-tmul.md) | 265 | `result-track:7a28dffa37f8935a49bfd7e55f2a606baeabcab3fe75b8ecd1bb017406133e20` |
| 26 | `def` | [rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/rid.md) | 272 | `declaration-track:bc15801431dc0b34954768c612e0bd2598d26c37ab4ef2444605823c2ab40232` |
| 27 | `theorem` | [rid_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/rid-tmul.md) | 282 | `result-track:faa7088fc05d0b26fa4db8a2c1a7b83e485557793d4a0f824080735609f24ab6` |
| 28 | `def` | [assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/assoc.md) | 313 | `declaration-track:d1e5c39774a7ce693ec0ec38b44d8b509c4560423900be7edaef79bed909bc7b` |
| 29 | `theorem` | [assoc_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/assoc-tmul.md) | 325 | `result-track:800240787f7d5cd8dad86b778d5097fccb76449d70d31a9daa6c9a8ff3db128c` |
| 30 | `theorem` | [assoc_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/assoc-symm-tmul.md) | 330 | `result-track:dc66a97a69b2b0a879797ebbd27976f48877378b4d3e0942b0230499bd5b9f58` |
| 31 | `def` | [leftComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/leftcomm.md) | 339 | `declaration-track:307fa7f4ca38a911f42237b2341adda3f4b3e0e8016fecd4241191985447fa09` |
| 32 | `theorem` | [leftComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/leftcomm-tmul.md) | 348 | `result-track:3011dea1bbaadb99d2389a50933443b8e67293f5ee5c9f5c74f122366176b9d3` |
| 33 | `theorem` | [leftComm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/leftcomm-symm-tmul.md) | 353 | `result-track:0405094cfac335136e5e8bea418c806e04b41072aecb7fa69280d8d849d2909c` |
| 34 | `def` | [rightComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/rightcomm.md) | 362 | `declaration-track:bedbdf9400b992add91653ed3ad870123994a3dd7aff2d3e83b5e3f9aa841fc8` |
| 35 | `theorem` | [rightComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/rightcomm-tmul.md) | 379 | `result-track:cd83b4c3444318c97d2341d4b7c1a520f58e89a7c502b85401581450f13d1b81` |
| 36 | `theorem` | [rightComm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/rightcomm-symm-tmul.md) | 384 | `result-track:73e4db0a929116cc003196b816f98e5d1e4d585802e22988490ced5d6ba92251` |
| 37 | `def` | [tensorTensorTensorComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/tensortensortensorcomm.md) | 393 | `declaration-track:603aa8e9e08e5682bd228d39a8c48ca1ed55839535d373351058ee9d5c32e3b5` |
| 38 | `theorem` | [tensorTensorTensorComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/tensortensortensorcomm-tmul.md) | 402 | `result-track:952e8cc981c27de2a2014888ed004146dbd4d172c2a1b0b1756a3c05c9bf0f8b` |
| 39 | `theorem` | [tensorTensorTensorComm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespaced.lean/declarations/tensortensortensorcomm-symm-tmul.md) | 407 | `result-track:1644b7e829b37fc66eb48fbc8874ed26486eace5bf287626edc0f3de2eadf56c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acaef266605b93502cb09746c61c411aeca634ee6ff8d28a8018580d4fb73a2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
