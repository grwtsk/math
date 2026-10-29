# Verification target: GRWTSK.Logic.FiniteSequences.BatchCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9d384948407c1035c0c8276c65421641898eee2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/BatchCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9d384948407c1035c0c8276c65421641898eee2`.

Source path: `GRWTSK/Logic/FiniteSequences/BatchCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/BatchCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.FiniteSequences.DecisionCertificate`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDecisionCertificateHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalComposition`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIncrementalCompositionHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [decodesSatisfying_sequential_iff_combined](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/decodessatisfying-sequential-iff-combined.md) | 33 | `result-track:7a7ccd80c1d9b3df7c4462715ff7e136e2306d6e28a20353c4e76569d7218e37` |
| 2 | `theorem` | [reuse_sequential](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/reuse-sequential.md) | 42 | `result-track:6004eb0e90e63997a0f50670f060b3c6b44f7945bd588bbcba6576474caabaf6` |
| 3 | `theorem` | [reuse_combined](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/reuse-combined.md) | 51 | `result-track:8ff1d9087023945e6051ec01911806f848a11e32470057dbeb8c8e4f024ded54` |
| 4 | `def` | [completeHistoryCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/completehistorycertificate.md) | 60 | `declaration-track:91efe01232db2a214310183be73eb85521d222daa0c609be29c0b7dcf202df30` |
| 5 | `theorem` | [complete_history_reuse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/complete-history-reuse.md) | 64 | `result-track:49833a84f17b7abf6c5f055e0a4fb01d08db69115ae65692cd1067f011d96f3c` |
| 6 | `def` | [emptyHistoryCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/emptyhistorycertificate.md) | 81 | `declaration-track:4a2005127c837546c1188fb7e09184d4cf93d577b133e9eac78f3e8396695d29` |
| 7 | `theorem` | [old_evidence_not_append_stable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/declarations/old-evidence-not-append-stable.md) | 85 | `result-track:b103f6c01bd8303e479458fe31526bf2651c3a87f1c331bfc56eea7041c00882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f674531c6b692c6b8bb5d7be3fd4ced3a9e936705d99ab47fae70cb21c2db38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/FiniteSequences/BatchCertificate.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate__SourceOccurrence3cf3435a0816a65228f21c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
