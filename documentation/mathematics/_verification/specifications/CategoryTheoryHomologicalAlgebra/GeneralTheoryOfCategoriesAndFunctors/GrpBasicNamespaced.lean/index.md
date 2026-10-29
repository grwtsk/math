# Verification target: Grp Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "859be5c7cb4de14d0494ae55d34b08fc57f0d0b2",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `859be5c7cb4de14d0494ae55d34b08fc57f0d0b2`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addgrp.md) | 36 | `declaration-track:00e4debf5cff160b92a70b464011a455723d55a7b7244a448adfaf18e0e80845` |
| 2 | `structure` | [Grp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/grp.md) | 43 | `declaration-track:10d0723516f7daa13cebbeb01aded00334179b271f1d1c546daa6b4e16bd75e8` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 57 | `declaration-track:8d2a5dde346ef6e256ee324dd8b7534484aab5996131b5a130399e29ada89440` |
| 4 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/of-source-edition-2.md) | 64 | `declaration-track:ad925ca33b860815965a18d3cc25d34ae2f9c356f428dba899b80613826d8637` |
| 5 | `structure` | [AddGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addgrp-hom.md) | 70 | `declaration-track:424f084d6a2ec06883c53f81c0a6eacbe42842af07dc9b49b9a06ee548d7bd3a` |
| 6 | `structure` | [Grp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/grp-hom.md) | 77 | `declaration-track:a49784c399327095241213f951b5c434a865377aa0f5f1ba0797b17177e1fb19` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:6683b6f6c34dcfb0b93c6480d6a34aed2d35cda61ee6289d45a1fbccc341ed77` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:44ee14c315d4c05cad57c5736cb531c91b82e67f3682b0713810101c7af45889` |
| 9 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-hom-source-edition-2.md) | 99 | `declaration-track:c7d13d16aea1a3ec1ef16fc71cc1ff3629d4fcb75c0bdeac69d6cf47c4d4c8fb` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-source-edition-2.md) | 104 | `declaration-track:f3ec2de358e468c495de7936cf1ea6b5c270392bdd92b0818a1239eb61fbfbf9` |
| 11 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-simps-hom.md) | 109 | `declaration-track:76260a3882fa99fff5578cdfa6aeb966ccae1038b23e475af5a50fc7b789dbf6` |
| 12 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-id-source-edition-2.md) | 120 | `result-track:9e62675544b7f8af066152282199d167fb579ec61612b0e00d3b8d7c84228b35` |
| 13 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-comp.md) | 123 | `result-track:032c5be6e844609fccd7140d382c4c5a9b134294baf04f4735bf695ce8e16f51` |
| 14 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/comp-def-source-edition-2.md) | 126 | `result-track:f1426eaaf98cd81bf0bfcf92185b4dc582099c96a7232d78e9a83d13a53f6802` |
| 15 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/forget-map-source-edition-2.md) | 128 | `result-track:cae0b5d7f7158f36db247fc3ab86a225a8f8eed8b05dc03f434fbba34cc27846` |
| 16 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ext.md) | 131 | `result-track:5cfc9949ccb8c30561b64013b4c940e15747679440611666c3713acb41a3b41b` |
| 17 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-of-source-edition-2.md) | 136 | `result-track:d12c5a336fc2cb0e65156e8b1b90e0ffc48524a3edb43116d82ff198a0289e9e` |
| 18 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-id.md) | 140 | `result-track:bb4036b4a24a44c8d3e9716e6bb8744a4f1501e35d3141e8064e4d253f5f6ab2` |
| 19 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/id-apply.md) | 144 | `result-track:804d7b13a8f65311ed981ab081335b318896be68c4c76d5d7b2114362301f55a` |
| 20 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-comp-source-edition-2.md) | 148 | `result-track:fadabbf83ea665b77ddea34dd90724b93a4602892f0f9c1a9dd083c75f7541ec` |
| 21 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/comp-apply.md) | 153 | `result-track:37de01c96b8a628f6c2142a73e1f693ab78391c1b931282f7de7ed41607cb0cd` |
| 22 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-ext.md) | 157 | `result-track:35520ce2fe88f69234ca8360cd5289e3da3117c85ce30a84fc5b057ed6bad7e6` |
| 23 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-ofhom-source-edition-2.md) | 161 | `result-track:a58760dacce5db000dcb99ae932b6e4253d07dad425224bb5916fd79dce2c90f` |
| 24 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-hom-source-edition-2.md) | 164 | `result-track:81e84c3587d813139f7c78268fda8bb7d0867d45653e00f3f37d35a420fbab1f` |
| 25 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-id.md) | 168 | `result-track:384beabb7d1404d5c44ed3a29621acf47f9b2bc899890d1ced02ca5eb143c5df` |
| 26 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-comp-source-edition-2.md) | 171 | `result-track:bdb2de44b2730e2103273a010f0d47323e5cf3f4ef333f5e2ebf34a0f9007c46` |
| 27 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-apply-source-edition-2.md) | 177 | `result-track:a6a9f4be064e776268482c6c38c504a28747c25273a394d2b3c175ec0e9f0b4d` |
| 28 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/inv-hom-apply.md) | 182 | `result-track:b983df486bcc85f9d68593176e86c22ead1ea0b288529dbfe2088ad1c1aece9c` |
| 29 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-inv-apply.md) | 187 | `result-track:345e5069902bd0b47de2628fdfeb7710c6a143ff5bf1040c7d7a9ecc3086fe9f` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 197 | `declaration-track:57b3e57635e95d019022a42ba57ee2b5919e0100562d18211c7310261fbe4e8a` |
| 31 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hasforgettomoncat.md) | 201 | `declaration-track:7edd9897eebc05c189cf539813ed75bfc9c5fa4c7d40b1276b6a0c61fd04cffc` |
| 32 | `lemma` | [forget₂_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/forget-map-ofhom.md) | 205 | `result-track:951ab95df9c43dcd4b2192f487e52498304045ae5d6b0fe4b01dafe6d751e5f5` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 210 | `declaration-track:ecbd233a88503ee25a54949f7f74c51ccd3d794aa469b1bcddb436f64c4bab67` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 213 | `declaration-track:97cebfa8993bf85c1c7b2bdf0da09f5928185e5636d64f00ecfeeced9c74e339` |
| 35 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/one-apply-source-edition-2.md) | 217 | `result-track:f5c0d48fde89b186b326f41fb8f345f6ecbfdae6dda53214cd0489ecff7a33f7` |
| 36 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-injective.md) | 221 | `result-track:70c0fcc78eb1b1d99c21e5712130d11fc5ca09d6b3714b7569118462d6a652fe` |
| 37 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/example-source-edition-2.md) | 229 | `declaration-track:55524f111fccc3d2a7deed41bb378dfad6d6cde72f7d29750bf276873eb324cd` |
| 38 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/uliftfunctor.md) | 234 | `declaration-track:2ec4d49d2db603b82c5daca7cfdbce2697c819eb05f3cd52c37006049b46e542` |
| 39 | `structure` | [AddCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addcommgrp.md) | 244 | `declaration-track:e0ac0319dc6456237be6ffacd47617f147040598166b62b25adcda6ba523f013` |
| 40 | `structure` | [CommGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/commgrp.md) | 251 | `declaration-track:a4cf92b0de578f83e7f613abd2c6e84e163e13dfdf829f9613b8d8fd18bad634` |
| 41 | `abbrev` | [Ab](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ab.md) | 263 | `declaration-track:d5b7a5560e9e16e956b80f6214e00f381c19c76de736292b18c730a92eb47e1f` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 268 | `declaration-track:3262be0442b14d6c6fb3c104e5da2023184007865f00f4b0f227a9bd14fbfae0` |
| 43 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/of.md) | 275 | `declaration-track:37b886d0a708d12bbaa20728f8b9b7bb73078ac522e3521442144b54e4f10e5f` |
| 44 | `structure` | [AddCommGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addcommgrp-hom.md) | 281 | `declaration-track:46543e95a9c7d4638b874b82f1cc2293e7c8dcc40adc5bab5179239efbdff776` |
| 45 | `structure` | [CommGrp.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/commgrp-hom.md) | 288 | `declaration-track:52c9c3c789efa0b828c2f023f8ccc14ad09e84c387cc7cf05d0a389af73e8b56` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 298 | `declaration-track:84d0a793ec5fdaf79bda34169ae5c874c1975c327d4454b7a06448eecdc9cbf4` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 304 | `declaration-track:a8f4a17f61e11cad83d8be93b1b9bc9c302365c6223dcd2f41d53c9e9df409bc` |
| 48 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-hom.md) | 310 | `declaration-track:26c9749add2121d5511ba04bcb17b2366d480e2e08dc56f4aaefc1d06fff8ab2` |
| 49 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom.md) | 315 | `declaration-track:9cb91802f079abbc62d9e2e6484c70b74fafedb957d1082b65aa25b7940b6823` |
| 50 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-simps-hom-source-edition-2.md) | 320 | `declaration-track:e0e2577b924be2512391edf13ed8a27cdf4bc912b0011fddca66aeae291a769d` |
| 51 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-id.md) | 331 | `result-track:6b7598ea0fe587bacc56faa3720e27eb300ff1d66f466103c437959cd259a57e` |
| 52 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-comp-source-edition-2.md) | 334 | `result-track:19ed5e4be83852d4622ba0060a12c123c675317aa08da1f9ae37a4060ab2df04` |
| 53 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/comp-def.md) | 337 | `result-track:723c857378925393e596c5b69ada68da126564e983e5e9902c9e9470ee9cf0af` |
| 54 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/forget-map.md) | 340 | `result-track:2d7edf2d60f322ce16ce8030ab18093c243819152ca9464fa35bb30eb355b76d` |
| 55 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 345 | `result-track:d236e71803d020c6a12dbac05b4374275e646e41637c19bf95b88530f814cfd4` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance.md) | 349 | `declaration-track:1b1b746a0291462fd5a669caa4566897802a73d1bd43da59c6c8533c4af49d4e` |
| 57 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/coe-of.md) | 354 | `result-track:7251b21dbb65689e3a8154c499e136665a4248fb84368b6151964b74d60908ef` |
| 58 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-id-source-edition-2.md) | 358 | `result-track:f3788c371417bc16188dd8f15b26914087de4f113a381a09655deaf47cc262b9` |
| 59 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/id-apply-source-edition-2.md) | 362 | `result-track:aa0d5e25a7947bcabed195165daf8e569055e18427dcac352f076a8e83421b4e` |
| 60 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-comp.md) | 366 | `result-track:1d6c5c01316d2e8c8a1f2973bba7332c1da0b72bbb45a30420c8cea1435f5913` |
| 61 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/comp-apply-source-edition-2.md) | 371 | `result-track:453b7f4539564c362ad425e09b542be15875295b1dd83d4b4e90b528fdf68573` |
| 62 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 375 | `result-track:67ce6936635018f45ed7573e305a8cd300d6799c12dcdb14a4282fe08a086a6b` |
| 63 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-ofhom.md) | 379 | `result-track:12e3aa7e22fd9ab016669f6aee47e3aee4ab2853aee9559af32b31c70750d896` |
| 64 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-hom.md) | 383 | `result-track:22ad68ab48ae80bb0072fd8c35af54d00e3b265d8a6b9027edafda86cc64e289` |
| 65 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-id-source-edition-2.md) | 387 | `result-track:9168a2f3818b85fe837a045d701b16015a99eff43bc9dc2fada2b05ac05ceaeb` |
| 66 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-comp.md) | 390 | `result-track:ba9a3e92dab6630ae37085abfd4ac6f746aec5ef168637b3e809d7c67541a54c` |
| 67 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-apply.md) | 396 | `result-track:60e9b64bd296c7f82f4e4bdaf2ae14916aa86d1b6bbb3d2fd4618473b2c53b90` |
| 68 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/inv-hom-apply-source-edition-2.md) | 401 | `result-track:ebf5a9dc8b62b54d0e6cc260d08c324c33ed27efcbac61d4306e742082c878ff` |
| 69 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hom-inv-apply-source-edition-2.md) | 406 | `result-track:fc7c28180ed194d0ea7bc9c92f4ec215c072ff554a7b37931f6c0928dcb099e6` |
| 70 | `instance` | [hasForgetToGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hasforgettogroup.md) | 416 | `declaration-track:ce919c9a27f3f3b5a018ca722a5f9c4bc607ae3a761e0b6780d4225f3b3f7d19` |
| 71 | `lemma` | [forget₂_grp_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/forget-grp-map-ofhom.md) | 420 | `result-track:8b0433efaed2de48df7115a38cd6c39cf1e7ab6ed706c665bea29a7f303d987c` |
| 72 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 425 | `declaration-track:6550d6c123652df4155a286a32048b5114985b7087959ef99d15b2de0a71e6ed` |
| 73 | `instance` | [hasForgetToCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/hasforgettocommmoncat.md) | 428 | `declaration-track:0a11150c6ce51f5c16ee29bc0e7904de334b8831d6ab8fdc1a67c9c7e186152c` |
| 74 | `lemma` | [forget₂_commMonCat_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/forget-commmoncat-map-ofhom.md) | 432 | `result-track:81cdf1ed17728037029824cea3347050d55d0dff8f7b32d6b1706dba737e6063` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 437 | `declaration-track:75bf35c6673f9c00d42474e4e4ec892b7455a4ae419e4d5a9884c243ca29c753` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 440 | `declaration-track:4bf9709a3c6044913ee29b9f9c5146fc15342cf5f3a01a361f3a13e52dec5d68` |
| 77 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/one-apply.md) | 444 | `result-track:c3ed42bfbc3b70c3b64a4b065563c7de8e760522a5d00b84f5c2593890d86aa6` |
| 78 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ofhom-injective-source-edition-2.md) | 448 | `result-track:ee6c486a4451e5f2dfcf6f26df7c20bb4a66d254e465860f6e754b4fcacff27c` |
| 79 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/example.md) | 456 | `declaration-track:2d5835458bf20e02522a161105d9dcf82e9c4515ef8c6ee6f2e987f0a4c32ab6` |
| 80 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/uliftfunctor-source-edition-2.md) | 461 | `declaration-track:cd467a290c414553fe52cfd63a0ade092024ae2aced339b41d3ea792cf4b26be` |
| 81 | `def` | [asHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ashom.md) | 478 | `declaration-track:d13bb34afbfe5a035a440ee8676a871445d7553f23457440604d054518b4146a` |
| 82 | `theorem` | [asHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/ashom-injective.md) | 481 | `result-track:6da06d072ef11d1a2879848f4ea2cf72acb96635f6137d933a91807329877df1` |
| 83 | `theorem` | [int_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/int-hom-ext.md) | 485 | `result-track:b129c6942da2e89221b592348aa2cc222a905e7bb8cf0f7cb5ef327d6b779e3b` |
| 84 | `theorem` | [injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/injective-of-mono.md) | 491 | `result-track:be004f224c250a1c48760cd21c7be23b5b5e1d9aebc01e57df537ee7b2ea03f2` |
| 85 | `def` | [MulEquiv.toGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/mulequiv-togrpiso.md) | 501 | `declaration-track:b2ab821d81ef4fbf0b4e61a6954f049e7f99172f45aceb0d653d6b12dd2c5c3b` |
| 86 | `def` | [MulEquiv.toCommGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/mulequiv-tocommgrpiso.md) | 511 | `declaration-track:8ed2cbb649f7e3db545a5be58006df384d08b23971bbeacaad74269947667f30` |
| 87 | `def` | [groupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/groupisotomulequiv.md) | 523 | `declaration-track:5145bba338cdb9f480d43c351d91b6e74f32b53dd7c403d82da0e7d637d9cea4` |
| 88 | `def` | [commGroupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/commgroupisotomulequiv.md) | 531 | `declaration-track:664dd20fd81c359dc64eef98296f2eed7b07965023d1af1323bca6c15a7c5d70` |
| 89 | `def` | [mulEquivIsoGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/mulequivisogroupiso.md) | 542 | `declaration-track:0481d41d487c92274fc94f679957dd869455dd55bf067e6169c08495a63580a0` |
| 90 | `def` | [mulEquivIsoCommGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/mulequivisocommgroupiso.md) | 553 | `declaration-track:eaa9ca5dcd3caf11cabc18bf469beb69ddacc100af966e85d266519bed132f89` |
| 91 | `def` | [isoPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/isoperm.md) | 565 | `declaration-track:8ecfea82d63036d4d5a9a387772621de0743bc8acdbe71eef478600ddefa5208` |
| 92 | `def` | [mulEquivPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/mulequivperm.md) | 577 | `declaration-track:d9316894036b66925276c1e79e27b983e8a90a091523c82d6de4805e52383b9f` |
| 93 | `instance` | [Grp.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/grp-forget-reflects-isos.md) | 583 | `declaration-track:58ff60c61326f5d0c5f7b4b69d1f28348e8671d3034aede71d2d5398576ddcf5` |
| 94 | `instance` | [CommGrp.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/commgrp-forget-reflects-isos.md) | 590 | `declaration-track:fe99d0948da7b7e46ff1b05ee1b40a6c96e814ca975dee100c46a7c8b1fd7e76` |
| 95 | `abbrev` | [GrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/grpmax.md) | 603 | `declaration-track:e6f1b030b92492ea63dc16619b6ed0c648a3c7b12244e3cd5e4ab8a2c087742d` |
| 96 | `abbrev` | [AddGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addgrpmax.md) | 606 | `declaration-track:60e2547442254c5fa8adf1911428fcfac623a6ac99e431a34394a1e2a3fb9e33` |
| 97 | `abbrev` | [CommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/commgrpmax.md) | 611 | `declaration-track:2c51edf1f40d0fa781f577e3454d31465a50a9c2abcd917b7d9626453af9ee86` |
| 98 | `abbrev` | [AddCommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/addcommgrpmax.md) | 614 | `declaration-track:ee58348df43324148e0edc9c8d31be6094bb6eb2012f91c0bd38a916e15ff9d9` |
| 99 | `theorem` | [MonoidHom.comp_id_grp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/monoidhom-comp-id-grp.md) | 623 | `result-track:25ec053708998fe800a2cf24851cdb5d72383b0a0dd5dc87c65b9c4f40479143` |
| 100 | `theorem` | [MonoidHom.id_grp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/monoidhom-id-grp-comp.md) | 628 | `result-track:7e290759197ed3b2ad134e36a45f6745e3d6955a314cf1acb7d1c9724779ef5d` |
| 101 | `theorem` | [MonoidHom.comp_id_commGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/monoidhom-comp-id-commgrp.md) | 634 | `result-track:fe2120e9b2f0bfdbef2dc7846b8e34c85a93a1faa0f00700fcffc342492b7ce2` |
| 102 | `theorem` | [MonoidHom.id_commGrp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicNamespaced.lean/declarations/monoidhom-id-commgrp-comp.md) | 640 | `result-track:05a130541aeb5879fe40fb6ee51e81d79af3ae48e54e6ac7e9b9df628c14a930` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae6545064b6d474fc51ff4d6338a8b20448fa9a02f3e1b7777b0c75802c2d34d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
