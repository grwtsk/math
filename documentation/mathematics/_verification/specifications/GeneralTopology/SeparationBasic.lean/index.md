# Verification target: Separation Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
  "lexical_observation_count": 176,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationBasic.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7869c22b117f30312b28f43d05e17de874c5006`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.SeparatedNhds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.LocallyCompact` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [T0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space.md) | 73 | `declaration-track:3137570e3aac18ade213b8d8000512b1a7f2db1d68a7e1a50892a6673f601a00` |
| 2 | `theorem` | [t0Space_iff_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-iff-inseparable.md) | 77 | `result-track:99603295585df6e31778c1ce1dcce2930c83804a8f4d84c12eb28d6eed993ae8` |
| 3 | `theorem` | [t0Space_iff_not_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-iff-not-inseparable.md) | 81 | `result-track:1ccb373aeff1ed99f1146b9327bae592eb5ff31bd6652af296ad92a32ef7f6f6` |
| 4 | `theorem` | [Inseparable.eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/inseparable-eq.md) | 85 | `result-track:c177417d9bc101b992f6beedd43de632427ed4595358a8c1b48fd614f23b526f` |
| 5 | `theorem` | [Topology.IsInducing.injective](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isinducing-injective.md) | 89 | `result-track:2daead60f7fe9f27b2d19a3667db6221bab1726ae8ce12da6508a1b5077c263b` |
| 6 | `theorem` | [Topology.IsInducing.isEmbedding](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isinducing-isembedding.md) | 96 | `result-track:84abb536863548b82c11824b8d641afe7e8b465b8213a27fdac6c3022fb5f346` |
| 7 | `lemma` | [isEmbedding_iff_isInducing](../../../../GeneralTopology/SeparationBasic.lean/declarations/isembedding-iff-isinducing.md) | 105 | `result-track:a62f57b92b24a06c1826f293faec8ee54a0b05aa7aff186e56b3a02409d6c68a` |
| 8 | `theorem` | [t0Space_iff_nhds_injective](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-iff-nhds-injective.md) | 114 | `result-track:7e429c61c7816611fe3a41050df5d35fe045368336d619eb92e6d22d23a81763` |
| 9 | `theorem` | [nhds_injective](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhds-injective.md) | 118 | `result-track:3fa81848a60c21e7dcb6908a2e089ef110d4be81878eb9ad0c49a8f7d5a62848` |
| 10 | `theorem` | [inseparable_iff_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/inseparable-iff-eq.md) | 121 | `result-track:ccf68c14d7e3f2e241f3435d7b885161a02acce91879a5dc32245719a9dcdb94` |
| 11 | `theorem` | [nhds_eq_nhds_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhds-eq-nhds-iff.md) | 125 | `result-track:2f31577fc869c23b2083a9084ea122dd86f35f48dd82df331783c0049f365a5a` |
| 12 | `theorem` | [inseparable_eq_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/inseparable-eq-eq.md) | 129 | `result-track:38faae581e3b6b3fabd6bfc2b8db370b4a13ef6b9199e21ab514a18e6571b51a` |
| 13 | `theorem` | [TopologicalSpace.IsTopologicalBasis.inseparable_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/topologicalspace-istopologicalbasis-inseparable-iff.md) | 132 | `result-track:29f3e83db1ab03eeded4d6863a394674cf66d42cef8dad3dc2c768c5ed8bf092` |
| 14 | `theorem` | [TopologicalSpace.IsTopologicalBasis.eq_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/topologicalspace-istopologicalbasis-eq-iff.md) | 139 | `result-track:671a9cbb7d990979aee34347a059846c1efd875a2306528a552f8d7646b0a2a9` |
| 15 | `theorem` | [t0Space_iff_exists_isOpen_xor'_mem](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-iff-exists-isopen-xor-mem.md) | 143 | `result-track:2331cf4c4988ed95898af55d7d1ab7946cb643cb7dd3446d1e5fd05a8e2b71f5` |
| 16 | `theorem` | [exists_isOpen_xor'_mem](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-isopen-xor-mem.md) | 148 | `result-track:86d787100bada5d87eb7a418b46d1057b75355b4e2c0a7c50b5d4e0030a6dc67` |
| 17 | `def` | [specializationOrder](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializationorder.md) | 153 | `declaration-track:d9a101987f2b29336df9adbd7650e1d30ba62d63cf730563a3bf42160754bbd5` |
| 18 | `instance` | [SeparationQuotient.instT0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/separationquotient-instt0space.md) | 156 | `declaration-track:aeafbc981c5ab8bf7858e6954285e1268402640c696c037196558fa49dc6592f` |
| 19 | `theorem` | [minimal_nonempty_closed_subsingleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/minimal-nonempty-closed-subsingleton.md) | 160 | `result-track:2c21fc16d3092ede8a9c5054dd9c213126739da7b640b99280a5eee0d69fa4da` |
| 20 | `theorem` | [minimal_nonempty_closed_eq_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/minimal-nonempty-closed-eq-singleton.md) | 170 | `result-track:907820c5d71a9e95bf47d4f68f393ba70e6da4756f30522e50656f120c300326` |
| 21 | `theorem` | [IsClosed.exists_closed_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-exists-closed-singleton.md) | 177 | `result-track:69d7808f03028dc8d62a2cc411a88b4826a2f769d1166a54a4f606e35fbd320e` |
| 22 | `theorem` | [minimal_nonempty_open_subsingleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/minimal-nonempty-open-subsingleton.md) | 183 | `result-track:5f977533738471a542be66f24a8b752a8b9e867b6e1cb8a278505307d897d200` |
| 23 | `theorem` | [minimal_nonempty_open_eq_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/minimal-nonempty-open-eq-singleton.md) | 193 | `result-track:92defd96b824cf94eecca763a0a91b31424523fb4aeec7b05812802fe90813c0` |
| 24 | `theorem` | [exists_isOpen_singleton_of_isOpen_finite](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-isopen-singleton-of-isopen-finite.md) | 198 | `result-track:05fe21c41edd9a932f21fb9b14b55ffebf4f51f68b7b2eeb4b26c0a56290878e` |
| 25 | `theorem` | [exists_open_singleton_of_finite](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-open-singleton-of-finite.md) | 215 | `result-track:57f1686352425e5cb44b25581523ea7e13649af49c3370de90dd8062490d3d47` |
| 26 | `theorem` | [t0Space_of_injective_of_continuous](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-of-injective-of-continuous.md) | 221 | `result-track:de21f40610c1fe3a73993d3e9cb6a3a12f3edc707b8813df53ffc39fc1b4b630` |
| 27 | `theorem` | [Topology.IsEmbedding.t0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isembedding-t0space.md) | 225 | `result-track:05831abf696748d5bdd2846a688503729383e3c5b52acf94aca2d9dc2ea1dff9` |
| 28 | `theorem` | [Homeomorph.t0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/homeomorph-t0space.md) | 232 | `result-track:7c0e5852a31720f131aabd6c2562bc08a7f52148997c094cf2525826a9905e61` |
| 29 | `instance` | [Subtype.t0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/subtype-t0space.md) | 236 | `declaration-track:d75bd97869f9dab25a905c24145b16dd24e93ea910111a0d9646d4ba01b828ff` |
| 30 | `theorem` | [t0Space_iff_or_notMem_closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-iff-or-notmem-closure.md) | 239 | `result-track:c2cb1ccd251a27eb9936383bfcf23a091426da2c725980e5989e132892a1ab4d` |
| 31 | `instance` | [Prod.instT0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/prod-instt0space.md) | 246 | `declaration-track:bcc5b81f8cc0211d95461d8470499836dc1fbc8cb04ad6fc11dd0bcb8661b668` |
| 32 | `instance` | [Pi.instT0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/pi-instt0space.md) | 249 | `declaration-track:07ce2ba0e7ec1cb4b393ede87732d6b70bbf1226a803692c0be2c06abfd8548e` |
| 33 | `instance` | [ULift.instT0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/ulift-instt0space.md) | 254 | `declaration-track:d11a479cd033584f9af034557157109ef600b30226e518d6fa6447a17bbfc342` |
| 34 | `theorem` | [T0Space.of_cover](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-of-cover.md) | 256 | `result-track:7b6660bb7649c526ce7c3dc30de03b36775b6fc5fecedf83020dc008eb658f96` |
| 35 | `theorem` | [T0Space.of_open_cover](../../../../GeneralTopology/SeparationBasic.lean/declarations/t0space-of-open-cover.md) | 264 | `result-track:2b9ddc064d53d78ad3e71ca0be2f5fb5f8f0c9d08a329e6cac56466c9a72534b` |
| 36 | `class` | [R0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/r0space.md) | 274 | `declaration-track:3f8a710de9b63926db65df9eb9ed6c509d231cfd99e8e1abfb34032b54d492a2` |
| 37 | `theorem` | [Specializes.symm](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-symm.md) | 285 | `result-track:50e2922bab07f025810e0f897f206a1dacd547e78a7720f72936a09c34832d2b` |
| 38 | `theorem` | [specializes_comm](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-comm.md) | 288 | `result-track:606f785d70a2d1e330bb5cb48220606d482d126b0e277b6b8282e5b76664f2e8` |
| 39 | `theorem` | [specializes_iff_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-iff-inseparable.md) | 291 | `result-track:31dd5adb6ae41d25dd5498efbdda34139f5e37ad44ec1e50245e636f0d1d6252` |
| 40 | `theorem` | [Topology.IsInducing.r0Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isinducing-r0space.md) | 297 | `result-track:df9e71ef852a8f5011c6ebb30cd86efbdef13fe1e58f44a7482b2b914f44bf05` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-7.md) | 304 | `declaration-track:7c1ec4aeb335b17a99bb76227109b63352a2a5f2a2ba61e33646f3490f3e57f7` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-13.md) | 306 | `declaration-track:e2a787a0e963ecf5cf4e6610119086954ee632436c84b51552b56a8cc9f95e9f` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-3.md) | 309 | `declaration-track:23a739abc44788f4ce44d2dc442a6438fef97941442b72585fbd2ad6c86c86a4` |
| 44 | `theorem` | [isCompact_closure_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure-singleton.md) | 314 | `result-track:1d01aace0f7a74a275739bfbf58cba2992920915fe75cd5782d106fed36d9250` |
| 45 | `theorem` | [Filter.coclosedCompact_le_cofinite](../../../../GeneralTopology/SeparationBasic.lean/declarations/filter-coclosedcompact-le-cofinite.md) | 321 | `result-track:c691772c9a1c39734b7ca0942bb833a6ce36f557bf640ee482bb8dca7c91ce9b` |
| 46 | `def` | [Bornology.relativelyCompact](../../../../GeneralTopology/SeparationBasic.lean/declarations/bornology-relativelycompact.md) | 329 | `declaration-track:3462f40b8e662759605682450613848fb405ab4105a03d2e62d5dced1386a5d2` |
| 47 | `theorem` | [Bornology.relativelyCompact.isBounded_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/bornology-relativelycompact-isbounded-iff.md) | 333 | `result-track:5f81eeef594c2107446f5bab511fd473b2860e3e0f7c80f35dc0a047d1310119` |
| 48 | `theorem` | [Set.Finite.isCompact_closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-finite-iscompact-closure.md) | 338 | `result-track:c468f379abc7a7401f582e7aec1f25e9226357b3b623a3f142a6ff6ec728f3df` |
| 49 | `class` | [T1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space.md) | 347 | `declaration-track:fd34b7bc4450e958c7ebbb64c75af9725dfbf0560ac27a8df3cbc4b49da2924e` |
| 50 | `theorem` | [isClosed_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-singleton.md) | 351 | `result-track:08fa0712fd679123f6887d6814e14de8294eecdc6ff6e53b69540b76120baf75` |
| 51 | `theorem` | [isOpen_compl_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/isopen-compl-singleton.md) | 354 | `result-track:5594d9dc2d77db396b66c80b90f33713e4cc7d3cc94fc8dd686164693c9d2738` |
| 52 | `theorem` | [isOpen_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/isopen-ne.md) | 357 | `result-track:d3689b09db529982d952532addcece268574a940c936afd63037500cf53004b0` |
| 53 | `theorem` | [Continuous.isOpen_mulSupport](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuous-isopen-mulsupport.md) | 361 | `result-track:7c1ec8e0f8876d4542e1f1c5009e8210221bd72016d5b702d3ee3bb6d5e960f7` |
| 54 | `theorem` | [Ne.nhdsWithin_compl_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/ne-nhdswithin-compl-singleton.md) | 365 | `result-track:e9237559925c5b1a3acf2fbe297963522a2d120a237db9b4a0392b4728e4e8e2` |
| 55 | `theorem` | [Ne.nhdsWithin_diff_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/ne-nhdswithin-diff-singleton.md) | 368 | `result-track:c624c18f3ebd60d13101333d91b08ec65162d35e68d15e90d91ade93d8174989` |
| 56 | `lemma` | [nhdsWithin_compl_singleton_le](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhdswithin-compl-singleton-le.md) | 373 | `result-track:c06b68ff093586adc34cd9233703ea0e91ae09e8408d49eb52aa706f7693a4aa` |
| 57 | `theorem` | [isOpen_setOf_eventually_nhdsWithin](../../../../GeneralTopology/SeparationBasic.lean/declarations/isopen-setof-eventually-nhdswithin.md) | 379 | `result-track:da62c1ab1f54357478df1d81b1f9d449e27320ebd62ad89e1644d9fd6da01675` |
| 58 | `lemma` | [Set.Finite.isClosed](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-finite-isclosed.md) | 388 | `result-track:4efdb7f1b99db3552369b1ac6ae42fd5c8c7273b28defada4a4f4485055b1d6d` |
| 59 | `theorem` | [TopologicalSpace.IsTopologicalBasis.exists_mem_of_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/topologicalspace-istopologicalbasis-exists-mem-of-ne.md) | 393 | `result-track:12678d073d688df5dc57f015c30dd960125716c5a7c51e19eaf94da907b4c491` |
| 60 | `theorem` | [Finset.isClosed](../../../../GeneralTopology/SeparationBasic.lean/declarations/finset-isclosed.md) | 398 | `result-track:bb24549abc194087e139e1c465fa9074b7c2e4ff5914bcec413345c56f1ea799` |
| 61 | `theorem` | [t1Space_TFAE](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-tfae.md) | 401 | `result-track:f723d1a157bba0ee26c3429602307ebba7d5b45a33b791de88cc13456b13f26d` |
| 62 | `theorem` | [t1Space_iff_continuous_cofinite_of](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-iff-continuous-cofinite-of.md) | 437 | `result-track:177c2995bb232cbba3a80880083ade8b69fd35ec52cc38108fb6743cbeae2ea9` |
| 63 | `theorem` | [CofiniteTopology.continuous_of](../../../../GeneralTopology/SeparationBasic.lean/declarations/cofinitetopology-continuous-of.md) | 440 | `result-track:d2bbab1c6d973264b223ba134e492c5de84a9272615c01b466597a0712d5907b` |
| 64 | `theorem` | [t1Space_iff_exists_open](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-iff-exists-open.md) | 443 | `result-track:dfb236d633d3ec233934f68e8022cb48a55c1b633dbba8a96a3ad828876f3fad` |
| 65 | `theorem` | [t1Space_iff_disjoint_pure_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-iff-disjoint-pure-nhds.md) | 447 | `result-track:2156326855a815aee0bf93212480458c68c6b1c161682fe08e72809051eab9c6` |
| 66 | `theorem` | [t1Space_iff_disjoint_nhds_pure](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-iff-disjoint-nhds-pure.md) | 450 | `result-track:e9cd90da3274cf31e77fca97d3de8c81dc052f76bf407849896cf5208dcfae56` |
| 67 | `theorem` | [t1Space_iff_specializes_imp_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-iff-specializes-imp-eq.md) | 453 | `result-track:cebf04016ed9597d75d040b8beed82f59df2c0ffe6123886ef4d1e035c437d69` |
| 68 | `theorem` | [disjoint_pure_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/disjoint-pure-nhds.md) | 456 | `result-track:909f7c27f98a4f5e2bde15808414fedb1073506b926e91a75548a34a6ee67158` |
| 69 | `theorem` | [disjoint_nhds_pure](../../../../GeneralTopology/SeparationBasic.lean/declarations/disjoint-nhds-pure.md) | 459 | `result-track:5a32f35a7f552b53b3c539c8bb34dda6c3197279ee78eba973f054b2213c3602` |
| 70 | `theorem` | [Specializes.eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-eq.md) | 462 | `result-track:b063a48a82cb5643ee2485e8e8fdda793d0f5333df599d3bfe89239d905a0a38` |
| 71 | `theorem` | [specializes_iff_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-iff-eq.md) | 465 | `result-track:01b9e32044849d885af5f866226bea9ebc932c8eff6d1670aa4c93061861dd05` |
| 72 | `theorem` | [specializes_eq_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-eq-eq.md) | 468 | `result-track:3d2e17a139eaaff9c24e2b46d77f759bf1ee479d0f48532e98672557e0ef149d` |
| 73 | `theorem` | [pure_le_nhds_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/pure-le-nhds-iff.md) | 472 | `result-track:95c6a6d0823284912751915695b4924017cb5f677c218a5da68bdc8c341e5612` |
| 74 | `theorem` | [nhds_le_nhds_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhds-le-nhds-iff.md) | 476 | `result-track:4ee04262f5377e9d2393923844dc134589ee648ad928af5c1fc7ec9ff57e5eff` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-12.md) | 479 | `declaration-track:bcd4f2bdd40181295f6f24df1df17b7b232b9a8ebdb7974bacea5581f22ab34f` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-8.md) | 482 | `declaration-track:7c818496e839755d1b425b1f9ea3e2566371910a5a1ecd77d28a2af39b17b07f` |
| 77 | `theorem` | [t1Space_antitone](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-antitone.md) | 485 | `result-track:17bfc45e55850a889f775e7023b674a92773d318936cf160e28489419abe1cc9` |
| 78 | `theorem` | [continuousWithinAt_update_of_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuouswithinat-update-of-ne.md) | 488 | `result-track:b7294d2662c1ad8169ffac9ff5ff29705aeb9d6d3574b9fc6fdd0b5a58204374` |
| 79 | `theorem` | [continuousAt_update_of_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuousat-update-of-ne.md) | 496 | `result-track:7a64f0d52723ebee76511b363f5844e1b105abf121ad0ea68987c26c43b06e28` |
| 80 | `theorem` | [continuousOn_update_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuouson-update-iff.md) | 501 | `result-track:35546fde98046b3790a34b8652e7b4c1eadc8a615a3f6b127e4ad0dd92f1b733` |
| 81 | `theorem` | [t1Space_of_injective_of_continuous](../../../../GeneralTopology/SeparationBasic.lean/declarations/t1space-of-injective-of-continuous.md) | 515 | `result-track:15485a508016a2b1e7eb3c8c768e74f3306886d88eb6b68bd0646c0dd244203f` |
| 82 | `theorem` | [Topology.IsEmbedding.t1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isembedding-t1space.md) | 519 | `result-track:79a2ee7e99f50dae503d30dfa73fccfa12a9b7348db3b384a3464265d77d10c8` |
| 83 | `theorem` | [Homeomorph.t1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/homeomorph-t1space.md) | 526 | `result-track:149caff4048073975a35ed6d66e75891e0a40fe2d44e0a9b2e9c9eaa7a276363` |
| 84 | `instance` | [Subtype.t1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/subtype-t1space.md) | 529 | `declaration-track:1043b1231bb5bd375d05871ab4a5560cb981f2edc8172b380d57f8d785070efc` |
| 85 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-6.md) | 533 | `declaration-track:612050b1db73bccc252c81813be1c28d0d6a1305abedd7bd05631d40fd04ef44` |
| 86 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-9.md) | 536 | `declaration-track:86bd06db3993494e7ae63a8c619933ce9ea760e4d6de754d7b411fde311782d1` |
| 87 | `instance` | [ULift.instT1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/ulift-instt1space.md) | 540 | `declaration-track:d254601a3060f3e0fdf233d89499c2d20da2e4c76f9c2468dd02faa8f50c98cf` |
| 88 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-14.md) | 544 | `declaration-track:e8d1bfdc05777fa696340537226e0069af822a9623714565e9a8fa92977e6c4c` |
| 89 | `theorem` | [compl_singleton_mem_nhds_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/compl-singleton-mem-nhds-iff.md) | 548 | `result-track:ab7675e646b1e7d72ef447df0c15500bc923a2c02c56bad4ddeea052b8cacdfe` |
| 90 | `theorem` | [compl_singleton_mem_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/compl-singleton-mem-nhds.md) | 551 | `result-track:a47ddfdd3c565c8e1fdfc94bfdf35f5f8ed93dd223e6b99fcd0522509714ee83` |
| 91 | `theorem` | [closure_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/closure-singleton.md) | 554 | `result-track:f8785cde959586672d6d7d286c5fa37649813c7d393a80b00ba4a5a994baa383` |
| 92 | `lemma` | [Set.Subsingleton.isClosed](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-subsingleton-isclosed.md) | 557 | `result-track:805449ee432871ada6d16677358589d11754b61b60fc89fb6042e51b0adfa26e` |
| 93 | `theorem` | [Set.Subsingleton.closure_eq](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-subsingleton-closure-eq.md) | 562 | `result-track:60dc359b6a76f8354f67346ff3130721bc70b9c96a8d96e5d63745f877cc1fc2` |
| 94 | `theorem` | [Set.Subsingleton.closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-subsingleton-closure.md) | 566 | `result-track:775f3f38851cefe2aa2354d1fd058c8df98e19df916d5b4bf0bbbb30268849cf` |
| 95 | `theorem` | [subsingleton_closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/subsingleton-closure.md) | 571 | `result-track:65eeb684dab9fdc5ae3bca6e54240621feefd56e7ead3e958924ca1003a44d98` |
| 96 | `theorem` | [isClosedMap_const](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosedmap-const.md) | 574 | `result-track:e27b4ee35d000545b5cd1288bafd2883bea51e41816e6b229a47a0cccf0f4d55` |
| 97 | `lemma` | [isClosedMap_prodMk_left](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosedmap-prodmk-left.md) | 578 | `result-track:6b8d81a9bd813224fd3d0dc97974de815ebf5499698c23ee1075642f072b3513` |
| 98 | `lemma` | [isClosedMap_prodMk_right](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosedmap-prodmk-right.md) | 582 | `result-track:21d0913f65734fcd733dc75046dfc0fdaee0528c1b5542a0ec111980357cb921` |
| 99 | `theorem` | [nhdsWithin_insert_of_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhdswithin-insert-of-ne.md) | 586 | `result-track:901c22badc1cb7ed674096b866166b06eb904dd2f5aa4f7bf01f69379a43fa97` |
| 100 | `theorem` | [insert_mem_nhdsWithin_of_subset_insert](../../../../GeneralTopology/SeparationBasic.lean/declarations/insert-mem-nhdswithin-of-subset-insert.md) | 596 | `result-track:0eba6b4d3f24496b0c9091e9c6c6941f81979eaca4d82ea67d8bf9318c3ccba3` |
| 101 | `lemma` | [eventuallyEq_insert](../../../../GeneralTopology/SeparationBasic.lean/declarations/eventuallyeq-insert.md) | 604 | `result-track:599c1f97d9bb2360252ba1492333f04a7e0cb02fbf7295da511336ef99a77e16` |
| 102 | `theorem` | [ker_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/ker-nhds.md) | 613 | `result-track:d621674d3032999a7594eb9e056e5e3888476b82cc257e87da29293ed125e73b` |
| 103 | `theorem` | [biInter_basis_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/biinter-basis-nhds.md) | 616 | `result-track:c61617166e79be00b30717b45857ff2ab102509d0977c6ca017e8ac13c3c14df` |
| 104 | `theorem` | [compl_singleton_mem_nhdsSet_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/compl-singleton-mem-nhdsset-iff.md) | 621 | `result-track:46cedec11bbe5984578c46eb169f62102fed75f2cfbb798021d8cb3d364a2f95` |
| 105 | `theorem` | [nhdsSet_le_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhdsset-le-iff.md) | 625 | `result-track:25f4828dc16af26f0d5f18b501ae3abca8966d86c00cea156b3b445e586b9473` |
| 106 | `theorem` | [nhdsSet_inj_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhdsset-inj-iff.md) | 634 | `result-track:dfdd780b0bd324aace4a6608c376f850ae82e3c8d49fec47205c73dfcf115d63` |
| 107 | `theorem` | [injective_nhdsSet](../../../../GeneralTopology/SeparationBasic.lean/declarations/injective-nhdsset.md) | 638 | `result-track:da9609b2840f270dfef4e13a5bb6164d73e671eb5cc34c526b7fde597b7d89d4` |
| 108 | `theorem` | [strictMono_nhdsSet](../../../../GeneralTopology/SeparationBasic.lean/declarations/strictmono-nhdsset.md) | 641 | `result-track:900c13a2d848b7fa9ad58a7e758302cf82f25a5ae9d0d02c8cfba1bc09606161` |
| 109 | `theorem` | [nhds_le_nhdsSet_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhds-le-nhdsset-iff.md) | 645 | `result-track:6f965eabdcd3c9c7ee0c345b1175408461c6b0ef5f4573b27a402b18838b308e` |
| 110 | `theorem` | [Dense.diff_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/dense-diff-singleton.md) | 649 | `result-track:c4b9a72f604a7415e51a979f60347bd5bd8e51fef1f845614814470724a0eff4` |
| 111 | `theorem` | [Dense.diff_finset](../../../../GeneralTopology/SeparationBasic.lean/declarations/dense-diff-finset.md) | 655 | `result-track:170de110169d28409b1ce4b71ccef9d73bc794169fc5e931954dbd1fe47b46d6` |
| 112 | `theorem` | [Dense.diff_finite](../../../../GeneralTopology/SeparationBasic.lean/declarations/dense-diff-finite.md) | 666 | `result-track:c6ef427607c6a96778198d423d938b54955709c53d748b3c126bb17fe8b1e47b` |
| 113 | `theorem` | [eq_of_tendsto_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/eq-of-tendsto-nhds.md) | 673 | `result-track:f952b2b0eafcf1c735f3411f65e6b89f0c491ba1c7444b5ee4c72f74f9cd8bae` |
| 114 | `theorem` | [Filter.Tendsto.eventually_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/filter-tendsto-eventually-ne.md) | 680 | `result-track:94791c8ae8909b96412ef459c94a930bbad10abfd18252ca0a12dccf7b354f0c` |
| 115 | `theorem` | [ContinuousAt.eventually_ne](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuousat-eventually-ne.md) | 684 | `result-track:1fa45b57557533a54efe8aff4cdb926b80f6a5e12cc87654266b22fcc6112c5b` |
| 116 | `theorem` | [eventually_ne_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/eventually-ne-nhds.md) | 688 | `result-track:e3ed4149ef948d48efcab37d65c02e03edb462004168ba60b7188a18ac1f3717` |
| 117 | `theorem` | [eventually_ne_nhdsWithin](../../../../GeneralTopology/SeparationBasic.lean/declarations/eventually-ne-nhdswithin.md) | 691 | `result-track:12c9caa147c54a024447a2163e7b3b0ba063f515e405b8f83fc17d03d1228f1a` |
| 118 | `theorem` | [continuousWithinAt_insert](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuouswithinat-insert.md) | 695 | `result-track:07e662895412b64769baa0267918866cca831d2d24d4ebe65cdedc3b58f1c20b` |
| 119 | `theorem` | [continuousWithinAt_diff_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuouswithinat-diff-singleton.md) | 705 | `result-track:e2e5df2f668db9d4385ef4054071707bd80cf751ce574c6d00c773bdc98843ce` |
| 120 | `theorem` | [continuousWithinAt_congr_set'](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuouswithinat-congr-set.md) | 712 | `result-track:46f6aafd8ebb43e05ce12ded884f85ce3afcdb2a8259d8495fd407239b033f7e` |
| 121 | `theorem` | [continuousAt_of_tendsto_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/continuousat-of-tendsto-nhds.md) | 720 | `result-track:09ac95e96a8b8cddf6f315e8058ac203631874f4185709179c6875d5e9e2ae4a` |
| 122 | `theorem` | [tendsto_const_nhds_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/tendsto-const-nhds-iff.md) | 725 | `result-track:74a2e72b9ed43da8c903d5879c1f4007245615fb715fa3b6e26e69285facdcf2` |
| 123 | `theorem` | [isOpen_singleton_of_finite_mem_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/isopen-singleton-of-finite-mem-nhds.md) | 729 | `result-track:4c085cab84b8478a26b14b9d8653a449de3c88c0a5334bb112d2a52c091b02df` |
| 124 | `theorem` | [infinite_of_mem_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/infinite-of-mem-nhds.md) | 739 | `result-track:1d937fb648d7b768833f922d412340854ca047d78590f2eaf5b04b0a1582c096` |
| 125 | `instance` | [Finite.instDiscreteTopology](../../../../GeneralTopology/SeparationBasic.lean/declarations/finite-instdiscretetopology.md) | 745 | `declaration-track:4d6386d991aab5cb2886bcecda72cb1946e122f1f229875a1dfb84b74c6ad12a` |
| 126 | `theorem` | [Set.Finite.continuousOn](../../../../GeneralTopology/SeparationBasic.lean/declarations/set-finite-continuouson.md) | 748 | `result-track:48f239426da1994d49825b6f26aa2df922d986d477a8bf76309a966244570bc2` |
| 127 | `theorem` | [SeparationQuotient.t1Space_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/separationquotient-t1space-iff.md) | 754 | `result-track:5bf7b957d706ed2ce12fb57430076094316d6df7ad5cbf7f431f58a20feac3ba` |
| 128 | `lemma` | [isClosed_inter_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-inter-singleton.md) | 769 | `result-track:8251de6b20432e11a473441200103d4bfb266a8fc7f3cf04d198b4eed166684f` |
| 129 | `lemma` | [isClosed_singleton_inter](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-singleton-inter.md) | 772 | `result-track:e2548e38e5a54853c23e5d2ac530b4c46f81c3a0b335c903627598ed7a7adb82` |
| 130 | `theorem` | [singleton_mem_nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/singleton-mem-nhdswithin-of-mem-discrete.md) | 775 | `result-track:e6fced7c1725843a409a4fc88856218deb186351ae224d2cc73bc5bf7184343c` |
| 131 | `theorem` | [nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhdswithin-of-mem-discrete.md) | 783 | `result-track:cd268b95014a0557a16422124e29de02fb225893f6f4fb8dfb021c0a4e567943` |
| 132 | `theorem` | [Filter.HasBasis.exists_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/filter-hasbasis-exists-inter-eq-singleton-of-mem-discrete.md) | 787 | `result-track:0d17e949a1f5509b45d7a6dd696150650c273ec856adb7385e4331e8793b6937` |
| 133 | `theorem` | [nhds_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/nhds-inter-eq-singleton-of-mem-discrete.md) | 796 | `result-track:784def2566fc8378645b06dedb303b26a9f9df6d4aa42e47998afc5180a054ce` |
| 134 | `theorem` | [isOpen_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/isopen-inter-eq-singleton-of-mem-discrete.md) | 802 | `result-track:abad268e8baaa36f80af049e748fb5d3a9fe0bbe534505a76cc50011562633ec` |
| 135 | `theorem` | [disjoint_nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasic.lean/declarations/disjoint-nhdswithin-of-mem-discrete.md) | 816 | `result-track:39907bc9b9632d95403cd6d39ec008c72d0a6ce3c7a47709ea55d0355a7e9461` |
| 136 | `theorem` | [isClosedEmbedding_update](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosedembedding-update.md) | 822 | `result-track:da186134b7ac915d82fd205449ec19fa3e242a192dbe158718d40381d4f3e7d0` |
| 137 | `class` | [R1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space.md) | 839 | `declaration-track:6808bffdf40787355a5beb7ce820ffdebfb95c1e896685798da4a980450907ab` |
| 138 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-2.md) | 846 | `declaration-track:234ccd90933d49b7116aeab15b193593da835661cd00451f437fed8c51c033a1` |
| 139 | `theorem` | [disjoint_nhds_nhds_iff_not_specializes](../../../../GeneralTopology/SeparationBasic.lean/declarations/disjoint-nhds-nhds-iff-not-specializes.md) | 850 | `result-track:cd472477a2ba6563a39ed7df07f52c43e7020241d1bc81fe5c7d05990744d918` |
| 140 | `theorem` | [specializes_iff_not_disjoint](../../../../GeneralTopology/SeparationBasic.lean/declarations/specializes-iff-not-disjoint.md) | 853 | `result-track:87762d8e60dfaa06202980f92efa59770f0d70f3aec5fed9d606c26e82a73823` |
| 141 | `theorem` | [disjoint_nhds_nhds_iff_not_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/disjoint-nhds-nhds-iff-not-inseparable.md) | 856 | `result-track:c2ded67d67e4486c5f989ff730be3f7cab5e414b8d1b4de7cda0fe70f601f831` |
| 142 | `theorem` | [r1Space_iff_inseparable_or_disjoint_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-iff-inseparable-or-disjoint-nhds.md) | 859 | `result-track:d7ec70fdaad3fcee20a97cec0cab2ca7e6e581e9971332848a3be6f91c349210` |
| 143 | `theorem` | [Inseparable.of_nhds_neBot](../../../../GeneralTopology/SeparationBasic.lean/declarations/inseparable-of-nhds-nebot.md) | 864 | `result-track:b59b01c8a319069f110b4e194ec6a4ff2bbf53b19451e00b5db722f29b4ebad9` |
| 144 | `theorem` | [r1_separation](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1-separation.md) | 868 | `result-track:330f3ded2734501cf189f1bb99c3c96c38796da1a0612803b694567935d7d55b` |
| 145 | `theorem` | [tendsto_nhds_unique_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/tendsto-nhds-unique-inseparable.md) | 878 | `result-track:ba0736fd95392805beba01b634e60f8ab09315f6ce3820161ffe2cc5a348fa2e` |
| 146 | `theorem` | [isClosed_setOf_specializes](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-setof-specializes.md) | 882 | `result-track:4149a646c9f4e48747e62196a969530df9727acc9bf0fe0c2c3b5a5f23baccbf` |
| 147 | `theorem` | [isClosed_setOf_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/isclosed-setof-inseparable.md) | 886 | `result-track:31fafa355e04501d9200dcc3abafaa6cf86a2925c2a76b2552be0e333fb172d1` |
| 148 | `theorem` | [IsCompact.mem_closure_iff_exists_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-mem-closure-iff-exists-inseparable.md) | 891 | `result-track:d9890afaaeb911d9b881ba0a970163d8b5d453a737f4d6e354398820fe7f0dcf` |
| 149 | `theorem` | [IsCompact.closure_eq_biUnion_inseparable](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure-eq-biunion-inseparable.md) | 901 | `result-track:5e9fbcf881eca82e7f7053619772d4f4770c64a5ab6cccc51e171d4e0328bb4c` |
| 150 | `theorem` | [IsCompact.closure_eq_biUnion_closure_singleton](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure-eq-biunion-closure-singleton.md) | 906 | `result-track:082d22ea1d8ef1e1e017977b20ff663d7da84ef46c152faf551cafb0e6c16bac` |
| 151 | `theorem` | [IsCompact.closure_subset_of_isOpen](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure-subset-of-isopen.md) | 913 | `result-track:2135e8128141b8ed3dccf5729ec5108a5950597bd1f36435c42d1b26f44822ad` |
| 152 | `theorem` | [IsCompact.closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure.md) | 919 | `result-track:905e2edc78face37a49597c3dbac70c045982ef78f80f5e5465ffee3341acc94` |
| 153 | `theorem` | [IsCompact.closure_of_subset](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-closure-of-subset.md) | 924 | `result-track:15ed0d0f13af7cace658cd141f9eaf72fdae3ab314ccccad8b3c17e0c3178061` |
| 154 | `theorem` | [exists_isCompact_superset_iff](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-iscompact-superset-iff.md) | 929 | `result-track:060c6fab521b69903e6f0be172f90c3c38f4664132768dbe64690d69a535cd68` |
| 155 | `theorem` | [SeparatedNhds.of_isCompact_isCompact_isClosed](../../../../GeneralTopology/SeparationBasic.lean/declarations/separatednhds-of-iscompact-iscompact-isclosed.md) | 935 | `result-track:a6d65882345c462864d1ad53e2a59eea53fa0d2a8170be29f16b7c16cbfb0174` |
| 156 | `theorem` | [IsCompact.binary_compact_cover](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-binary-compact-cover.md) | 943 | `result-track:38cafea860e843fc92d05cb96836c43fed9ab601b2b2e28e0d4846827646f48a` |
| 157 | `theorem` | [IsCompact.finite_compact_cover](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-finite-compact-cover.md) | 959 | `result-track:bc27b6c99724fb167bcf127d213603dc5fc83a58ed511642de7b6aba555a884c` |
| 158 | `theorem` | [R1Space.of_continuous_specializes_imp](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-of-continuous-specializes-imp.md) | 985 | `result-track:60efeda88ce9883d5f3d723a04c4c8c029305e83505f8705965906839e32481a` |
| 159 | `theorem` | [Topology.IsInducing.r1Space](../../../../GeneralTopology/SeparationBasic.lean/declarations/topology-isinducing-r1space.md) | 990 | `result-track:0262b30283887316e8f9e006613e27a829287a92dc898639c2f00623c9b4f0f1` |
| 160 | `theorem` | [R1Space.induced](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-induced.md) | 995 | `result-track:2053e6ebf961b35fd42ea68e8e6d6702bffe3c77735d366ef66e1dde04653281` |
| 161 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-11.md) | 998 | `declaration-track:a4d943dcec3c3e1c3b0bc53df2a7354a472cb02c057386876c19c7559953e450` |
| 162 | `theorem` | [R1Space.sInf](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-sinf.md) | 1000 | `result-track:55367ffc70900e407d529482911775cf4a1b7741bf990a0a9d3c69045060c5b6` |
| 163 | `theorem` | [R1Space.iInf](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-iinf.md) | 1010 | `result-track:aefa96b1e3f9303534e862a431db94d6c8536663389ed4b8047e9d2a89f0d935` |
| 164 | `theorem` | [R1Space.inf](../../../../GeneralTopology/SeparationBasic.lean/declarations/r1space-inf.md) | 1014 | `result-track:c09c419f31da62c2116141459c0f7ac06142c0690849742ad8a7cdb603a64d98` |
| 165 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-10.md) | 1020 | `declaration-track:a35e57358834ee98217ee6694a6cd43612a25cd5e1384cbc7f7c2468aa42b477` |
| 166 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-5.md) | 1023 | `declaration-track:580e4d358cb68861f512c0657c50c10dc15981bfefaa3d97c2824ba0da848fb6` |
| 167 | `theorem` | [exists_mem_nhds_isCompact_mapsTo_of_isCompact_mem_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-mem-nhds-iscompact-mapsto-of-iscompact-mem-nhds.md) | 1027 | `result-track:347bb2c07d2be15932ac77253cd753407e56dfb4b69a22e908c67dfb32751f4c` |
| 168 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance.md) | 1044 | `declaration-track:12323d2db1ad14852e2ddfd6c980209dee15ac1a01a4e66fbafa18ea4af21f5c` |
| 169 | `theorem` | [IsCompact.isCompact_isClosed_basis_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-iscompact-isclosed-basis-nhds.md) | 1052 | `result-track:53a5aeb4aebbe4a581e309fe7b1074d12d96b5fc4657fedd2adced8a792a3dfe` |
| 170 | `theorem` | [Filter.coclosedCompact_eq_cocompact](../../../../GeneralTopology/SeparationBasic.lean/declarations/filter-coclosedcompact-eq-cocompact.md) | 1062 | `result-track:c77d9efade4594fa828a1a2d905a2e5750f1db63c46322f7fba64b8e7d4fe299` |
| 171 | `theorem` | [Bornology.relativelyCompact_eq_inCompact](../../../../GeneralTopology/SeparationBasic.lean/declarations/bornology-relativelycompact-eq-incompact.md) | 1069 | `result-track:b08f1fe65cf119a86512d662317ebfc8b6e0cca7404af8a8e8b72c49e8fef00b` |
| 172 | `theorem` | [isCompact_isClosed_basis_nhds](../../../../GeneralTopology/SeparationBasic.lean/declarations/iscompact-isclosed-basis-nhds.md) | 1084 | `result-track:e422ef41dbfffab034975bad3648479bb89d77e1b2a863f6b91fa44c3b3c60ed` |
| 173 | `theorem` | [exists_mem_nhds_isCompact_isClosed](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-mem-nhds-iscompact-isclosed.md) | 1090 | `result-track:e1329295406a231e84d652b20da56b145fe5a0d74497932e41d35b0ffcc4dddf` |
| 174 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasic.lean/declarations/instance-source-edition-4.md) | 1095 | `declaration-track:25f5ac361e763a4f59e397d4ce48fd4b777e492f2495937f35d20a77c68f94ba` |
| 175 | `theorem` | [exists_isOpen_superset_and_isCompact_closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-isopen-superset-and-iscompact-closure.md) | 1100 | `result-track:7b3d418acae230a2e1dfdc91e4446cfe6fd4cfe55ccb725a59437687f40ef73b` |
| 176 | `theorem` | [exists_isOpen_mem_isCompact_closure](../../../../GeneralTopology/SeparationBasic.lean/declarations/exists-isopen-mem-iscompact-closure.md) | 1107 | `result-track:d2a2f9f43e6f1260e5fec73e22eccd7b5d5ac4b452bdf7fc25b1d16748bf57ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e54e960465048f580f28a1b2ddf7a4b7d712b2aa4b124a57a8a7b05eaaa32f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
