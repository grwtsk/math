# Verification target: Semaphore Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5ba7d526b9a7f498f16a67f682a63680c310264",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5ba7d526b9a7f498f16a67f682a63680c310264`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean.json)

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
| 1 | `structure` | [SemaphoreState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphorestate.md) | 17 | `declaration-track:d27814bfa4cf955ec358cdcad1fce81a2e23b55bddfd00ec6f05c7b900084bc7` |
| 2 | `structure` | [Semaphore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore.md) | 29 | `declaration-track:a4a6158b86da69de14c507bc8247fd3f2ea7c8b2538961e40df83b578e94d6da` |
| 3 | `def` | [mkResolvedPromise](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/mkresolvedpromise.md) | 35 | `declaration-track:1ac3331d087639c03b6a93aef71575ef579433a23515be32f756999b6edea295` |
| 4 | `def` | [Semaphore.new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore-new.md) | 43 | `declaration-track:55a6aa8d52a5504af7ad0c8e7e1eace6a327a1eaac658731332bd64d02a8f7b7` |
| 5 | `def` | [Semaphore.acquire](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore-acquire.md) | 50 | `declaration-track:d5738fbac95caeb8723f589741bae08073c3cd2426dfafbd98db9916b93ac1ba` |
| 6 | `def` | [Semaphore.tryAcquire](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore-tryacquire.md) | 64 | `declaration-track:1b0160b8a2a8f960e814a5d5db2049665d5f1190e04a792149b482ef75d06082` |
| 7 | `def` | [Semaphore.release](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore-release.md) | 76 | `declaration-track:c21ec991f4a7b1eadb9471b9adddb5fdb4ad143d5f6c237f61d68a05588d0505` |
| 8 | `def` | [Semaphore.availablePermits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SemaphorePublic.lean/declarations/semaphore-availablepermits.md) | 92 | `declaration-track:e5b02c4869bda35db34fabb715b1e41cb91105889bd8c45970c02b89ad2da61f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab3bf133934b460e58e7ccf334d81629c10a45f6ddc5a6be6b1ff1a8f7c5757d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semaphore/Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
