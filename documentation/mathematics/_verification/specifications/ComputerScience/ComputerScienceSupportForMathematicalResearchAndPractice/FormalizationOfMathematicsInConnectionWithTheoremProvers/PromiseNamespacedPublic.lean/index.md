# Verification target: Promise Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc359470d30a210ae30376a2a9be9f4a66ad0f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc359470d30a210ae30376a2a9be9f4a66ad0f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean.json)

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
| 1 | `opaque` | [PromisePointed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promisepointed.md) | 25 | `declaration-track:4237dfe9f881f1c0ea715ddfacd60e528b19308029545e6bc66efd2517e0bcd4` |
| 2 | `structure` | [Promise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise.md) | 40 | `declaration-track:e43ff9eb6a136f11e21fd0d834e10a2473bb7cee8296e43fd2f27e7e36e61d15` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/instance.md) | 44 | `declaration-track:eba0c136533585ed4b21fc287ecd3294ee078d765c0fe53fec6da46c1d4d4a21` |
| 4 | `opaque` | [Promise.new](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-new.md) | 49 | `declaration-track:6710257cd2f5f84d09e3b4737e735ab27f338d3265e3a8662dcc3d7006744a70` |
| 5 | `opaque` | [Promise.resolve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-resolve.md) | 57 | `declaration-track:9a744c6c239079b40905ad0990bf52a93717c82a6f74b2599583befba4e07353` |
| 6 | `opaque` | [Promise.result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-result-source-edition-2.md) | 63 | `declaration-track:c96b600a178c0a109df0b89378f282b741ef25d0326f12773f3dc55f9890e234` |
| 7 | `opaque` | [Option.getOrBlock!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/option-getorblock.md) | 67 | `declaration-track:45a659f6410012b3b646f94de540c87e5b1f2f9d7941a20e41ff7032fa3728c8` |
| 8 | `def` | [Promise.result!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-result.md) | 78 | `declaration-track:a1c8b8c305ad294bb9beedaad897bb540e37f32444447da031ffe801ee0fdc8a` |
| 9 | `def` | [Promise.resultD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-resultd.md) | 85 | `declaration-track:85832a247bfb5f5cb25af6a33fc8d408249ec4362ec60d3e1cf239a48991e9e1` |
| 10 | `def` | [Promise.isResolved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PromiseNamespacedPublic.lean/declarations/promise-isresolved.md) | 92 | `declaration-track:fbd3214d153786bf19261396e1ece81b0d2a35199bad8a7d4d9101dbb73874c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=186aeb0b74f768633c23df87705725ad5d2c27937ad9a4bfc64a353b66fc36e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
