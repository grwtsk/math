# Verification target: Affine Isometry Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12fbf96ab0aaf6b734fa7f0f304a81cf3aed6a4f",
  "lexical_observation_count": 147,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12fbf96ab0aaf6b734fa7f0f304a81cf3aed6a4f`.

Source path: `GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.LinearIsometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Restrict` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/affineisometry.md) | 58 | `declaration-track:c8a0771077fcfb7cdc8f267f2a355e00767e2e706fe246d1ec9ab5c71b7d7c60` |
| 2 | `def` | [linearIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/linearisometry.md) | 72 | `declaration-track:ab3c6ca373161ba7c4a57ada274ba8a2b23093a8b88ad1c5a6a28c5c6bc571e9` |
| 3 | `theorem` | [linear_eq_linearIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/linear-eq-linearisometry.md) | 77 | `result-track:8fe4b2b893f0de80010009e19e1dfadcb5f37d48a45c89d6b480fcfd83d8cfdd` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:71d0297533c0bf973e9e789a4f1530638240b39b7a2a5389764337339d2e1fcc` |
| 5 | `theorem` | [coe_toAffineMap](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toaffinemap.md) | 87 | `result-track:ede8707bc53885faa25b79fb9ac71bc3a497593a0173b763126399baad48649d` |
| 6 | `theorem` | [toAffineMap_injective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffinemap-injective.md) | 91 | `result-track:ccb6aca887cb0668493fa94fa50c7080adb629067ad02c374b366d1d9276ef57` |
| 7 | `theorem` | [coeFn_injective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coefn-injective.md) | 96 | `result-track:342eb4011e2585a4368f277330523b1456807cb9eec20d6719ad6872636c508d` |
| 8 | `theorem` | [ext](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/ext.md) | 101 | `result-track:8d336b6e1bba9df2049c5941ab1e61f033a1fa2aec608bb04399ae109f1cc66e` |
| 9 | `def` | [toAffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometry-source-edition-2.md) | 112 | `declaration-track:de0d9290bed864a610d000067f2c77d400ea0357546d8cfe317ff9b098a0f653` |
| 10 | `theorem` | [coe_toAffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toaffineisometry.md) | 117 | `result-track:73f200323119eadc5f7a9d53f4d7f87380b9cf0378546747cbfe4dd4bbc02560` |
| 11 | `theorem` | [toAffineIsometry_linearIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometry-linearisometry.md) | 122 | `result-track:c36f105d45cebe13f7fe328033b0fb8940cac681c4832b80bba289cd820cf403` |
| 12 | `theorem` | [toAffineIsometry_toAffineMap](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometry-toaffinemap.md) | 129 | `result-track:0042185f6e24999c10877f1b81c263148067d043c8036826b288fad065c63fce` |
| 13 | `theorem` | [map_vadd](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-vadd.md) | 140 | `result-track:0dbec2269406b7b4fa45c4da43a2e872b994537c710b3e70cf8e49015546f54a` |
| 14 | `theorem` | [map_vsub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-vsub.md) | 145 | `result-track:6d6b033528da53f1f25885710c5ecaa99ee0e2f6a479aa48ca09e018162d3ab5` |
| 15 | `theorem` | [dist_map](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-map-source-edition-2.md) | 150 | `result-track:dc935af7e49681e336b9fa5876692bd53a75055ac535cc727b249f6a51f91597` |
| 16 | `theorem` | [nndist_map](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/nndist-map.md) | 156 | `result-track:89f03b87274326803a3ce940b7a906deba74f34f53561e93ec682a31a5abfc22` |
| 17 | `theorem` | [edist_map](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/edist-map-source-edition-2.md) | 161 | `result-track:d68193a59f22e98feced6fde4fb1e402bdce8101d7286794ece9968441cb7dae` |
| 18 | `theorem` | [isometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometry.md) | 164 | `result-track:017a7e20cc7cb5721ccdc8a9013e689ef4f5c94f8e9833a116c609dac3752537` |
| 19 | `theorem` | [injective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/injective.md) | 168 | `result-track:2fbb4d2ccfb7bf35b909da8bb4685b107cc24485912c49d71f969368f6f9f8a2` |
| 20 | `theorem` | [map_eq_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-eq-iff-source-edition-2.md) | 173 | `result-track:5d06f5f039b01ae771653effae25cf0edcde7bf662b8efce5f9a5e1a5431283c` |
| 21 | `theorem` | [map_ne](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-ne.md) | 177 | `result-track:03d20e2380835bca07c2adea1ca0d9ca3acae0b0542eced4a27663c3aa9f5c0f` |
| 22 | `theorem` | [lipschitz](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/lipschitz.md) | 181 | `result-track:e0a4ea3d4a8f5f203e7bdd47065d6c4bf4f92b9e4a7a2b7f1cda15772de3445b` |
| 23 | `theorem` | [antilipschitz](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/antilipschitz-source-edition-2.md) | 185 | `result-track:e720b984ebb407596eaf204857ce123e392c4480ba99dbb8acc144ed64aba743` |
| 24 | `theorem` | [continuous](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/continuous-source-edition-2.md) | 190 | `result-track:ae400b40ee2c39dc9688860d421080b15dd0382f7155355820d37745cf3958ac` |
| 25 | `theorem` | [ediam_image](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/ediam-image-source-edition-2.md) | 194 | `result-track:f508eddcb9910f818e5f7098947a4260e991548f0938fe66fc186470fd7846a1` |
| 26 | `theorem` | [ediam_range](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/ediam-range.md) | 198 | `result-track:22d68d539349a6047232d97b50a6ac047f4f4e55db8447d12d3ac9112df8fda7` |
| 27 | `theorem` | [diam_image](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/diam-image-source-edition-2.md) | 202 | `result-track:fd01d3ea83c3bae8d99be76f6ea5627a9868fd89522aeab9417fe72c9a804c29` |
| 28 | `theorem` | [diam_range](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/diam-range.md) | 206 | `result-track:f1b876e61e027e005062c07b7e8356c486766ced3f601e5fdef72fff15596f25` |
| 29 | `theorem` | [comp_continuous_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp-continuous-iff-source-edition-2.md) | 211 | `result-track:4f8a78f351a53dc3c485266707753f26a5c93f9e23d7ff79cea4169efe53d2fb` |
| 30 | `def` | [id](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/id.md) | 217 | `declaration-track:e448f5e11ddf15ae7b57687de5d91c269004072246a8e1e3745ac1a902c8fe83` |
| 31 | `theorem` | [coe_id](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-id.md) | 222 | `result-track:9adea5665d32cbf199250b6086d42848e3c2d20c388069b84905e5aa5b081171` |
| 32 | `theorem` | [id_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/id-apply.md) | 227 | `result-track:c9766a3f797a0641c051fc391ec875a0105eccbeaa8dd2d24c1c2825a76e73fb` |
| 33 | `theorem` | [id_toAffineMap](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/id-toaffinemap.md) | 232 | `result-track:5bead50d19f83b5a6d82b8422cbc8789f83b8a7540b094e6029b8e648469be8e` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance-source-edition-5.md) | 236 | `declaration-track:e200d1320b4eb576385e9cb498421d5d363bb280c5c040eefa66113966985473` |
| 35 | `def` | [comp](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp.md) | 240 | `declaration-track:663142d5e7307b2a8507365440b5ddac8e9235d643710ac7c3e97c20b2154844` |
| 36 | `theorem` | [coe_comp](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-comp.md) | 245 | `result-track:42fbb4c90662070bd590e8ba69733347adc14f405165dffe4ecdfc51d3838f2d` |
| 37 | `theorem` | [id_comp](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/id-comp.md) | 250 | `result-track:a0b55ca280b129f4878b3d16131a9b5efde005b5f0bd1387e19f03473ba6b42a` |
| 38 | `theorem` | [comp_id](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp-id.md) | 255 | `result-track:9b253a0f31a13ef66093607f0d0550c44fc1da92ccec449052a217e7c327cdb5` |
| 39 | `theorem` | [comp_assoc](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp-assoc.md) | 259 | `result-track:020c3b40246746255e95f146f1fdbcafb6a47a41d8112f460ae5e5c99181340b` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance-source-edition-6.md) | 264 | `declaration-track:f6748574c48a73e073662c50952cc0523b2de6224d2958148ef8ff5e72c53bb0` |
| 41 | `theorem` | [coe_one](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-one-source-edition-2.md) | 272 | `result-track:d79170dd2a065e056c4124849e28a5e73ff7154d698624110c8857a2b32b5332` |
| 42 | `theorem` | [coe_mul](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-mul-source-edition-2.md) | 277 | `result-track:e932fb9e0ac1a0fd12770a096123c8cc126547308f93f41b9daa4b09af571b37` |
| 43 | `def` | [subtypeₐᵢ](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/subtype.md) | 286 | `declaration-track:cd2056e6b9d1d24e75456d2963ff03ef440e0d04e3f020eccb8a3981e0af1868` |
| 44 | `theorem` | [subtypeₐᵢ_linear](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/subtype-linear.md) | 290 | `result-track:21a1ab2ad304f2fc9fdcae991f150441c0e04359a4a9e7a67ed26aa0424a2190` |
| 45 | `theorem` | [subtypeₐᵢ_linearIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/subtype-linearisometry.md) | 296 | `result-track:1f13c04b37fb32f8394ade6d30dea4f8a3f2b7b491b740845be2ddd35a6ad379` |
| 46 | `theorem` | [coe_subtypeₐᵢ](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-subtype.md) | 302 | `result-track:53a8433ca4b1a6399cf2a54f63e3da08d49f15576480156584ae2e0e1b42f0cd` |
| 47 | `theorem` | [subtypeₐᵢ_toAffineMap](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/subtype-toaffinemap.md) | 307 | `result-track:334a47d0a097a5f223a2eb3c23e1d240bc9f2356c8987740b751fefe006e7456` |
| 48 | `structure` | [AffineIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/affineisometryequiv.md) | 317 | `declaration-track:adfc7437ade3f58b7b67697247dfaca4510d61789061d88862c08ba13f73add0` |
| 49 | `def` | [linearIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/linearisometryequiv.md) | 331 | `declaration-track:461de42e39c268389ec5bd6e813a0399d36021510432e2c5d912f11461a758e8` |
| 50 | `theorem` | [linear_eq_linear_isometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/linear-eq-linear-isometry.md) | 336 | `result-track:b307da7126c84d8fe267c8f1ba9bef2b2c1c24bcfafbbe29ef8a14058c9e2585` |
| 51 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance-source-edition-2.md) | 341 | `declaration-track:678867f67abd8e0b00abc1fbf42c7d7064aec1f097b42d6b122df310d585aafe` |
| 52 | `theorem` | [coe_mk](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-mk.md) | 353 | `result-track:792c9a094962bbb4a7b660ae2211dc347e938b9e41e86126f7514df55460e1ed` |
| 53 | `theorem` | [coe_toAffineEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toaffineequiv.md) | 358 | `result-track:2e7ab296e375fc3cedc7f68cacb71d367b9340e6cde50ac671d2dd55b1801ae8` |
| 54 | `theorem` | [toAffineEquiv_injective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineequiv-injective.md) | 362 | `result-track:096c6090045b929cc0fd7204e9ba14f67c6220286fbed6f3bbd34704ed476a97` |
| 55 | `theorem` | [ext](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/ext-source-edition-2.md) | 367 | `result-track:a3596f0f2dcdf655fe8cc367239664c4332150eb0ced6a3135a8b5a8df693ea5` |
| 56 | `def` | [toAffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometry.md) | 372 | `declaration-track:487bef6e840e3299fc508cd821f5324b43eb462074eb67d469ef41aa5774740b` |
| 57 | `theorem` | [coe_toAffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toaffineisometry-source-edition-2.md) | 377 | `result-track:af033ef45d5fddc3b9bbd0deecaef486af271b7ebf0823e35649d3e1255f5c97` |
| 58 | `def` | [mk'](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/mk.md) | 385 | `declaration-track:7edb2b6357dc7bce99d6e3c7f1a117ecfde1263ad4b6af7032ccf1e967117b5f` |
| 59 | `theorem` | [coe_mk'](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-mk-source-edition-2.md) | 391 | `result-track:f15c0201b4eebdb6287d0b90d44e34e93f8b47727456bd0b48f12db4bf3d2a02` |
| 60 | `theorem` | [linearIsometryEquiv_mk'](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/linearisometryequiv-mk.md) | 396 | `result-track:4741ab5ec2fd3912118c171dd86e6a64557328fa884e3d5b104a3011fd6f7f8f` |
| 61 | `def` | [toAffineIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometryequiv.md) | 409 | `declaration-track:6a8d81f8405804548061892644ee7464a82a64f6a039df699da7cff1784f8e9f` |
| 62 | `theorem` | [coe_toAffineIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toaffineisometryequiv.md) | 414 | `result-track:11017964440ec70b36bb478785e0433b5db5461cc9a6a3bf2c3a3ed5418b24f3` |
| 63 | `theorem` | [toAffineIsometryEquiv_linearIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometryequiv-linearisometryequiv.md) | 419 | `result-track:ea29b25085a6bee48b453571bec0a7ac453222fa8ec5b6bc9f02fd1f81ee3ef0` |
| 64 | `theorem` | [toAffineIsometryEquiv_toAffineEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometryequiv-toaffineequiv.md) | 427 | `result-track:961ef3f1c3d9719a5de47dab4e2a36c72d5880420befc7f30808114eb7ab1be8` |
| 65 | `theorem` | [toAffineIsometryEquiv_toAffineIsometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineisometryequiv-toaffineisometry.md) | 434 | `result-track:2f2b73e1ab7de8ae279699711e69d4bb1a6d5036e0c1959b1cb80fd35b3265da` |
| 66 | `theorem` | [isometry](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometry-source-edition-2.md) | 445 | `result-track:47b13bb891f3622079b11f537a293373a738a182f00cb4f013ba7144aa2a8e84` |
| 67 | `def` | [toIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toisometryequiv.md) | 450 | `declaration-track:a5f0ea7d2fd00ab5a34aeea0b9e0b2b9e778b9db9812e499eeec89b7612c2d81` |
| 68 | `theorem` | [coe_toIsometryEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-toisometryequiv.md) | 455 | `result-track:4612ff4adc054e26b12c558abe34f142026028f7023233a088dbcc522f6c0cd8` |
| 69 | `theorem` | [range_eq_univ](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/range-eq-univ.md) | 459 | `result-track:33edeefd7b770f97c6f05bef9ee2bf215605a1cb98f38e8321928663baf3d787` |
| 70 | `def` | [toHomeomorph](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/tohomeomorph.md) | 465 | `declaration-track:6eee75eb0bcb937390904756a9dc555ae7a97ec1695b1dc6c7bcea3a5e31edff` |
| 71 | `theorem` | [coe_toHomeomorph](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-tohomeomorph.md) | 470 | `result-track:cc2b75668a032c3d6510e5ba3cc4beabf51307747cc0916619ef2d7465a25c95` |
| 72 | `theorem` | [continuous](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/continuous.md) | 474 | `result-track:a6fe38fc22052c0a8adaf1a2aea3b210a5baf1a2ddc5a0a98bf462b5eee1d8f3` |
| 73 | `theorem` | [continuousAt](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/continuousat.md) | 478 | `result-track:2ec946fb9a8221fa3de85fe683490447814077397d4aaaa3aace312cb0acef91` |
| 74 | `theorem` | [continuousOn](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/continuouson.md) | 482 | `result-track:a983bb903567b8952ca35f8dc215fa4c24452672a145a77a1a208a244f6749b3` |
| 75 | `theorem` | [continuousWithinAt](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/continuouswithinat.md) | 486 | `result-track:99f0fbdbbaac32b398ac839305590576923cefbcf306392a00b113fd056fb4e1` |
| 76 | `def` | [refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/refl.md) | 493 | `declaration-track:48f23e875f2221c1caa193f7dccd31f240c94aa70002b26ea61bf06b2111392a` |
| 77 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance.md) | 499 | `declaration-track:61b2d1c91e8753dea621ef461aedb85420ed1918ee4e53a706d1147b9c310174` |
| 78 | `theorem` | [coe_refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-refl.md) | 503 | `result-track:2b79c2a66b22594cf4b6058999cb24cf93df178c6a0af3f106082bd1b1ed6a67` |
| 79 | `theorem` | [toAffineEquiv_refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineequiv-refl.md) | 508 | `result-track:7d3c412fba09155c56ac3719e35984c0dd5610ef4209f2947a5d580df6b85de3` |
| 80 | `theorem` | [toIsometryEquiv_refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toisometryequiv-refl.md) | 513 | `result-track:ea8f63f8a44f7cd907bd50f2ed1f0f8b59367c7351b5f14e65f441fccdceb4f2` |
| 81 | `theorem` | [toHomeomorph_refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/tohomeomorph-refl.md) | 518 | `result-track:538d6f52d5990a710c6dab0052fc318ef2113a143f49c10aed8c1c3d0c491f9f` |
| 82 | `def` | [symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/symm.md) | 523 | `declaration-track:8939abc3ddc1b5130e66f2e410d5642e47a3b9f653a9a4bd1e18b1e023eb82b2` |
| 83 | `theorem` | [apply_symm_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/apply-symm-apply.md) | 528 | `result-track:12cf0f9dbd407fd16a8db63f5726ce43f0ffb1394825335e2fada71aa729659f` |
| 84 | `theorem` | [symm_apply_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/symm-apply-apply.md) | 533 | `result-track:3a5086878b5b7a194d95b8a10cde95ecc02078f2d08589f482d1ff166f406db2` |
| 85 | `theorem` | [symm_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/symm-symm.md) | 538 | `result-track:e2f8b08768c6c2b19b156d45b258df4119bf66406a4f2d917de5778c9c07bffc` |
| 86 | `theorem` | [toAffineEquiv_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toaffineequiv-symm.md) | 543 | `result-track:9e4f44f7abcb95646b818ad460cd865b35d51773ff4b76df5084dc745b4df307` |
| 87 | `theorem` | [toIsometryEquiv_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/toisometryequiv-symm.md) | 548 | `result-track:78bd625d2b5dbabc66cd31953767d7c4318489600db6f84f691414e5d30ba46e` |
| 88 | `theorem` | [toHomeomorph_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/tohomeomorph-symm.md) | 553 | `result-track:67d747530b701b4688002a5ffa926308aabc6fc93465ff81267d667d3fdecede` |
| 89 | `def` | [trans](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/trans.md) | 558 | `declaration-track:5a339b1668bc7f12cecedc3c98064c11b1e617f020ebd290db64713253ae2ce3` |
| 90 | `theorem` | [coe_trans](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-trans.md) | 563 | `result-track:c4cf884066200f27b5cfc3884802f1f2ab6e8c812bc262772d620cc57aa2a66e` |
| 91 | `theorem` | [trans_refl](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/trans-refl.md) | 568 | `result-track:6b69ef4e47c213aeff87a6fe84b1ec79917d37b9c637dc701ea4153ab5b1715f` |
| 92 | `theorem` | [refl_trans](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/refl-trans.md) | 573 | `result-track:b016144731e07fde6ab79d55d0cc6588c2d36e07dc2c34d72152fd11b8c16519` |
| 93 | `theorem` | [self_trans_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/self-trans-symm.md) | 578 | `result-track:1cc2427bc0541c9b024b4f95c4f5d2db728150022d61dbb8e77237ebf9abadb5` |
| 94 | `theorem` | [symm_trans_self](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/symm-trans-self.md) | 583 | `result-track:7dab909d5e73238e73174adbb14c64e51c96b8695b898c1f66c4767c80266c5e` |
| 95 | `theorem` | [coe_symm_trans](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-symm-trans.md) | 588 | `result-track:547e9a8f89f1b4282dd9f9964b4a7758269199d1a482a9f3d8ddebde2c7c3279` |
| 96 | `theorem` | [trans_assoc](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/trans-assoc.md) | 593 | `result-track:e8dc468216abf92da71b0cae93eace701dae577663d776b2cf8f89b7f514fcaa` |
| 97 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/instance-source-edition-4.md) | 599 | `declaration-track:c9576e020c47ef5dd9e12cd3abb4ca00e61ac71ae3e17ad44e72ba9ff2946e00` |
| 98 | `theorem` | [coe_one](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-one.md) | 609 | `result-track:305e7210e13b438f05d745384c52843e295eb31cc72bfccbd11d6174e7842ba8` |
| 99 | `theorem` | [coe_mul](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-mul.md) | 614 | `result-track:9b0becacc3e1284a975bd57c04bb7da3018170a02bdb09c67db464d8b8ef9963` |
| 100 | `theorem` | [coe_inv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-inv.md) | 619 | `result-track:f2d8e80c12e49083a23aff341919f0350738fc2194df1bfdff06b75849bfa433` |
| 101 | `theorem` | [map_vadd](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-vadd-source-edition-2.md) | 624 | `result-track:4c669b56c534c43229fa96b2b680ede81709242fe9b7124aed258768b4e738f2` |
| 102 | `theorem` | [map_vsub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-vsub-source-edition-2.md) | 629 | `result-track:f035ff7d856ac1cd4ebf6f1caee5724d3c44c1a0841bb993dab6061315b6cd95` |
| 103 | `theorem` | [dist_map](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-map.md) | 634 | `result-track:d3783dfdc3ff9c3e1ca872166ebb43ca9bb3561c76c4f2437a6d2ef23e988bf8` |
| 104 | `theorem` | [edist_map](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/edist-map.md) | 639 | `result-track:98e0aabea35a6b7d715a9ee05e856156616cd1fb91273530689826e144c1d2d5` |
| 105 | `theorem` | [bijective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/bijective.md) | 643 | `result-track:0fda8a628bc3497187a792f79f2d96fb8024eb9492eb675fa6c42444d0fdf41b` |
| 106 | `theorem` | [injective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/injective-source-edition-2.md) | 647 | `result-track:4ccbe59c46df5a5c21ef1df00e31898f2dc40a1ec18a2304f522a3c9b5158272` |
| 107 | `theorem` | [surjective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/surjective.md) | 651 | `result-track:8a966abd8a6a437798ab41a407d18250e9dfaffe7fa32f1f219dbcebd771f7d3` |
| 108 | `theorem` | [map_eq_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-eq-iff.md) | 656 | `result-track:3dfe4bd793ab30e85a9004c3f82ae6ae53b57c8e10dd14d7d0d609cfea65883c` |
| 109 | `theorem` | [map_ne](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/map-ne-source-edition-2.md) | 660 | `result-track:c011d74f1e955003d55170dc6857fc046b8b056f93ef80cf98b7538555740cd9` |
| 110 | `theorem` | [lipschitz](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/lipschitz-source-edition-2.md) | 664 | `result-track:f92db92e63848f50882d27c4d1c3f78eeb8e3724b6d6370d13763384939695af` |
| 111 | `theorem` | [antilipschitz](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/antilipschitz.md) | 668 | `result-track:2f282b33782c404c83506300d45381ec778992a10ebff3727c6ca6a4d7c2d30a` |
| 112 | `theorem` | [ediam_image](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/ediam-image.md) | 673 | `result-track:755725b67cd6f2b57872d66602482dd07d7c90fa19674857c2d6254b4f703d30` |
| 113 | `theorem` | [diam_image](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/diam-image.md) | 678 | `result-track:4e7e9af429bf805ab2428aef7ec636f9b1b60a19c8b3fdd51fe487afdb25815f` |
| 114 | `theorem` | [comp_continuousOn_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp-continuouson-iff.md) | 685 | `result-track:d775db49b8e42a45a85d50c460f2836406a73525afb174c7608b08413fdaa018` |
| 115 | `theorem` | [comp_continuous_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/comp-continuous-iff.md) | 690 | `result-track:22e33dc2c2b65a02ac59c909d9ce4f2ee92ff656f5161a0e657e256a92e961ac` |
| 116 | `def` | [vaddConst](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/vaddconst.md) | 699 | `declaration-track:9f19a6766e9908a1ca0f22d471273294d7ccc7cfa285c4003ef70bf1b602fa2e` |
| 117 | `theorem` | [coe_vaddConst](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-vaddconst.md) | 706 | `result-track:84c1a8ff02e1b3e3d3495bb737c6c5d694089290a907c16582ede80a1e585cd6` |
| 118 | `theorem` | [coe_vaddConst'](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-vaddconst-source-edition-2.md) | 711 | `result-track:d8d2e0c7375c5c5c20705d9d9faebfa5651c7638b88efc2e58983a902928ef77` |
| 119 | `theorem` | [coe_vaddConst_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-vaddconst-symm.md) | 715 | `result-track:67d7753b7e9505a34f4268cf3c18be24cc9dceb5b2a6f5e2fedab97a8ff33fe7` |
| 120 | `theorem` | [vaddConst_toAffineEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/vaddconst-toaffineequiv.md) | 720 | `result-track:6e64615de9cbc8db40a187bf06d416be954f9c73e3d614d57a85f4f092e41465` |
| 121 | `def` | [constVSub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/constvsub.md) | 728 | `declaration-track:8360e27275758b48ec04471de3ee307d10e989113dbaac4717ba1a3e262c2cd3` |
| 122 | `theorem` | [coe_constVSub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-constvsub.md) | 735 | `result-track:71169daa1df3449ae2f3692468e4f012cb33b6ad05530859eb5fb889e1175b6d` |
| 123 | `theorem` | [symm_constVSub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/symm-constvsub.md) | 740 | `result-track:de454cee2ebe59488545ed382a324f1069a6faf27d5cae138b036f405a750e4b` |
| 124 | `def` | [constVAdd](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/constvadd.md) | 751 | `declaration-track:eee7130af4230528b913e1ccf1f340ea2c110d0c577683c7a952e1ea682128ec` |
| 125 | `theorem` | [coe_constVAdd](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/coe-constvadd.md) | 758 | `result-track:37eb11edda051e295b17156bf7576a853bd6f5fa7b31f747c68edcd65c011404` |
| 126 | `theorem` | [constVAdd_zero](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/constvadd-zero.md) | 763 | `result-track:195a399686d59e0e0b557bd9fcdf750cbb1f4f7e263b18ecb216f8f6161e9a6e` |
| 127 | `theorem` | [vadd_vsub](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/vadd-vsub.md) | 769 | `result-track:a5757c5996574163608b989493f7dbe6dc5695ee36170a0ac31c6bd3c5fe8e10` |
| 128 | `def` | [pointReflection](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection.md) | 778 | `declaration-track:a8115c01b96788682229f5efe1e9d56c0861a572a8f319813091e69dbdaa8cfc` |
| 129 | `theorem` | [pointReflection_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-apply.md) | 784 | `result-track:622ce4a7a4cec65b5597242f5094ec7849cadc421750c2bdc06d82756b708109` |
| 130 | `theorem` | [pointReflection_toAffineEquiv](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-toaffineequiv.md) | 789 | `result-track:39d081e6b5687582552dfb4ea56e3d00e0fdacefcf01fca7809a992ddd254ade` |
| 131 | `theorem` | [pointReflection_self](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-self.md) | 795 | `result-track:bbd9c0b7491c2d670c9dc093110b8737549ade2a4751c80401f22aa7675a3824` |
| 132 | `theorem` | [pointReflection_involutive](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-involutive.md) | 799 | `result-track:24c346b2b09d13454764d6c8965e2cf98c0ce81f611976d59e761572b4637d7d` |
| 133 | `theorem` | [pointReflection_symm](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-symm.md) | 804 | `result-track:f88fad073ba5b32628e2f7a2c1e927e0561731bb092277d948339adeaf11d478` |
| 134 | `theorem` | [dist_pointReflection_fixed](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-pointreflection-fixed.md) | 809 | `result-track:315dc1c9ab84bbdad857d19829461dd772e5e69e598addf3f1fd5dc92415d360` |
| 135 | `theorem` | [dist_pointReflection_self'](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-pointreflection-self-source-edition-2.md) | 814 | `result-track:63a75c14214f7d211554dc24cfd26ca0006b612e447919ce06551140342bed18` |
| 136 | `theorem` | [dist_pointReflection_self](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-pointreflection-self.md) | 819 | `result-track:1238cb0a48b93c67f9a4cf0905ed8a72c632b58c19595fad022501b338a116ba` |
| 137 | `theorem` | [pointReflection_fixed_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-fixed-iff.md) | 824 | `result-track:e4302a6c5a3af46db3935ee2152780a63e187524efac2ba61cb69d032520cb9a` |
| 138 | `theorem` | [dist_pointReflection_self_real](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/dist-pointreflection-self-real.md) | 831 | `result-track:1fb1a6082614167717f34954c15099c8922ff0c1fe7401a27bdc263141c5ff15` |
| 139 | `theorem` | [pointReflection_midpoint_left](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-midpoint-left.md) | 836 | `result-track:e53faf29297c16ffda716b0bdf74b7367d4b96e039149195edfc830ff2cc9205` |
| 140 | `theorem` | [pointReflection_midpoint_right](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/pointreflection-midpoint-right.md) | 841 | `result-track:01d570778de908b23328dda851eac0f2771c5e2c79dbe807c05d4373c41e1bd2` |
| 141 | `theorem` | [AffineMap.continuous_linear_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/affinemap-continuous-linear-iff.md) | 850 | `result-track:12d43a1fdfcd859da959bd5ac3fc222456ecf49baac4fb5e9da61addd7db8274` |
| 142 | `theorem` | [AffineMap.isOpenMap_linear_iff](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/affinemap-isopenmap-linear-iff.md) | 866 | `result-track:a9c64077774d8d442e7e6e506363b6cd1c27f14ffec0bb4e48d5da21ee400859` |
| 143 | `def` | [equivMapOfInjective](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/equivmapofinjective.md) | 889 | `declaration-track:b6fff9055156bb0b7f6629941b1ee8e6694e858ce94a8917d886f734241b4c2a` |
| 144 | `def` | [isometryEquivMap](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometryequivmap.md) | 904 | `declaration-track:64d5440dc11fef2e43b5c850327226e395c056e5fd7df7f088f4d00053150907` |
| 145 | `theorem` | [isometryEquivMap.apply_symm_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometryequivmap-apply-symm-apply.md) | 910 | `result-track:0e4306ef8cd010a11c979fc403fd934ba911b2b5c85dca08c46855ad831846c0` |
| 146 | `theorem` | [isometryEquivMap.coe_apply](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometryequivmap-coe-apply.md) | 916 | `result-track:453228931bedc572ca09539bfcf30a15e40a0311218db844ebd9c838e059c723` |
| 147 | `theorem` | [isometryEquivMap.toAffineMap_eq](../../../../FunctionalAnalysis/AffineIsometryNamespaced.lean/declarations/isometryequivmap-toaffinemap-eq.md) | 922 | `result-track:99c21204ab92e022c06dd9bb2a50dee0535186692a1a593635d1d1a17e579b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ef16a9e5ce79e1a989dcc95320abbf935307f8e73ba199f556a8c60f1b88a6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
