# Verification target: Cospan

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f0894ee74ee42fce0009dcc2bb3e54b34d1b29",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant95c6f50115a1a81ecab72dec9a102355da5c31d2f7350f801ff0e568a5cb1c65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f0894ee74ee42fce0009dcc2bb3e54b34d1b29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant95c6f50115a1a81ecab72dec9a102355da5c31d2f7350f801ff0e568a5cb1c65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant95c6f50115a1a81ecab72dec9a102355da5c31d2f7350f801ff0e568a5cb1c65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalkingCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingcospan.md) | 33 | `declaration-track:6bd895f908eb11ac789322acf43802912c0006f05dfab5529701251bd10e7517` |
| 2 | `abbrev` | [WalkingCospan.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingcospan-left.md) | 38 | `declaration-track:b05732b5aa8d9b4d25745a62325488286864eb7953406dea6bb23ea67d9f9033` |
| 3 | `abbrev` | [WalkingCospan.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingcospan-right.md) | 43 | `declaration-track:b44b4cc8a4add625fa400905c165aff5590955125f956996af1b184f0a3cb68d` |
| 4 | `abbrev` | [WalkingCospan.one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingcospan-one.md) | 48 | `declaration-track:48688ad4a47b5fe693f1734ede67abca186cbe0718ce3ca960d0266222378d54` |
| 5 | `abbrev` | [WalkingSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingspan.md) | 54 | `declaration-track:fbd0dbb72c9cfc6b1844b03774787e82935060db8d9adbb1f140154194b98fb3` |
| 6 | `abbrev` | [WalkingSpan.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingspan-left.md) | 59 | `declaration-track:7cc52c81a4a5babac28dfb9d747582aa866a8d7a480cd10c11c1e0212b8483a9` |
| 7 | `abbrev` | [WalkingSpan.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingspan-right.md) | 64 | `declaration-track:cd532d3c92649a9fb7d1ab91c0995065bf89e3031f70b67273b0f3e748148309` |
| 8 | `abbrev` | [WalkingSpan.zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingspan-zero.md) | 69 | `declaration-track:d113b71b0f0bc0ca49f7bf854df85e7c7aeb8cfbecdae40bca97770c4704c2f5` |
| 9 | `abbrev` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom.md) | 75 | `declaration-track:93684a8b859bc2024e88077774a92aa15a65ba92ba07f8b3519f3c91605f6758` |
| 10 | `abbrev` | [Hom.inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-inl.md) | 80 | `declaration-track:d4d9bd818f8d33dbb27757da4278d34f3317faa1e4bf03a7754ad7a2410458bd` |
| 11 | `abbrev` | [Hom.inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-inr.md) | 85 | `declaration-track:d7f86092e78c111d71a7cc8f397c4813f48394c94be449cefd00d5de6aaa91bb` |
| 12 | `abbrev` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-id.md) | 90 | `declaration-track:1644e3c981097eccf7ca1741bc3f41e87dfb447edf6f45083b445a6367dd1573` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:9226a3d1b8a5a893bb195192e0579f114690589c5092fc45cde6351912cf2cd6` |
| 14 | `abbrev` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-source-edition-2.md) | 101 | `declaration-track:a50df16f02b56b911c3f7fd6a499965f9ba6988d6e26574b8a670aedeaa28638` |
| 15 | `abbrev` | [Hom.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-fst.md) | 106 | `declaration-track:f0de32b51cb28388719bed31ad4572f39f0117aa54fe16e1cc3ae72fe0858b3b` |
| 16 | `abbrev` | [Hom.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-snd.md) | 111 | `declaration-track:4b2a469b525a4ade9a6eab14821c1fbb6c293df852915a8761be1c52720424ce` |
| 17 | `abbrev` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/hom-id-source-edition-2.md) | 116 | `declaration-track:92bed81b5f526a9c9d0e2d27964b4a5d113f1d3b45c550e318ad3d045138d1ab` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/instance.md) | 119 | `declaration-track:77c652370434cc10b7f9836d8a7012bab17de69580ab84c74d00279b92e1d665` |
| 19 | `def` | [WalkingCospan.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingcospan-ext.md) | 131 | `declaration-track:f23bc03c34c3bb6d2951cb10ede4cdedc72e8171e5139a0f8e250d4d90c29b86` |
| 20 | `def` | [WalkingSpan.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/walkingspan-ext.md) | 149 | `declaration-track:c55b526aa9fb64ce6e4a2174fb562a8e28d8470c48085566b43d1ee7a789280a` |
| 21 | `def` | [cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan.md) | 165 | `declaration-track:cf8811584ebbb1c4b42a414418fc7dd839ab90c6301eff1850bbff0efbd66786` |
| 22 | `def` | [span](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span.md) | 170 | `declaration-track:0f72231955f057a13d21a70529f8d32590455d76696f0e31e2d1e1c2bd03bcf5` |
| 23 | `theorem` | [cospan_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-left.md) | 175 | `result-track:559edb18bb0da969645da5b75b52cac31fb4b28f7e97eeb1b57cb39690659f31` |
| 24 | `theorem` | [span_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-left.md) | 179 | `result-track:1b8ecb556a5b538d882792316bd8974282f3f894fd6db8d57e0db6b1ab170f7a` |
| 25 | `theorem` | [cospan_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-right.md) | 183 | `result-track:f16095b619c607bb62cd97ae1a9d51aeff4250308c9d22be8495355e32ead4cd` |
| 26 | `theorem` | [span_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-right.md) | 187 | `result-track:b19306a872512df0ac93a702cd6a26d599d085a8ab01eec2a8fd033a3ab1b30f` |
| 27 | `theorem` | [cospan_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-one.md) | 191 | `result-track:8a1ced4e61adc71ec75eadf192e5d2ddce5bdcef51c1afb6656df3f5d8ee5170` |
| 28 | `theorem` | [span_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-zero.md) | 195 | `result-track:dafef573656ddc5cb37b0fedbae58dcae92809e0d2eb6a7f9f087b8a93d314dc` |
| 29 | `theorem` | [cospan_map_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-map-inl.md) | 199 | `result-track:b1e80e32fc5fc22de169d9024ea90c8006a14647d8b91bd0da6689cff83780db` |
| 30 | `theorem` | [span_map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-map-fst.md) | 203 | `result-track:8308eb382d58d3c07d15169bfb8434c368d2718a6794421474a13a2ca4fa0421` |
| 31 | `theorem` | [cospan_map_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-map-inr.md) | 207 | `result-track:70843d3d8227b1f2047de913db1b0b2f74c7fdb9139404f0b8b3cb08db878dbf` |
| 32 | `theorem` | [span_map_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-map-snd.md) | 211 | `result-track:785bbb3a08e1ab2078d519255f32ec04fad2f5654a31d85937cb06ddaaf09ddc` |
| 33 | `theorem` | [cospan_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospan-map-id.md) | 214 | `result-track:1f632267cf09fd6d8790b6b8373b479e487d04279d747e880dbe451608b91a18` |
| 34 | `theorem` | [span_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/span-map-id.md) | 217 | `result-track:04ad309fea428a027c2effbbb7d35641c4aef144653daba9071299df99ecfb1f` |
| 35 | `def` | [diagramIsoCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/diagramisocospan.md) | 223 | `declaration-track:1ba2ebc82c0975f8be2d042c7825155ac9cb73b89ad6326ba0892b2f6745c20d` |
| 36 | `def` | [diagramIsoSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/diagramisospan.md) | 231 | `declaration-track:58236e03b24fa22f8a53cbc8de6c09d4461baf6ef41be3304776a3c5fb5a8f7b` |
| 37 | `def` | [cospanCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso.md) | 239 | `declaration-track:38be0d158df1c3682f39db43187deb32e09a15a35511eec399b30fcbc2100c2f` |
| 38 | `theorem` | [cospanCompIso_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-app-left.md) | 249 | `result-track:acff1ca7c532c6c00f9b7292f7127938d9cc0bc9751ea1883b2aa583a52f5d98` |
| 39 | `theorem` | [cospanCompIso_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-app-right.md) | 252 | `result-track:34c2387b1dc82936580c2be0e0efe81d8dbdc8675b12ba5acacdb09b5cf68e0c` |
| 40 | `theorem` | [cospanCompIso_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-app-one.md) | 256 | `result-track:fb774254fe1bd316750182d4f4a8250b3dc00734742a52a97ab63547c14e9ff0` |
| 41 | `theorem` | [cospanCompIso_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-hom-app-left.md) | 259 | `result-track:92fe1eed97cc7a4cd695d0ec2dfabb0ad1ef291bd14de28601d0e5f5cbb15e6a` |
| 42 | `theorem` | [cospanCompIso_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-hom-app-right.md) | 263 | `result-track:8d8c7b9a0eb35cbfc1c89d79a9d027b6b3845b5ae34650a1ed9b80763be70a00` |
| 43 | `theorem` | [cospanCompIso_hom_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-hom-app-one.md) | 267 | `result-track:56e014e6b59af7145de50440e1842ba176c8001c1cb502ad60b528bbbb8568ab` |
| 44 | `theorem` | [cospanCompIso_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-inv-app-left.md) | 270 | `result-track:207403ae9a1533e31025ef52f7402005f7b2285eb4865c661016ac002d5a42e6` |
| 45 | `theorem` | [cospanCompIso_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-inv-app-right.md) | 274 | `result-track:81b41b8084386a77afbd5277b210c4906eb75bba549f31ae791377c3e7d9ddef` |
| 46 | `theorem` | [cospanCompIso_inv_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospancompiso-inv-app-one.md) | 278 | `result-track:d70bed0006835782e62470ce32d229215b5eaa5352b94374cb1d4bb67bfaaddc` |
| 47 | `def` | [spanCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso.md) | 283 | `declaration-track:3dc7e1e21dd591a574f7774d63f12228389bfe4d84b5e9eaedd596fcec665b87` |
| 48 | `theorem` | [spanCompIso_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-app-left.md) | 293 | `result-track:508c6b6df97e7ccd0f9d1a1f8975bc060e7d025731201d71b368fc69d254691a` |
| 49 | `theorem` | [spanCompIso_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-app-right.md) | 296 | `result-track:26d50d235b180eb289d1f66ed1489dd681722f296c97a7c5c3f65075a27e7c3c` |
| 50 | `theorem` | [spanCompIso_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-app-zero.md) | 299 | `result-track:636d6867527feb72e7755f47e9d82afb97b2a358f74b18e08643d9cf86501d75` |
| 51 | `theorem` | [spanCompIso_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-hom-app-left.md) | 302 | `result-track:f3b6cdcc6b382640a0281794f797ec6e0a5e871c71319322ccf15614893206d3` |
| 52 | `theorem` | [spanCompIso_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-hom-app-right.md) | 305 | `result-track:382bc7af0eaef7a0afc6ee881842eefcdeac7bcb48f697370d560600b776df62` |
| 53 | `theorem` | [spanCompIso_hom_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-hom-app-zero.md) | 308 | `result-track:291a5cd0ca597d4b87754c9bf05d6a342ba57191bea8bb7eb511ee4f9a7186f6` |
| 54 | `theorem` | [spanCompIso_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-inv-app-left.md) | 311 | `result-track:e13d167b8911419056e267b31ec916cac15c09c6d90fc969c046486bdfecb9d4` |
| 55 | `theorem` | [spanCompIso_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-inv-app-right.md) | 314 | `result-track:b4128545e28d9de873df62c72f1001cbefbbe23b2d96ef1975ecb6688351c059` |
| 56 | `theorem` | [spanCompIso_inv_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spancompiso-inv-app-zero.md) | 317 | `result-track:485daed2d5ad9f46fbf516c8f353a01ebabec295e5f9b1012b8817a0b6eb3d4a` |
| 57 | `def` | [cospanExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext.md) | 330 | `declaration-track:eccd5bbe08d69024e76aafe2d9f6e04b1df21a1e214742ec11a4134687cbef8f` |
| 58 | `theorem` | [cospanExt_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-app-left.md) | 339 | `result-track:e1e709ff3a55f7a1ffd854fb898f7678fd68081d08e4fe321b9e4af3b477ee7a` |
| 59 | `theorem` | [cospanExt_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-app-right.md) | 343 | `result-track:08ac7fd82214acb16f7aeaef1553b4834b025200a5c6831ebd8d7df224ac2126` |
| 60 | `theorem` | [cospanExt_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-app-one.md) | 347 | `result-track:682864d6d24377434cf41593bda391a38ffb9713a618c6189f88a6b14ac16256` |
| 61 | `theorem` | [cospanExt_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-hom-app-left.md) | 351 | `result-track:9e634f12e690407b163522f5a18efcd5d1dcf61c0450af3ecdbf48d9b0069f45` |
| 62 | `theorem` | [cospanExt_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-hom-app-right.md) | 355 | `result-track:57cfd506ee397104145cb5b7099d35dfdc07a959b6996dce7ee71388fa444b68` |
| 63 | `theorem` | [cospanExt_hom_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-hom-app-one.md) | 359 | `result-track:acfe175f02c3a3aa5dc4729c66bc6dbed64626231bd561670895efd726a120cc` |
| 64 | `theorem` | [cospanExt_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-inv-app-left.md) | 363 | `result-track:908b83985352488b0eba6293c96853a81278828ec2ee6db729cdc46e98311735` |
| 65 | `theorem` | [cospanExt_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-inv-app-right.md) | 367 | `result-track:d388749c45381d9dc802d3faf661f9bdfd0651fa0517ab0ac4236947b7e4514c` |
| 66 | `theorem` | [cospanExt_inv_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/cospanext-inv-app-one.md) | 371 | `result-track:d2a5f0204283efdc11d10e36ba3c564d6213f26c3bbd6dc779cc42f23f21c214` |
| 67 | `def` | [spanExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext.md) | 381 | `declaration-track:8ef3193916a65605e84b34cd2d538a923db2e9996d3b2d2598e9c02c04b94660` |
| 68 | `theorem` | [spanExt_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-app-left.md) | 389 | `result-track:50b91657d226c6f85c7729f1b49f6fb55578a479d5e75cf4990ee974cfa2b43a` |
| 69 | `theorem` | [spanExt_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-app-right.md) | 393 | `result-track:7ef6cd79a265f9d9a7cc405c37075cbe77d4ed9a19341eb86933f384cbdcdca7` |
| 70 | `theorem` | [spanExt_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-app-one.md) | 397 | `result-track:2533d99276f02811c633fca96cc966efaf36d0ef96b14c7e92163f7d9464b7d8` |
| 71 | `theorem` | [spanExt_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-hom-app-left.md) | 401 | `result-track:fb7f3c0e6ed3b077af8b2d25524eb966ac711f7c18572574a9230b6be0e25883` |
| 72 | `theorem` | [spanExt_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-hom-app-right.md) | 405 | `result-track:d616e639cdcadcfeb07e4701c32ac181f2aaf6b3a774d0a9e9000bba489b2f99` |
| 73 | `theorem` | [spanExt_hom_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-hom-app-zero.md) | 409 | `result-track:1c9dcc894bdd35662521a2215750c041fd847a87778a080d517f61164852fe01` |
| 74 | `theorem` | [spanExt_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-inv-app-left.md) | 413 | `result-track:2b0f434988be831900f9d25a3fd4aff3953b2062809ac9d222b33c4a747ecb4a` |
| 75 | `theorem` | [spanExt_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-inv-app-right.md) | 417 | `result-track:b9e572396420f1fcfc21b9d71809c1a933aab6be2813905e427b19787ce16310` |
| 76 | `theorem` | [spanExt_inv_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cospan.lean/declarations/spanext-inv-app-zero.md) | 421 | `result-track:8a1611a66e55ca8fa31ed5d13f984a71f4c24fdca64a2207eee14be670f4a8f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c31f0672d04efa283ab4735227c1d21fd1626fb678e5035f17b1ecb053ba212b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant95c6f50115a1a81ecab72dec9a102355da5c31d2f7350f801ff0e568a5cb1c65.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant95c6f50115a1a81ecab72dec9a102355da5c31d2f7350f801ff0e568a5cb1c65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
