# Verification target: Cursor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a7449505dfbbcc91cb21aa0190933b7e55f7fa6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cursor/Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a7449505dfbbcc91cb21aa0190933b7e55f7fa6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cursor/Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cursor/Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5.lean.json)

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
| 1 | `structure` | [OutcomeCursor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/outcomecursor.md) | 13 | `declaration-track:4ec2c69ec9cda67b7bf9c7a1ace8d469d17987284158080c350b00866a9d84d9` |
| 2 | `structure` | [ViewRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/viewrevision.md) | 17 | `declaration-track:5ed1d921851104f4cf289857c257b1fe590bc557c27ef18d209e6b2d56eff45a` |
| 3 | `structure` | [ResumePoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/resumepoint.md) | 21 | `declaration-track:0de4abd64fc720c2ccc02108892e9b698a045919a137b7932ab5f70d0efa1792` |
| 4 | `def` | [OutcomeCursor.Advances](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/outcomecursor-advances.md) | 26 | `declaration-track:cd043717a14117c87102f93ca3e60e120e404da635f0e6a46d87dd04c9239b2a` |
| 5 | `def` | [ViewRevision.Reaches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/viewrevision-reaches.md) | 30 | `declaration-track:413742b08e4fe1883c697c11150f1a99725e7bd50ce88e7a21631ae7142165db` |
| 6 | `theorem` | [outcome_advance_irreflexive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/outcome-advance-irreflexive.md) | 34 | `result-track:56e529be798c797d7cf9409dc27a5ec90eb94bd36e6355f5568b60fe911c5d98` |
| 7 | `theorem` | [view_reaches_reflexive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CursorNamespaced.lean/declarations/view-reaches-reflexive.md) | 39 | `result-track:1f4470e758d9b8f433562c3790ab73a44505b435124b540c75efe9f1f45d39f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82c74b57b7dd8df65b69f676573020c23540fa5692d2c6b1ead8d2d905e43e6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cursor/Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cursor/Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
