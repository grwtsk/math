# Verification target: Grp Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f62098c10d0ce0f1b72124dcc20fb37cc6679cf",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f62098c10d0ce0f1b72124dcc20fb37cc6679cf`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addgrp.md) | 28 | `declaration-track:8ae5e64084a6d1eed61a2d4e7730ab4d1afe0b7c38bbde0ceb421ab186ac01c3` |
| 2 | `structure` | [Grp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/grp.md) | 35 | `declaration-track:150e681647b24041d5abd5ed2d984c7d93c7d25f6f005f14d075c4283e37feac` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-8.md) | 49 | `declaration-track:a36d4dc9e528282d9588313a46d056f2e7c9157d44f76d91cb98be32ba29b2e5` |
| 4 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/of.md) | 56 | `declaration-track:7430001c862300cd38cd08e6b35e7a17ad8cfdeabefbaa2a9b0591f979b3b161` |
| 5 | `structure` | [AddGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addgrp-hom.md) | 62 | `declaration-track:f5549f528a86a7bd70ca1a3f4f72b94fbcc682b865b3e8f69b286a8546131ec3` |
| 6 | `structure` | [Grp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/grp-hom.md) | 69 | `declaration-track:2a25f2319300ac9dea279103608c1be9606890b2639269acc2386ac3359ea1bc` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-10.md) | 79 | `declaration-track:a76cb6e64b167aae09b27ed95a98e23e1d3ec7ecb64d9974225633d3a333cf88` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:254493f87d8623e539869183ea2bae504aa3a7b30a325044b289efa8c9bde0b6` |
| 9 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-hom.md) | 91 | `declaration-track:6033c219361b82f69915109f120c214d53b2c9c840a9dfd5fe7cb808fde89204` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-source-edition-2.md) | 96 | `declaration-track:d4f7c70bd7c3f14b83d7ae1d26c9b906918e2abbae5d73f4fc7375c1dc3f6d3d` |
| 11 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-simps-hom.md) | 101 | `declaration-track:df7b4d35d401045756513da23b2afa5cb4123e7ca8be072ab0678b322c71ba4a` |
| 12 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-id-source-edition-2.md) | 112 | `result-track:deae0505890a3cb740794645e2b15407ff215a67bc5b7d5b7eb1bbc4cdbb34e0` |
| 13 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-comp.md) | 115 | `result-track:2c29ca304f54b12f9de88efbae73e4591db8c4848900c401f524024a2a8452c6` |
| 14 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/comp-def.md) | 118 | `result-track:7aede8a0dfc1333ab18d729af516140e3774222cd3d1faa824e71ce963b9f879` |
| 15 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/forget-map-source-edition-2.md) | 120 | `result-track:88327fab010dcab73934482d83feaca548f2d4ade4d31aec1f3771205a337c22` |
| 16 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ext.md) | 123 | `result-track:00bea235acdc533c356df9e3bc64f6262105491ec18daf5834f0f56eb8c20088` |
| 17 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-of-source-edition-2.md) | 128 | `result-track:c12e5e3875a2f613d5418160a58ed3d76cdf131520298882c059b4eee414e67d` |
| 18 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-id-source-edition-2.md) | 132 | `result-track:fc7c84546501f55608f2965249118d21c0802f29b76021bf62731d2252cfcafe` |
| 19 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/id-apply.md) | 136 | `result-track:a18f0921b0a92521a0a7396279ccfbe6c6593947064d7a10eb3e7e36bbdb8035` |
| 20 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-comp-source-edition-2.md) | 140 | `result-track:e167710133c748a93e970dd61f3cb6960e6529273e240900eed27368d3471147` |
| 21 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/comp-apply.md) | 145 | `result-track:7f7172d206823288aaa429d07f8e719398304470e29b30eff1a70926c7af0a1f` |
| 22 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-ext-source-edition-2.md) | 149 | `result-track:b244791b6b6c0bf75562d146e897f270e1df30be20358dd1076d4507f42bdec8` |
| 23 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-ofhom-source-edition-2.md) | 153 | `result-track:7de3a9e9c75b2051013e2159e2865f6eda401d4398c9d44432d2dc09daf55ac0` |
| 24 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-hom.md) | 156 | `result-track:470929c4a23debe5ce49af81fed728036a83a1a6abf1bb65cd95a0c2f91ccddc` |
| 25 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-id-source-edition-2.md) | 160 | `result-track:bb9b1643d0529a31878909eaf7953cdd9e24e8c42e06783587b29e10dea42381` |
| 26 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-comp.md) | 163 | `result-track:97b6bfc0916d933b55e1cd144b0601bd96db8c47a0eb17e3874d41c6651cf0aa` |
| 27 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-apply-source-edition-2.md) | 169 | `result-track:4dd759c2923fb4294a7df6212c1d8f56d47be3a74ba54bf127efcd6fc9077312` |
| 28 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/inv-hom-apply-source-edition-2.md) | 174 | `result-track:ee9409bb97f3210d2ea2bbe35fd0045b962c68129e2dac1ca8f335db37a0dc7e` |
| 29 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-inv-apply.md) | 179 | `result-track:aa7cb1e7fc10f1dd9d41995c4f56d896002fb7b2722cea401f21ebb606546745` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-3.md) | 189 | `declaration-track:2c06fe14e26467e999d579f8dd80f04688cfe5ea4a9ae6f37f9f92c8d0d5a80f` |
| 31 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hasforgettomoncat.md) | 193 | `declaration-track:a19a52ecbf0bf98e63d668adfaa04ea8eb10edb4c8cc1af98f32501dd1aa8e24` |
| 32 | `lemma` | [forget₂_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/forget-map-ofhom.md) | 197 | `result-track:2dbe44eee0a188926eaf858576ebc971e050479c81276b4b5134fe63cc1d71a4` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-9.md) | 202 | `declaration-track:a74e4d4754297fd9d7a8564314e005d38852f6b4ceff46a75f83275e40d3c898` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance.md) | 205 | `declaration-track:0e3bce028e77327412cab6c8e9efe980557f53ab8a66e3a60e7bdcc6bd70a63c` |
| 35 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/one-apply.md) | 209 | `result-track:bd3f0d476397368f3dd27985eee3d58a8ffeda56ba103fed20cb0adfaf308ced` |
| 36 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-injective.md) | 213 | `result-track:5d795252c0c22a81b5826122c602cfd4883876b182a09acae6831b0a068ff1c7` |
| 37 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/example.md) | 221 | `declaration-track:4f1c93ac1088c2896e209afae0dd2420a8a57955db8c70368c9cd860b2e72912` |
| 38 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/uliftfunctor-source-edition-2.md) | 226 | `declaration-track:5a4acddc9a6410fec6eade6de1456a9491972cc386173337ec1114b675321c33` |
| 39 | `structure` | [AddCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addcommgrp.md) | 236 | `declaration-track:884fddd1ad1f8eb3e2db914ebaa944f6498874197989f2664a53004b01326914` |
| 40 | `structure` | [CommGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/commgrp.md) | 243 | `declaration-track:dceef98fbae42c803fa87071fbdd602e7114aa81929d261199661fa1f62e8cbc` |
| 41 | `abbrev` | [Ab](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ab.md) | 255 | `declaration-track:eee74e9408ac71228f2efb1a52e4025a86a9c14ad65f2ec0feeab0e5590eb5fc` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-5.md) | 260 | `declaration-track:3b1a9af8ce838d4676ac58165fe1f1c69a8bab4929ffcd6ce79158890098b573` |
| 43 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/of-source-edition-2.md) | 267 | `declaration-track:ed83d87b7012f61525070184f120660cfda346a16d85dddf9a56f5751c616a3d` |
| 44 | `structure` | [AddCommGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addcommgrp-hom.md) | 273 | `declaration-track:5a2bec86f3ccc24f841e2be0de4f9090f285fefb3e047a39cebc308db19a3f2c` |
| 45 | `structure` | [CommGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/commgrp-hom.md) | 280 | `declaration-track:b8c08760c79b7215ad54b6a9e2cb0cf2d5a30087b9ab42c0087f23d14eb12d1b` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-4.md) | 290 | `declaration-track:2ed989c328ba755a505497807c34a3031504e123eed33a43f334312f93840eab` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-11.md) | 296 | `declaration-track:a7c80f51005f63a1d9b225aea332207f18441f82d00cec327c5915ad229426ec` |
| 48 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-hom-source-edition-2.md) | 302 | `declaration-track:dc8d4cb874934f4dab4487384368ff2787289a5190a5eb3c9d7aa499ffd13c1b` |
| 49 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom.md) | 307 | `declaration-track:3e90d2889a15b36fb8961f1dc883c038ecd702a7631ee313e628a12037656bd2` |
| 50 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-simps-hom-source-edition-2.md) | 312 | `declaration-track:ee18e046a8e48211bec97984c5e5c82a635c824a991ebad68d5b2961c7501ad8` |
| 51 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-id.md) | 323 | `result-track:078c42be9601c39bdff37ddfc628421b458f5e0aba73c40980fd3df96e1aad5c` |
| 52 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-comp-source-edition-2.md) | 326 | `result-track:723a10b0fc691aaa4e2f747df7181737a2817ec4aaae2f2fbce3badc5b9b680b` |
| 53 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/comp-def-source-edition-2.md) | 329 | `result-track:9bee2f6c7170df4087c075566836daf85d500b69e1b7fde4997c69b08685f0ed` |
| 54 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/forget-map.md) | 332 | `result-track:098d4591f44ac15639f69eab563e4a8d51dc8b9f781ef7d1359bf324ce1fe645` |
| 55 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ext-source-edition-2.md) | 337 | `result-track:02c4454bd8306dbfd6ac1dcfd788023b65b2497a13745a8940235cca1f9262ab` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-6.md) | 341 | `declaration-track:66a3e39b868e322811a658270a4b447a9a84f7053818598e262a1ffd76c3093b` |
| 57 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/coe-of.md) | 346 | `result-track:54a831e468e1f285b9b974f1e2ab829569f9850e6ce4be89d61e609aacdd58d8` |
| 58 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-id.md) | 350 | `result-track:741bc60de01d94f4d3b63cfff4127578132db3e9f55de3c4ec2dca9192607c71` |
| 59 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/id-apply-source-edition-2.md) | 354 | `result-track:bd8fc7d40fa408f9c6aed4c31d0ef6f5f5ff8b668d21ef693aaf41af98cafb70` |
| 60 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-comp.md) | 358 | `result-track:6d841edd0541582be6d6f5ec67c9a85136cb272c71d07a14719a1c28ac5f84ca` |
| 61 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/comp-apply-source-edition-2.md) | 363 | `result-track:bfa13c70c6c4aa629612fd33d2eb3c31043fe33f7e316dd8c63e8ff3ec191cca` |
| 62 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-ext.md) | 367 | `result-track:0ccccb46724712d31beda15b5399ecf52ef23cd3570e0827696a3da087a5aec0` |
| 63 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-ofhom.md) | 371 | `result-track:262cb58d609fe1e415b2b8a0ae32c0c3e323a8ad3e14ea62599f6245801d269a` |
| 64 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-hom-source-edition-2.md) | 375 | `result-track:9fb6d17fa663a5132392137c92d570baae76d9d656659e50fecc17bd5816b972` |
| 65 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-id.md) | 379 | `result-track:53c02bc5b57a63f5b7679b955f12886a521cec504644cf0422cb3278e06e6507` |
| 66 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-comp-source-edition-2.md) | 382 | `result-track:bfd93083467d6df4b275b82ed067266d79618e389aea25909a83e6c2472d214e` |
| 67 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-apply.md) | 388 | `result-track:3765a7cd4c4db2309d6b5764046a54f860781982f815a9fac5090eced71a87f6` |
| 68 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/inv-hom-apply.md) | 393 | `result-track:90f78934c611a9011b3598de484c618c2c7a904baace08f051621dff693a8789` |
| 69 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hom-inv-apply-source-edition-2.md) | 398 | `result-track:fe8efb89fb99387cd4100248113f62bc31d67ed44b9c3f8bfb59714c879ed65f` |
| 70 | `instance` | [hasForgetToGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hasforgettogroup.md) | 408 | `declaration-track:6e120e4742b1db9733baf4a25aa226deb6adcfb1a31c818b4f09fcd647a8cc5b` |
| 71 | `lemma` | [forget₂_grp_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/forget-grp-map-ofhom.md) | 412 | `result-track:47aa0182733fd221249d5e64700a19b5dc99d2aa64dd70fdabd059e44f1c7eab` |
| 72 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-7.md) | 417 | `declaration-track:834e2c34e0469c4cb2c5bdf1eb3addc744ffe2bc74c77f8889f56d90ecc75b47` |
| 73 | `instance` | [hasForgetToCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/hasforgettocommmoncat.md) | 420 | `declaration-track:6cafeac23804e7e0a3b7555cff2a04cc09ca87ea423f546d60fcdc95cdb1fe1a` |
| 74 | `lemma` | [forget₂_commMonCat_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/forget-commmoncat-map-ofhom.md) | 424 | `result-track:88b362fde27296adbb2f51bad1674c5d1b62227c9b3de8563b51c870fe4a72f8` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-12.md) | 429 | `declaration-track:acc74e60f46a7e37977166f4cece50933b1bc059da80d61cc3ceab2dec39e5c4` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/instance-source-edition-13.md) | 432 | `declaration-track:e8ce0a60ccfe3290fd66efdf6aef7e5cfc5a7c2ff3cd42d221ac90253196d9a9` |
| 77 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/one-apply-source-edition-2.md) | 436 | `result-track:d797e33e027dc22fc7fafe6b63453b4ed82e88fb4fc6752aa5d00fdb2737063c` |
| 78 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ofhom-injective-source-edition-2.md) | 440 | `result-track:b12bc99e3960fd71445b95e6f9f3fe21ff7bbad21f812d610fa4fa2af8ed0fa3` |
| 79 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/example-source-edition-2.md) | 448 | `declaration-track:7e4f6cfeaa14ea18c8cca41c613e0a6113d253d4425b1fe713130d3955543ce5` |
| 80 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/uliftfunctor.md) | 453 | `declaration-track:342beaa7fcd4fa85b9d85626bef660c981de8cba30314e4bb38180a6e705bbc3` |
| 81 | `def` | [asHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ashom.md) | 470 | `declaration-track:81da639e16a4db7ebdf5841d33ab5365c8af75bbcbb65bad94be2673d606ddd5` |
| 82 | `theorem` | [asHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/ashom-injective.md) | 473 | `result-track:556ebe9ad95f1d1a4bb8aa952f2ea2187d23ce582907f85e55e5ad6d32744031` |
| 83 | `theorem` | [int_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/int-hom-ext.md) | 477 | `result-track:0730617a67f4e7a8d1614e1966b6fcb6debfca3ab14c866fe51a45926727e052` |
| 84 | `theorem` | [injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/injective-of-mono.md) | 483 | `result-track:aae4e8f7e6c46e9935843ed963fe4b05da4dda3e908c7759ef3057a2f7c9ec8e` |
| 85 | `def` | [MulEquiv.toGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/mulequiv-togrpiso.md) | 493 | `declaration-track:bc1de818d963c3cab2b0058e8fe958ba10e41ce83f3fc4e4ef3a7f52c207e3dc` |
| 86 | `def` | [MulEquiv.toCommGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/mulequiv-tocommgrpiso.md) | 503 | `declaration-track:aff65c4d7b8f731335df52b3d4ff0abee0aad94798484670e1c645550929c4ac` |
| 87 | `def` | [groupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/groupisotomulequiv.md) | 515 | `declaration-track:642374f9b7594dda1821255a7142dd38e6b26388fa58c7331807e5c023c57e79` |
| 88 | `def` | [commGroupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/commgroupisotomulequiv.md) | 523 | `declaration-track:93efd01a0fa0208da27b6c2c7acd52a57dc2ce592e97bebe563294ab99fc4410` |
| 89 | `def` | [mulEquivIsoGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/mulequivisogroupiso.md) | 534 | `declaration-track:8e4aba1cf369cabe815a444c1fbfd0f5572cf5a37199f5129c2350adc9a98b14` |
| 90 | `def` | [mulEquivIsoCommGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/mulequivisocommgroupiso.md) | 545 | `declaration-track:c889a63a2f11ddcfa1b88b95ee1f3519a8fb79d69849032e2b011ded3683d143` |
| 91 | `def` | [isoPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/isoperm.md) | 557 | `declaration-track:6e9980c9b7ca8cd4aa4b5bfa99464a093882ba7a256b02ed77b793d984d7e42a` |
| 92 | `def` | [mulEquivPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/mulequivperm.md) | 569 | `declaration-track:fb1037d5e0ddc74d091d3437641faae77d72ccbdee8e28c86d56d5af4b99af58` |
| 93 | `instance` | [Grp.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/grp-forget-reflects-isos.md) | 575 | `declaration-track:fdc1f377123eaec423244f2ef1ac986631bd25e18440171cadfcc5ec4c2f9b06` |
| 94 | `instance` | [CommGrp.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/commgrp-forget-reflects-isos.md) | 582 | `declaration-track:2edd5d5f8e9b21977d45c72ccb0353ea28e449c8ee3fafdc012d2083993d20df` |
| 95 | `abbrev` | [GrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/grpmax.md) | 595 | `declaration-track:c8f8093b82671d405999279dc919c78d5523804990235e2719700d6635556d8f` |
| 96 | `abbrev` | [AddGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addgrpmax.md) | 598 | `declaration-track:baa7b4956698b19de877b06b9181b254f9e7cd06d4941e8e38d2c9e60241fa70` |
| 97 | `abbrev` | [CommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/commgrpmax.md) | 603 | `declaration-track:75cbf802b3e26f0dba3c9bdc815f76417468d0f1e652d7988876e09293401dd1` |
| 98 | `abbrev` | [AddCommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/addcommgrpmax.md) | 606 | `declaration-track:bafef9ff45d2631fd12250d72739a2546074b6aa5be90d2ccaec049feb19bb6b` |
| 99 | `theorem` | [MonoidHom.comp_id_grp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/monoidhom-comp-id-grp.md) | 615 | `result-track:5e0e15deb93aaf97db2f1f1e19bb1b9954b0f4498bef7a4cbd0110e060294f3f` |
| 100 | `theorem` | [MonoidHom.id_grp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/monoidhom-id-grp-comp.md) | 620 | `result-track:ac81e56ad3e0a653b219fe81182ff54a9b31a25a3f70d1be26b7a83d7ee0a0bf` |
| 101 | `theorem` | [MonoidHom.comp_id_commGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/monoidhom-comp-id-commgrp.md) | 626 | `result-track:97931ccb8bc4b0bc0bb63cf38b0c57eac5feeb5274fd0a443e78bda59c3df4f5` |
| 102 | `theorem` | [MonoidHom.id_commGrp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasic.lean/declarations/monoidhom-id-commgrp-comp.md) | 632 | `result-track:7a87cb1fed2240fce4799b3a31c62e46b64d90739b3f95b5bfce3f7ecdffb25d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba690e2f91f0f0806043c76f0ef81e55f83b14ae4e2eeaf823ce0e9bb6520089 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant1be2b01897625fe47b6f718b841de7ebbfdb4455372a0f6a3995c5952d24ccad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
