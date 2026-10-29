# Verification target: Product Shell Reindex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveTypeIIPrefixPairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/effectivetypeiiprefixpairs.md) | 47 | `declaration-track:aec2b74c125e94f8f5fa7a292d509b5227c94a7a903e5d3aa18fe437c0b336f4` |
| 2 | `theorem` | [mem_effectiveTypeIIPrefixPairs_iff](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/mem-effectivetypeiiprefixpairs-iff.md) | 56 | `result-track:1fc51b0fd66973bcd1faed483dc92b8ecc476decb58daa632f3a269b45f8aa95` |
| 3 | `def` | [effectiveTypeIIShellPrefixPairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/effectivetypeiishellprefixpairs.md) | 67 | `declaration-track:faac890827d0facd0d9ffc8832e658296b2ed70a6d330d38dfdf2d953aee9220` |
| 4 | `theorem` | [mem_effectiveTypeIIShellPrefixPairs_iff](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/mem-effectivetypeiishellprefixpairs-iff.md) | 77 | `result-track:7c57a475d0c50c44b83e1a96cbfc36e9f09247b936bc0705b095b11fd5890e73` |
| 5 | `def` | [completeLowerTypeIIShellPairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/completelowertypeiishellpairs.md) | 89 | `declaration-track:e9f442f810f9eb632f84a11b68d332a2307ab768a191c8cf1f6177ca6ce72312` |
| 6 | `theorem` | [effectiveTypeIIShellPairs_disjoint](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/effectivetypeiishellpairs-disjoint.md) | 95 | `result-track:303df890a6e771a8675dc341b6aa1ce4cabd87876afd903570155707e3bd1ffb` |
| 7 | `theorem` | [completeLowerTypeIIShellPairs_zero](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/completelowertypeiishellpairs-zero.md) | 112 | `result-track:1e5b124a6d30ef742dea192e1532155fc4fe987ab295abdd5c30183389904310` |
| 8 | `theorem` | [completeLowerTypeIIShellPairs_succ](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/completelowertypeiishellpairs-succ.md) | 117 | `result-track:1a3f99b73861a105fd214b54b6e58c03cd027ac908b5e3fb3c62c55c9d556f8e` |
| 9 | `theorem` | [completeLowerTypeIIShellPairs_eq_prefix](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/completelowertypeiishellpairs-eq-prefix.md) | 127 | `result-track:00226914867760fce058c9e1d8b9059d835b39199e6bebaa5b7da403d1586721` |
| 10 | `theorem` | [effectiveTypeIIPrefixPairs_eq_completeLower_add_current](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/effectivetypeiiprefixpairs-eq-completelower-add-current.md) | 170 | `result-track:90bce00a0f39fcd44169bc44ab235e149f565cd5e024d364dbcf475018d30708` |
| 11 | `theorem` | [completeLowerTypeIIShellPairs_disjoint_current](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/completelowertypeiishellpairs-disjoint-current.md) | 194 | `result-track:0463170c3fd48a1417a416ff0cc7ebc505a057bde40ff5ead1d79449c5fffe55` |
| 12 | `def` | [conductorThreeTypeIIPairTerm](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/conductorthreetypeiipairterm.md) | 210 | `declaration-track:8bce0825f20007b8deeac90a6946f72be831a4708d77b67bbcab5d17dce96db6` |
| 13 | `def` | [shellFactorBlockPrefixPairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/shellfactorblockprefixpairs.md) | 217 | `declaration-track:a5a4db453d13e2560c6394f143c075f5e51641dca3d56837c9694b34d7568bfd` |
| 14 | `def` | [enteredShellBlockSubtypePairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/enteredshellblocksubtypepairs.md) | 225 | `declaration-track:6d8cb64c03f4858cb55a0c97214a99226c75153d1b9e6363003590c6c6bdf47e` |
| 15 | `theorem` | [mem_shellFactorBlockPrefixPairs_iff](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/mem-shellfactorblockprefixpairs-iff.md) | 232 | `result-track:07069506fe2ba9549b6f3415b5161e9720a0cd43ffe9adf6faac468f0f7e37fb` |
| 16 | `theorem` | [sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-shellfactorblockprefixpairs-eq-sum-enteredsubtypepairs.md) | 246 | `result-track:a6af871690b7d9f816971bf388a629e54652d564d5068e963d21f2636886026b` |
| 17 | `theorem` | [sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-shellfactorblockprefixpairs-eq-bilinearmatrixpairing.md) | 291 | `result-track:ee8ecbddbd068ff21563c5ad78beb2e34061f8c468b70836e8573825ab18940e` |
| 18 | `theorem` | [typeIIProductShellUpper_mem_of_relevantBlock](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/typeiiproductshellupper-mem-of-relevantblock.md) | 314 | `result-track:5ee959298852f0aca0030fe4b584b11d3c8efabc824c59c16ea211aa1df976aa` |
| 19 | `theorem` | [shellFactorBlockPrefixPairs_at_upper](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/shellfactorblockprefixpairs-at-upper.md) | 325 | `result-track:bda4f3a75f8ce662dd83d774bad0fd608c72f00562bf2ba7477e8504b9c6d2a2` |
| 20 | `theorem` | [sum_shellFactorBlockPairs_eq_bilinearMatrixPairing_at_upper](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-shellfactorblockpairs-eq-bilinearmatrixpairing-at-upper.md) | 342 | `result-track:3f88dbe9fcd50147913bd1808a132dde5bff5d601da3d4c0fa22f51819139d73` |
| 21 | `theorem` | [sum_effectiveTypeIIPrefixPairs_eq_lower_add_current](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-effectivetypeiiprefixpairs-eq-lower-add-current.md) | 355 | `result-track:be3923f7256ec4511da2172273f8fe84424eabbdc1613dfc084262612610026e` |
| 22 | `theorem` | [sum_effectiveTypeIIShellPairs_eq_sum_relevantShellBlocks](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-effectivetypeiishellpairs-eq-sum-relevantshellblocks.md) | 369 | `result-track:aa5ae402a03c3c635fbb0b54c25d4c4eb3b469bedef8d2c862c431dbed7b6cc6` |
| 23 | `theorem` | [sum_completeLowerTypeIIShellPairs_eq_sum_relevantShellBlocks](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-completelowertypeiishellpairs-eq-sum-relevantshellblocks.md) | 385 | `result-track:12946976f17f48d1709a70574ed5f241085dd1812fecef1974c750bb1b303bc5` |
| 24 | `theorem` | [effectiveTypeIIShellPrefixPairs_eq_biUnion_relevantBlocks](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/effectivetypeiishellprefixpairs-eq-biunion-relevantblocks.md) | 405 | `result-track:f7d1936a7c6bba2407ef7652efb95670582cd6980891900fb9cd9a972f6d48e8` |
| 25 | `theorem` | [relevantShellBlockPrefixPairs_pairwiseDisjoint](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/relevantshellblockprefixpairs-pairwisedisjoint.md) | 433 | `result-track:d9cf0edfd5b31df621f9cf0217a310c82469c5fcef8e3c548ad8fb22de23362f` |
| 26 | `theorem` | [sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/sum-effectivetypeiishellprefixpairs-eq-sum-relevantshellblocks.md) | 451 | `result-track:0028f3c714ff15163bdec4487c47619fd99241de8c9969f7e51e6251e4a3f0fd` |
| 27 | `theorem` | [globalTypeIICutoffPairing_eq_sum_effectivePairs](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/globaltypeiicutoffpairing-eq-sum-effectivepairs.md) | 466 | `result-track:dc90e8e9b0d83b86a7fc82343b9a98ff98745f0ed15aa871218ebbea90031ed0` |
| 28 | `theorem` | [conductorThreeTypeIIPrefix_eq_completeLower_add_current](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/conductorthreetypeiiprefix-eq-completelower-add-current.md) | 508 | `result-track:cad51db32d07771e84bf034f553a7bf4778b15471f70a21428a59b723ee8ccd8` |
| 29 | `theorem` | [conductorThreeTypeIIPrefix_eq_sum_completeShellBlocks_add_currentBlocks](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/conductorthreetypeiiprefix-eq-sum-completeshellblocks-add-currentblocks.md) | 525 | `result-track:d563bf8cc933b2d3805aca8ca6182900792be4191197084546d3b4b624cf520e` |
| 30 | `theorem` | [conductorThreeTypeIIPrefix_eq_sum_shellBlockBilinearPairings](../../../../Combinatorics/ProductShellReindexNamespacedPublic.lean/declarations/conductorthreetypeiiprefix-eq-sum-shellblockbilinearpairings.md) | 544 | `result-track:eff9dcb02f00adc7edd04fdf114a0cb9709679179572a90591e0a541c3f3ca63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0caead29e2aebc5c47df05621a636559adbcea0ca1a70b14e36ef47c3a144020 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
