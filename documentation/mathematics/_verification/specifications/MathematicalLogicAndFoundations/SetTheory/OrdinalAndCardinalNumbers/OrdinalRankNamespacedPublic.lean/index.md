# Verification target: Ordinal Rank Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5cca4d424b47540bae7bc9ef2823ecb718a7517",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant4dbf6933fdc72b3db54053ddba64b950d8e4e4836a29d2fec4eabfc968372be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5cca4d424b47540bae7bc9ef2823ecb718a7517`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant4dbf6933fdc72b3db54053ddba64b950d8e4e4836a29d2fec4eabfc968372be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant4dbf6933fdc72b3db54053ddba64b950d8e4e4836a29d2fec4eabfc968372be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank-source-edition-2.md) | 40 | `declaration-track:c7bf9549dab901475d6cc25de1e94f21e945d956e69c17a6aed3fcc520f4b3f1` |
| 2 | `theorem` | [rank_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank-eq-source-edition-2.md) | 43 | `result-track:c049d24587ea5346cf53c2e9f2652ec5c3b09aec41bdf67929e8aeb33a3fb20e` |
| 3 | `theorem` | [rank_lt_of_rel](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank-lt-of-rel.md) | 49 | `result-track:35ebee99cd9dc0e03ed0e5e4048267c43b3f831cecea839de5ea507ff6ad6006` |
| 4 | `theorem` | [mem_range_rank_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/mem-range-rank-of-le.md) | 54 | `result-track:f802b79b1160fe0195d0ee1f409e3419db7bdbc9151ca735a3f595754460e2ce` |
| 5 | `def` | [rank](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank.md) | 77 | `declaration-track:1794d1ae9e01a3c8a440ca945e428493ba46e2e9ec4c9a11da31f72f9c58352c` |
| 6 | `theorem` | [rank_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank-eq.md) | 80 | `result-track:1e96f38ef025032385b3ce8f08d7245e41cad33f4557ae8a49d697becb99b8be` |
| 7 | `theorem` | [rank_lt_of_rel](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/rank-lt-of-rel-source-edition-2.md) | 85 | `result-track:b96d77c65b4b7c3fefcf7b9cae0286e7777dbc348d799f8ab1488d2aeb59507e` |
| 8 | `theorem` | [mem_range_rank_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/mem-range-rank-of-le-source-edition-2.md) | 88 | `result-track:ffd337d7f8393b00d48c5ada2078805d71186555502a759e5b3b25afae2457f0` |
| 9 | `theorem` | [WellFoundedLT.rank_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/wellfoundedlt-rank-strictmono.md) | 94 | `result-track:006a9c1a1c6b7e80ae8c5724e057c2de612bf43764dcb4278f03c0f7cdf8224f` |
| 10 | `theorem` | [WellFoundedGT.rank_strictAnti](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/wellfoundedgt-rank-strictanti.md) | 98 | `result-track:17e1eb0ab3a464d69a79793d51fc63325e7eb9b27c43a21edb666721501e4d8b` |
| 11 | `theorem` | [WellFounded.rank_eq_typein](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankNamespacedPublic.lean/declarations/wellfounded-rank-eq-typein.md) | 103 | `result-track:e9a2ee4d31778cb572a188349f0f66b7fc5a7304f1c5da541b3530148ae8ee94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8eb66810e51fc702d171b1cc2c0b5641f6796df8d7875bccf2ed6506025a0086 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant4dbf6933fdc72b3db54053ddba64b950d8e4e4836a29d2fec4eabfc968372be2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant4dbf6933fdc72b3db54053ddba64b950d8e4e4836a29d2fec4eabfc968372be2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
