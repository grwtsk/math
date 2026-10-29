# Verification target: Stream Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "928ea7bc44def11e9270214c7b7d900d76d5b333",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StreamMap/Variant335f23e8a3302d378cb282abc520d0971d9828ab6ce5f98f24795910dfc281c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `928ea7bc44def11e9270214c7b7d900d76d5b333`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StreamMap/Variant335f23e8a3302d378cb282abc520d0971d9828ab6ce5f98f24795910dfc281c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StreamMap/Variant335f23e8a3302d378cb282abc520d0971d9828ab6ce5f98f24795910dfc281c3.lean.json)

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
| 1 | `inductive` | [AnyAsyncStream](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/anyasyncstream.md) | 37 | `declaration-track:f371f4f438dcb2d43e338ca6bdb7a41ce33e680f1d911708f7261afb2f07c56a` |
| 2 | `def` | [AnyAsyncStream.getSelector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/anyasyncstream-getselector.md) | 40 | `declaration-track:aeeb3f5a1e51692240abad0cf2450624ddd2e9129fff7fed6fea0e0da3b176b0` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/instance.md) | 43 | `declaration-track:1c9fea1ffe600661c2d271a2176f7b768a0d65d49359fc72c2329a760acc0ed0` |
| 4 | `structure` | [StreamMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/streammap.md) | 50 | `declaration-track:e3636cc747e502c822e83175d6d0c0b0a23110707ca67c8a6735ddc2e93b8da9` |
| 5 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/empty.md) | 59 | `declaration-track:cd80abb4aa57e02f7c004bba8a59a9fa329369c5981ecc7cf887626a597e823b` |
| 6 | `def` | [register](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/register.md) | 65 | `declaration-track:0c5bb146c4ee395c70902bfbc9c4bfaa022fde3f565449e65bf16a19b0a32f0d` |
| 7 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/ofarray.md) | 73 | `declaration-track:65f78af15210b6901568a7df4d7a34410c98bdda5d897a5d71b8a5631c7a6a60` |
| 8 | `def` | [selector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/selector.md) | 80 | `declaration-track:48945186fa7d1db9111e90e34fa7202d3355319bf9be51edf840fc6b7bf483ee` |
| 9 | `def` | [recv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/recv.md) | 87 | `declaration-track:d03dd7f118343cd39d017470103ecf2acf8a74a5cf9762a3ec9ea20cb4cb2334` |
| 10 | `def` | [tryRecv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/tryrecv.md) | 94 | `declaration-track:bb540fa818ce616e9c6e9a1b847362b9f11bec9298f0e093d6a047631ee17232` |
| 11 | `def` | [unregister](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/unregister.md) | 101 | `declaration-track:01e906513ac51ace09ffce7fb016587e9da36e83bbc0b704a1b5e85c874a0490` |
| 12 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/contains.md) | 107 | `declaration-track:91b3709c254995549a68d7775766ba499d8d69d0beb8c3fcc66a2b7b6f40525c` |
| 13 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/size.md) | 113 | `declaration-track:579b872e1cb838aebe9b99d3220c0fad6b64f9f9e77df7dcfa0b4749c23d6d9b` |
| 14 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/isempty.md) | 119 | `declaration-track:f8a26bcc711e21efa3bc36e934b241b6848e6195d2974f6aabe18743313210ca` |
| 15 | `def` | [keys](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/keys.md) | 125 | `declaration-track:2a0adfe5f02f6b142d31b987d6e40f4160a757b7381a4edfadb375391f0a3e92` |
| 16 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/get.md) | 131 | `declaration-track:57c7fe916274c03562a4f141420c2f4fdb94081e48951cbc1a972401ad08f215` |
| 17 | `def` | [filterByName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/filterbyname.md) | 137 | `declaration-track:9e2e596b0cf95fbeb06fcc18bac3a59aa69c304a89994089c7c1002109144e7e` |
| 18 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/toarray.md) | 143 | `declaration-track:95d688208a7d5813b0be7c34eb26779ceb3cc7682e90b48507ac7c61bcebaced` |
| 19 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamMapNamespacedPublic.lean/declarations/close.md) | 149 | `declaration-track:630ff533bc63ffc2d775eba16e3d7b8f4762efa8c7e2ae3fabd574eb1031f9bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2521c238422c4d1b4c548673d626b189625591adcd105a6124d1ae0a0f54807d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StreamMap/Variant335f23e8a3302d378cb282abc520d0971d9828ab6ce5f98f24795910dfc281c3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StreamMap/Variant335f23e8a3302d378cb282abc520d0971d9828ab6ce5f98f24795910dfc281c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
