# Verification target: Projective Spectrum Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d37bd0a7568d2a7efa593cc80742b38468baa89",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d37bd0a7568d2a7efa593cc80742b38468baa89`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean.json)

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
| 1 | `structure` | [ProjectiveSpectrum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/projectivespectrum.md) | 62 | `declaration-track:596cc30ded1e4ae695dc45b518351fb02dc90ddb8bc5528d04c0f6ece84c50fb` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:07f85b69d41eeae88c74d228ccdb2fc0b61f7ec283f70b922fb86747308380c1` |
| 3 | `def` | [zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus.md) | 80 | `declaration-track:f5de69853d67794b5e1a6bb1e47fcbf9227df2c7a679281404ea50b0634f570b` |
| 4 | `theorem` | [mem_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/mem-zerolocus.md) | 84 | `result-track:e804797ddfb03857325189d9f1f9afb1b762f38be12dc8e41bb87a1930fd7094` |
| 5 | `theorem` | [zeroLocus_span](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-span.md) | 89 | `result-track:831dec7d25612273dc056640350321ff560066f258dabfe942c306add9f1b679` |
| 6 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal.md) | 102 | `declaration-track:f6d5bd66cbe21027f1cf40898e0828dc0b6c9a52eeb9aae42d2ff0dd9fe6a309` |
| 7 | `theorem` | [coe_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/coe-vanishingideal.md) | 105 | `result-track:9ebba8698630e3e9b4b6966820d8e5e7dcbeda7d8f96040e740a18d61aeb0e17` |
| 8 | `theorem` | [mem_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/mem-vanishingideal.md) | 114 | `result-track:5891263959dc64184eafd93b7aed3032cda98e624a7f90a77fb2038b34e9ba61` |
| 9 | `theorem` | [vanishingIdeal_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-singleton.md) | 119 | `result-track:e24585d59e280942095ab34dd452b0693a9323bd11321477c53d0ec3e28eea2d` |
| 10 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/subset-zerolocus-iff-le-vanishingideal.md) | 123 | `result-track:7f7dff26f96970cca076d374bd7008f7d33ce40d507fcbd7c877ec341b595ff4` |
| 11 | `theorem` | [gc_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/gc-ideal.md) | 132 | `result-track:082b632b2743b3852136db010b594c4fad663eacd3d841952cb3d83f976a8d2f` |
| 12 | `theorem` | [gc_set](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/gc-set.md) | 139 | `result-track:f7ab1ed8b7e80f3fed9ee6061f732a0ea3974cc56b60b38208f1016042528d86` |
| 13 | `theorem` | [gc_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/gc-homogeneousideal.md) | 145 | `result-track:d86a8674797208c0be26c0e3f9dacbe561aee375c63b025e53144af0a8e11fed` |
| 14 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/subset-zerolocus-iff-subset-vanishingideal.md) | 152 | `result-track:8c99cf6357f94b8b7883e3c2230de1c153623d5c824d5b6b303ccec335191e7c` |
| 15 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/subset-vanishingideal-zerolocus.md) | 156 | `result-track:9b3de4c68cda5f42f30f30e9dd72affa7227838908d3c281929f4e48d2654c18` |
| 16 | `theorem` | [ideal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/ideal-le-vanishingideal-zerolocus.md) | 159 | `result-track:32fdb1d1dd0063bb50122b311c20065d8a1efc1f47814faaeffe2a012969faab` |
| 17 | `theorem` | [homogeneousIdeal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/homogeneousideal-le-vanishingideal-zerolocus.md) | 163 | `result-track:47b49208c574c0456b2da9967725ab1ada373fd4eb0c15902f696cca2d21f7f5` |
| 18 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/subset-zerolocus-vanishingideal.md) | 167 | `result-track:d2d59e49e8e4651fa2a374c0c45a4791c37d2f49c969a628979c948d179c66f8` |
| 19 | `theorem` | [zeroLocus_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-anti-mono.md) | 171 | `result-track:4eea5695b257cfff6ad02cbc0b8c74fe2a3a0a2377c7a2691d8d97e42ceeb8f8` |
| 20 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-anti-mono-ideal.md) | 174 | `result-track:47380ec6e5cd6a744c58a16a011d66c2578dabf58489bb0ae12a3215578ae583` |
| 21 | `theorem` | [zeroLocus_anti_mono_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-anti-mono-homogeneousideal.md) | 178 | `result-track:ef000531f0196264e10477b9c67b9915ff8da7d94c17137a043780bdefcedcd0` |
| 22 | `theorem` | [vanishingIdeal_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-anti-mono.md) | 182 | `result-track:2f05b6ca754a624736388bb2c539432dac850770ad94af057a47e4801ba456ba` |
| 23 | `theorem` | [zeroLocus_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-bot.md) | 186 | `result-track:68a7452a68ee685f0c7c89a23c575f8a330bfd6268915d89250ee2caf5eec0c3` |
| 24 | `theorem` | [zeroLocus_singleton_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-singleton-zero.md) | 190 | `result-track:847dbd0fb612feb7a7fd45f57887920b6f32398b13771f4ab87f7d5049d6e352` |
| 25 | `theorem` | [zeroLocus_empty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-empty.md) | 194 | `result-track:26ac2d7eb8f54a9e05ca70802c2e964b3829decae372a46c2f4dd920d7563976` |
| 26 | `theorem` | [vanishingIdeal_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-univ.md) | 198 | `result-track:f9b2a4a82d9a6fb391426b2492993aacb5656bce64039f8df38c13e111146fb1` |
| 27 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-empty-of-one-mem.md) | 201 | `result-track:50713355252c8165b9b84af51f5ca61a501ec9c844930326c533fbc463658da8` |
| 28 | `theorem` | [zeroLocus_singleton_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-singleton-one.md) | 207 | `result-track:99fa662e7f0ced73c37832ace7bc7d28b52831bdccc6c15a68cced11245afaf7` |
| 29 | `theorem` | [zeroLocus_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-univ.md) | 211 | `result-track:db68cd74316db972edca7c15f26606150c04086329108c938d51927e26263c3a` |
| 30 | `theorem` | [zeroLocus_sup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-sup-ideal.md) | 214 | `result-track:738d86cc68c7be2b899acfa32f7fbc42b72ad60dd10dfa3785e685b768c025d9` |
| 31 | `theorem` | [zeroLocus_sup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-sup-homogeneousideal.md) | 218 | `result-track:4c9222b3dfe936276594019d672290c1a06754e523a861edce21ec6f1fb0f2a9` |
| 32 | `theorem` | [zeroLocus_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-union.md) | 222 | `result-track:5855061c2abba436290431a50da26052db7afd24991b9cb4c53fcb5e2dc535c4` |
| 33 | `theorem` | [vanishingIdeal_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-union.md) | 225 | `result-track:69ca5ebd38408d0ee8b6918acd3da6b108f1d10e3c8cb8e6f3d7ff759bb0cfb5` |
| 34 | `theorem` | [zeroLocus_iSup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-isup-ideal.md) | 229 | `result-track:e54bb00d29aad614e9e98abf92fee566e86dffa5b7efdc7ac7918d1bbb495739` |
| 35 | `theorem` | [zeroLocus_iSup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-isup-homogeneousideal.md) | 233 | `result-track:a19149893dfa68cb9b62414afcd9409db530f904f40d5290ce86b0cb8465e0de` |
| 36 | `theorem` | [zeroLocus_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-iunion.md) | 237 | `result-track:6f43bff37d56abb56278c85c244478ab25b5c353981dd219dc73714a3cb42650` |
| 37 | `theorem` | [zeroLocus_bUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-bunion.md) | 241 | `result-track:13f752075a6740eb05928166d496b3ccd5585af16fb06e1efdb4781070d2a014` |
| 38 | `theorem` | [vanishingIdeal_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-iunion.md) | 245 | `result-track:e95b4c7c735b78d15ec9cebdbf7433122598c1cba493cb6b8b009b7e58dc1a71` |
| 39 | `theorem` | [zeroLocus_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-inf.md) | 250 | `result-track:f909f04ef33d345de4321308df7cbf2dbd819f638e4d4b33549e336f0f04bed5` |
| 40 | `theorem` | [union_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/union-zerolocus.md) | 254 | `result-track:f2f28c6749e2092304ad064cdc1b79680455e152bbd2d3dbb3c9b5a7079210e8` |
| 41 | `theorem` | [zeroLocus_mul_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-mul-ideal.md) | 259 | `result-track:63b938034e70bb0507c31914de179a56b86ea0c57f59d6f296b25e9a53d90330` |
| 42 | `theorem` | [zeroLocus_mul_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-mul-homogeneousideal.md) | 263 | `result-track:2515b66cdf2dc7adee4d8986a7db09c3ed8640cd9fcd47a1c066a72890e66877` |
| 43 | `theorem` | [zeroLocus_singleton_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-singleton-mul.md) | 267 | `result-track:a45cd9541044d6d0503291f1ba883eb06e675f74f6680a9d2e8a0482bb399c96` |
| 44 | `theorem` | [zeroLocus_singleton_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-singleton-pow.md) | 272 | `result-track:2b99a6643a3b4fc66e398349beaa51cc48626fb695fb9a68d1e98633a5520b03` |
| 45 | `theorem` | [sup_vanishingIdeal_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/sup-vanishingideal-le.md) | 276 | `result-track:22c362e2ae046b459a5b047671c30f9304f831e7fe0c16879ae7997c7942e86a` |
| 46 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/mem-compl-zerolocus-iff-notmem.md) | 285 | `result-track:d84e4a732c3b1d7866347a4c369c41948f80c534751c80150a819468314e3890` |
| 47 | `instance` | [zariskiTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zariskitopology.md) | 291 | `declaration-track:553de52006c8a2488bde2f0050aed8dd780da604f5ef081938e9ca9228985e86` |
| 48 | `def` | [top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/top.md) | 307 | `declaration-track:8f5d8da66efccf53f9da788e14570bee6fa0d4a917d191f5d0eab0591ec47125` |
| 49 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/isopen-iff.md) | 310 | `result-track:501d40feb8e3e702357e6df0eb6df0f834309487490ece46a0ddcfda8310a2bd` |
| 50 | `theorem` | [isClosed_iff_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/isclosed-iff-zerolocus.md) | 313 | `result-track:f7c3a762765b3c37071acedf6f75cd0eea4fdad57b9edf5454f528e8b76eb63f` |
| 51 | `theorem` | [isClosed_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/isclosed-zerolocus.md) | 316 | `result-track:b72ab61a81e8dbaacf8c8e8457d52b28e021bf57005057305dd7c8d4519717ef` |
| 52 | `theorem` | [zeroLocus_vanishingIdeal_eq_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/zerolocus-vanishingideal-eq-closure.md) | 320 | `result-track:220e6346f00cdfc75dd57e46fbf91aff56e1e0004eb3e0441b848d2818900195` |
| 53 | `theorem` | [vanishingIdeal_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/vanishingideal-closure.md) | 330 | `result-track:64044be0a39b7b3e965207bcba4c0fb608512a6b36f95ba276ceaf98d85327c1` |
| 54 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen.md) | 340 | `declaration-track:ce4f38fffc952969579d4b176ac3cad906fa8c428d2a3a4b00d8ceba669f5ec1` |
| 55 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/mem-basicopen.md) | 345 | `result-track:4563bcd24108efa8bf5e4ddb4602aff9f289f6c87ee950c2b4a1aae5699e35a9` |
| 56 | `theorem` | [mem_coe_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/mem-coe-basicopen.md) | 349 | `result-track:4560e17135690378e3366ada6fa7ea6c27b825204fd714f59a7d9e923b9b4090` |
| 57 | `theorem` | [isOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/isopen-basicopen.md) | 353 | `result-track:4dcf076c51e3a68306d5d18a28ca2414545a518e5e67c8739726da80a75b0df0` |
| 58 | `theorem` | [basicOpen_eq_zeroLocus_compl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-eq-zerolocus-compl.md) | 357 | `result-track:8d0049912d206931dde32fd0f5f84012ee7af14da8083578b08baf9c3abedd00` |
| 59 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-one.md) | 362 | `result-track:8134b4653d14ffd91aa717f5c54bbee62e3f886538dc63ec2fdc0b33c1e084cd` |
| 60 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-zero.md) | 366 | `result-track:d2888ace0afe37243db2ef3ba3f4c45b74c7254d8b8cac5342c45522c031974b` |
| 61 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-mul.md) | 369 | `result-track:36299d62ef68db6e947a37c7a7042768651cc6ddec0d53efb22def3f426b0228` |
| 62 | `theorem` | [basicOpen_mul_le_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-mul-le-left.md) | 372 | `result-track:716f4350b5341fc3c894b97194c935d2cd937ac4aff193de65f39c63e2107797` |
| 63 | `theorem` | [basicOpen_mul_le_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-mul-le-right.md) | 376 | `result-track:92a1aabd741a7d05657a256c29df0b6b535c9195cdcd1ae583652b2487ea3db6` |
| 64 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-pow.md) | 381 | `result-track:7c025743bdc5bd9422e1b46a6cbc27277d4a41acca0b1e5e39918c17cfcd7348` |
| 65 | `theorem` | [basicOpen_eq_union_of_projection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/basicopen-eq-union-of-projection.md) | 384 | `result-track:210413394fa5c2c81efcfe7ce13684abde0034cedc7abd664552cc76df7e7f6d` |
| 66 | `theorem` | [isTopologicalBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/istopologicalbasis-basic-opens.md) | 399 | `result-track:7dc83e97d4a6322c7edbba2e0c83c31da566105cbdbf6283ea0869a76b99e0ac` |
| 67 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 424 | `declaration-track:c27b3f3939e4fb45e74fa6351a00f5f1575e0eb09a6d46cac50aaf82c376be90` |
| 68 | `theorem` | [as_ideal_le_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/as-ideal-le-as-ideal.md) | 428 | `result-track:61647760116836fc9469769748fa16f80ac0e3eb9c57b8d97f1e90c0f6d5de5a` |
| 69 | `theorem` | [as_ideal_lt_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/as-ideal-lt-as-ideal.md) | 433 | `result-track:f7a0365cc709ae1814fc30b1f5e65b3883f8d732e0393a774d644f1d5c9f7b7c` |
| 70 | `theorem` | [le_iff_mem_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedPublic.lean/declarations/le-iff-mem-closure.md) | 437 | `result-track:431acc9e3b78e6d559f80dce194c42d9d7965011b37f36f068a1f83a5d69b709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bc52bac345d336ccdb511a65b071f8405cfced916ddf00c8691b6c8c4181286 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
