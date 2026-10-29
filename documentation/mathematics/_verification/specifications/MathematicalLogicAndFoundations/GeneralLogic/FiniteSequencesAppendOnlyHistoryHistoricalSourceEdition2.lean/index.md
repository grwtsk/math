# Verification target: GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e8168808d4fc90d920d70aa6ab95350f601e5b4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/AppendOnlyHistory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e8168808d4fc90d920d70aa6ab95350f601e5b4`.

Source path: `GRWTSK/Logic/FiniteSequences/AppendOnlyHistory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/AppendOnlyHistory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.FiniteSequences.DictionaryRevision`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkPrefix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkprefix.md) | 35 | `declaration-track:784509e8cbe5e851b974448c8299679f200ba35450f371552e6871e4a9a88250` |
| 2 | `theorem` | [checkPrefix_eq_true_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkprefix-eq-true-iff.md) | 39 | `result-track:31fe1029de24f4fb9b2f791110309bfb4b4df65a1c0623f4262e260db081b19d` |
| 3 | `theorem` | [checkPrefix_iff_suffix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkprefix-iff-suffix.md) | 44 | `result-track:2e44a313408e4aa0bf2f5e7c684fbbfaa6ee2996f592b86a4f4646ff36a7f670` |
| 4 | `theorem` | [checkPrefix_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkprefix-refl.md) | 48 | `result-track:47a7e9ebe06c24ce9ce67033cf5049225690ced3a61cae4749c61271a8275a13` |
| 5 | `theorem` | [checkPrefix_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkprefix-trans.md) | 53 | `result-track:7f39d0ac0e9528960a5fd02eba58030b514328e1b7059e3a4ee7fb2d2aef06c7` |
| 6 | `theorem` | [accepted_position](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/accepted-position.md) | 61 | `result-track:9f19eec8bb77bd442e603ab759a238040748d9fcee3ec329f2d8141c1820ffc2` |
| 7 | `theorem` | [accepted_key_order](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/accepted-key-order.md) | 67 | `result-track:84ce9a6e9f78865ab058b8379404685de3d42e5478026e2faf5a759acf8c1e05` |
| 8 | `def` | [checkDecodedExtension](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkdecodedextension.md) | 74 | `declaration-track:c0e18c8ebc5178f599183a4f041195611a4ab034a932a43e979a30bddb7e2002` |
| 9 | `theorem` | [checkDecodedExtension_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkdecodedextension-iff.md) | 81 | `result-track:391a20a1f5387c3570d2858322d7d0febf8874f83401ba70b8582c1389c5da58` |
| 10 | `theorem` | [decoded_prefix_of_acceptance](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/decoded-prefix-of-acceptance.md) | 100 | `result-track:9a2f0978452800cb9688bf3b0dc24173b2e888dd140fec781af61653b519edc9` |
| 11 | `theorem` | [checkDecodedExtension_pack_append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/checkdecodedextension-pack-append.md) | 111 | `result-track:82d7ed22752287a276d5bf92d3ad783779a1bea3e0901e3c44591239e9924740` |
| 12 | `theorem` | [reordered_rows_not_prefix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/reordered-rows-not-prefix.md) | 117 | `result-track:242dde38c5bd63e97c72c181891fb24bd20fd0bf33ff811bd201139235a2b261` |
| 13 | `theorem` | [append_repack_stale_slot_counterexample](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/declarations/append-repack-stale-slot-counterexample.md) | 127 | `result-track:d896f918b178b720149fb93dbd9a750c305a913c24a46cecfa34e4102ae38a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59754a7cfabc1ff39ab482c78259b7184dac1f13487bfc6406d9555371f21938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/FiniteSequences/AppendOnlyHistory.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrenceee11f403760fcab430847695.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
