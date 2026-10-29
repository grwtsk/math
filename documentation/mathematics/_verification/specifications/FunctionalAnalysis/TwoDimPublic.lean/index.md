# Verification target: Two Dim Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2f0287678296c3c94d2ece7e045ea2abf96989",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TwoDimPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TwoDimPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2f0287678296c3c94d2ece7e045ea2abf96989`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [areaForm_to_volumeForm](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-to-volumeform.md) | 100 | `result-track:65c095f843c3b6af34d092681c24d6901a7a7bbe029ea3946311cfec8419d95b` |
| 2 | `theorem` | [areaForm_apply_self](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-apply-self.md) | 103 | `result-track:27d05629aa4ca0cd3fc236b6c9f61e8e1e2f1e6ea428744cf1999355f66e4675` |
| 3 | `theorem` | [areaForm_swap](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-swap.md) | 109 | `result-track:19adcbec9841fd7928c218f2dd8d827cc74cc4a812eb208c861dbe7e5ebc9ff6` |
| 4 | `theorem` | [areaForm_neg_orientation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-neg-orientation.md) | 117 | `result-track:bba0bfab8ce168241cce9ca977f276245307db3f6bca3a67e5f36db363865bf7` |
| 5 | `def` | [areaForm'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-source-edition-2.md) | 122 | `declaration-track:92cb558aec11a16e62f82dc6e5efdaee1f5c57344a6e26ed792ead73e8931db1` |
| 6 | `theorem` | [areaForm'_apply](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-apply.md) | 127 | `result-track:514d1193b366abd953eed26d74627e47c24c333524a66289462720f35efb53f3` |
| 7 | `theorem` | [abs_areaForm_le](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/abs-areaform-le.md) | 131 | `result-track:4de9d4bdd7b4524f4cf363d3b2cc5f9302b8651a60ff6d7fbc8a98dc93a665a1` |
| 8 | `theorem` | [areaForm_le](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-le.md) | 134 | `result-track:6047a1407b658089e5803f9534a1e46471288f4a8460a6fe22d84e980a34277b` |
| 9 | `theorem` | [abs_areaForm_of_orthogonal](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/abs-areaform-of-orthogonal.md) | 137 | `result-track:5c77348b0a622ff38eb6a44d0bca6f591bec3dedfdf6d3e6238219109dd0971b` |
| 10 | `theorem` | [areaForm_map](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-map.md) | 147 | `result-track:d058f617eef7d31ad951fdf2214b82ea38a652deb7d67fbf9f9b0bb3a288d4c9` |
| 11 | `theorem` | [areaForm_comp_linearIsometryEquiv](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-comp-linearisometryequiv.md) | 157 | `result-track:984919677436a1590b49d9183d220540ddb440c3f30997f2f07899f80ff0f70a` |
| 12 | `theorem` | [inner_rightAngleRotationAux₁_left](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotationaux-left.md) | 175 | `result-track:5abba6c8293142fcd343b827c860d8f2e4d7184685ef5ea3554bdccfedfafd46` |
| 13 | `theorem` | [inner_rightAngleRotationAux₁_right](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotationaux-right.md) | 183 | `result-track:ca873afc1023b6b46f43aa651a1d8f0629795b525016f1ba16dbd8bd02626493` |
| 14 | `def` | [rightAngleRotationAux₂](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotationaux.md) | 190 | `declaration-track:6eb129455658f56bc60b24ac7b20ed090cd1329faa2548e319129a9ed8a5fade` |
| 15 | `theorem` | [rightAngleRotationAux₁_rightAngleRotationAux₁](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotationaux-rightanglerotationaux.md) | 219 | `result-track:ee4e230eaa622143d6eb00659c2996e5a2da21ca4f3d5a743e7cf9ff546ca29c` |
| 16 | `theorem` | [inner_rightAngleRotation_left](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotation-left.md) | 238 | `result-track:e771b24a3885f02f34514ab9e55e3f2dde1f74350e995054c1a3a823d1648cf7` |
| 17 | `theorem` | [inner_rightAngleRotation_right](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotation-right.md) | 243 | `result-track:f1d0a0cac654ad397e0069072e209cc7d6a45b2321aee908252c728096693130` |
| 18 | `theorem` | [rightAngleRotation_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-rightanglerotation.md) | 248 | `result-track:0c02da80d5743c1a52c80705246ac389020c99e8d22e8b44fa45131228ba7df7` |
| 19 | `theorem` | [rightAngleRotation_symm](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-symm.md) | 253 | `result-track:22f2195bb9b9180f40989b053fe5279245442329005dfd131a5ff5424fdf06f4` |
| 20 | `theorem` | [inner_rightAngleRotation_self](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotation-self.md) | 258 | `result-track:d4d101f32ee8d7b0241d12bad5c6e4834a88f9ae993d3a94f0f28852a609ca0a` |
| 21 | `theorem` | [inner_rightAngleRotation_swap](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotation-swap-source-edition-2.md) | 260 | `result-track:b1134cf9d13834e5973500b99bf43cb3c1153c3f3fed43a55235819afead74f6` |
| 22 | `theorem` | [inner_rightAngleRotation_swap'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-rightanglerotation-swap.md) | 262 | `result-track:8a4e192040b069d933dbcdcc4ef26d6c8ce850ad51c4a0af6526c99e85c1f3d2` |
| 23 | `theorem` | [inner_comp_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-comp-rightanglerotation.md) | 265 | `result-track:5408f9de9c8e01afd6eaa14d419a194d1bc103a8b47d44d7e125e12df5581289` |
| 24 | `theorem` | [areaForm_rightAngleRotation_left](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-rightanglerotation-left.md) | 269 | `result-track:68661bd6650e8aeb2399058533f3477895a18c1ef2650be24e0e1b353eea7dc2` |
| 25 | `theorem` | [areaForm_rightAngleRotation_right](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-rightanglerotation-right.md) | 273 | `result-track:b2b5e3250b2a2e7785737e2fec2380befe34011d9aba49a3dd6c171ec6a47060` |
| 26 | `theorem` | [areaForm_comp_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-comp-rightanglerotation.md) | 276 | `result-track:4fec6ec2769335279f75aca68dc933a14212dd0f2b04fd8e31d3d6bcd97e0175` |
| 27 | `theorem` | [rightAngleRotation_trans_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-trans-rightanglerotation.md) | 279 | `result-track:cc76f5367f2b05ee72d6a11818d430e6ac94b766cb0cf7757ade50cf13d54780` |
| 28 | `theorem` | [rightAngleRotation_neg_orientation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-neg-orientation.md) | 282 | `result-track:82d0e28b4c9b00d5469a601d0a109f5817cdd79ab8c85f4337a9c8ec02408e84` |
| 29 | `theorem` | [rightAngleRotation_trans_neg_orientation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-trans-neg-orientation.md) | 290 | `result-track:edf7885cec7ce2caf5fc11144fb93d06f6ed8c36fac96118f637b78d6c16c67f` |
| 30 | `theorem` | [rightAngleRotation_map](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-map-source-edition-2.md) | 294 | `result-track:94c2331101b47694b9faebb3a58947266a882faba6ca845d3b79ce4a695c621f` |
| 31 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/linearisometryequiv-comp-rightanglerotation.md) | 308 | `result-track:d121319b5505cdcc57b1ce7e241c5494ec5c0b9ee83ec5b9ae24de17b7591f07` |
| 32 | `theorem` | [rightAngleRotation_map'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-map.md) | 316 | `result-track:152f116acba50712172c128a8d64b44a33b274e4331c889db13a6f23308e95da` |
| 33 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/linearisometryequiv-comp-rightanglerotation-source-edition-2.md) | 323 | `result-track:eda3d0794b1f1329a6920b5cfb6447635a26aa4a53d3648d3d60f590bc4055d0` |
| 34 | `def` | [basisRightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/basisrightanglerotation.md) | 330 | `declaration-track:5e8be9f92d79f8aa8506ae26a8096dc004e48edff518780083e05a7b1b739f95` |
| 35 | `theorem` | [coe_basisRightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/coe-basisrightanglerotation.md) | 339 | `result-track:752c9d68666745eb6276e6a2fec8b4fd2595811114b4139fa61437515e2216f4` |
| 36 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-mul-inner-add-areaform-mul-areaform-source-edition-2.md) | 345 | `result-track:379b418badf652d68f45d145febf80a3698373367fdfb87a6dcb186d201384a3` |
| 37 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-mul-inner-add-areaform-mul-areaform.md) | 356 | `result-track:11a585c8c15d6d48fb4880de463302977dcf39e9da8bea779a7dae758fa25040` |
| 38 | `theorem` | [inner_sq_add_areaForm_sq](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-sq-add-areaform-sq.md) | 360 | `result-track:2a69feae2992442ddecf56ad446dc76d6be20c2843cfd3f41584170224471a81` |
| 39 | `theorem` | [inner_mul_areaForm_sub'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-mul-areaform-sub-source-edition-2.md) | 365 | `result-track:8e383f072dfdb6bd18a5dc337b30bcb0010f6160e4f40c40e8bed43d62f25605` |
| 40 | `theorem` | [inner_mul_areaForm_sub](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/inner-mul-areaform-sub.md) | 375 | `result-track:4b5760c9c14d78bf9f7106e7135860ec5c21b97dd253973e2a01b3db180e8c73` |
| 41 | `theorem` | [nonneg_inner_and_areaForm_eq_zero_iff_sameRay](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/nonneg-inner-and-areaform-eq-zero-iff-sameray.md) | 378 | `result-track:4f4a7db4f98d3b2f3d587d1d5d37d20ff683603f51a0341ce4370f08a275a0c9` |
| 42 | `def` | [kahler](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-source-edition-2.md) | 405 | `declaration-track:a23e00c7ff01211aadef337831a42c1a6eb250b3dd2d337519062d38ccd9198d` |
| 43 | `theorem` | [kahler_apply_apply](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-apply-apply.md) | 409 | `result-track:43388643badcde3e6a624ee3d4640538719d8a41c5185cd1eea8b750558f1855` |
| 44 | `theorem` | [kahler_swap](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-swap.md) | 412 | `result-track:7495cf185429c126ea5cc25bc19c3fbe6791a117df58a1bf96983fd3a2fffa31` |
| 45 | `theorem` | [kahler_apply_self](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-apply-self.md) | 418 | `result-track:7384f0a67d3dc378e7e3ad0479baa10f6d17a44868959d7e5fd3adb7d2835bc0` |
| 46 | `theorem` | [kahler_rightAngleRotation_left](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-rightanglerotation-left.md) | 422 | `result-track:5cfbaa8e371e84fcbe5d8e9478ab9fe23a8d2d1a574ee602ff8680acf280c8e3` |
| 47 | `theorem` | [kahler_rightAngleRotation_right](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-rightanglerotation-right.md) | 429 | `result-track:7e27c2a9a17ae2304d75f3a996734717e8b725ee2ac754a18d09ea5e97c6f8e4` |
| 48 | `theorem` | [kahler_comp_rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-comp-rightanglerotation-source-edition-2.md) | 436 | `result-track:cdaa7abeb1fd9c2b3162d415b346b230163f0ea41e472ccf7d0a92de34fef157` |
| 49 | `theorem` | [kahler_comp_rightAngleRotation'](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-comp-rightanglerotation.md) | 440 | `result-track:c8b42a708ccf2b67b4a0348751e941a1baf8ef0595a44007d41f640a6133a870` |
| 50 | `theorem` | [kahler_neg_orientation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-neg-orientation.md) | 445 | `result-track:eaddb5282858770f71da06c22909b4f6c2a53edc1b9f5481901ee15c8dd05f18` |
| 51 | `theorem` | [kahler_mul](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-mul.md) | 448 | `result-track:cdb6b817ca6c189c16eb62caba1c54deab8d3048335e6ce1163f7f8f55b30427` |
| 52 | `theorem` | [normSq_kahler](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/normsq-kahler.md) | 461 | `result-track:b1d412fbae71bdcfff51163e3baf9ee5ea0eab00c7ee886d04fa1b94f440547b` |
| 53 | `theorem` | [norm_kahler](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/norm-kahler.md) | 464 | `result-track:313d24821db9828f8f5b62e7da8f95635edd3dccfff2a2958c047e0fb923752a` |
| 54 | `theorem` | [eq_zero_or_eq_zero_of_kahler_eq_zero](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/eq-zero-or-eq-zero-of-kahler-eq-zero.md) | 470 | `result-track:3cf34965f136cadee4e687814ced589ce56b837115b1004fda5b6c72b2e52208` |
| 55 | `theorem` | [kahler_eq_zero_iff](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-eq-zero-iff.md) | 478 | `result-track:27cf4fc6b799b61446a3ca548f40461796bf1d88db1bc6bb2f8c3df0d9f7a3f4` |
| 56 | `theorem` | [kahler_ne_zero](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-ne-zero.md) | 482 | `result-track:7cc5fcef950b6863e01c7c0527148dd5519e8a44b0c7532a78180c57eb08d387` |
| 57 | `theorem` | [kahler_ne_zero_iff](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-ne-zero-iff.md) | 486 | `result-track:d3deb0927f590e5b72d4c7e284b31a1a9ca5c3596bd843b9e67940054e42b4a3` |
| 58 | `theorem` | [kahler_map](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-map.md) | 492 | `result-track:1ff9987bb185ad761d0680ef223a731c1fe6118f9b8ea09a0b422d16c52a54ca` |
| 59 | `theorem` | [kahler_comp_linearIsometryEquiv](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-comp-linearisometryequiv.md) | 499 | `result-track:027542e79fa51b3286b05818f99c4da8e3f7571c871127e9b5b4537b74ce6b5f` |
| 60 | `theorem` | [areaForm](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform.md) | 511 | `result-track:928f4f49393c8f2d635946bc3ce2fd19d4c61637d4e96205642202388a1991f5` |
| 61 | `theorem` | [rightAngleRotation](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation.md) | 520 | `result-track:f29fdd5af23fc4a2f1fe00c8f80cae7f1a15c4b9e656a806d0184809f72b468b` |
| 62 | `theorem` | [kahler](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler.md) | 530 | `result-track:4b82bb450db44871347e532246d197d89e08f7a6d5506cc20505210f4b0e396f` |
| 63 | `theorem` | [areaForm_map_complex](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/areaform-map-complex.md) | 546 | `result-track:8024fa713ff906784df5ac9fa0f40fada3cad5a1477ac6f763c50ff2f1c25c44` |
| 64 | `theorem` | [rightAngleRotation_map_complex](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/rightanglerotation-map-complex.md) | 554 | `result-track:07fa61c2ae4dd7586abc17d7afca0a1741bd3d9ab3814852b2ecee4ff55a0d29` |
| 65 | `theorem` | [kahler_map_complex](../../../../FunctionalAnalysis/TwoDimPublic.lean/declarations/kahler-map-complex.md) | 562 | `result-track:705273ab70ada7f258ce6e018ee72197bb81a26086cfc83ad380534cc00ccbda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2005c734f148cba937ef6d08b5a7696432e1625ca2f32997904fed8c450def5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TwoDim/Variant4d4055da49aa3ebaf5808eb473394bc82e3940c141175811696bb50a7a9df65f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
