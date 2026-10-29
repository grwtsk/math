# Verification target: Closed Monoidal Namespaced Whisker Left Curry Ihom Ev App

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3868c44174f1c80d6e694b8885c953312503d9",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3868c44174f1c80d6e694b8885c953312503d9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Parametrized` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/closed.md) | 42 | `declaration-track:85d3123351800fd151ca25a9a65368236ce03353d8f7c6c9b0dccf08a375192b` |
| 2 | `class` | [MonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/monoidalclosed.md) | 49 | `declaration-track:a441e8373d2db6b35fc7a68be458a50b12e496f7d7ccdd924165d48487e79466` |
| 3 | `def` | [tensorClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/tensorclosed.md) | 60 | `declaration-track:951c33014f406d9b99d573175b1f34c1f09ab780b489efbf9819753a28cabc95` |
| 4 | `def` | [unitClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/unitclosed.md) | 68 | `declaration-track:76bc5669d83e99b4abd24c7b4cb3fc37001b0f81b05d5e11c8d2178cf8401e9b` |
| 5 | `def` | [ihom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ihom.md) | 77 | `declaration-track:eee48a72c3113405be58dba42747a8e98e7f0d43dd9733859efb25fd63e8c3a2` |
| 6 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/adjunction.md) | 83 | `declaration-track:fc7fde2ec67947534398716be941c36345a2bd803c37e2691e69f35f284f8665` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/instance.md) | 86 | `declaration-track:57b9b9d967b08a3bf20dc8cb769043f4cbd378e56a278abe1afe525ee491934a` |
| 8 | `def` | [ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ev.md) | 90 | `declaration-track:5993c4ad013bb1b1ce174bef1892cf4dab0d101aff81ddcded23a664b94dc293` |
| 9 | `def` | [coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/coev.md) | 94 | `declaration-track:51a74317aeeb0cb5a160231276ac3e22b79e090f2e38f77e0e1c76bdc2243858` |
| 10 | `theorem` | [ihom_adjunction_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ihom-adjunction-counit.md) | 98 | `result-track:daa028dcd3de8979e1c186801c8c71102f794358bee07a1b30294a798744f6bd` |
| 11 | `theorem` | [ihom_adjunction_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ihom-adjunction-unit.md) | 102 | `result-track:7a28f47467e3ee60d96e44a9dc7bdaf92f4cb37a6ddb44360735cc03d4e35971` |
| 12 | `theorem` | [ev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ev-naturality.md) | 106 | `result-track:87f98cd373301755cf95fd03e58aa1785971b31c53dc24af19a65b84d0b110d4` |
| 13 | `theorem` | [coev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/coev-naturality.md) | 111 | `result-track:41e0b565baaaa658159b656ed6cd4909b7127da6f2d888f277ffb94429ba45a6` |
| 14 | `theorem` | [ev_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ev-coev.md) | 120 | `result-track:8359d215fdb4032be84b424ede69499fab0edbb7caf65298eec1d039820f8c87` |
| 15 | `theorem` | [coev_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/coev-ev.md) | 124 | `result-track:e82ed6f8768cf64958ac495818d239082b0a10dd3a1dd660f244976f7d613841` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:76705244ba32ba919cdd1cd1e3fe95eb951a857ad0dd9f9a3b825a97186e7153` |
| 17 | `def` | [curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-source-edition-2.md) | 140 | `declaration-track:d5673915a8bb09ef6c71e90a7f906df32e70cf1cd9a2f538d5b85d638856dbf3` |
| 18 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry.md) | 144 | `declaration-track:0ec40cb50bd5f55fee2a11b5d869d433b34698a5b72a1ddcc96ef0c170511caa` |
| 19 | `theorem` | [homEquiv_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/homequiv-apply-eq.md) | 147 | `result-track:80f5b034ecdf5703cca94a88b3d2759fa28f86997f0d1ad2ebeab5fd58c4f260` |
| 20 | `theorem` | [homEquiv_symm_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/homequiv-symm-apply-eq.md) | 150 | `result-track:b5140128cccb8fa23ce75399a6b38126442c78ad1fd997918045bf23bd725673` |
| 21 | `theorem` | [curry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-natural-left.md) | 155 | `result-track:ed3e0dad929a2e2f433a033bee75415bb05e14dd24829b1e8aca8bfb53c71ab9` |
| 22 | `theorem` | [curry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-natural-right.md) | 159 | `result-track:e815d9b5773cb094e2f96aaab3473d11db4276344933e5fe269f41e868d6d987` |
| 23 | `theorem` | [uncurry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-natural-right.md) | 164 | `result-track:ba13ba745e62b0cda97cf9f9cd96dea9d899ce11bd15e7986c119427dcfa0f27` |
| 24 | `theorem` | [uncurry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-natural-left.md) | 169 | `result-track:f67eb575e4ee18da9269e1f5874762e8e0117bbd7596f20d216b265f1db45128` |
| 25 | `theorem` | [uncurry_curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-curry.md) | 174 | `result-track:7c50ab6f7f13614dc14d670f7a4835154fd20cc3bb6c836c9125c7055000d31b` |
| 26 | `theorem` | [curry_uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-uncurry.md) | 178 | `result-track:460d14c5503dc4c16a9fca2246160f8da0a3415091af24dc71d473d998056272` |
| 27 | `theorem` | [curry_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-eq-iff.md) | 181 | `result-track:52c5988cd1cdd6a6eaebbc2d92092d09160f4a42f8337afc136cd4257b3f536b` |
| 28 | `theorem` | [eq_curry_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/eq-curry-iff.md) | 184 | `result-track:4d9510db9be1d8495a5bf1f5b53a73c1ea8d8a8de26e5efbc89a0fef567cdc55` |
| 29 | `theorem` | [uncurry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-eq.md) | 188 | `result-track:ca494f928cda05d76f6e2ab82526569980c4ddf486abd262fb73753ecb048544` |
| 30 | `theorem` | [curry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-eq.md) | 191 | `result-track:b6266779cf7e77b000cbb57c0da7219dd8034f51e3e6d41aca20940b0564aecc` |
| 31 | `theorem` | [curry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-injective.md) | 194 | `result-track:8378e0dae8c18c02c477c50bfd843ff73000af313926285ad90c310f02fd6fb8` |
| 32 | `theorem` | [uncurry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-injective.md) | 197 | `result-track:e66dc27bf71b3f1898831ad7e3b4310482fafdac3b01bd45a9ff9c986a5fffbc` |
| 33 | `theorem` | [uncurry_id_eq_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-id-eq-ev.md) | 202 | `result-track:d8444d02c44e7d80f8878d5a1f5cf2750d406fb011a535f1d88205dd231a6886` |
| 34 | `theorem` | [curry_id_eq_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-id-eq-coev.md) | 205 | `result-track:a518c9bd7f25e48d8f067342908b098456a096f35f3827e8a353fe0a28ff8bc3` |
| 35 | `lemma` | [whiskerLeft_curry_ihom_ev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-ihom-ev-app.md) | 210 | `result-track:ba8d85bf39cfce09fc461910c1a56437ea1e8558cf7f88bf3001630f69151260` |
| 36 | `theorem` | [uncurry_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-ihom-map.md) | 214 | `result-track:1dd234e5a2f75c6dcb3b9d07dcd916be0d8b067dde7afb46424fce77e99a5012` |
| 37 | `def` | [unitNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/unitnatiso.md) | 220 | `declaration-track:400ad3777fa2ae9365bec6510a12ff7dec625e1442ae8f25a43252b39d3dec67` |
| 38 | `def` | [pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/pre.md) | 229 | `declaration-track:1aea1e6d37446512c5a39dff10c98ac3258762d0cbd44b08adb4c677cdd8482b` |
| 39 | `theorem` | [id_tensor_pre_app_comp_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/id-tensor-pre-app-comp-ev.md) | 233 | `result-track:de660cd77918b0ff5b7921af05cc83ef55fa900ce9c24f153162e7b9f136d2bb` |
| 40 | `theorem` | [uncurry_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-pre.md) | 238 | `result-track:6186b3088dd9912f390a0e53d3df7c0bdea4370cf3e94da77e9cd9b8817392db` |
| 41 | `lemma` | [curry_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-pre-app.md) | 243 | `result-track:eb0888463636892fc6841c6b2dbe9e17ed8266f69ff91bec8ecdf684bf940ac3` |
| 42 | `theorem` | [coev_app_comp_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/coev-app-comp-pre-app.md) | 249 | `result-track:a831f5a2dacfe793cd1d6799a1a0b234f9f8ea43afe4c00828815e7c62308070` |
| 43 | `lemma` | [uncurry_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-pre-app.md) | 254 | `result-track:62076c3de10c54e89774f67e8846eabbf7108d6e259c55ae6dfff7e859a4d931` |
| 44 | `theorem` | [pre_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/pre-id.md) | 260 | `result-track:46a57b39dce2b315c93a9f08f18a66c572a18861ffb297aaaef1d82d021fc273` |
| 45 | `theorem` | [pre_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/pre-map.md) | 265 | `result-track:41a81574db775ddf33a67eb20b87337abd83f2ba3ec439fbf0a06254bc3810cd` |
| 46 | `theorem` | [pre_comm_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/pre-comm-ihom-map.md) | 269 | `result-track:a710180f63aff62bf59df97fa0f4a3f1db94fe96dc125222a9d77e6703551ed8` |
| 47 | `def` | [internalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/internalhom.md) | 276 | `declaration-track:ea6faf2a1bcda957c5e1e3d906450e48f2bbe807543ccbcd4440ca105a7e8d66` |
| 48 | `def` | [internalHomAdjunction₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/internalhomadjunction.md) | 283 | `declaration-track:f483de06c4b44efa8957e4d1f5ece9232f8e1dd5521b266fa249c5368c57c37b` |
| 49 | `def` | [ofEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv.md) | 295 | `declaration-track:448419b2ed96a53e7eb01db50028d1da63e905727b2260c39ba9b02bdad43495` |
| 50 | `theorem` | [ofEquiv_curry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv-curry-def.md) | 307 | `result-track:477f02e68d7ee8533aa24a8ef364c6d2557c26f56048fa04fb724597694ea966` |
| 51 | `theorem` | [ofEquiv_uncurry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/ofequiv-uncurry-def.md) | 328 | `result-track:490cfae83b4175a6bdaa8b8b6ec59a9464c984630ee39ffd4221f2b6a78f9ae2` |
| 52 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/id.md) | 357 | `declaration-track:7581f44261e4152be9b6e75e94dfcb75b51f56b9d623c62cecda7839995bfd3c` |
| 53 | `def` | [compTranspose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/comptranspose.md) | 362 | `declaration-track:7919fd74845087f988b3fe6032f3a5e091933e4c95d550b2a5ea24350ab27010` |
| 54 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/comp.md) | 369 | `declaration-track:9932147be883d86294f06f20e5df0d2c65136d83c1c96d6d876905e015bbd174` |
| 55 | `lemma` | [id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/id-eq.md) | 374 | `result-track:af66246ae776b92a572a878250dbac028a2bee2a4d403a329ef782861a8cb234` |
| 56 | `lemma` | [compTranspose_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/comptranspose-eq.md) | 378 | `result-track:ace1789309da886ddc34feebcac3d23551f3359c4252310693febbcdeffcdee4` |
| 57 | `lemma` | [comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/comp-eq.md) | 384 | `result-track:ecc482760e8afe52855df20130acb735e809032a98cee407a290f2fa02504afe` |
| 58 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/id-comp.md) | 395 | `result-track:c978af41a43a92dee0863aeb0dce5a68576e1adac6ae2a86e9b7348b7220f12e` |
| 59 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/comp-id.md) | 405 | `result-track:a610d8e99436198e56a26d0e2ab2980ad71980d0d34f1dd9ad22d80e6a74b3be` |
| 60 | `lemma` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/assoc.md) | 417 | `result-track:53e62cf15c5b8433a98f46679cf7f83f139c1389a11570faf0aabf645bd225a7` |
| 61 | `def` | [curry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry.md) | 433 | `declaration-track:684d2c88af697d9ec34cea1303b5470d08b1ee9d1b2dc50d0289ef3ac9a9170a` |
| 62 | `def` | [uncurry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-source-edition-2.md) | 437 | `declaration-track:132c20e4e4fca1b8f99da146b7c0da40a495e99ced7774597ae068ee4aa71316` |
| 63 | `lemma` | [curry'_uncurry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-uncurry-source-edition-2.md) | 442 | `result-track:e23f2ab339d8acf1200c7a5aa155d817701b2959eb2d437ca9dfebcd686e7b0a` |
| 64 | `lemma` | [uncurry'_curry'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-curry-source-edition-2.md) | 448 | `result-track:feb7fb3e2876f708eda67ef7d3fcf9eea3bbfd6097594a854d0c861a6a625709` |
| 65 | `def` | [curryHomEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curryhomequiv.md) | 454 | `declaration-track:ec0369497262ecce9c65f2a46c8bab4e47e3bd279c3f395984cf0f6099465d2b` |
| 66 | `lemma` | [curry'_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-injective-source-edition-2.md) | 461 | `result-track:fe4b866e59ddb3a8d654f6eb5251ea91307a583a0401da6292f5e0907fdb356a` |
| 67 | `lemma` | [uncurry'_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/uncurry-injective-source-edition-2.md) | 465 | `result-track:ff9ce8a2bd250fda192ee69db160b47a7dfae8802a51889f94717c553aee15bc` |
| 68 | `lemma` | [curry'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-id.md) | 470 | `result-track:d9f1ed16b26cca91bf2ea518780d9f1d3ebaa919ac7059425b1e939f453035d2` |
| 69 | `lemma` | [whiskerLeft_curry'_ihom_ev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-ihom-ev-app-source-edition-2.md) | 476 | `result-track:c047acb7dcc9dfa8e985bc1beca0114b4f5a27bb5fc8fcebc7fe720a53afafff` |
| 70 | `lemma` | [curry'_whiskerRight_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-whiskerright-comp.md) | 482 | `result-track:b4757e0d0f16c1d0d8d6182f9232fb4279698383a1feb5992166e73549380601` |
| 71 | `lemma` | [whiskerLeft_curry'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/whiskerleft-curry-comp.md) | 492 | `result-track:fc133a4eef1b92cf2503faa6c11c64be087ca23adaeb3379cbacac753fea658c` |
| 72 | `lemma` | [curry'_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-ihom-map.md) | 503 | `result-track:05b7e9a02299b1b68a5ca51137e655c5eae08b8e3553135fefcdc1076e3b693b` |
| 73 | `lemma` | [curry'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespacedWhiskerLeftCurryIhomEvApp.lean/declarations/curry-comp.md) | 507 | `result-track:921a2f2322ed4ceceb3d11dde7dbeb7f6f027c4c283873e6bd2284292a29f42c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdf12813d327ff7afa3fc0944781f27142d362554af7c0c15e03c9fd822786ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
