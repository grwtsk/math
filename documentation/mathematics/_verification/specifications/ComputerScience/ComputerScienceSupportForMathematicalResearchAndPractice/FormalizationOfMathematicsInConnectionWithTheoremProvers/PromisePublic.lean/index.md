# Verification target: Promise Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c257b29461303f8ce3822c684836fa3cfcef4124",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c257b29461303f8ce3822c684836fa3cfcef4124`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845.lean.json)

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
| 1 | `opaque` | [PromisePointed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promisepointed.md) | 17 | `declaration-track:5a6cc89662598996eeeaef555ca244c7d00cf63717365042e08840b17f87772e` |
| 2 | `structure` | [Promise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise.md) | 32 | `declaration-track:c0cf98e91decf53dd90dbd352a9de59dcdff2f092f82f1e07c69c5ecd37a7814` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/instance.md) | 36 | `declaration-track:172e2f0b7eb22e80d37d2105b9193e0712259db2e9185569b6f3f0169bc3b645` |
| 4 | `opaque` | [Promise.new](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-new.md) | 41 | `declaration-track:a5a183017ca18a7b13416f5532355c3f805b7e06ab17e3e83fdc3574f1b40911` |
| 5 | `opaque` | [Promise.resolve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-resolve.md) | 49 | `declaration-track:bcf833349416ffa1c31996d1ba34916a9b3e645c08f839ad70b3a1714463402d` |
| 6 | `opaque` | [Promise.result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-result-source-edition-2.md) | 55 | `declaration-track:82991c0b232b6cfa8d5a3e4620fc39296b370aad6a2422685a1e4be7cecc70f2` |
| 7 | `opaque` | [Option.getOrBlock!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/option-getorblock.md) | 59 | `declaration-track:b043abb40b6179ddcc270d1b93631fa9a2c25c4033b7c3c4a3fec2b0e8b3940f` |
| 8 | `def` | [Promise.result!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-result.md) | 70 | `declaration-track:65c22f595983e1bee3e8428c54b76720879b3755bfd7997b9acbe8c35cf6ec95` |
| 9 | `def` | [Promise.resultD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-resultd.md) | 77 | `declaration-track:d6f9b8f637c49624c304af5fc541a09c32ae723b91308c4b1dfc8bc8182ce468` |
| 10 | `def` | [Promise.isResolved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromisePublic.lean/declarations/promise-isresolved.md) | 84 | `declaration-track:dd0993d7d2322eae9dc7584fd8d4061f2c25f96b65a75c9b82b9110919c35ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d115e7c2336f60622579c4f1809e86d3964a0b6dc3476166f6e7748301aaf7e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant0f9ab86789ac9672d78921a0587a5cecb115abe06781d04471ffe3d52b795845.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
