# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.IndexedOccurrenceEncoding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90df4f453b58a2f5c61a1e8401725cb8026e9974",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/IndexedOccurrenceEncoding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/index.md) · [Full source](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90df4f453b58a2f5c61a1e8401725cb8026e9974`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/IndexedOccurrenceEncoding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/IndexedOccurrenceEncoding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.TaggedOccurrenceProjection`](../../../../Combinatorics/TaggedOccurrenceProjection.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BoundedWordPartitions`](../../../../Combinatorics/BoundedWordPartitions.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionary.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/encode.md) | 21 | `declaration-track:230e28d039190b11e8046050e92dc771ae2fa2dc7a0fb7594b56b955c1115f78` |
| 2 | `theorem` | [decode_encode](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/decode-encode.md) | 25 | `result-track:bdb231aa4061feafadb62303110e455b2fc6f120008daf393062962413d51afc` |
| 3 | `theorem` | [encode_injective](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/encode-injective.md) | 29 | `result-track:0148e3fb8367d3e9263af209d8e14bf41238ff35bfd2a07e1e64a0095ff8cf51` |
| 4 | `theorem` | [encoded_reference_count](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/encoded-reference-count.md) | 35 | `result-track:31f31427a1a70a630c0d1d0b20b68e481fc0fb706ed86ac6b1996a1b86fabacb` |
| 5 | `theorem` | [evidence_applicability](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/evidence-applicability.md) | 40 | `result-track:27189ed38a802a98eade0a9b32eefe832c2fce9c6d2b1964ba116d4f8e0f9713` |
| 6 | `theorem` | [roundtrip_does_not_manufacture_evidence](../../../../Combinatorics/IndexedOccurrenceEncoding.lean/declarations/roundtrip-does-not-manufacture-evidence.md) | 49 | `result-track:7566ef41beb0032f5c294359486d09d3d1d966b7f3e67ff7979eefec2c51ba90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdea39f58b22e4c42337879fabd8f1d7951bafbc441647b94b3c1601915efc66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/IndexedOccurrenceEncoding.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/IndexedOccurrenceEncoding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
