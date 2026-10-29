# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e5fd0bd51486d10423d9a29438c1eaf26fc929",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e5fd0bd51486d10423d9a29438c1eaf26fc929`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDecisionCertificate.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIncrementalComposition.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [decodesSatisfying_sequential_iff_combined](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/decodessatisfying-sequential-iff-combined.md) | 33 | `result-track:25a900ba6b813fbd990cccac9daf8ffdc245013b47a76a1eef30b3acc8769a5e` |
| 2 | `theorem` | [reuse_sequential](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/reuse-sequential.md) | 42 | `result-track:8ee5a8ab8f4db64d71f21004311416ab96ca25e0deb12b80394921693446120b` |
| 3 | `theorem` | [reuse_combined](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/reuse-combined.md) | 51 | `result-track:3e8be546cf0cfc1084976136c625bcf01df87c5067688fd9c636b799d2dd5d90` |
| 4 | `def` | [completeHistoryCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/completehistorycertificate.md) | 60 | `declaration-track:d491c0b2d3980c53be75deaebbbc25139b7438e0d53f98d6ea959066f2db6966` |
| 5 | `theorem` | [complete_history_reuse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/complete-history-reuse.md) | 64 | `result-track:c3221a3f448480f85adee0d6fac327f8c37b0604996c2f79bbb7424d02505ffe` |
| 6 | `def` | [emptyHistoryCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/emptyhistorycertificate.md) | 81 | `declaration-track:cc1254a4e302eb579389b520dc3649d475744f91ef6041497d17a26314b95841` |
| 7 | `theorem` | [old_evidence_not_append_stable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificateHistoricalSourceEdition2.lean/declarations/old-evidence-not-append-stable.md) | 85 | `result-track:3be29a2a68591b581985aeadcde9742d2a3005f485861572c787aa940fc21dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=987035265f6124e270cd4de8908ad164736ec2c1005aa31e989304a37149b16c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate__SourceOccurrencea685b1104a33ef8620c2712c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
