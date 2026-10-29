# Verification target: Ord Connected Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c68e7fe02e5a649a5d51c1b0dae5babd287ac82a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant0abf73f92706c3e07097218287e198cdf3827c6f8529214f415a499119670fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c68e7fe02e5a649a5d51c1b0dae5babd287ac82a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant0abf73f92706c3e07097218287e198cdf3827c6f8529214f415a499119670fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant0abf73f92706c3e07097218287e198cdf3827c6f8529214f415a499119670fec.lean.json)

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
| 1 | `theorem` | [OrdConnected.out](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-out.md) | 36 | `result-track:e27d43b54278e492a0101430f9e890d3f0681e17695682c73404e1eaf5e89213` |
| 2 | `theorem` | [ordConnected_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-def.md) | 39 | `result-track:e12a013b7e9717babeb638d9a78d8a56e2311207b626055a7bf1fcba8120a675` |
| 3 | `theorem` | [ordConnected_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iff.md) | 43 | `result-track:9faf18c075c1f3321a1d11e4e9078c09ce3e88007a61109b1412cff46aa30d30` |
| 4 | `theorem` | [ordConnected_of_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-of-ioo.md) | 47 | `result-track:af10a78aa35953b9e9c93bc1f5d43a4da7de0e0f7c17f6f78160a6010c6df019` |
| 5 | `theorem` | [OrdConnected.preimage_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-preimage-mono.md) | 55 | `result-track:dd02ca081668fd8bc4a8c8e828f7aa9c8906f67f4c5a96b8dd27f77701db8c3a` |
| 6 | `theorem` | [OrdConnected.preimage_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-preimage-anti.md) | 59 | `result-track:5f9766073b1ab5972b24da0024b9b38f452ca3f00b7629ff133c9d463e4d621f` |
| 7 | `theorem` | [Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/icc-subset.md) | 63 | `result-track:f090ddb168596a58c734b9cf97f95cd5da7050fc5ab3fcd08cf0d15a1a6297f9` |
| 8 | `theorem` | [image_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-icc.md) | 75 | `result-track:2e77711ecdb9dc0bbf17e5f3f42d3aaa26b619793d6d26eab3ea32e6c20b7f2b` |
| 9 | `theorem` | [image_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-ico.md) | 79 | `result-track:18d41e7ce1081311ecfd22ff5cc06be1b8683d30cfc3e69730f2c3aeb8f6320c` |
| 10 | `theorem` | [image_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-ioc.md) | 84 | `result-track:138c8f46ea8cf618499b9174c977eb9f7df4818f5ddce0453b221162db47666a` |
| 11 | `theorem` | [image_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-ioo.md) | 89 | `result-track:e9584fff9e2b17607eae981e77c975ef442ab16171b31d2ea944d06a9d74d4e9` |
| 12 | `lemma` | [image_subtype_val_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-icc.md) | 103 | `result-track:c7d0a8e817cfbbf31b0ed249538b9c48720db33e145859600e003c0a817be658` |
| 13 | `lemma` | [image_subtype_val_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-ico.md) | 108 | `result-track:d2ceb8ac078a75e337ade973f36939158b38cb79285be1ba7971065c3fd7f743` |
| 14 | `lemma` | [image_subtype_val_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-ioc.md) | 113 | `result-track:2b597b2d18f741d985a17be8abf3d22667fde66a940773c0b94480ecef6a0f8c` |
| 15 | `lemma` | [image_subtype_val_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-ioo.md) | 118 | `result-track:bfefe14e2f7488cf32297660f84ac41e2b5388ba9cbac078c14fa28dc65b653a` |
| 16 | `theorem` | [OrdConnected.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-inter.md) | 122 | `result-track:47eb627cb7c1b0040d6cad5b6ae74a1f913e8999deb031d7ae09615395f776bb` |
| 17 | `instance` | [OrdConnected.inter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-inter-source-edition-2.md) | 126 | `declaration-track:9f7676475431ba3959fa6b19af03692b14d4183db32aeeaf29050cfb508cefc7` |
| 18 | `theorem` | [OrdConnected.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-dual.md) | 130 | `result-track:2bf515e3b3e4d694e0dd4245e62ae638b3d9b983e141a227ae08621265c058c3` |
| 19 | `theorem` | [dual_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/dual-ordconnected.md) | 135 | `result-track:0032e6dfb87a2b710400b88c8f964c2449c8cc023d9ec51dba0741d6c84bae7b` |
| 20 | `theorem` | [ordConnected_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-dual-source-edition-2.md) | 139 | `result-track:55dd25ab667ad6868019b1d7a6f9c5fb4ee13e48c9dab642cec0a9aeba7daf33` |
| 21 | `theorem` | [ordConnected_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-sinter.md) | 142 | `result-track:ce3107d342dc6d452ae26bb9fc6a885da00f2681ec459534b6ea0bd3b4f8955c` |
| 22 | `theorem` | [ordConnected_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iinter.md) | 146 | `result-track:5d8f6b50638903acb54ea502d140d79374b4d5db69a787dfdb1f4e6231277105` |
| 23 | `instance` | [ordConnected_iInter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iinter-source-edition-2.md) | 150 | `declaration-track:a25e084325e5ba680936a99d5756cc183d10f79c75797ecc9e247d58fb4614d1` |
| 24 | `theorem` | [ordConnected_biInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-biinter.md) | 154 | `result-track:3656c6409012a28c3bd10d1813a556196b84c41f3bda9829e685132a4698e6e0` |
| 25 | `theorem` | [ordConnected_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-pi.md) | 158 | `result-track:1be70ad9b270ed74fddb3a54d73d172a10c45be66308326848a9c7a2e63f6c0c` |
| 26 | `instance` | [ordConnected_pi'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-pi-source-edition-2.md) | 162 | `declaration-track:5524aa1060bee9b41b2946fa60448a69623c83931632a2db63618e7333874f0c` |
| 27 | `instance` | [ordConnected_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-ici.md) | 167 | `declaration-track:40c01b9e616269a669115114c6b45650be39970b6db38d31a0815d79a2cfa19b` |
| 28 | `instance` | [ordConnected_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-ioi.md) | 171 | `declaration-track:4cc8876d7cf7f4a360f8fe5826a64315017337923ed5d8957388f2c112dd8942` |
| 29 | `instance` | [ordConnected_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-icc.md) | 175 | `declaration-track:01b397b8327503171ad40773d634e3081a268b4e4ab39a3f3ead14f71132caad` |
| 30 | `instance` | [ordConnected_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-ico.md) | 179 | `declaration-track:6f2e1a7c1f0ec66a189388b43205cf907ea8b49953930e0df1d49a052a818276` |
| 31 | `instance` | [ordConnected_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-ioo.md) | 183 | `declaration-track:8c01e7bd85b3d736e29a738b0521ec7344e56365ace19509aa373d0521d60012` |
| 32 | `theorem` | [ordConnected_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-singleton.md) | 187 | `result-track:288fde3611ee6fecb7a50652e4fdd3d2ff8b43c9874f9099805a5c20807ca885` |
| 33 | `theorem` | [ordConnected_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-empty.md) | 193 | `result-track:3f7e96878548db187b08996477c024f9a798b52d3e36ea0376e6fbb85fe55356` |
| 34 | `theorem` | [ordConnected_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-univ.md) | 197 | `result-track:fa20a0ae04ccfd387bf559ac0990c84cad2ecbf9d37371f46924a1ebba2c364d` |
| 35 | `instance` | [instDenselyOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/instdenselyordered.md) | 201 | `declaration-track:db5ee343a3f45949e848d3e2097ae0e9b3ac5f0311c45c8762b09d112f4499f3` |
| 36 | `theorem` | [ordConnected_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-preimage.md) | 208 | `result-track:725121f7d464aa19a3b6c9432b20178e3a341015a93530f76e39e7dc8289400c` |
| 37 | `theorem` | [ordConnected_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-image.md) | 213 | `result-track:e063c81120fdd767a6c960db395df3effbdc2fbdeed18ec3a15038551380e6de` |
| 38 | `theorem` | [ordConnected_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-range.md) | 219 | `result-track:63ecc6b03f7bfb2ba716b8fceabbc8e63c893272f94528384e4573ae95e8beda` |
| 39 | `theorem` | [OrdConnected.preimage_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-preimage-monotoneon.md) | 227 | `result-track:9c4d34e3ba43fdf316d44df41d7cdf999b563da2a4f9fd0f14fbf7e13d467ba8` |
| 40 | `theorem` | [OrdConnected.preimage_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-preimage-antitoneon.md) | 244 | `result-track:56a6e05ff822b4c35542611d8b1d1e44868843ef15ce1076558d9c855fa76f66` |
| 41 | `theorem` | [_root_.IsAntichain.ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/root-isantichain-ordconnected.md) | 255 | `result-track:6d0809d7c9e6596dc893a35ef5d3b95fb8d11cbede09b773cf7ae2471b4c1938` |
| 42 | `lemma` | [ordConnected_inter_Icc_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-inter-icc-of-subset.md) | 261 | `result-track:d0ebb768c57114ee1b5b38516c254466825a3a10f2807970d2b18e8bc8c45f84` |
| 43 | `lemma` | [ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-inter-icc-iff.md) | 265 | `result-track:35764f15177dcfb0fca34df319344107670eab876ed1870373f9214ddbace616` |
| 44 | `lemma` | [not_ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/not-ordconnected-inter-icc-iff.md) | 271 | `result-track:9c7e96a6301d92fba5e8261fd628e993dfc2afacb5943af8ef93b5fee1c3bf26` |
| 45 | `theorem` | [ordConnected_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-uicc.md) | 284 | `result-track:dc0b4c68d1d08d73e63661d60b8272476f039c9ef6eb180d0faf5d3e74f09f83` |
| 46 | `theorem` | [ordConnected_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-uioc.md) | 288 | `result-track:291ae50466000a345ba966b88ce5da2ea495c708774ca07f47c8ecd3ad585c78` |
| 47 | `theorem` | [OrdConnected.uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-uicc-subset.md) | 291 | `result-track:e060c6b4de5454ca8522bb0bbbe1816d39dd8b0e5a66d33ae971572ada260d50` |
| 48 | `theorem` | [OrdConnected.uIoc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-uioc-subset.md) | 295 | `result-track:208b734aaa9a1f303bc43ccf7a303ab1036ed0fc3c298af797a9677abdd48328` |
| 49 | `theorem` | [ordConnected_iff_uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iff-uicc-subset.md) | 299 | `result-track:39d56c273a7246141e85a758f5a8456d50ade01750b95fed238fe82596b4bb78` |
| 50 | `theorem` | [ordConnected_of_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-of-uicc-subset-left.md) | 303 | `result-track:5c039f9f4adf7e67821e7e9e5b8d0b2e6c4205103c5f54d6728da3bb9ec76562` |
| 51 | `theorem` | [ordConnected_iff_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iff-uicc-subset-left.md) | 310 | `result-track:623e7f49918899b557ab3700bd1ffed0cad057dc87d1df1d195e7a1cb65832cb` |
| 52 | `theorem` | [ordConnected_iff_uIcc_subset_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/ordconnected-iff-uicc-subset-right.md) | 314 | `result-track:08733ef584a526dbb14e4e3bca8f7e9d2e925956ec7c90a97ac39481521915cb` |
| 53 | `theorem` | [image_subtype_val_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-uicc.md) | 319 | `result-track:609167e370c3a1dffc6e8436191e4b8a8dcd154df2d23694f1871e906f01b109` |
| 54 | `theorem` | [image_subtype_val_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-uioc.md) | 324 | `result-track:b000f82c9a888b630bb696124cfb700ca921245b4b71e465f9125b7c11880776` |
| 55 | `theorem` | [image_subtype_val_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedPublic.lean/declarations/image-subtype-val-uioo.md) | 329 | `result-track:a219974c773587c258da887a7f7f442917f167b9a61024047b802ec1e42e96f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34cda415fabcab56751e58d0b38130237fc16d156750d4a9099ec526b54d83e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant0abf73f92706c3e07097218287e198cdf3827c6f8529214f415a499119670fec.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant0abf73f92706c3e07097218287e198cdf3827c6f8529214f415a499119670fec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
