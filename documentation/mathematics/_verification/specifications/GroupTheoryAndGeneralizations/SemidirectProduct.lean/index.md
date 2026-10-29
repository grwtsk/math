# Verification target: Semidirect Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a3ff428028b35d3dd3e3ccec884b8612cab7658",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variant16c88ac8dc425a2ed7024373e77279fe8dda23ef6c32ee0609bbb18bfd9221ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a3ff428028b35d3dd3e3ccec884b8612cab7658`.

Source path: `GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variant16c88ac8dc425a2ed7024373e77279fe8dda23ef6c32ee0609bbb18bfd9221ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SemidirectProduct/Variant16c88ac8dc425a2ed7024373e77279fe8dda23ef6c32ee0609bbb18bfd9221ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Aut` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemidirectProduct](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/semidirectproduct.md) | 42 | `declaration-track:f7412f859eafe0d450c0cbbdda4805d52518950a4a4ba816ded1ac19ff2ecb8f` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:38851c28387ea676e3d0a9b35a2c63883d493e4cc4e416edb803e02b330d3151` |
| 3 | `lemma` | [mul_def](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/mul-def.md) | 69 | `result-track:2606ab633b7f86ff86140d04fa26d3e4be4f41908b579e618c999aef1c23c807` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/mul-left.md) | 73 | `result-track:ff93d321a4f3850429e4a7adb23eb4ecb14c0f5666bcdde5691360160def024e` |
| 5 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/mul-right.md) | 77 | `result-track:c3c825a4ebe5e11c3cf34aff466f46755f645b239f70e1644fd6ab19d94e410c` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/instance.md) | 80 | `declaration-track:03b0a06c7513c4eb6306f660eda67211ec618e800d89bf82696aa97b0cf644c2` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/one-left.md) | 83 | `result-track:668a90a4ef186e6928444f031b5df96b25ecb9513e6d68cb6ae2f2963163c904` |
| 8 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/one-right.md) | 87 | `result-track:394ff8cb7b0d5532fb258263cad364f0d673705cf618ce50059d9917d7e29dda` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:0cf952e4da84b236dc08884afb1393703b0594cddde69da6fc325c6d6af000a5` |
| 10 | `theorem` | [inv_left](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inv-left.md) | 94 | `result-track:8048cf0fa46a5731b6a7e5a28449fe011d14a0a18fb610daa7b660b6874ee2dc` |
| 11 | `theorem` | [inv_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inv-right.md) | 98 | `result-track:b1c14e05a5c9e6bb827b86dcb3bb227293eea6e9699c8a3b0f3454e432aff2ae` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:36e1c46fea4dfb6f8bb68b9e68a7d58a1fb6a0c9caf3a1ec3ce4a125b89a0d03` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:fd2138613fed869b42b47afce8e445cc9e14411bae2ec996c30c7305f7305e4c` |
| 14 | `def` | [inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl.md) | 110 | `declaration-track:60bf500288adcd4e35c33480aa691a1f6cef7f62fdf5a16baf8e90dac71f4d00` |
| 15 | `theorem` | [left_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/left-inl.md) | 118 | `result-track:9823ecbef8daf5f4c5714968c6a0868d021d36a932747b8cc7b3e7806944cf4d` |
| 16 | `theorem` | [right_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/right-inl.md) | 122 | `result-track:f45496fd4206a7044d9572e77eacdd8a9efb33479fe12f887e9c60a7fefc2753` |
| 17 | `theorem` | [inl_injective](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl-injective.md) | 125 | `result-track:9d9fc34853d203a808078f385d404dce9278981308203c7dea141519ec39e60a` |
| 18 | `theorem` | [inl_inj](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl-inj.md) | 130 | `result-track:272eff014ce51e16335db71f82d55452e87cfb4078672e37eccdfc129daa3e49` |
| 19 | `def` | [inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inr.md) | 135 | `declaration-track:99030c617a943bc32c568b42fc69338615bd2fc5a5150a66e0860e45e6cbf62d` |
| 20 | `theorem` | [left_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/left-inr.md) | 142 | `result-track:1bae563d6c6c9851b156870646a952f5b27811893aa9c39152152471a764f1c5` |
| 21 | `theorem` | [right_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/right-inr.md) | 146 | `result-track:f0410fe083864099cbc00c361f6f1938a60eef19d7c72b3a5b5e0b7683c190a6` |
| 22 | `theorem` | [inr_injective](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inr-injective.md) | 149 | `result-track:493c6948a5935a8ce6dd2b95b7d390aaa9747a6d5b8651334ef1eb11940227df` |
| 23 | `theorem` | [inr_inj](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inr-inj.md) | 154 | `result-track:466033ff886a17d5aca78b5dbfd721dc51e29712a7df168ef1fd2ccf3594c297` |
| 24 | `theorem` | [inl_aut](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl-aut.md) | 158 | `result-track:b3de17ecadb0991e5139e6419ce3097895ed678a9698ddfcb60a2f99181e1ddf` |
| 25 | `theorem` | [inl_aut_inv](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl-aut-inv.md) | 162 | `result-track:4db51d4cf6b0240307b138c05e35255cd0e2630876d10ed7a19d72e7531fb220` |
| 26 | `theorem` | [mk_eq_inl_mul_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/mk-eq-inl-mul-inr.md) | 167 | `result-track:df282dca64ec08b6b7164d169f618ffe0af4e36221d2ff3531e0a2d6fbaa95df` |
| 27 | `theorem` | [inl_left_mul_inr_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/inl-left-mul-inr-right.md) | 171 | `result-track:967303aa9494bb7f6ceaf4b9242a87cfe08b1f3b9b0ccd036cab39ec00a5ed22` |
| 28 | `def` | [rightHom](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom.md) | 175 | `declaration-track:355a9c5bc430c5eaa73f88c68a101b7475e2484a4851da2177705e72e005fe52` |
| 29 | `theorem` | [rightHom_eq_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-eq-right.md) | 182 | `result-track:356b621af083cb94b6cb3410cd913bf342479267b4fbe84ef55e6ab89fac5e9f` |
| 30 | `theorem` | [rightHom_comp_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-comp-inl.md) | 186 | `result-track:c63ce326648c3b86e114cee4d39154cb229f6148df1bec93cc3bd1a542c70062` |
| 31 | `theorem` | [rightHom_comp_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-comp-inr.md) | 190 | `result-track:82a5d08ca0d1794f120ddd55daf629848228efd09a7b124036384542483ecdd4` |
| 32 | `theorem` | [rightHom_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-inl.md) | 195 | `result-track:1ec5e989ac1fcd91eb57ff6adb4835da24dc322153393a58df18b403e0e2a81f` |
| 33 | `theorem` | [rightHom_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-inr.md) | 199 | `result-track:96843847d7802dee2d13be01dd234dc9911d64168c2235467c2462555ac134d0` |
| 34 | `theorem` | [rightHom_surjective](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-surjective.md) | 202 | `result-track:9a93224257a1fd893e1dcc80d98e014e132b027daa43e265305ec44e0a384505` |
| 35 | `theorem` | [range_inl_eq_ker_rightHom](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/range-inl-eq-ker-righthom.md) | 206 | `result-track:0be2fe69fa1d8b9fe156c167954c5bec91cee07be0aeaf029e9b2c9c6fb31c78` |
| 36 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift.md) | 217 | `declaration-track:30a74f8f37d5d0dcde2f536998f45de905ac6f7c8127d5a37ed5b14bd2b50ca3` |
| 37 | `theorem` | [lift_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift-inl.md) | 229 | `result-track:91f3129987b1ca626d2662e40e2ba50d6a4aa56564a0272ae78386c3b2a33612` |
| 38 | `theorem` | [lift_comp_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift-comp-inl.md) | 233 | `result-track:6160005e3de5a9a9f3c004213656eab77615c125a2c51805c75c93b8d6f60757` |
| 39 | `theorem` | [lift_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift-inr.md) | 237 | `result-track:5ecc3d1a5b613b19fe1f8a11c60ae03dfff3393469ec6b90964288188499a361` |
| 40 | `theorem` | [lift_comp_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift-comp-inr.md) | 241 | `result-track:7ef1ece858f6db5b814aa217d51c7dd19ddfbe9ef61ef85dd44d5440c301cf65` |
| 41 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/lift-unique.md) | 244 | `result-track:3fae2fa716b41fd117777f1874c19ea12565b30b83bf057516ed84cdfe08106b` |
| 42 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/hom-ext.md) | 253 | `result-track:9106eba4b6ee42fc98f9a56e4625ad1c2931972a415fb1ced9eb6f7dfc751141` |
| 43 | `def` | [map](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map.md) | 267 | `declaration-track:90bce1382920d7c88277d129e3607f20d667afb356af708912e0a948ea56d1e9` |
| 44 | `theorem` | [map_left](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-left.md) | 281 | `result-track:c7231f0a267edfd0cd3e312f563211e2d42d180377b562b88d7d26d1d3ab838b` |
| 45 | `theorem` | [map_right](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-right.md) | 285 | `result-track:f560c7afd6f73046d5eaa35bb1f76bd77026b5ddba6ac6f5aa35a3ba19819965` |
| 46 | `theorem` | [rightHom_comp_map](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/righthom-comp-map.md) | 289 | `result-track:8eca67edf0d5de833c38cc32dd0702bb28e11ff7fbdf98f23e7a1441d166243b` |
| 47 | `theorem` | [map_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-inl.md) | 293 | `result-track:d020593ccc48898c8063d48b5f59ad3b43728f0f3d6bad63ebf662441d563e52` |
| 48 | `theorem` | [map_comp_inl](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-comp-inl.md) | 297 | `result-track:f7a6722fb1634be7bd9653cf92e106d24685487c96f200e4221d1fb415e5f75f` |
| 49 | `theorem` | [map_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-inr.md) | 301 | `result-track:56e5e39dc60157c94793909fd8438e89dd40853e8c06ab8916c7eb99f6ec32d1` |
| 50 | `theorem` | [map_comp_inr](../../../../GroupTheoryAndGeneralizations/SemidirectProduct.lean/declarations/map-comp-inr.md) | 305 | `result-track:ba80b920a8b0b994974752c37407d01a82423424accbc28156b468f8e4cdbe87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d7787b202cdadf89dfb4330533a5c26e91cce9796244f023bdb1fea39135d85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variant16c88ac8dc425a2ed7024373e77279fe8dda23ef6c32ee0609bbb18bfd9221ff.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SemidirectProduct/Variant16c88ac8dc425a2ed7024373e77279fe8dda23ef6c32ee0609bbb18bfd9221ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
