# Verification target: Cospan Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3ddcfcaeba2dbaa56cc34e76140684f487068d",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3ddcfcaeba2dbaa56cc34e76140684f487068d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalkingCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingcospan.md) | 41 | `declaration-track:2c6651b7dc108263a57d854c13e675a27f9c2bfb1c4e2079cd4753bf982e1a22` |
| 2 | `abbrev` | [WalkingCospan.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingcospan-left.md) | 46 | `declaration-track:0953858330e7d34898e8dc2bddcf553515a1fb88b741195f0d6fa169bc1f2b4e` |
| 3 | `abbrev` | [WalkingCospan.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingcospan-right.md) | 51 | `declaration-track:7914411826398e143232189aff1dd88d7fa25c8c86b3b2f853e6a13fcfe60942` |
| 4 | `abbrev` | [WalkingCospan.one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingcospan-one.md) | 56 | `declaration-track:60d25dec3cbc88e07cb95f67879afac10ff87fdeb4d916b8867a199c2c61c9a0` |
| 5 | `abbrev` | [WalkingSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingspan.md) | 62 | `declaration-track:093dd0b7142472c26fad485a53a1265f43356d4c48f1e0521d0ff90cb333df44` |
| 6 | `abbrev` | [WalkingSpan.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingspan-left.md) | 67 | `declaration-track:99f64057c9b69d6bf0aeb12898016b4148d1b3089e57ccdaabbfa68919c613c2` |
| 7 | `abbrev` | [WalkingSpan.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingspan-right.md) | 72 | `declaration-track:139ae98de80886bb6902398ea7f37a574195d3b59f2604fb831d02dfbe8312e4` |
| 8 | `abbrev` | [WalkingSpan.zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingspan-zero.md) | 77 | `declaration-track:a8c17280c305154e0bf58c8bcd523a895881c92e962919315cd5e4fc9da7a901` |
| 9 | `abbrev` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom.md) | 83 | `declaration-track:305e2ac3dde972b21ef244541bf10fffd2e3cb42725d92c2d721a351b056f086` |
| 10 | `abbrev` | [Hom.inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-inl.md) | 88 | `declaration-track:20b99fc6308e40d392464ecf1cf2c9265064800c9546c711e9ac4c512532eb67` |
| 11 | `abbrev` | [Hom.inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-inr.md) | 93 | `declaration-track:697a41641506142bbd5381dca75ac6aa79ec84110a525e03973d65737a83937d` |
| 12 | `abbrev` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-id.md) | 98 | `declaration-track:2971fc383675a6aa8b97039f137221567a6611a8efc98679965c7a967b436686` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:74901c4f980c937df64c94a5b017a9aebafb2445f6aa0e7d18a780799f73155b` |
| 14 | `abbrev` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-source-edition-2.md) | 109 | `declaration-track:443c767353c9c12913459a93f71fe957e255738bdba7292445e211c20f4a1028` |
| 15 | `abbrev` | [Hom.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-fst.md) | 114 | `declaration-track:3b5540d75f89006f0da78ec9cc38ba69b0036e912be3db8a7de92f240deeb080` |
| 16 | `abbrev` | [Hom.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-snd.md) | 119 | `declaration-track:a096e639490d0730be3230181648d05552702d78a6e6beb067b419948535256f` |
| 17 | `abbrev` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/hom-id-source-edition-2.md) | 124 | `declaration-track:d486f66eff1457f57fb72cc47c0a10f99ec0e59503912869c4637cde7bd68076` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/instance.md) | 127 | `declaration-track:1afa4b80fdba3e1945cde5c96d6b726509a8bf06ac71ec857887cfb1592f2170` |
| 19 | `def` | [WalkingCospan.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingcospan-ext.md) | 139 | `declaration-track:2f71ecb921a82247e9c1a759bd0c2d8f40d94e64b847a3b21bc793add25e66b5` |
| 20 | `def` | [WalkingSpan.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/walkingspan-ext.md) | 157 | `declaration-track:54b8a6bf4890518d608e91125f8869802f3720d35e625cdeeb7bc9dac2c7ddd7` |
| 21 | `def` | [cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan.md) | 173 | `declaration-track:0bdb006f07eab613ff54c3bfb805051e510ec37c0c43065a69560ac5ce39f7e5` |
| 22 | `def` | [span](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span.md) | 178 | `declaration-track:e712d77b9c9a5a46f5068dcf80c3d3aa6b8fa481fadff72e969b9263878e71cc` |
| 23 | `theorem` | [cospan_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-left.md) | 183 | `result-track:c318513938ed998bb00571559eecd566df228c6b550686f12b9aea08f3b6b0d0` |
| 24 | `theorem` | [span_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-left.md) | 187 | `result-track:2b6a1bf901c1fca420bacaf36768d8ed74f9b34e9ae949c9512782ab710939ce` |
| 25 | `theorem` | [cospan_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-right.md) | 191 | `result-track:163a21def798d376a6e7687fd3fe271178b57a1a730d58df7b66068fd46c3f0b` |
| 26 | `theorem` | [span_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-right.md) | 195 | `result-track:999ab03e40b9b47c83e33d24f34b4264b9f766bb83ded7e565991f9af6c5934a` |
| 27 | `theorem` | [cospan_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-one.md) | 199 | `result-track:294bb688c0e16a771e89642a5a50890b67a36f95c02b8afd81138bccd5b105ff` |
| 28 | `theorem` | [span_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-zero.md) | 203 | `result-track:2b2895488ec611cbd5eed2cc2712db46ae051e3f076dec8daf2defb259afab16` |
| 29 | `theorem` | [cospan_map_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-map-inl.md) | 207 | `result-track:03ca104357f1a4a027406b31c08b0a05a256f0482008864f56b55945347eccd0` |
| 30 | `theorem` | [span_map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-map-fst.md) | 211 | `result-track:3cefc33dec769cf9f25b1d7eaadca6d4485dd364204516aa284c6b15dec39c21` |
| 31 | `theorem` | [cospan_map_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-map-inr.md) | 215 | `result-track:c18b5474510b497091b8feb50c23dd52dd6cd53f494bd1a433d6f0db2a5f24b7` |
| 32 | `theorem` | [span_map_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-map-snd.md) | 219 | `result-track:363c1eff247a8155c2c590c28585bf8e871338bf5d28ea5303b6ee181193a39c` |
| 33 | `theorem` | [cospan_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospan-map-id.md) | 222 | `result-track:6280c64257b1685df8012526d05d04eda0d254fdf0e27acb7f933cb688ed36cb` |
| 34 | `theorem` | [span_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/span-map-id.md) | 225 | `result-track:3efbd9cd64415df2794cdccc54f12b7e29a9e14d8166dee326288bc38eeb8a18` |
| 35 | `def` | [diagramIsoCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/diagramisocospan.md) | 231 | `declaration-track:33259347679ada11747398d9a1d4053e9991051918287e6c7a6ae461bbad567b` |
| 36 | `def` | [diagramIsoSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/diagramisospan.md) | 239 | `declaration-track:3db652cc3cf4fd7b578d7d1e4fc9d00470bb86545b25e019832585f132f6a630` |
| 37 | `def` | [cospanCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso.md) | 247 | `declaration-track:b58bdd8e64faac94f621064066c13b06fd26e4a3366e7a35070889494dd4875d` |
| 38 | `theorem` | [cospanCompIso_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-app-left.md) | 257 | `result-track:a899607d15e1e962131b6ba3b1a8cf965b2fa2c5c48b9e423299fe07eac2073a` |
| 39 | `theorem` | [cospanCompIso_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-app-right.md) | 260 | `result-track:db49d0e0682803ddc426b830c02ef398b6e505c01b1e2e7cdc660dd63d172bde` |
| 40 | `theorem` | [cospanCompIso_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-app-one.md) | 264 | `result-track:939fd7bb653439bb28edf94ec83a4c6b4e40ea6de6ea381cce79367907243710` |
| 41 | `theorem` | [cospanCompIso_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-hom-app-left.md) | 267 | `result-track:3eaddbdd5780756098ccddc99b403ce9b3a56a0bef8d49fbd3ac6543696608a5` |
| 42 | `theorem` | [cospanCompIso_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-hom-app-right.md) | 271 | `result-track:e2c8e590f4f4b1aebb2e111591e0c12aec58197e3585cab7507c43db4eb31c01` |
| 43 | `theorem` | [cospanCompIso_hom_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-hom-app-one.md) | 275 | `result-track:92a737b80759c51de27e9acc73c37ee390dab01c634482700f29acabf39b5994` |
| 44 | `theorem` | [cospanCompIso_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-inv-app-left.md) | 278 | `result-track:39b93fd4c32cd3d8de302227cb41d7c4fac0632a0b7b893d5ea199bb09d41554` |
| 45 | `theorem` | [cospanCompIso_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-inv-app-right.md) | 282 | `result-track:83e5ce995d868afc0823812ad3a2db12e650c0ea9f80a948872f4796599cc8ef` |
| 46 | `theorem` | [cospanCompIso_inv_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospancompiso-inv-app-one.md) | 286 | `result-track:0c6ffb5a09d89e2249bb421b63498b861879b8ae8b8f59ecccc3042da1186047` |
| 47 | `def` | [spanCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso.md) | 291 | `declaration-track:a426415d08b9553639419e1e317bc0d316df9e288d4ebdc12e0dbc62fc75e5d1` |
| 48 | `theorem` | [spanCompIso_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-app-left.md) | 301 | `result-track:5ee7aabb4734fd40ca29027cba5a1020e014c5892c1eeb13bcad58a8f39720da` |
| 49 | `theorem` | [spanCompIso_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-app-right.md) | 304 | `result-track:f255420a63de8be311d6d70feb949cfceeca84ae1a02d8a56fa5a8e9f59e55e5` |
| 50 | `theorem` | [spanCompIso_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-app-zero.md) | 307 | `result-track:9fe986919b47ba201e145f2750ec9c883cd07e0b1c69402cd50da9fab5d71445` |
| 51 | `theorem` | [spanCompIso_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-hom-app-left.md) | 310 | `result-track:0aeda16435f3f91c94b12f2b0f48d57fba8ba379862eda05c6510711a27e2a36` |
| 52 | `theorem` | [spanCompIso_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-hom-app-right.md) | 313 | `result-track:1a94be3ea418e730e6f57ee17e1acad68d9728d73a7e208f750cd25d3cfe94a9` |
| 53 | `theorem` | [spanCompIso_hom_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-hom-app-zero.md) | 316 | `result-track:bbddcb9829d471713e523156cff93e4e696c8a13eca463bce41d344ca004c529` |
| 54 | `theorem` | [spanCompIso_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-inv-app-left.md) | 319 | `result-track:15acc0cce8822605d333852d6e9d753304007e925a6ef410530486501e657e7b` |
| 55 | `theorem` | [spanCompIso_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-inv-app-right.md) | 322 | `result-track:14e708e9a168157f153892a93ae7bab62d86e47e835ad6f71d950a079578bcbb` |
| 56 | `theorem` | [spanCompIso_inv_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spancompiso-inv-app-zero.md) | 325 | `result-track:6657273da374b11480adb001efbe68a19ce8138b55a237319c082145f0476dfb` |
| 57 | `def` | [cospanExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext.md) | 338 | `declaration-track:4fb51cc04c457b4e116816dc7a282da4b40b7f55af8579be49b5fd308139ceff` |
| 58 | `theorem` | [cospanExt_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-app-left.md) | 347 | `result-track:02381a5ee73e70d95ad01e1c34f430f69cb542c109f19363b64422a0ca295c8c` |
| 59 | `theorem` | [cospanExt_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-app-right.md) | 351 | `result-track:158a9b3e5d5ef01edbe019fc1574108f5b0d57d5397dd00bc6edab3445ceb880` |
| 60 | `theorem` | [cospanExt_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-app-one.md) | 355 | `result-track:068d18d8202819558612205d66913c91c90bebb1382d574e85d396cf19f8ae19` |
| 61 | `theorem` | [cospanExt_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-hom-app-left.md) | 359 | `result-track:654234d98ab6cc500e13236ee8bcdf71222cc4e26de823479beb1472c7f3e695` |
| 62 | `theorem` | [cospanExt_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-hom-app-right.md) | 363 | `result-track:89827aca60886fc078f6f566e163f18c89ae555d74c0cf681edaba9a18bcaf2b` |
| 63 | `theorem` | [cospanExt_hom_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-hom-app-one.md) | 367 | `result-track:37a3b99fb1c71ce8e81ce63e3ede527952f0c513094d0b64ea7d055886d7b665` |
| 64 | `theorem` | [cospanExt_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-inv-app-left.md) | 371 | `result-track:8ce30da561d5dceac083117cd68fb136a09e86a1617a3035960399a1997dfa4c` |
| 65 | `theorem` | [cospanExt_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-inv-app-right.md) | 375 | `result-track:3760aea9f52b98710098780124f7bf3e2f3a9b42133a0b3e847f3ea4c65c39c9` |
| 66 | `theorem` | [cospanExt_inv_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/cospanext-inv-app-one.md) | 379 | `result-track:e7b47a693bac07cf9b6eb2798864030a6995f997476100307516bd36575acf96` |
| 67 | `def` | [spanExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext.md) | 389 | `declaration-track:fc60dcb45ae14ae5b53508acf2b4912f18f6d2aff0428febe33c9c8b78418d17` |
| 68 | `theorem` | [spanExt_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-app-left.md) | 397 | `result-track:7e35fcb4eb7c67bfa6f290c34e62ce1a4c9aa2ee2144674d046ab0d8e096f31a` |
| 69 | `theorem` | [spanExt_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-app-right.md) | 401 | `result-track:6d4aa1e8be8d5be734564ac92f6e8cc233217c82dfd99a8c1c6c37d4d20cf2ab` |
| 70 | `theorem` | [spanExt_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-app-one.md) | 405 | `result-track:95c910a2f2cc48408ae917c8c3abd37480641575ce5af387df005593f6fe5313` |
| 71 | `theorem` | [spanExt_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-hom-app-left.md) | 409 | `result-track:344c670a72316da18cc3e1697e28c719cf78719fdffcd4f358bbc9dd0795e4ea` |
| 72 | `theorem` | [spanExt_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-hom-app-right.md) | 413 | `result-track:020361372ef7e05b7f68b08500216b99519b214939b1b926245e45058dd3d47e` |
| 73 | `theorem` | [spanExt_hom_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-hom-app-zero.md) | 417 | `result-track:9d9cb0587837ca18f9ba7d9ab2db3868d79aa31608447365cf505207373ecc12` |
| 74 | `theorem` | [spanExt_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-inv-app-left.md) | 421 | `result-track:25cb1ad2e06e50e490638a254df7ef99debcd65c49216f813b80cc8041f17e1a` |
| 75 | `theorem` | [spanExt_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-inv-app-right.md) | 425 | `result-track:44a6dcdd3f552baca29d49883ddbb74055d2d3d7bed4616f3ffe9b01e71d9ffc` |
| 76 | `theorem` | [spanExt_inv_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CospanNamespaced.lean/declarations/spanext-inv-app-zero.md) | 429 | `result-track:a920c8195d70cf469a6c42cc7a2f30c92a60d3f056ad299c0ba5e6eaa1a96037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f31f0cf5a9c4816837416293d8af8b8612d7e8cab610acce97aa888b161f274 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
