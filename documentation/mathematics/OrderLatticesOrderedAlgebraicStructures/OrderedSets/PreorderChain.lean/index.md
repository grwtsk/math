# Preorder Chain

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant1f39bede688aa990195844f0d63aaef29edd6822b5b6b711536ec221e324ffbe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98680ba4d8d212935a3de9943987c5aed0efaf62`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChain.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsChain](declarations/ischain.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SuperChain](declarations/superchain.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsMaxChain](declarations/ismaxchain.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsChain.empty](declarations/ischain-empty.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsChain.singleton](declarations/ischain-singleton.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Set.Subsingleton.isChain](declarations/set-subsingleton-ischain.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsChain.mono](declarations/ischain-mono.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsChain.mono_rel](declarations/ischain-mono-rel.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsChain.symm](declarations/ischain-symm.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isChain_of_trichotomous](declarations/ischain-of-trichotomous.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsChain.insert](declarations/ischain-insert.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsChain.pair](declarations/ischain-pair.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isChain_univ_iff](declarations/ischain-univ-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsChain.image](declarations/ischain-image.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isChain_union](declarations/ischain-union.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Monotone.isChain_image](declarations/monotone-ischain-image.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Monotone.isChain_range](declarations/monotone-ischain-range.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsChain.lt_of_le](declarations/ischain-lt-of-le.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsChain.total](declarations/ischain-total.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsChain.directedOn](declarations/ischain-directedon.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsChain.directed](declarations/ischain-directed.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsChain.exists3](declarations/ischain-exists3.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsChain.le_of_not_lt](declarations/ischain-le-of-not-lt.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsChain.not_lt](declarations/ischain-not-lt.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsChain.lt_of_not_le](declarations/ischain-lt-of-not-le.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsChain.not_le](declarations/ischain-not-le.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsMaxChain.isChain](declarations/ismaxchain-ischain.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsMaxChain.not_superChain](declarations/ismaxchain-not-superchain.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsMaxChain.bot_mem](declarations/ismaxchain-bot-mem.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsMaxChain.top_mem](declarations/ismaxchain-top-mem.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsMaxChain.image](declarations/ismaxchain-image.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SuccChain](declarations/succchain.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [succChain_spec](declarations/succchain-spec.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsChain.succ](declarations/ischain-succ.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsChain.superChain_succChain](declarations/ischain-superchain-succchain.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [subset_succChain](declarations/subset-succchain.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [Flag](declarations/flag.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ext](declarations/ext.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_coe_iff](declarations/mem-coe-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_mk](declarations/coe-mk.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mk_coe](declarations/mk-coe.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [chain_le](declarations/chain-le.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [maxChain](declarations/maxchain.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [top_mem](declarations/top-mem.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [bot_mem](declarations/bot-mem.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ofIsMaxChain](declarations/ofismaxchain.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [coe_ofIsMaxChain](declarations/coe-ofismaxchain.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [le_or_le](declarations/le-or-le.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mem_iff_forall_le_or_ge](declarations/mem-iff-forall-le-or-ge.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [map](declarations/map.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [coe_map](declarations/coe-map.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [symm_map](declarations/symm-map.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [chain_lt](declarations/chain-lt.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=479a6ce7746e507880bdbdd6d7bb387147b3fb526fbf06e7ba7a1ff75d1a2336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant1f39bede688aa990195844f0d63aaef29edd6822b5b6b711536ec221e324ffbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
