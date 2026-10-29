# Verification target: Episode

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac6128a34018d643332b3e4fc878c8dee27bf5c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac6128a34018d643332b3e4fc878c8dee27bf5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MemoryKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/memorykind.md) | 7 | `declaration-track:8d7f5341786f67036641793eb9e25901b36a0149b80662d8daaa60b3c45c7298` |
| 2 | `def` | [MemoryKind.defaultSide](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/memorykind-defaultside.md) | 19 | `declaration-track:75d0dadc17ad455be00413c6c28c708bad9742cd2aabcd0bccfe6569345f8732` |
| 3 | `structure` | [MemoryVertex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/memoryvertex.md) | 30 | `declaration-track:0cbf2d219650f5cfe29fda058a4fe9e9cc409e7eb91b1bbf9e62e0b60f38e65d` |
| 4 | `def` | [MemoryVertex.usesDefaultBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/memoryvertex-usesdefaultboundary.md) | 43 | `declaration-track:1b7b62319cfa1456939e51b06e72377f6dff11edf08167cddb47a4449013b407` |
| 5 | `theorem` | [episode_defaults_inner](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/episode-defaults-inner.md) | 46 | `result-track:7e199c48ebf4c001dea6b6f0fb508539ba72c7b4caf46bc70a0453533d38fea3` |
| 6 | `theorem` | [entity_defaults_outer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/entity-defaults-outer.md) | 50 | `result-track:58bc7ca3e4bfc497deb48f848a5f18454cf2c54934239a729b34c926fa5740bb` |
| 7 | `theorem` | [witness_defaults_bridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Episode.lean/declarations/witness-defaults-bridge.md) | 54 | `result-track:b4c699edafb816596693a0353726b18f4b2db75343e006b2ebe8fd7e08889227` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa360c225fd00d7e1047a0d43b97ab18f8b72416d6fbea4a8c7bc84a6d0613de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
