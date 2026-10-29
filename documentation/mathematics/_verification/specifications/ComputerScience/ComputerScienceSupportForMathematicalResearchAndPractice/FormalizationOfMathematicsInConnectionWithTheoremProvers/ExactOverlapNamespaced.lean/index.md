# Verification target: Exact Overlap Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a22e1733a3be8d7ce0daf0d05d13c7d89a45cb4e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variantf82c9c3e59f7040366fe1f9b849706c1dc56c4072813127e3243efc22e23ffa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a22e1733a3be8d7ce0daf0d05d13c7d89a45cb4e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variantf82c9c3e59f7040366fe1f9b849706c1dc56c4072813127e3243efc22e23ffa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variantf82c9c3e59f7040366fe1f9b849706c1dc56c4072813127e3243efc22e23ffa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.IncidenceCode` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OverlapRegion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/overlapregion.md) | 24 | `declaration-track:754c89b41f474f8f6f164c2ed4d342bf025ea813516bd3012c16d8a8bf1065d7` |
| 2 | `def` | [overlapRegion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/overlapregion-source-edition-2.md) | 31 | `declaration-track:b0209dba390d7ea9e4d79421dcece6c4183d88c8c2ea6f756dd546255cc9b8f8` |
| 3 | `structure` | [ExactOverlap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/exactoverlap.md) | 39 | `declaration-track:f143991d795e8ac035393a2a7f862a2ebd789ef00620e24a9013a56cf956fecd` |
| 4 | `def` | [region](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/region.md) | 47 | `declaration-track:8240b0e0fc5035aaa526a627f7bc6542330878393bbf1fe81c2d6c0735ede4d0` |
| 5 | `def` | [common](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/common.md) | 51 | `declaration-track:cc3872e04f85c0b8bdd5003769ca880bb2148d76c82d059b08b7bb2754ab696d` |
| 6 | `def` | [leftResidue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/leftresidue.md) | 54 | `declaration-track:4ce7108e326917f8a105c3ad8f4e0b1c41e8c1dcd41963bca3263b3c740054d9` |
| 7 | `def` | [rightResidue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/rightresidue.md) | 57 | `declaration-track:ad533690ab1983b2fe745bc6479f8b841072df44532e97928d144b91705b9cd1` |
| 8 | `def` | [exterior](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/exterior.md) | 60 | `declaration-track:ae7b759e1652c09f3f1a0649d56b6ab25b5fac4d932f78545ef14f9ab64cf1dc` |
| 9 | `theorem` | [region_exhaustive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/region-exhaustive.md) | 63 | `result-track:5968a568a246db92f9cccd7c4f537a81401274b5d9b8096ab026f22e29fba2ef` |
| 10 | `def` | [finiteHamming](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExactOverlapNamespaced.lean/declarations/finitehamming.md) | 76 | `declaration-track:d3ff5a51b10617eccec736001763727cab13d52d374e73fc44f94d0f304465b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1043d1e95c4b348007ca6fb629c1c21d0fa80b00571a3ffcefd80364154150a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variantf82c9c3e59f7040366fe1f9b849706c1dc56c4072813127e3243efc22e23ffa9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExactOverlap/Variantf82c9c3e59f7040366fe1f9b849706c1dc56c4072813127e3243efc22e23ffa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
