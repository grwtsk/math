# Verification target: Complete Boolean Algebra Of

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f30378af946c84a6bf133310b8b45bfefc9034fb",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant23bfba571d37aa860fd327f284ffbdf4679493cfe2f57c41c74a4a1fdedd7413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f30378af946c84a6bf133310b8b45bfefc9034fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant23bfba571d37aa860fd327f284ffbdf4679493cfe2f57c41c74a4a1fdedd7413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant23bfba571d37aa860fd327f284ffbdf4679493cfe2f57c41c74a4a1fdedd7413.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Order.Frame.MinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/order-frame-minimalaxioms.md) | 63 | `declaration-track:1e1fb7a261b68fd4dd46b30e07251a692dd44ca6e34159c65a03c26de4183eeb` |
| 2 | `class` | [Order.Coframe.MinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/order-coframe-minimalaxioms.md) | 71 | `declaration-track:7a16d85cc3c02e71609e32bfd385bdb5892d4f197f74841e2e980c282af4a7cc` |
| 3 | `class` | [Order.Frame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/order-frame.md) | 75 | `declaration-track:9eb4771acc3bd5e6db1f3f6ea041e80df07e0794773e4d4f34b5e70655778668` |
| 4 | `theorem` | [inf_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-ssup-eq.md) | 78 | `result-track:2d167c8ee73dd34ee5f2064665fe4d4b30030c2df074a730ee908d9f6485b241` |
| 5 | `class` | [Order.Coframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/order-coframe.md) | 84 | `declaration-track:371c5814175e93cb5954b7127fe76857c8b48508ee448802d5f2686a0726f613` |
| 6 | `theorem` | [sup_sInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-sinf-eq-source-edition-2.md) | 87 | `result-track:cbb41578e35ff2bdedfe8d472eea962b1feabc0fac67b93056d818b7bd1f2034` |
| 7 | `structure` | [CompleteDistribLattice.MinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completedistriblattice-minimalaxioms.md) | 99 | `declaration-track:47125de7f88d91e72686999b2a6b3aff15b1a9cbf61bdaee8e75fc3e28fb5ba5` |
| 8 | `class` | [CompleteDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completedistriblattice.md) | 110 | `declaration-track:7a4658544748ad59957f21bcaa84d09da85463961d5a024c4243c53ffd0799aa` |
| 9 | `structure` | [CompletelyDistribLattice.MinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completelydistriblattice-minimalaxioms.md) | 118 | `declaration-track:ff4fa50a9c5ad1e2942ffbc019b96905a4742a718ef08003944e2e39a7571154` |
| 10 | `class` | [CompletelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completelydistriblattice.md) | 124 | `declaration-track:9cc52c8bddfef0378a1e9d6ca529ef5e72b9685b5ad3f7626cd760a9e587347a` |
| 11 | `theorem` | [le_iInf_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/le-iinf-isup.md) | 128 | `result-track:5b46469ae124202c0d085a29869b1519e226e031d85f263e0632730e89064024` |
| 12 | `lemma` | [iSup_iInf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-iinf-le.md) | 132 | `result-track:fbd85f5b62948e3bfd09ba06326dc601f67fb8a4048f50c22273fbb73049f2be` |
| 13 | `lemma` | [inf_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-ssup-eq-source-edition-2.md) | 139 | `result-track:deb3c0859634182febc883e70f1af2bb5dd14b07fcf5a0850279e28050576645` |
| 14 | `lemma` | [sSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ssup-inf-eq.md) | 142 | `result-track:9d23d824d4645f586a44f63f5973c664cc387bee7184d30c70a17265f6bf46d9` |
| 15 | `lemma` | [iSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-eq.md) | 145 | `result-track:ad2059b7de92a2e20f2a2bc9ddea724722fcc7a0cc9b53d8d5e373b360042c4a` |
| 16 | `lemma` | [inf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-isup-eq-source-edition-4.md) | 148 | `result-track:a28548517e1f5f9f9942f46b705b4bb8d1c2decd50bb2f770a3c7e6586e85f42` |
| 17 | `lemma` | [inf_iSup₂_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-isup-eq-source-edition-3.md) | 151 | `result-track:9fa5bdbc099b1404b6c7380140ba1cbf69349d2818f28cc4d7f91add019f2d88` |
| 18 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/of-source-edition-3.md) | 155 | `declaration-track:aad367e250e5c8baa1ed85c1e7c9f3250c90c4c110bdf08acf8f8efa021bdf64` |
| 19 | `abbrev` | [ofMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ofminimalaxioms-source-edition-3.md) | 165 | `declaration-track:9afc02413a3b4f5186ffd8fa7f61748b4aa4c095e2c6ac5531e5908d553b983d` |
| 20 | `lemma` | [sup_sInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-sinf-eq.md) | 178 | `result-track:a76263cf963d15a1fe7912564e22772b6204732697242995e5a91c276f1d70e4` |
| 21 | `lemma` | [sInf_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sinf-sup-eq-source-edition-2.md) | 181 | `result-track:3c1530673dfc7b96b6dadbed4f24054f7dc271fd67741d76c350c5c9e2ff9432` |
| 22 | `lemma` | [iInf_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-eq.md) | 184 | `result-track:1490f6baec9b868ab1c4844bdc81824b314b23d9b2351347dc89433f18bb4a6e` |
| 23 | `lemma` | [sup_iInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-iinf-eq.md) | 187 | `result-track:1041e254ec368707be142efc7a9a36d9c9a869260e8313bf723c823ad3618626` |
| 24 | `lemma` | [sup_iInf₂_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-iinf-eq-source-edition-4.md) | 190 | `result-track:d5da763572eba2b041316c53813545fb81ae972504a28c7c4df41dd19ac586d2` |
| 25 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/of-source-edition-4.md) | 194 | `declaration-track:b2f93381413ed96b6870229ba9936aac5b4d799f93b767a967c469d33801fd03` |
| 26 | `abbrev` | [ofMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ofminimalaxioms-source-edition-4.md) | 204 | `declaration-track:b10d097a9bd36ac339e142ce1fb6c085ffb74f23e1bd11e05437aabb8e7daa8b` |
| 27 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/of.md) | 219 | `declaration-track:43a40614fcbda58b2393dfb9bca82d048bd29e796b71cb27fc562f3886ba9246` |
| 28 | `abbrev` | [toFrame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/toframe.md) | 225 | `declaration-track:b94bb7dff2e44dab0ad25daf582830ebc1164a533da89f73a64f78644fdb5de6` |
| 29 | `abbrev` | [toCoframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/tocoframe.md) | 228 | `declaration-track:0bb3f4c82f843c5521c4e5ec430f54ebaa0f80880ef3181b4f74ebb4f4c71a69` |
| 30 | `abbrev` | [ofMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ofminimalaxioms.md) | 237 | `declaration-track:17dd05e2245f158262f8cf74b8007b5d678e34d86fc004f8c535e19f2f5325cc` |
| 31 | `lemma` | [iInf_iSup_eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-isup-eq-source-edition-2.md) | 246 | `result-track:b7e66af2275a99ef9b45aaa7d3460be01ed0c85055a26997d09369c0b8b64ca6` |
| 32 | `lemma` | [iSup_iInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-iinf-eq-source-edition-2.md) | 260 | `result-track:c8d9c2b326c8d1a430cbe3436843b5189d54c2fcb4320fd0d0c75144d3137347` |
| 33 | `abbrev` | [toCompleteDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/tocompletedistriblattice.md) | 279 | `declaration-track:0ff138706e7c87c16d3d8ad907b76c5f6e4df5d30362b7377f106dbabf2dabe2` |
| 34 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/of-source-edition-2.md) | 303 | `declaration-track:a61114fbca81d6dd8f449c904af0266fcdcf60f0eedcb753f47f8ecb80bea7b8` |
| 35 | `abbrev` | [ofMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ofminimalaxioms-source-edition-2.md) | 312 | `declaration-track:5f1d31c3aa82d58dc3303ef19832a192c8a5657e1b54a206d30807189ad9f26a` |
| 36 | `theorem` | [iInf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-isup-eq.md) | 318 | `result-track:7285048de6ea60b5e11ffe6984a2ec044cb4967f42b4ca82dc03164f6feb97c3` |
| 37 | `theorem` | [iSup_iInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-iinf-eq.md) | 322 | `result-track:0a26b039ae9a6bd37259339618acb82aa7642570a9452be23f542bb3723c3b50` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-5.md) | 326 | `declaration-track:9871a9b4e3d329b6ab9ca7ea9a72bf43e00256df45037e328d936e65799614d8` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-7.md) | 331 | `declaration-track:d298e787b9caef55191629efe45fd28a1af109348bbb4afe960e91747e4e065b` |
| 40 | `instance` | [OrderDual.instCoframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instcoframe.md) | 363 | `declaration-track:60c3428ee8c4c0af36de2a11e7daf8ce9cf001b2851f0e8fa23e4ae778d91e7b` |
| 41 | `theorem` | [sSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ssup-inf-eq-source-edition-2.md) | 367 | `result-track:c471882c2e839c6079859604bfd88b01ba8354df124c7bc78fc72f482d660d14` |
| 42 | `theorem` | [iSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-eq-source-edition-3.md) | 370 | `result-track:f3218e2e260d807fb3c75908c31aed4dcbb707c658923c8c6ab5f50a7348accb` |
| 43 | `theorem` | [inf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-isup-eq-source-edition-2.md) | 373 | `result-track:4d782130ff0f5cbf67e3bbe25664c2baad498782b8e900ac74bc2c0e6ccebbd7` |
| 44 | `theorem` | [iSup₂_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-eq-source-edition-2.md) | 376 | `result-track:bb2a1ad7e37fdc308f7fb510ae3b882eb3c215faf05051afa420b1e51496e3aa` |
| 45 | `theorem` | [inf_iSup₂_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/inf-isup-eq.md) | 380 | `result-track:2bccb2029b9f68067a6eb98e5ade19c7fb03a941eb6a3830e7a931596caa5daf` |
| 46 | `theorem` | [iSup_inf_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-isup.md) | 384 | `result-track:99a36c50f5a6cf55d192d5c6e58bcec52adb974b6b80c6a1ad81250613a881e9` |
| 47 | `theorem` | [biSup_inf_biSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/bisup-inf-bisup.md) | 388 | `result-track:e0c85e9afa990e99866078b152ccd59e8922b4ca45c474faf955b4e92ef18bee` |
| 48 | `theorem` | [sSup_inf_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ssup-inf-ssup.md) | 393 | `result-track:2555306c08a0e85a47dd49aad44f5e5e14ff4a03971fd152af1cc5466093223b` |
| 49 | `theorem` | [iSup_disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-disjoint-iff-source-edition-2.md) | 396 | `result-track:c0d80e13c35b78bde90d4f15127da748811ddfd8a6644eb67c0ec8b050a150fb` |
| 50 | `theorem` | [disjoint_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/disjoint-isup-iff.md) | 399 | `result-track:0ee07ad6ddfce6b8ec4298c8aea417e6529970dc3db4d6e4f9321921e18e0a9b` |
| 51 | `theorem` | [iSup₂_disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-disjoint-iff.md) | 402 | `result-track:00b01d0a80f22e90a1fe5b74010fb5294c430fa5eee357f64de11528b7cfe3c4` |
| 52 | `theorem` | [disjoint_iSup₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/disjoint-isup-iff-source-edition-2.md) | 406 | `result-track:3488cee5f7b9151d6aefa4e430a77f353197ff8643b26b52fe753ba6e9946ea8` |
| 53 | `theorem` | [sSup_disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ssup-disjoint-iff.md) | 410 | `result-track:ba85fce613f96adf57d050a8c49342881d4fa5cdffe76961032a0a4c6291bd16` |
| 54 | `theorem` | [disjoint_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/disjoint-ssup-iff.md) | 413 | `result-track:17038ef445ff74dc48d18eb58f27848cdb29a34c6a79ad8d89907e55da4f8358` |
| 55 | `theorem` | [iSup_inf_of_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-of-monotone.md) | 416 | `result-track:5ca3f8195f80dfeec0e69578d8b46467a7f5af9635c5e3eab66627e92f336fab` |
| 56 | `theorem` | [iSup_inf_of_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-inf-of-antitone.md) | 424 | `result-track:35dc46c79ebffd56190196f6e84477ace0b68dffe773db5476d9bda1a6467ff7` |
| 57 | `theorem` | [himp_eq_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/himp-eq-ssup.md) | 428 | `result-track:80fb0510250b9291f488441be94644c0ae1353d77220665412f04d92b0bdf258` |
| 58 | `theorem` | [compl_eq_sSup_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-eq-ssup-disjoint.md) | 431 | `result-track:a0ef2773f9cea5e2f053be93183ec36045f972ed618598c32ca24147f099cc0a` |
| 59 | `lemma` | [himp_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/himp-le-iff.md) | 434 | `result-track:308f410f25cd5c1c08471455f25720e8261d78dbf8a3bf84d8e13ae6726b6070` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-6.md) | 437 | `declaration-track:b77a538728a7bc1b039e576e64ca1292850b0d068a97333fe1b237d2bb33ee2a` |
| 61 | `instance` | [Prod.instFrame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instframe.md) | 441 | `declaration-track:49ca7039505dc002f6aa14cc1af754507ec988f0ffe158800f4cb222f8fe3967` |
| 62 | `instance` | [Pi.instFrame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instframe.md) | 445 | `declaration-track:4e653e143faf36acffc8857f0a9e74d4e6536fc2678fbc5d9301d614dc5fdf3c` |
| 63 | `instance` | [OrderDual.instFrame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instframe.md) | 455 | `declaration-track:0683c9d1fa3fe7d8c748e6620baf12bc8305f05136ad302d8738f385da717443` |
| 64 | `theorem` | [sInf_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sinf-sup-eq.md) | 459 | `result-track:3a962ff744e625b3f80a8759cd9582569904e87a6e4149694a9507dfd766f5eb` |
| 65 | `theorem` | [iInf_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-eq-source-edition-3.md) | 462 | `result-track:ebc3d7f2f4b473aacf541f43ab50d78df4f91045e3ec78148f8cf76ed1f49279` |
| 66 | `theorem` | [sup_iInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-iinf-eq-source-edition-3.md) | 465 | `result-track:4110b017c3bd8e217171763159786a7e3993f5f2991dedc5a5459a1488f298c8` |
| 67 | `theorem` | [iInf₂_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-eq-source-edition-2.md) | 468 | `result-track:550c2e5c86552c38ebf14a55bc1ae3c4701bb11d7ae4379c810b29d208c42d1a` |
| 68 | `theorem` | [sup_iInf₂_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sup-iinf-eq-source-edition-2.md) | 471 | `result-track:1405316f2195b152568ef37e2233a5d4c8b56c2d7b09b46658bd2e8e814816b5` |
| 69 | `theorem` | [iInf_sup_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-iinf.md) | 474 | `result-track:32d9c05a8a3120c65576acf123f8ecf74c400f78e4b9be0a6e786301a3eaf617` |
| 70 | `theorem` | [biInf_sup_biInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/biinf-sup-biinf.md) | 478 | `result-track:d9d38b239d13e2f1f0401e6d55b09e08a4a70f12b020d40010b1b56947fbbd23` |
| 71 | `theorem` | [sInf_sup_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sinf-sup-sinf.md) | 482 | `result-track:88a5724e33446c46805c2e84a1b81a593107f3f619188e21cd6ea7b16dc079a4` |
| 72 | `theorem` | [iInf_sup_of_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-of-monotone.md) | 485 | `result-track:69fd71f129b4f94f1e5753827708f8a224da505275c27321f39e8cd97dc1d47b` |
| 73 | `theorem` | [iInf_sup_of_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/iinf-sup-of-antitone.md) | 489 | `result-track:9cbf1a5e9107ad1dd342fca05305007dd64400213dc4f02d4dae11904dd7e8bc` |
| 74 | `theorem` | [sdiff_eq_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sdiff-eq-sinf.md) | 493 | `result-track:781d82211acb5674866e9ffaecc041397225d6579289b2a9f162cc5028d19c1f` |
| 75 | `theorem` | [hnot_eq_sInf_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/hnot-eq-sinf-codisjoint.md) | 496 | `result-track:c74eaf37f00b1f24405801bff93d9edc415acd74250a7eef91484b91928ba141` |
| 76 | `lemma` | [le_sdiff_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/le-sdiff-iff.md) | 499 | `result-track:e452458fd9100573f6b49a01ea552b580310b55f80cb8dca7e5d494d6c3289b7` |
| 77 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance.md) | 502 | `declaration-track:1dd90816fa6a4efac5fad4d51f86bdc50843e644ced06e70c2c759f22e9eabf0` |
| 78 | `instance` | [Prod.instCoframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instcoframe.md) | 507 | `declaration-track:8b6e6b9dca900291c235a8df7dbfcde452564e0e4089eaed074944ea9a040ebe` |
| 79 | `instance` | [Pi.instCoframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instcoframe.md) | 511 | `declaration-track:be310bbdd7b987f2d69b64e62a9e15688f6c415e4f3707d63fc149b8c874f2d3` |
| 80 | `instance` | [OrderDual.instCompleteDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instcompletedistriblattice.md) | 521 | `declaration-track:dbcc0a7e7454e271cd2da16baf5b1886313e87389d2279a4e480c39dd173f652` |
| 81 | `instance` | [Prod.instCompleteDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instcompletedistriblattice.md) | 526 | `declaration-track:90cc868768bcc974e0ec6ad8694c68eba0abdbc02b73a389a19ae1b090a5faa9` |
| 82 | `instance` | [Pi.instCompleteDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instcompletedistriblattice.md) | 531 | `declaration-track:9593071ba5afcb80e4d066400bc53bba83c12366d8b1f41bdb183e48a5176fe0` |
| 83 | `instance` | [OrderDual.instCompletelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instcompletelydistriblattice.md) | 540 | `declaration-track:1c70de2eb4eb65d55e75253eb3b484cb8a546568f4f99b5c9ec04fb730099cda` |
| 84 | `instance` | [Prod.instCompletelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instcompletelydistriblattice.md) | 546 | `declaration-track:d495ff54907d2985862264fc6f802dbc7f356498255c45bd580dd31d068d0174` |
| 85 | `instance` | [Pi.instCompletelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instcompletelydistriblattice.md) | 552 | `declaration-track:8f4efbf608a824cd3c61728092f7b3c8f421689152d51a910bf054a5c0228954` |
| 86 | `class` | [CompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completebooleanalgebra.md) | 566 | `declaration-track:ff6102a54847f141e049a8fa5279cffeb3c75dde8ef93b3c2dc2d006ff98adb6` |
| 87 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-2.md) | 573 | `declaration-track:3bfb5e9e695426e8170e7c360ebe2f75294d0cb0530b245649a5ffcba16349ba` |
| 88 | `instance` | [Prod.instCompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instcompletebooleanalgebra.md) | 578 | `declaration-track:8881f471c7cde1bebfc18a4c4e6e2d88700e1e52984bdc153d981e191d8b1634` |
| 89 | `instance` | [Pi.instCompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instcompletebooleanalgebra.md) | 585 | `declaration-track:46790e57cbf60db786db50acc1de58c72386c27cdd6a452e9c3f437fedc81ed9` |
| 90 | `instance` | [OrderDual.instCompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instcompletebooleanalgebra.md) | 592 | `declaration-track:66c0f07d72b7168abe03b9fe211ac0c563775f99595584e4273288bdf22ae63b` |
| 91 | `theorem` | [compl_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-iinf.md) | 603 | `result-track:2f0fa359fe4ee9daf9ba0494f0b69ca12fc178ab6aa2d7d1dbeab237853fc406` |
| 92 | `theorem` | [compl_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-isup.md) | 609 | `result-track:80287a53500aee53c8730759387096ea829f00ae07c488a3b3b45423ed53dcfe` |
| 93 | `theorem` | [compl_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-sinf-source-edition-2.md) | 612 | `result-track:9390ae3743a4361b9db32b6e36ce9e6b00c940c7cd2f236cc431dbe72d7f6ba3` |
| 94 | `theorem` | [compl_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-ssup.md) | 614 | `result-track:e5a2bbb85b4e5d2674956ea859e2f14d7526ba8a822a5231274f0e3a570bd4f0` |
| 95 | `theorem` | [compl_sInf'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-sinf.md) | 616 | `result-track:2e460aa5ccc688b6a708aac3e9bcc1629e736e913d6431455b37c1f7da31b8d2` |
| 96 | `theorem` | [compl_sSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/compl-ssup-source-edition-2.md) | 619 | `result-track:f2a074f29129f9b980526e28b757907d50d77c9884dabd627f41452543751aaf` |
| 97 | `theorem` | [iSup_symmDiff_iSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/isup-symmdiff-isup-le.md) | 624 | `result-track:e60ece0ab7b832f6f085c6c7e44cce9de7b397ed68a868c3f96f66578d0a6d53` |
| 98 | `theorem` | [biSup_symmDiff_biSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/bisup-symmdiff-bisup-le.md) | 631 | `result-track:d16b625613b39fadb38f9d1001390be091cdd2d4e0b545eae15aa422d42040fb` |
| 99 | `class` | [CompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/completeatomicbooleanalgebra.md) | 648 | `declaration-track:c2b2a674da374bec2bbfd38c84fdfe6e85d702009d08af65a11f229e9b4aff77` |
| 100 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-4.md) | 653 | `declaration-track:610239dadf6622af9072290b1d99f5271fd902fe443bcec1f66d0564e8419c92` |
| 101 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instance-source-edition-3.md) | 659 | `declaration-track:4c5484df6c9c8b6dad72b57310a569626796a27d6b2e3f3f9f51b47322b28c3e` |
| 102 | `instance` | [Prod.instCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prod-instcompleteatomicbooleanalgebra.md) | 666 | `declaration-track:465abc30671360b6460d4faaf27f582deaa62d084abadf8455a40ef870e2b48c` |
| 103 | `instance` | [Pi.instCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/pi-instcompleteatomicbooleanalgebra.md) | 671 | `declaration-track:2656eb8f92936d2b5c404c8ba988d6831acd44ae7f911fcb86be516e25e97d05` |
| 104 | `instance` | [OrderDual.instCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/orderdual-instcompleteatomicbooleanalgebra.md) | 676 | `declaration-track:1fc4b5df8a55a959bca1f9a55710afb14e5d424c5cb9db97c93d237c60a06d05` |
| 105 | `instance` | [Prop.instCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prop-instcompleteatomicbooleanalgebra.md) | 681 | `declaration-track:9e14711adaec472565a948e15f5d5d0f9c7a4f1f82dc604327f46e3780c084bc` |
| 106 | `instance` | [Prop.instCompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/prop-instcompletebooleanalgebra.md) | 686 | `declaration-track:6febb2956dd3a01c6c94104b456004723631fb3ecbcaa1bc2691478921f85bf7` |
| 107 | `abbrev` | [Function.Injective.frameMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-frameminimalaxioms.md) | 692 | `declaration-track:859b907e20a6b4cb3f30738c22f50f41a32e0ebf5fdbe22e8521043ba123b100` |
| 108 | `abbrev` | [Function.Injective.coframeMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-coframeminimalaxioms.md) | 706 | `declaration-track:846c5d494f9049089eed07ce5ec817fec92cacbb96c7bce8a0c25748f4a620ee` |
| 109 | `abbrev` | [Function.Injective.frame](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-frame.md) | 720 | `declaration-track:24410e003941484a65c321d1791c954694a5e1b19c541b013c6d91474c190501` |
| 110 | `abbrev` | [Function.Injective.coframe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-coframe.md) | 731 | `declaration-track:d562e7bdfdcebd803da7989411b43a29d4c70c6cee65f57369c10c5391809b8b` |
| 111 | `abbrev` | [Function.Injective.completeDistribLatticeMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completedistriblatticeminimalaxioms.md) | 742 | `declaration-track:4ea0dd29d8ae51dccbf3d2f849cb735434e9618f01d041f919a57d9f622d6493` |
| 112 | `abbrev` | [Function.Injective.completeDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completedistriblattice.md) | 757 | `declaration-track:724dba5f80ca555db00cbd95528ec510bd4f8450f3de4531c632478238873926` |
| 113 | `abbrev` | [Function.Injective.completelyDistribLatticeMinimalAxioms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completelydistriblatticeminimalaxioms.md) | 771 | `declaration-track:0a87de4dcd4ab7aeb95e743128ff1741433aefff6aa155025d87d93fddd4ee66` |
| 114 | `abbrev` | [Function.Injective.completelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completelydistriblattice.md) | 789 | `declaration-track:0b73e1f154e5b97b7021d453d4ddab250c7325c7c477b2ba428414c63f35c1a5` |
| 115 | `abbrev` | [Function.Injective.completeBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completebooleanalgebra.md) | 806 | `declaration-track:015d44de22a24ff37ce3a1f0d4fc03625c9c392d79a8969c918a2f1c433fbbc3` |
| 116 | `abbrev` | [Function.Injective.completeAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/function-injective-completeatomicbooleanalgebra.md) | 829 | `declaration-track:e74abb4d3fce1234a26ee028062ae358121985d3702137a8ac2d1639ea960ccf` |
| 117 | `instance` | [instCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instcompleteatomicbooleanalgebra.md) | 848 | `declaration-track:6eadb7d609ff8008ead22e1f0b47ea39b3e856abedbca0ceb725737afb63ccc4` |
| 118 | `instance` | [instCompleteBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/instcompletebooleanalgebra.md) | 858 | `declaration-track:c85cdc8b8699859afd03fc38fa69b1a83058b87c39c6589f4d03246932d0f369` |
| 119 | `theorem` | [sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/ssup-eq.md) | 861 | `result-track:970f6847ac6161706796bcd75e159d1b237cfbb605d6aeeb112bf95bf797ce8f` |
| 120 | `theorem` | [sInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteBooleanAlgebraOf.lean/declarations/sinf-eq.md) | 865 | `result-track:51f6540c8303a1ac530069f12bd3929b7587b6475891ddd1ecf82a142aa3d323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb5b9242796cadbd16e37ff2406d02a1dc744a55cd1bb0d552e26a48bbd3afeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant23bfba571d37aa860fd327f284ffbdf4679493cfe2f57c41c74a4a1fdedd7413.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant23bfba571d37aa860fd327f284ffbdf4679493cfe2f57c41c74a4a1fdedd7413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
