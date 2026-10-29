# Verification target: Subobject Basic Namespaced Mk Surjective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f39721c7365bc4cd6498f33ea3f49fbc031f90",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f39721c7365bc4cd6498f33ea3f49fbc031f90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subobject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/subobject.md) | 104 | `declaration-track:b2479d6a4cdc0162cff6f27518e0eed65f7033db5da7c9477b517d1c2289d190` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:aa1530276df9900a9545bf7a8332950175e16f590655045b6b137649ffcbf8f5` |
| 3 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk.md) | 115 | `declaration-track:a4b5f2d339a687a9627f2443828f5b9457143f3d4cefd3e98266331cc1b17f39` |
| 4 | `theorem` | [ind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ind-source-edition-2.md) | 122 | `result-track:551cbe39e2c3fbde64e40ec051d76949c306e66c93b0011836ee2c93e5db6e7d` |
| 5 | `theorem` | [ind₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ind.md) | 128 | `result-track:256ef2f61181a1ed5fdafb3fa83f3c9d92533669a55b8ac082ff43132bbd3763` |
| 6 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lift.md) | 140 | `declaration-track:15d83368e2524c32afbb1f67a94852903a3081f375c84a571ad7ce1a15d4c909` |
| 7 | `theorem` | [lift_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lift-mk.md) | 149 | `result-track:f90b1daa1b60b487ff0a140e587724989a5749f861207f6561e34403e3e24779` |
| 8 | `def` | [equivMonoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/equivmonoover.md) | 156 | `declaration-track:f5bee6a6ac30f4c68468fb5e2f9d28681d47d0f80ff207c1cea4e0696d883be3` |
| 9 | `def` | [representative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/representative.md) | 161 | `declaration-track:b86b500e4a54b5c9634446e2aedb3cc25df7bbbb53043420172d869ab1ea98cc` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-4.md) | 164 | `declaration-track:8c8bbc2458cdcedbfd867c7453ccef50e0ab730e546a6b34ab29b1f79e1553f1` |
| 11 | `def` | [representativeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/representativeiso.md) | 171 | `declaration-track:87d41fc237e2c40eefdf56678738de9d68cb4b21d5bb07afab63ad16783d7101` |
| 12 | `def` | [underlying](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/underlying.md) | 179 | `declaration-track:000b43c8b7dccb7e483bb1b3132eb79f5dcaaf834aae5bcf4cc63a9a47bb8afa` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:d60ca93714486874b0f3cf2369284aa693c77cba0a184c4fc3fff75945e1ae6e` |
| 14 | `def` | [underlyingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/underlyingiso.md) | 193 | `declaration-track:a39ebb20b9b2a4aacfcd96e3b7338bf26dff1bf19084c0e4a05e4ad35b4519e4` |
| 15 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/arrow.md) | 198 | `declaration-track:80cafe0a05052c66d26449d72b172753ce9fd119728473520577077978ac03f4` |
| 16 | `instance` | [arrow_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/arrow-mono.md) | 201 | `declaration-track:870fba83ce606f9034e40458a8f37acac88ef9d2f99baa1cbaf49584dc4878c2` |
| 17 | `theorem` | [arrow_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/arrow-congr.md) | 205 | `result-track:3b7dabb64a5f0e3890cf55f646d680a2ba19fdb6056db3c69920ae2463ef3006` |
| 18 | `theorem` | [representative_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/representative-coe.md) | 211 | `result-track:2b0483a16299e7486976864458e1600b90784cfe529e68653ecb9ddc1d546610` |
| 19 | `theorem` | [representative_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/representative-arrow.md) | 215 | `result-track:3151c29d40afe0936334d10660ba09c2979f36dd895116a7b769ab7f47084fae` |
| 20 | `theorem` | [underlying_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/underlying-arrow.md) | 219 | `result-track:c574e6e5a2ae8b9844335f6c3bdb9d66d278f3cc02dcae4c4df6ca853fa05bfb` |
| 21 | `theorem` | [underlyingIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/underlyingiso-arrow.md) | 224 | `result-track:7c36fcece699276688ccfc9824e67dcd6573e87c052600e40c6c72189184289e` |
| 22 | `theorem` | [underlyingIso_hom_comp_eq_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/underlyingiso-hom-comp-eq-mk.md) | 229 | `result-track:edecf8e800afbe30c201d16fb920341c72af7f435bfdca4744f0149e9bd2ac4e` |
| 23 | `theorem` | [eq_of_comp_arrow_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/eq-of-comp-arrow-eq.md) | 236 | `result-track:27a7720b114fd03a75fc83066d3d0a5937b2b773ccda380d7a898fa50f19fcd2` |
| 24 | `theorem` | [mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-le-mk-of-comm.md) | 240 | `result-track:90308565982387170217a9899e0d6fbb0e6e8864d0f5ce5ae0e89beae405c79a` |
| 25 | `theorem` | [mk_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-arrow.md) | 245 | `result-track:f2e55651f80553306c1b1667c8b929f47897acffe6aa781d86378497c74e1bf4` |
| 26 | `theorem` | [le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/le-of-comm.md) | 250 | `result-track:b687e7751ff3ef526032ef73fa26e2e320b6ef52599a4c7f24de91be4b0cee2b` |
| 27 | `theorem` | [le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/le-mk-of-comm.md) | 254 | `result-track:be5a4372175f53c7f197e6113c92bbc03207d335a3b58c645e5c88ae5b846308` |
| 28 | `theorem` | [mk_le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-le-of-comm.md) | 258 | `result-track:6b52658d5c368a45ec2162b06970a1516532fe8417ed5a4af242b17df120c366` |
| 29 | `theorem` | [eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/eq-of-comm.md) | 265 | `result-track:e3a04d7b22214ff13d2ac10e461207d3936eaaf811d431f1303c072c3dd18308` |
| 30 | `theorem` | [eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/eq-mk-of-comm.md) | 271 | `result-track:fdd9fa43c680fa685c48455f558cdc5e780a1d523f8cb29b6152506b338b686a` |
| 31 | `theorem` | [mk_eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-eq-of-comm.md) | 277 | `result-track:0a2360032897bc2a17888a470e4bd75a008f2328598554720a824646a89d0201` |
| 32 | `theorem` | [mk_eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-eq-mk-of-comm.md) | 283 | `result-track:c40b4687c6a32adabd2a986cfcfa5e5f1b574cf9a22ea18a4282fab36c8fff56` |
| 33 | `lemma` | [mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-surjective.md) | 287 | `result-track:263c71119cac153f59d94b7888f63255e89974b2ef4545661b54bd26a9b716ba` |
| 34 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle.md) | 295 | `declaration-track:934ac3a1ba5a3fee1cb78af2a3a37507e54ebe7bb1c67634115b726a86d301b0` |
| 35 | `theorem` | [ofLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle-arrow.md) | 299 | `result-track:e7dff6cedb0bd9379c303021906cbe4e889efe082316255192de3562ddb648b8` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-3.md) | 302 | `declaration-track:4016e044ecdc6b41865dbda878c69a6839937b57601571d3b557bcd008c7ed8e` |
| 37 | `theorem` | [ofLE_mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle-mk-le-mk-of-comm.md) | 309 | `result-track:035a2d276bacc20541d7aee306700c1e3e23577ca35c3e644395e6a66cdc0230` |
| 38 | `def` | [ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/oflemk.md) | 316 | `declaration-track:b375587d78dead14e4747b370429fb41d539df7968d5e2aaa14af87eaf2b304c` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-7.md) | 319 | `declaration-track:e91c4644e72373d7d0df38ae799185c597fd74c1a9cc7c12721ac607af544276` |
| 40 | `theorem` | [ofLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/oflemk-comp.md) | 325 | `result-track:39768ac60b9e38b2183c17264fcb9e32422c743d64ffe2d5400ea92e77375f85` |
| 41 | `def` | [ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmkle.md) | 329 | `declaration-track:06b90c85e0d1366028b61640f38824a4fab5aac2a99674017e7c07284d90bc77` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-8.md) | 332 | `declaration-track:ecc87919964db14b07993b15192ae6573dcc0e081c44a672684217e4f12fa28c` |
| 43 | `theorem` | [ofMkLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmkle-arrow.md) | 338 | `result-track:3bf86a5d0c9dc3bf15d58e3281dd87c35e474d8cc35e8c5bb8e28ff958e0dff2` |
| 44 | `def` | [ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmklemk.md) | 342 | `declaration-track:6b5d45a0772f7a303c5f6c6d24d13ef930936dd6f8d367614427981c0b82c963` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance.md) | 346 | `declaration-track:02fa33b46c00b8ea37107c7bce5faeb144790975b8acbc10d21f79c206638e22` |
| 46 | `theorem` | [ofMkLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmklemk-comp.md) | 352 | `result-track:6b28a69948af8f85606194ed58607e402c5a744b32e171f45bac8e044f16bef9` |
| 47 | `theorem` | [ofLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle-comp-ofle.md) | 356 | `result-track:6073beafbb04b5abdaa37afe9479cf9912f0dd372ffa59f9198bb6a28e56ff72` |
| 48 | `theorem` | [ofLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle-comp-oflemk.md) | 362 | `result-track:01b0dd451192bb568dde038d66c4980684ec4bbb15e028f31da99ccdce5ba68b` |
| 49 | `theorem` | [ofLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/oflemk-comp-ofmkle.md) | 368 | `result-track:c99316390a5136835c27aefc4a91995e21909fbae1bd20fa5c45834fad97132b` |
| 50 | `theorem` | [ofLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/oflemk-comp-ofmklemk.md) | 374 | `result-track:76e9251898681f6840e0a6a77a9f044fb2875a4d6496b1f4819df9975ab67815` |
| 51 | `theorem` | [ofMkLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmkle-comp-ofle.md) | 382 | `result-track:73b00f57cad9f2e8316ee152e7d373fd72986572883073f43ea2f1c876abc77a` |
| 52 | `theorem` | [ofMkLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmkle-comp-oflemk.md) | 389 | `result-track:cfac136e2b5a9e63acbd9d31d6a1561984dc2a74baa6b2098c8d99014b087819` |
| 53 | `theorem` | [ofMkLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmklemk-comp-ofmkle.md) | 396 | `result-track:1af42efd78ce0dfbae321a8be81f58ab413b4a6a2555300ec664d379b9111031` |
| 54 | `theorem` | [ofMkLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmklemk-comp-ofmklemk.md) | 404 | `result-track:9acf9fec826f9740e5c64274ffd535dd5173e8dd4a1444bff657f2e79e86daa7` |
| 55 | `theorem` | [ofLE_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofle-refl.md) | 412 | `result-track:c8d1de85445d7642668a6ef38317a4142fd74add6755e2073f1b5a6eed6ca40d` |
| 56 | `theorem` | [ofMkLEMk_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ofmklemk-refl.md) | 417 | `result-track:3c5d4d1675ab4b7b63e4e170d9c921ddf13ea79192652b6d8faaeee1fd31c972` |
| 57 | `def` | [isoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isoofeq.md) | 425 | `declaration-track:b9ba6fdee57c0aa556312e224b6e710f92167cbddb688ce4f4d8490863a4113a` |
| 58 | `def` | [isoOfEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isoofeqmk.md) | 431 | `declaration-track:e6429a1c5d123d438821f9a1a17e612591b3a61c2be2c1e86081840fef0566cc` |
| 59 | `def` | [isoOfMkEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isoofmkeq.md) | 437 | `declaration-track:15d639ecc18589c2ce13d7f78e0e6d9099e83b9ceb496b9c727d4837c32c423a` |
| 60 | `def` | [isoOfMkEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isoofmkeqmk.md) | 443 | `declaration-track:64574d31547f2c6d24b041c240d3148d47b101c5f11d4e5447e4407bbdc0ae27` |
| 61 | `lemma` | [mk_lt_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-lt-mk-of-comm.md) | 448 | `result-track:53b5e15c94c03e3824dd4f89b3b72ca9315151a0dc5bc5718313d67b13d3c6b6` |
| 62 | `lemma` | [mk_lt_mk_iff_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mk-lt-mk-iff-of-comm.md) | 458 | `result-track:8dc72a6828a98d689eba1933b331a56713ce9fe7cd55e38040b3ef73ee1ffba1` |
| 63 | `lemma` | [subobjectMk_le_mk_of_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/subobjectmk-le-mk-of-hom.md) | 471 | `result-track:dae84163cf05dcef43d704eda87be9a3723b1e5527ebe073b9fbe1f37f6e407b` |
| 64 | `lemma` | [isIso_left_iff_subobjectMk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isiso-left-iff-subobjectmk-eq.md) | 475 | `result-track:3b008bf593fc03a66c164dda864a05c3bd94669038c29123e8e25d5716e8a594` |
| 65 | `lemma` | [isIso_iff_subobjectMk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/isiso-iff-subobjectmk-eq.md) | 481 | `result-track:effecc7d4fe0bef8aeb4b9d0f233030587291d5f7657e6708d8bb80ed8d72cd7` |
| 66 | `def` | [lower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lower-source-edition-2.md) | 493 | `declaration-track:0bd7f19bd501fc1b84bdd95f31e03c18c7f96c67804eac6bd99bf79f5cad2c3f` |
| 67 | `theorem` | [lower_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lower-iso.md) | 499 | `result-track:1dc5d2c33371f5ff8c5715a3b67b298795c1a9e0db583ee89b0bb7cb5fde7fba` |
| 68 | `def` | [lower₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lower.md) | 503 | `declaration-track:067a5cbb388082ee11a669acc862df818dd3ce6cef12b5b7a4c7f6821f0021e9` |
| 69 | `theorem` | [lower_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lower-comm.md) | 507 | `result-track:5c5baac508fbd0a2d161f915ed15f5c7ead47875000c699300fe025adb494cd5` |
| 70 | `def` | [lowerAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/loweradjunction.md) | 513 | `declaration-track:431099d6b13ba0d7ced6b38bebe39b6aadc5d6380c2d8972e15ed796b603a2ce` |
| 71 | `def` | [lowerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/lowerequivalence.md) | 520 | `declaration-track:fee50ff1447f2cf41c3e98581342f99b5331ef639ebe0205d2e276a1c88ad888` |
| 72 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-source-edition-2.md) | 540 | `declaration-track:7886e23156cdd1e861651c24e8780a067105e5581b137ab27ad4819b3fef013c` |
| 73 | `theorem` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-id.md) | 543 | `result-track:374aeb2cb910bdc65f762174a70f5d49315496f6b7a847053502c6f28c68d046` |
| 74 | `theorem` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-comp.md) | 547 | `result-track:8c61dfc1dc27c912cb91993375b6c99f0fde5e0c213c20bd68e35e56c0837e95` |
| 75 | `theorem` | [pullback_obj_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-obj-mk.md) | 552 | `result-track:6da903007224041b3cba7e9975dce1882b9052d51ac2db5cdabc5c5b1cd45a41` |
| 76 | `theorem` | [pullback_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-obj.md) | 559 | `result-track:85033c478078ad1eeb42f239ab6956e70dd969a5a35ccf7ed6a709c725269814` |
| 77 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/instance-source-edition-2.md) | 566 | `declaration-track:2edf2e5a7cf7f8bc4c41a9990eab59d223f406e2a28e172799a6f5711fa4443f` |
| 78 | `lemma` | [isPullback_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ispullback-aux.md) | 568 | `result-track:4bee8f215dff226d25c10b60a1926fb6b572c774e8b534d7f67ae76339aa744c` |
| 79 | `def` | [pullbackπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback.md) | 592 | `declaration-track:24a3193a7b66836e3b27d27899ee29480ba1c3828a8e96edba722dc6e3e76e2a` |
| 80 | `theorem` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/ispullback.md) | 597 | `result-track:e185797cb4752dca73169f6d4cca96bb69fb0bd28d48161d41c9e048c6107fbf` |
| 81 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map.md) | 608 | `declaration-track:d6749fc7dafee1773586438df7b0d398e27593d847ec1f2c0a29e0e263c914de` |
| 82 | `lemma` | [map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map-mk.md) | 611 | `result-track:9d210ef82dcee457148b4038a03a9a6f6715a180d4107cfa0696f6a625e7c64d` |
| 83 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map-id.md) | 615 | `result-track:bbdc122e5a0ed64f6d85afbd3bceddfaa871b2ae1be0024c6faaef85cc00ff85` |
| 84 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map-comp.md) | 619 | `result-track:73711781d57c5d616bd7391d18b90f74432d28ff07ae5af1159aea04ae140ffd` |
| 85 | `lemma` | [map_obj_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map-obj-injective.md) | 624 | `result-track:cb3833375ad940c940c58ee614148f2fc056edf498596e295043c5bb61c878ad` |
| 86 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mapiso.md) | 633 | `declaration-track:8bd9c5854f882a44a78dc3e1128fe1a6dd237884390de7d2b3572840c41e1476` |
| 87 | `def` | [mapIsoToOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mapisotoorderiso.md) | 641 | `declaration-track:41c26cd94344d3aed509d80e75a7b7c5594f4bd0a14e81ecd495c5b39b0e7af1` |
| 88 | `theorem` | [mapIsoToOrderIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mapisotoorderiso-apply.md) | 659 | `result-track:8709876e2a4200eb846019568065448807dc22170461dce9f055e1716dd80e99` |
| 89 | `theorem` | [mapIsoToOrderIso_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mapisotoorderiso-symm-apply.md) | 664 | `result-track:7855058448ec7b8da666a1863877eb3f09383e4353b3ca5d0fdbcc2adecf25c3` |
| 90 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/mappullbackadj.md) | 670 | `declaration-track:d29372fe0e59d922f1fe2e99347f78c562ae37cd3658977949a7a5e55cd28aea` |
| 91 | `theorem` | [pullback_map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/pullback-map-self.md) | 674 | `result-track:f3dd1900c8f60251f016b349a2f82ddb796b2a252b1071f4e31fcd80d364c751` |
| 92 | `theorem` | [map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/map-pullback.md) | 679 | `result-track:51f7a60540ba0275697d6c295ae1892141f1f289cdb4b95c48df31ec2feaf8d0` |
| 93 | `def` | [«exists»](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/exists.md) | 713 | `declaration-track:3761d361a9efcb0f407b64c227bc98b9f0d5ea2ecd888012762138e6245d1967` |
| 94 | `theorem` | [exists_iso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/exists-iso-map.md) | 718 | `result-track:650ec8411e79136a1b3517a78fb833f5ecc55987673c1432135939f5ebb2c453` |
| 95 | `def` | [existsPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespacedMkSurjective.lean/declarations/existspullbackadj.md) | 724 | `declaration-track:75a2cd91a4b4aa61dad79d253364078c9a3abfcd151af478090039c928ae7ea6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c80042eaeb640e11b99823218fff2116c0f2a8c16cd5158f7ebd0aa58b21097 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
