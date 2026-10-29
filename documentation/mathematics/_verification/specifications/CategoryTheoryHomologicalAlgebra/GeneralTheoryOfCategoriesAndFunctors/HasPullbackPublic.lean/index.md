# Verification target: Has Pullback Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4514058d6b818b70db07c93ece40249a815fb655",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4514058d6b818b70db07c93ece40249a815fb655`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean.json)

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
| 1 | `abbrev` | [HasPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullback.md) | 87 | `declaration-track:9f710eaacbb4411d9badae6f716beb2963c7c014efbd27a9af10c4f9266be43b` |
| 2 | `abbrev` | [HasPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushout.md) | 92 | `declaration-track:9a29953fe601a98962aec226821e360594a61646ee9c4a481c6f063c854b81b6` |
| 3 | `abbrev` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback.md) | 96 | `declaration-track:8efeb8cd5053d5017f13b1b28df12be9afffd7613be31f37cde631e22bbf0de9` |
| 4 | `abbrev` | [pullback.cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-cone.md) | 100 | `declaration-track:68172bb3aa523c5c40b48eb29ae37ba183377a5b699e7d37f4ba0f24dfc688b5` |
| 5 | `abbrev` | [pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout.md) | 104 | `declaration-track:c8026995fd3390b701bde0e971a3bbf13531ef641740e75868e3be13a9b4dfc3` |
| 6 | `abbrev` | [pushout.cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-cocone.md) | 108 | `declaration-track:3fef22cae93b6e07b06dceacdd83b63e7aff255ece0f2a8e3cb58a5c0da41dfc` |
| 7 | `abbrev` | [pullback.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-fst.md) | 112 | `declaration-track:0bfdb0baf6eac59ec8b3c5bdd4780543b45ca114bfeeab756c3029d05f3d738a` |
| 8 | `abbrev` | [pullback.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-snd.md) | 116 | `declaration-track:2e36844175ae9c85ffadc072728ff0c99c6b75ed2eff719c0da80ab20388db18` |
| 9 | `abbrev` | [pushout.inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-inl.md) | 120 | `declaration-track:62340195053045a67c52b4b4506139bbd30befae0c21cd99601e5462d7cd160c` |
| 10 | `abbrev` | [pushout.inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-inr.md) | 124 | `declaration-track:6dd51cda6c6ea2ade6b9151ee77d1d2c4273fe0d85d2d692458ab9db4319d6d8` |
| 11 | `abbrev` | [pullback.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-lift.md) | 129 | `declaration-track:8a28c9ec745f1abc7dc7200337673203009e248d847fa1bd3156508d86360b34` |
| 12 | `lemma` | [pullback.exists_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-exists-lift.md) | 134 | `result-track:f1511ab7c47b0eed7e78ee961c6486932b47430d1ffe9d5e475a623345b1b739` |
| 13 | `abbrev` | [pushout.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-desc.md) | 141 | `declaration-track:1d38ccee0e5824ac1a397863524c60af13ed51ce1575a2c0f694a9e629bf7f31` |
| 14 | `lemma` | [pushout.exists_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-exists-desc.md) | 146 | `result-track:4ee0e25b429779c170a274abafeaedbe85faa0715ccacd01cd00424c67b27fa3` |
| 15 | `abbrev` | [pullback.isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-islimit.md) | 152 | `declaration-track:ff7d67b3281f90e216be66388d62963f3229a30bdb2e314ad66ea4024d123a6f` |
| 16 | `abbrev` | [pushout.isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-iscolimit.md) | 157 | `declaration-track:366d4d3cb68b2812daaa3cd6645c5c33325b52a3fe32709dd785b9c51e898280` |
| 17 | `theorem` | [PullbackCone.fst_limit_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcone-fst-limit-cone.md) | 162 | `result-track:36c10da2dbdf0290408ff7a4d601fbbca69d859725ae408cfe1ee39bd8db61a2` |
| 18 | `theorem` | [PullbackCone.snd_limit_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcone-snd-limit-cone.md) | 166 | `result-track:cb8b09be1a298aa88b6219965100e5860ee927a612044c621eddd3a3f7289bf0` |
| 19 | `theorem` | [PushoutCocone.inl_colimit_cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutcocone-inl-colimit-cocone.md) | 169 | `result-track:437f99a55bd6c7017e7721b39e4646191c547372bdfbc8d190cdfcc355861684` |
| 20 | `theorem` | [PushoutCocone.inr_colimit_cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutcocone-inr-colimit-cocone.md) | 172 | `result-track:c7bb6c136ff74f4d1067d095b8decf441fffd2f64f5656c9f4adc6e4600cf618` |
| 21 | `theorem` | [pullback.lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-lift-fst.md) | 176 | `result-track:92708345d085b99f1eef2106135206f7e2ec2511bf5ea681c10aa25bcd86ffc9` |
| 22 | `theorem` | [pullback.lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-lift-snd.md) | 181 | `result-track:24587827833abedff0eb208b3762230c9aae31bef511667e6f2ecbd5820441ed` |
| 23 | `theorem` | [pushout.inl_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-inl-desc.md) | 186 | `result-track:fa3785f107f47afaf77eaf13116733868ecf5dbf0d8c1c32177c2f398dd64222` |
| 24 | `theorem` | [pushout.inr_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-inr-desc.md) | 191 | `result-track:d1d7923b839586c7484c19b1be873f5531f363c0d2dc4d8d5c7a9718cd53da4d` |
| 25 | `def` | [pullback.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-lift-source-edition-2.md) | 197 | `declaration-track:fee56fb57fcaa71c2851f9ad39eff46db65e8496d451c9ef30085a1941c87a72` |
| 26 | `def` | [pushout.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-desc-source-edition-2.md) | 204 | `declaration-track:21441c9c244e92bef363f549dfbde15fedafda901d0ca45b1e4643de203da273` |
| 27 | `theorem` | [pullback.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-condition.md) | 212 | `result-track:574341f52f1b796429c28a1ba7c831bba7f8e9178c94753c84a6358779643e82` |
| 28 | `theorem` | [pushout.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-condition.md) | 217 | `result-track:cb324f3657dc994e031fe633c391bf68cdc8e39936c28a9bdf943c5df1454ca7` |
| 29 | `theorem` | [pullback.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-hom-ext.md) | 224 | `result-track:3717bbf252835236f74c9785eac07e3fe9d90e0b772586e05acd1fda4be6dafe` |
| 30 | `def` | [pullbackIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackispullback.md) | 230 | `declaration-track:c6c71248fd71210fc820eeccc1c2fec6173c699081a8daa2c4d98e920f00c4de` |
| 31 | `theorem` | [pushout.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-hom-ext.md) | 237 | `result-track:28621a88f942e365f5db5e0e108da5eea6f8e3021e69216f7a7a57ae8a3fb18f` |
| 32 | `def` | [pushoutIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutispushout.md) | 244 | `declaration-track:7420c9aafedf16d338c80ac251796274c8084be6895d2ebc0f115813712d9b8c` |
| 33 | `lemma` | [pullback.lift_fst_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-lift-fst-snd.md) | 251 | `result-track:ed5cd3b0604e45f707c6c2bd8d445bae99147b39711c5a0766d548dd7e3fe5b8` |
| 34 | `lemma` | [pushout.desc_inl_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-desc-inl-inr.md) | 257 | `result-track:4eac792f07bbd77b22b946c093398b4712bc5381c927d1af35ce1e47729d2eb5` |
| 35 | `abbrev` | [pullback.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-map.md) | 271 | `declaration-track:4f659e2b60cf3322ce0d566b37335f08114d692e425ee2cbfaf40ff060886686` |
| 36 | `abbrev` | [pullback.mapDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-mapdesc.md) | 278 | `declaration-track:9be175c1dab133b1731c12d6fac1c98566b78d5d5450542ff4e2556e7a0a8937` |
| 37 | `lemma` | [pullback.map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-map-comp.md) | 284 | `result-track:682fa7eae8a7e80f430ba35216a54a4a7f3443121bc3f06805e6547eac9d0323` |
| 38 | `lemma` | [pullback.map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-map-id.md) | 296 | `result-track:0ec257811da4a6492266f21e1b173178965ba06b5be8a2a27988d0e67a900791` |
| 39 | `abbrev` | [pushout.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-map.md) | 310 | `declaration-track:84857cd2faa2b350ed95c3967d282b297cf2f0355acbc45701cb36bfc36e82b3` |
| 40 | `abbrev` | [pushout.mapLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-maplift.md) | 317 | `declaration-track:2a351f00f72c25e277b5936bb85cabd5132072ced7641fb7f56aa4c691a124f8` |
| 41 | `lemma` | [pushout.map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-map-comp.md) | 323 | `result-track:0aa0d49c62c5b44b96bf6729825a022457d3be83f8be5b061310f8a0df4a2817` |
| 42 | `lemma` | [pushout.map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-map-id.md) | 335 | `result-track:c0a8b5d74a15245438a1dad4c6b6e078dfb99525b56ad61cc979010c5b9076dc` |
| 43 | `instance` | [pullback.map_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-map-isiso.md) | 340 | `declaration-track:329cb3753c69a1b007865136ec4ab20bc8a6541eae16c73d3f440c6b1e2d3ad0` |
| 44 | `def` | [pullback.congrHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-congrhom.md) | 353 | `declaration-track:4e0b026f144a8ad1332b91c5788fc7888864cca0e37f4894bc59c528e58ba7b2` |
| 45 | `theorem` | [pullback.congrHom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-congrhom-inv.md) | 359 | `result-track:a345d5b3fd9d1c2342a9481c291ca1ce2be88632cbfb6c327a0277ad105df410` |
| 46 | `instance` | [pushout.map_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-map-isiso.md) | 366 | `declaration-track:f535530380c1ba37dc4999cca7ce0638012fe0c7ef6668cd1f402c74d325e52c` |
| 47 | `theorem` | [pullback.mapDesc_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullback-mapdesc-comp.md) | 377 | `result-track:670e204dd95e767e08b1492570387e42eee4a0baad638bc42b7198fc71c27cc3` |
| 48 | `def` | [pushout.congrHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-congrhom.md) | 387 | `declaration-track:32281d9f0018a35ddecd9832da2f24fa845375c038d52dde2be8e75f18420a66` |
| 49 | `theorem` | [pushout.congrHom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-congrhom-inv.md) | 393 | `result-track:6bd3fed14e917c9af3666ee8a7ab043618f0679217cfe817529d0adbad8e70b1` |
| 50 | `theorem` | [pushout.mapLift_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushout-maplift-comp.md) | 400 | `result-track:272b367ad53941aa54f51790c7ced4b3597ddf8125440be59c32b2967915116b` |
| 51 | `def` | [pullbackComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcomparison.md) | 416 | `declaration-track:934b2184943a7048c01412dd4112ff34db5ab4377f443d2432ce4156168f6412` |
| 52 | `theorem` | [pullbackComparison_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcomparison-comp-fst.md) | 422 | `result-track:a74d986dbb01b6e9fbad089c374dcbe678a48bf25d3a298ac30902a5cf102c35` |
| 53 | `theorem` | [pullbackComparison_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcomparison-comp-snd.md) | 428 | `result-track:2d09a8b3fd641abccc8946a39b3e48a7dd4bf08d45ac97a1d7b1cae28b595e81` |
| 54 | `theorem` | [map_lift_pullbackComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/map-lift-pullbackcomparison.md) | 435 | `result-track:616a843895b4fa5374fdc54dcfe4a0c18beb734a9ac97e677988cfb84ba11bff` |
| 55 | `lemma` | [pullbackComparison_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackcomparison-comp.md) | 443 | `result-track:c95681c1f219611b0707b496a344cb0201093fa01ca4a69ae9e883975ba03a37` |
| 56 | `def` | [pushoutComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutcomparison.md) | 459 | `declaration-track:2f52dc7dd9732ec3410cc7b0aa48789fa3433b21bdfd50273784973ab10df9d1` |
| 57 | `theorem` | [inl_comp_pushoutComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inl-comp-pushoutcomparison.md) | 465 | `result-track:aae7e54ebb162c04f9b89470e589cdad3e7ed1c88a54b4b31b0007c2eefa32ad` |
| 58 | `theorem` | [inr_comp_pushoutComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inr-comp-pushoutcomparison.md) | 471 | `result-track:424cc6e779f5814112c6e1522a5458978fc0365427035e4f4b2f8e376d8457fa` |
| 59 | `theorem` | [pushoutComparison_map_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutcomparison-map-desc.md) | 478 | `result-track:9c354f32c67d3a3cad41007cac4c0f87027d750487ef829043fe54ab508df8dd` |
| 60 | `theorem` | [hasPullback_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullback-symmetry.md) | 491 | `result-track:e1c638750a1741fa14aef330136c97457a7ae018f164ae8dc286e7f3f9689992` |
| 61 | `def` | [pullbackSymmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbacksymmetry.md) | 497 | `declaration-track:f7747bf8f073357280029aba740bd7f93311bfae444a6bd5461b4f894a2f2331` |
| 62 | `theorem` | [pullbackSymmetry_hom_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbacksymmetry-hom-comp-fst.md) | 503 | `result-track:c2eded50e9c13540436811cde507d300a5ccf26d88770a6c35d04e1a6d0bb16b` |
| 63 | `theorem` | [pullbackSymmetry_hom_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbacksymmetry-hom-comp-snd.md) | 508 | `result-track:6a832de54476a4730fb191b896be37445c0b60fb2ef341958334302b4648f11e` |
| 64 | `theorem` | [pullbackSymmetry_inv_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbacksymmetry-inv-comp-fst.md) | 512 | `result-track:03e85f4d86cefdc4531d6c30bb4d2f9574dd3dccb1014c0a4df7532bb56f2ab8` |
| 65 | `theorem` | [pullbackSymmetry_inv_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbacksymmetry-inv-comp-snd.md) | 516 | `result-track:6a04256fa04d22bf6323fc4201ae74d73e665df2b21db320a7affc70e73eb135` |
| 66 | `theorem` | [hasPushout_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushout-symmetry.md) | 526 | `result-track:9e5e3c8ecd3a726eb3977dc00965c587cb0a4649ffb16acbbdbd829a7adb2454` |
| 67 | `def` | [pushoutSymmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pushoutsymmetry.md) | 532 | `declaration-track:8c2c9174d905c70d6ed9d59d065abf8753454c469f9665476340b682f76c8f1f` |
| 68 | `theorem` | [inl_comp_pushoutSymmetry_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inl-comp-pushoutsymmetry-hom.md) | 537 | `result-track:6f9c9140035cd04eb1cf7e1c681456b0a9f679697750139deff62c825712a328` |
| 69 | `theorem` | [inr_comp_pushoutSymmetry_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inr-comp-pushoutsymmetry-hom.md) | 543 | `result-track:dc9357861430352f49e3ded1dee2e8775398c199bd299020361f945553353b3d` |
| 70 | `theorem` | [inl_comp_pushoutSymmetry_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inl-comp-pushoutsymmetry-inv.md) | 549 | `result-track:7cb78f982ba409a92f6b7887abf701ce028434d4f90c72aa4f0d1911031bf494` |
| 71 | `theorem` | [inr_comp_pushoutSymmetry_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/inr-comp-pushoutsymmetry-inv.md) | 553 | `result-track:306cee66c273a0240eaa47575d439833415f809e5cbb7901ade8b3e65866cb45` |
| 72 | `abbrev` | [HasPullbacksAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullbacksalong.md) | 560 | `declaration-track:601bc7a8b883514a85fb45bbf5a5c640e87ed4d0d1638c3ec2b34b7ed6387e03` |
| 73 | `abbrev` | [HasPushoutsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushoutsalong.md) | 564 | `declaration-track:66c687b0556be788f200eb11dcb2c12cce5cfef13a3d49b77f8e5325d035f7fc` |
| 74 | `abbrev` | [HasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullbacks.md) | 571 | `declaration-track:602561368cb9ddd4e9ed967a7144a9551ded5e7af932b5206b45a644b1bf1fc8` |
| 75 | `abbrev` | [HasPushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushouts.md) | 576 | `declaration-track:a05c3eeef258d968fa1cc0b0c79ec4470486ddc352ce35af4345660d72c5ab1e` |
| 76 | `theorem` | [hasPullbacks_of_hasLimit_cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullbacks-of-haslimit-cospan.md) | 580 | `result-track:815e63cd49280cafd9478cd2f93427cb13986235e40016396112011fcb1f994a` |
| 77 | `theorem` | [hasPushouts_of_hasColimit_span](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushouts-of-hascolimit-span.md) | 585 | `result-track:7f21d3820982b2e9c51a513f54fd55c2df5aeae1324bfba699d490030b993355` |
| 78 | `def` | [walkingSpanOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/walkingspanopequiv.md) | 591 | `declaration-track:de7b6c6197c1545e18d34cddecd69e1a827fd3109d5dd44a43db976ad3ebb979` |
| 79 | `def` | [walkingCospanOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/walkingcospanopequiv.md) | 596 | `declaration-track:b7a20531a92d1dfe2743657d91e395412a082b6ee1022259bb3a862bee21a396` |
| 80 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/instance-source-edition-2.md) | 601 | `declaration-track:d4a778fa4c653f0f9ae6ccff4250b489c0e65896f3e77ea0cce8b1f3bb514c2c` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/instance.md) | 607 | `declaration-track:3cef12c080a259243d8eebf42b04965a9f7de3c11d348303865ab0a6851f27b4` |
| 82 | `theorem` | [hasPullback_symmetry_of_hasPullbacksAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspullback-symmetry-of-haspullbacksalong.md) | 611 | `result-track:9a686bc41c2f6c6cefbd5f68d1aedceae462c3e4f30f4e24736df5348a7fd97d` |
| 83 | `theorem` | [hasPushouts_symmetry_of_hasPushoutsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/haspushouts-symmetry-of-haspushoutsalong.md) | 615 | `result-track:d3c96490a01351160974668b5ecaa7176d1b951576004aaa4e5d969bcfb955dc` |
| 84 | `def` | [pullbackProdFstIsoProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod.md) | 625 | `declaration-track:14f9a1ffc344e542e949811e747e6d43c7564cb066f3dddce6cd486a23a23448` |
| 85 | `lemma` | [pullbackProdFstIsoProd_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod-hom-fst.md) | 641 | `result-track:9ba92325d6aeb3d2506043bb2e5b5ed6a11a9c86334dc9f365db017e6e3470e2` |
| 86 | `lemma` | [pullbackProdFstIsoProd_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod-hom-snd.md) | 646 | `result-track:7bc05dab5de50f31dace178bc7fcfcd6da53977341c6cd1288d2b58710aa2b4a` |
| 87 | `lemma` | [pullbackProdFstIsoProd_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod-inv-fst.md) | 652 | `result-track:092e118ed99b269b0ea312a64ae649f98cba93b49cd5add94d52b36c6c618a04` |
| 88 | `lemma` | [pullbackProdFstIsoProd_inv_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod-inv-snd-fst.md) | 658 | `result-track:10320cc2634d30e9941209b9c27ff0a1e254edb1e0be3f90755838a6b7e36821` |
| 89 | `lemma` | [pullbackProdFstIsoProd_inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodfstisoprod-inv-snd-snd.md) | 664 | `result-track:9ac765d527052cae5da9ae0eef3fb438fa207ceb5ca10b9a87acf4e4b94665a8` |
| 90 | `def` | [pullbackProdSndIsoProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod.md) | 674 | `declaration-track:1ed4ea82bc44b07be29e0f5b5640d6ab22486aeb6e9097d3276765342ae94b8a` |
| 91 | `lemma` | [pullbackProdSndIsoProd_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod-hom-fst.md) | 688 | `result-track:74203acbd46b71f075e650ff5db38a53c77ff86f3fd76a77be3b4bfca4376212` |
| 92 | `lemma` | [pullbackProdSndIsoProd_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod-hom-snd.md) | 693 | `result-track:20f401b33c78983ae728091ef5b3e5727cfcc9e94eedfe7cd7834cef2f950e75` |
| 93 | `lemma` | [pullbackProdSndIsoProd_inv_fst_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod-inv-fst-fst.md) | 699 | `result-track:1ce8b5d89adab241b56a5c6745a4aa2de70a4e22e9b0d7a2821f7fc4022dd4ac` |
| 94 | `lemma` | [pullbackProdSndIsoProd_inv_fst_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod-inv-fst-snd.md) | 705 | `result-track:3ab52156044cd86e37cb070202cfe2a3494ae375d8877ae48036c4df9fc793d2` |
| 95 | `lemma` | [pullbackProdSndIsoProd_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasPullbackPublic.lean/declarations/pullbackprodsndisoprod-inv-snd.md) | 711 | `result-track:9974d0a16de7144c2e9590b0bae3f159f14140e40118a6fbbe05a93d90de5c67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7889abeed862f1bd148242e34c5a9006c440ac7bf0cf8347aff47e6518f96abb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
