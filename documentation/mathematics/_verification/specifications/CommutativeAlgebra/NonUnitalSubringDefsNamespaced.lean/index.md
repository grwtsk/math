# Verification target: Non Unital Subring Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02da1d195b33b34a16c912fe62c8a7bebd7ef946",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variante6997d0d2c27b636514dfac361ff4d89f643ab29286844deec4e5c8ed2784d7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02da1d195b33b34a16c912fe62c8a7bebd7ef946`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variante6997d0d2c27b636514dfac361ff4d89f643ab29286844deec4e5c8ed2784d7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variante6997d0d2c27b636514dfac361ff4d89f643ab29286844deec4e5c8ed2784d7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubringClass](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/nonunitalsubringclass.md) | 58 | `declaration-track:bb314b95b9fdae20452a866618955e933fd31158cee7528555c2ed563bee050e` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:6dbc14447d2f1c3d2943648cb03d3fea3c8b245ad7ce478e01cf584283172994` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 73 | `declaration-track:ba3f798c594635d8ba957c52975ec2fe9ea767fbae56f362b3f195a7821dd834` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 79 | `declaration-track:f1384d9cc743e86c379bf92803ec37f83d9f50587e40f31cfb6f86b464967276` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:3520842725ef165a980dfee20ad895a8111b22d38b618ee6464cd2dc1c23c5a3` |
| 6 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/subtype.md) | 92 | `declaration-track:f4a7a5698295156b22bb7abf8ec80a7e23b10a39a0126b310cc5b554a40489eb` |
| 7 | `theorem` | [subtype_apply](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/subtype-apply.md) | 99 | `result-track:4c2f3a5da384b02f9d6208e504da3c18ba3e2650dc593a7f5401bddda057ed90` |
| 8 | `theorem` | [subtype_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/subtype-injective.md) | 102 | `result-track:e43dbcee49414dc7da9e5bc7a0481b20d38c2bee6c7514ccc509ead1732fa16a` |
| 9 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-subtype.md) | 106 | `result-track:67610945baa4ec7ecf9c0df20009e0a2ad007dd92cbd207022aad78dbca4b36c` |
| 10 | `structure` | [NonUnitalSubring](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/nonunitalsubring.md) | 116 | `declaration-track:de537e9f45ad28af3d04dc70a142d73e02b3265144c68a7f0e1deebc6bde5f52` |
| 11 | `def` | [toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tosubsemigroup.md) | 128 | `declaration-track:f6cfbfd5cab5278d1939229c5d6b5ed75f3288f9130d5539908c15d3e5e8a63c` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 131 | `declaration-track:3fbfd68c2c2f8070153fb2f760baa11dcfa874ec5192cccebfcffcbda2f0e361` |
| 13 | `def` | [ofClass](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/ofclass.md) | 137 | `declaration-track:a7ad60760d6a9878dbf1f7e3241f74b1574b20bc1677e5f7ca27b1bb38930e47` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance.md) | 145 | `declaration-track:03d887f530e2e3a3070e50a85bf624d5afea017e519b570a4e20e459ecedcf74` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:f8aea259d0784487a1029a6799b5a6786c195a6a3718436fddcfd51e7dadf786` |
| 16 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-carrier.md) | 162 | `result-track:7810773435ac80dab1b58d8e9665254bfae3b762ab0fd281aa7f0df09b519725` |
| 17 | `theorem` | [mem_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-mk.md) | 166 | `result-track:ae52f3863a3e499a42a5943b847c378fd9a7375728700fa05ff9b3af498997c2` |
| 18 | `theorem` | [coe_set_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-set-mk.md) | 171 | `result-track:8bc71b097a4daffaa2e57746378458e42ca0c5fe047c235d8db236f9a00e3f11` |
| 19 | `theorem` | [mk_le_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mk-le-mk.md) | 176 | `result-track:e1855065ce1d1ad4df5d09a23dd214e0013a805d15401afe6d60148b6d6a317f` |
| 20 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/ext.md) | 182 | `result-track:90a74bcff0f0774fd2c2707af52f1a6f85f621fffc67b761c1b8ba2cbfd3c1e6` |
| 21 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/copy.md) | 187 | `declaration-track:20526ad0096ab721cd53f7c58dafc720e78aec50c38917e09eb87b66ce3bbf4f` |
| 22 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-copy.md) | 193 | `result-track:07a7904607012d4612fe9ba40a9203dd4dd0154cd6636049b0471a7734c6b158` |
| 23 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/copy-eq.md) | 196 | `result-track:8255840750343547e045f4b481b48e607ddc5f7b1f6844b1ffd818ab91d7ff32` |
| 24 | `theorem` | [toNonUnitalSubsemiring_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tononunitalsubsemiring-injective.md) | 199 | `result-track:f6e48e09e0dd7a19f421d2d7b2f7adc740685ad11b82ecfa62d7e459e032e28e` |
| 25 | `theorem` | [toNonUnitalSubsemiring_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tononunitalsubsemiring-strictmono.md) | 204 | `result-track:51fbcffa431d6d12a2d4aeba142d3531c890693d2c65ce96b7a0982ecc216200` |
| 26 | `theorem` | [toNonUnitalSubsemiring_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tononunitalsubsemiring-mono.md) | 209 | `result-track:1ee9c4e1f296f9fa0a382a730e9fb77485d366aa60c498ba6a923baff1e22753` |
| 27 | `theorem` | [toAddSubgroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/toaddsubgroup-injective.md) | 213 | `result-track:cd0b824fcdbf6958a4398e7923dc1c1ca8e0de20b643ab53bbb29b869e1b5e36` |
| 28 | `theorem` | [toAddSubgroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/toaddsubgroup-strictmono.md) | 218 | `result-track:6400b84fcf5b55322f9ae52d956adeb243bcdddf5e213680c22b594ae21e89ef` |
| 29 | `theorem` | [toAddSubgroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/toaddsubgroup-mono.md) | 222 | `result-track:7de33a8fe3009c7743992c1e4cb7740c28e2975c6669f01dd8a89bd13e19bb0d` |
| 30 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tosubsemigroup-injective.md) | 225 | `result-track:24167587ea70a5312043d2d6b528d67f83c0b72a67da28d76602172869e3b6a6` |
| 31 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tosubsemigroup-strictmono.md) | 230 | `result-track:de3170c0d5b01b54d1a174994469785b41c0e9bf9067f6c668fd17d93654f932` |
| 32 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tosubsemigroup-mono.md) | 234 | `result-track:60d9bf2d4db1484006b30cfad69493be4d85cca92fa722d3fcacb0e33ae9d415` |
| 33 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mk.md) | 239 | `declaration-track:78ce075c8031bde08e8b2e61a0096c1a4a82282b5984f7c0721b1197833f763b` |
| 34 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-mk.md) | 244 | `result-track:2864da41a081ffa5172420d3ff4a97c729809cc00daa39e4061255d870451593` |
| 35 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-mk-source-edition-2.md) | 249 | `result-track:ba64506e91f8dec63525a04ebcc68f9e9a4ce93695bea1b350e4e72fcce7baca` |
| 36 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mk-tosubsemigroup.md) | 254 | `result-track:559de0dd9d807d23b5f152f7ed0cd0e81e727c05ce542657cfa1519af025dbd6` |
| 37 | `theorem` | [mk'_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mk-toaddsubgroup.md) | 259 | `result-track:87048b5055eba65b2a97fd78c9c33777b514ac0de427b370d2be8d73b61446a9` |
| 38 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/zero-mem.md) | 270 | `result-track:01f5b084344133c51f44a0f635a3aad5f5df941b9a53aee0893479c1d5a7cbc0` |
| 39 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mul-mem.md) | 274 | `result-track:15bc289181f98d2f97b4bd22a5d2c91c175cc38f94b1c3ae9dc8c13ab4d50648` |
| 40 | `theorem` | [add_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/add-mem.md) | 278 | `result-track:61cc97a6f16205e6573d677a20d568cc34a36ae1662dba0d3aa59e068886b2c8` |
| 41 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/neg-mem.md) | 282 | `result-track:06ba2abb2dfd5b836a609bb54f6de6ff5becefd37631d12cded11b96a1f2eaf3` |
| 42 | `theorem` | [sub_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/sub-mem.md) | 286 | `result-track:f3b8eda36895999fb145a39acd8056805008dcf4fdb4d08e16ea6d870ba5a871` |
| 43 | `instance` | [toNonUnitalRing](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tononunitalring.md) | 290 | `declaration-track:b8dec331fcbb2b7788ec608abc920d7b034051600b08baaad4cb6a99493e439c` |
| 44 | `theorem` | [zsmul_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/zsmul-mem.md) | 295 | `result-track:945975b91aaf807b6ed2d2b05bb525067c459c79c26d2c51763a48be698e1e01` |
| 45 | `theorem` | [val_add](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/val-add.md) | 299 | `result-track:4fc985b1bbe95d6782a31cf09daebd65cb0fd8258082b64a29d8fdb420c420cb` |
| 46 | `theorem` | [val_neg](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/val-neg.md) | 303 | `result-track:55fa80d28c989452c2308372e6ba8b037da3841eebd6b2976e0cbac1894830f3` |
| 47 | `theorem` | [val_mul](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/val-mul.md) | 307 | `result-track:de1e3f823c8777a2c43abc61f1930cf620805d2b77f154c9574f5cce0e172573` |
| 48 | `theorem` | [val_zero](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/val-zero.md) | 311 | `result-track:dbb3cae765443fa7e69919baf6c5eb65890dad72116bff62d4d456691a2bcfb6` |
| 49 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-eq-zero-iff.md) | 314 | `result-track:492fedfa27438bde24beb35c02bd50c60f17d90fa5ae20876f7891cbad2f6ea2` |
| 50 | `instance` | [toNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/tononunitalcommring.md) | 318 | `declaration-track:ad396d2de131da23e5f153585552e29bca78f1f56199073531315bfe7c777a0d` |
| 51 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-tosubsemigroup.md) | 327 | `result-track:5864818bc5f4af4772e3116ee31f396051a346d14b82628fbab0690629e9f1f4` |
| 52 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-tosubsemigroup.md) | 331 | `result-track:265a26330ac42632957438bf84ec8d4bb75a126ee7bafc6b9f1414cdee31d51d` |
| 53 | `theorem` | [mem_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-toaddsubgroup.md) | 335 | `result-track:7d1f848184f872390b41268762fd8f327228076fb0f065358d31d3e3f6f8efb0` |
| 54 | `theorem` | [coe_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-toaddsubgroup.md) | 339 | `result-track:535fa4e6f88703c8029566da206bd597c88b7ac63bd148e9a414ccb041adb86f` |
| 55 | `theorem` | [mem_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/mem-tononunitalsubsemiring.md) | 343 | `result-track:a996243603a4b7c92d810c0a334896fe4c44cd3345030ed7ada00e83638bbb32` |
| 56 | `theorem` | [coe_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/coe-tononunitalsubsemiring.md) | 348 | `result-track:b630f3b05277fe422a04db3b3af8579791ec01cff5dda4ead1c88907050069dc` |
| 57 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubringDefsNamespaced.lean/declarations/inclusion.md) | 365 | `declaration-track:a98ee6d7488808f3db97f2b2804583469771f5921ec1a09c33adfd6e6a3c6c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af859625d7c9580099c96759879b4d59b61798533cbf8e5b8c7f2ea56d09308f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Defs/Variante6997d0d2c27b636514dfac361ff4d89f643ab29286844deec4e5c8ed2784d7f.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Defs/Variante6997d0d2c27b636514dfac361ff4d89f643ab29286844deec4e5c8ed2784d7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
