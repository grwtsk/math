# Verification target: ZFCRank Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e007933f66f5e18506c837311b4a68cfd4c1730",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant7a5172b6de664d2c48c6657741ca269d7aabb0c378956a16ed17d0832496e973.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e007933f66f5e18506c837311b4a68cfd4c1730`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant7a5172b6de664d2c48c6657741ca269d7aabb0c378956a16ed17d0832496e973.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant7a5172b6de664d2c48c6657741ca269d7aabb0c378956a16ed17d0832496e973.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Rank` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.ZFC.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank.md) | 40 | `declaration-track:7c4adb14e293dad586ea397b918352fd2265095ed41fb76feaabdaca11eb284c` |
| 2 | `theorem` | [rank_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-congr.md) | 43 | `result-track:91ee9b4fc86b128729ad01ba7eb2eaf946f99f6f2c74e0d00723545e7b086cdc` |
| 3 | `theorem` | [rank_lt_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-lt-of-mem.md) | 55 | `result-track:c710847ad10dbca039834e41e9d07f02b45a5a3cf8f6856c9a98682ca40bfe4e` |
| 4 | `theorem` | [rank_le_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-le-iff-source-edition-2.md) | 60 | `result-track:90848661c881578fe75fec141b5849ad64d6d2070bfa30ca2d085b0f5d44f937` |
| 5 | `theorem` | [lt_rank_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/lt-rank-iff.md) | 66 | `result-track:3d37c788616a913c655710dd6123246477cd7c252bcc6a4d750b535f0d993725` |
| 6 | `theorem` | [rank_mono](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-mono.md) | 72 | `result-track:3ec885f4d72f19f67261f5392c02baab1bf82b0f1c89570c9e3e55b6e790292a` |
| 7 | `theorem` | [rank_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-empty.md) | 76 | `result-track:5394e38b913c307463070233924cde19993eb12cafa491c046490fcf98f112cb` |
| 8 | `theorem` | [rank_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-insert.md) | 79 | `result-track:d5cbd23b5848c1bc6b5e84c2b540201c1287ba74268d512c228136966b9d0c0d` |
| 9 | `theorem` | [rank_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-singleton.md) | 90 | `result-track:5dac8f3ca2871578bae44b68d4fe4a08eda69c85a33b77014eacb9522114dcab` |
| 10 | `theorem` | [rank_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-pair-source-edition-2.md) | 93 | `result-track:959229ab60c5891cbdeb4c9e87c5d4823eafab8078b09af4d52b98c3c983e4bc` |
| 11 | `theorem` | [rank_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-powerset-source-edition-2.md) | 97 | `result-track:f50c7bd08aa7163d2909a90fcaa9313c354472c92f85a46915dae0afb1118c3a` |
| 12 | `theorem` | [rank_sUnion_le](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-sunion-le.md) | 109 | `result-track:0427206c01f6f243afd44a8d4b011b8aae6322caaaedfed28a1e53dfb77804df` |
| 13 | `theorem` | [le_succ_rank_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/le-succ-rank-sunion-source-edition-2.md) | 114 | `result-track:d0a9c9a5f8eaf534779095b5a19bc78b7152a16544e3bd59de222464bbe6fbec` |
| 14 | `theorem` | [rank_eq_wfRank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-eq-wfrank.md) | 125 | `result-track:0211bd2ca0638d3ec53a4948a9dbaf2e4cd6cd21de637913f8fac55cb980e9ab` |
| 15 | `def` | [rank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-source-edition-2.md) | 144 | `declaration-track:eb18a9ed2097593cc3ca49ec4c47fb0ffc798df18ffadc8f88499161148b9a5b` |
| 16 | `theorem` | [rank_lt_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-lt-of-mem-source-edition-2.md) | 147 | `result-track:d7adf1cda2e50cbf89c55e7cc2aca0e5d048690f9832cf471eb2060ea506d4b7` |
| 17 | `theorem` | [rank_le_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-le-iff.md) | 150 | `result-track:88b8490c89b5f34bded7d30eb87a2d7b8dc9ee601556525e33902323ae02df09` |
| 18 | `theorem` | [lt_rank_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/lt-rank-iff-source-edition-2.md) | 155 | `result-track:fa673057885a0e5ecabe6110d9d5df047f2ce4728c676688209752d86b86f51f` |
| 19 | `theorem` | [rank_mono](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-mono-source-edition-2.md) | 159 | `result-track:96f7e6455ac0c9e695e2bb83a5319a65fa7241c7bd9184529edb6daa77defeaf` |
| 20 | `theorem` | [rank_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-empty-source-edition-2.md) | 163 | `result-track:78d438e4d326f1b82ec1ece1bc87e04dc2a1a8c3a83a871ff2c6cf0dcf3cfa99` |
| 21 | `theorem` | [rank_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-insert-source-edition-2.md) | 166 | `result-track:e7f7acb8d7955055abf6d4985f71a21c8e26a03f3cee2ce040d035a544140c69` |
| 22 | `theorem` | [rank_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-singleton-source-edition-2.md) | 170 | `result-track:a2ce358f7ef42b8d207e1f212a808b3877e803488c98a44f50c542a241c7045a` |
| 23 | `theorem` | [rank_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-pair.md) | 173 | `result-track:4f10559975aa6c2b846f415a304aed740bb6b6008f717fc8b15e4b14c09b5e01` |
| 24 | `theorem` | [rank_union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-union.md) | 177 | `result-track:8d482258e0236957ad9917923223f17753d5a34b9c7a2a1fd13256eda0a778a1` |
| 25 | `theorem` | [rank_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-powerset.md) | 185 | `result-track:6b01661ff538ec0ad68fdc5d11d8db2b352d6e074e27e384024778a8f3f8c37e` |
| 26 | `theorem` | [rank_sUnion_le](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-sunion-le-source-edition-2.md) | 191 | `result-track:c65832f553a9d50ca3577c1bbab5c3ca7f879a458f5a30bce4507a1da9bb22a8` |
| 27 | `theorem` | [le_succ_rank_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/le-succ-rank-sunion.md) | 196 | `result-track:36b60e0403585f094826d0e82d92ab0aba0902786033072f83bf6603f0101fbd` |
| 28 | `theorem` | [rank_range](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-range.md) | 206 | `result-track:1577270fe748e25f156bdee42a1d01601c057feb379bf6c8e35fd3d63fc1713c` |
| 29 | `theorem` | [rank_eq_wfRank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankNamespaced.lean/declarations/rank-eq-wfrank-source-edition-2.md) | 213 | `result-track:83ff6a9d2e3d536ff5ee523c99e4c297d07c1bccf78c0c3ddf2ffd3b50f576f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f193fe64b31e78cfae792ef98122cc3efeb213bf6bc4685e5028b955cee94c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant7a5172b6de664d2c48c6657741ca269d7aabb0c378956a16ed17d0832496e973.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant7a5172b6de664d2c48c6657741ca269d7aabb0c378956a16ed17d0832496e973.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
