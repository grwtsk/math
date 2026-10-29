# Verification target: Ordinal Rank Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c788515dd67e4eddf841891816bd7c8e7f00d1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c788515dd67e4eddf841891816bd7c8e7f00d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854.lean.json)

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
| 1 | `def` | [rank](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank-source-edition-2.md) | 32 | `declaration-track:e755a73bc5b3741c435d9772e18436775548a36a9217a5c44d726aa7075052da` |
| 2 | `theorem` | [rank_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank-eq-source-edition-2.md) | 35 | `result-track:c555962dd7c296365aff666a2accb97ff234d51936d7fc9b294c910b2d70ab43` |
| 3 | `theorem` | [rank_lt_of_rel](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank-lt-of-rel.md) | 41 | `result-track:160f760c3bbb057e804eed07c54b0d17c7f0b518ab581b1a046244efde72ce9f` |
| 4 | `theorem` | [mem_range_rank_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/mem-range-rank-of-le.md) | 46 | `result-track:13090ea275863f066a36672c9260a2634ff9ce334277959fd152b58d7ac45a99` |
| 5 | `def` | [rank](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank.md) | 69 | `declaration-track:6b2721a35ca7feddc1ad08163e884cee96288549b82f38bdf1afa0d7f121513a` |
| 6 | `theorem` | [rank_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank-eq.md) | 72 | `result-track:99749b724c9db124f8a153d8ff543e601c980eeb29653a8ce36438a65d11e170` |
| 7 | `theorem` | [rank_lt_of_rel](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/rank-lt-of-rel-source-edition-2.md) | 77 | `result-track:60f52df1343189343875087860ffca776c963e861c9c94efbc96dc83c9aeb57b` |
| 8 | `theorem` | [mem_range_rank_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/mem-range-rank-of-le-source-edition-2.md) | 80 | `result-track:3b8ce428026ab4ca49e31ad6452febde659d24604853677460fb5ab7ac464584` |
| 9 | `theorem` | [WellFoundedLT.rank_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/wellfoundedlt-rank-strictmono.md) | 86 | `result-track:54283454e6c1a390e7e7b7fecbc70cb7ee272221baf50c00eb3f68117dddf4f2` |
| 10 | `theorem` | [WellFoundedGT.rank_strictAnti](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/wellfoundedgt-rank-strictanti.md) | 90 | `result-track:a3e0272cac3bf8dcadb94d467b117b56b491f75986b9f553f961e4a6bab6f477` |
| 11 | `theorem` | [WellFounded.rank_eq_typein](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalRankPublic.lean/declarations/wellfounded-rank-eq-typein.md) | 95 | `result-track:8915ad10f9f93b0efe6986bf89644e709f6600092129b6a118461ad7bad12a46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d43318de6dbadfd5c11c2aa441933e31342c6daff74015047626f75d3d30d7c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
