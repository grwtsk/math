# Verification target: GRWTSK.Logic.FiniteSequences.DictionaryRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dde26c2acdad67f4422d40f96551275941224051",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dde26c2acdad67f4422d40f96551275941224051`.

Source path: `GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/DictionaryRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.FiniteSequences.IndexedDictionary`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionaryHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AgreesOnReferences](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/agreesonreferences.md) | 29 | `declaration-track:bf3f12e68c5e4c45bd9b688132ae1397e3d926b87fe361bebf8537335d18b339` |
| 2 | `def` | [replaceDictionary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/replacedictionary.md) | 34 | `declaration-track:72da4054a3e6b71f61812a38283deac987231fdfe17da69e873298f815f63ecb` |
| 3 | `theorem` | [decodeReference_eq_iff_lookup_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/decodereference-eq-iff-lookup-eq.md) | 39 | `result-track:dd0dd6ec4e2bb3d1a6b91862a6e23eb24b7d3e5729684e42962853b4b2d2416c` |
| 4 | `theorem` | [agrees_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/agrees-refl.md) | 47 | `result-track:daba98f81924070245a7e43d1efd87d3b22213be34cd5607d6ddf162cab2d100` |
| 5 | `theorem` | [agrees_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/agrees-symm.md) | 51 | `result-track:c6ae3145254e93c5216c998a38039627059f6385fe8babcef700c78f96e94495` |
| 6 | `theorem` | [agrees_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/agrees-trans.md) | 57 | `result-track:b7742f69ffc59a95cebb80a14a495f7bbe9f74ec83ae663c2b5b2df5300f6108` |
| 7 | `theorem` | [unpack_eq_of_agreement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/unpack-eq-of-agreement.md) | 65 | `result-track:16401ac4d7fa0d3c7c52509a5c25e86d5ae110994a19d383ee7752635002feef` |
| 8 | `theorem` | [unpack_replaceDictionary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/unpack-replacedictionary.md) | 80 | `result-track:273c2315759fcd6495b12a620dbd227d90f1887add8de12b306f94eba59d5e70` |
| 9 | `structure` | [RevisionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/revisioncertificate.md) | 86 | `declaration-track:d11556ba0fc1cdc1d28ebe6c07b731c91ca2555a2d2e23b9c70405f82ae265c6` |
| 10 | `theorem` | [RevisionCertificate.unpack_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/revisioncertificate-unpack-preserved.md) | 93 | `result-track:0b695fafdcffa42c41a41faa3a9ced656e6ca180221844642d3d211b79253b0c` |
| 11 | `theorem` | [unpack_pack_after](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/unpack-pack-after.md) | 99 | `result-track:93672aab005a3b030bc592ead826d519e3df87f24a7494e7a3dec26077dd9260` |
| 12 | `theorem` | [stale_slots_counterexample](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/stale-slots-counterexample.md) | 106 | `result-track:8597a21d6edcdbe75633f4f97a2c4b491e8d1e00543c93e6261595a81ee51133` |
| 13 | `theorem` | [failed_decoders_do_not_imply_agreement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/declarations/failed-decoders-do-not-imply-agreement.md) | 121 | `result-track:8d9fdc02e9f381ece6e84e11c47479089f6b255e6737b99879f96000fabb1604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79496654c9ffa4e31d03106e52d0199314de36579ec87e0e3c0dc9036d70ed20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrenceaca87234f3b7037a7f107897.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
