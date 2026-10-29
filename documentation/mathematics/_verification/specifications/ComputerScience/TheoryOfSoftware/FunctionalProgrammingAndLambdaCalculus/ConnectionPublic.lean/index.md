# Verification target: Connection Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41593a02a9827015f7e8c69cd03c4c646a320fcb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41593a02a9827015f7e8c69cd03c4c646a320fcb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean.json)

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
| 1 | `structure` | [RemoteAddr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/remoteaddr.md) | 37 | `declaration-track:b067edfd9afa270bb71bc0a19e3c92341492a89fbc8dc21c9e0d2fbaab02d5bf` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/instance.md) | 44 | `declaration-track:e6e174a139f2c1ce2131aebb1f2aaa82cd51fa6c08cf6267bee5a301c3477ad5` |
| 3 | `structure` | [Connection](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/connection.md) | 50 | `declaration-track:f408c89216782004bbcee644c26bb2aacce4d151f4e7cee033e30fe06e6f56b4` |
| 4 | `inductive` | [Recv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/recv.md) | 72 | `declaration-track:60e6c83ee9b715d59943eb4bf3322c429fc85a4ae15ff8abfdcc33a15b34d770` |
| 5 | `structure` | [PollSources](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/pollsources.md) | 85 | `declaration-track:2c028b346967c58596a2d93924527dec4c4f3c1e07587d0aaadc90699e5193c9` |
| 6 | `def` | [pollNextEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/pollnextevent.md) | 101 | `declaration-track:fc80b85fea262d8b16d3cab29abdc158daa46ad90d671cc0caf57e2620aefa4b` |
| 7 | `def` | [handleContinueEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/handlecontinueevent.md) | 148 | `declaration-track:ce6d25741cc52cdd124aee28895996aef059e2a2106e2bd87dbcbb3a764dcbd2` |
| 8 | `def` | [prepareResponseHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/prepareresponsehead.md) | 174 | `declaration-track:f090f0d519f269e653b061cf8df1eccc86dd3d3eb079cfb527a76568dd641830` |
| 9 | `def` | [applyResponse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/applyresponse.md) | 187 | `declaration-track:4f4440264147e0c2a0ffd7397a44b709e5be9c2ecad578da5a482d667af7c1a9` |
| 10 | `structure` | [ConnectionState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/connectionstate.md) | 211 | `declaration-track:8d88ba8813781d759bba03b4a00a2fb087c10a81c08504a7d45cc56a64a04158` |
| 11 | `def` | [processH1Events](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/processh1events.md) | 229 | `declaration-track:a86cbd89bcf5ef0507d4e2dee5cb836818695a7fa039d9ceec55e9bd15ff0e6c` |
| 12 | `def` | [dispatchPendingRequest](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/dispatchpendingrequest.md) | 309 | `declaration-track:911e651f7af314f21dd37c92cd4098e65152fcf717ef540c1b6ad9dc76451c2b` |
| 13 | `def` | [tryDrainBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/trydrainbody.md) | 338 | `declaration-track:37b4534f31ddd830c59637ee451c7f1d02e5a56164ac8364ade384af7ce92398` |
| 14 | `def` | [handleRecvEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/handlerecvevent.md) | 352 | `declaration-track:1423cc95a820bfc9cd9e2f2e31f2e425e7bb18262338690ee96a61110ce38911` |
| 15 | `def` | [buildPollSources](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/buildpollsources.md) | 431 | `declaration-track:b01e0351f5b7a856b6ed6b107001046f1cf32e6cb2cf8538e3ff54b759d1d10a` |
| 16 | `def` | [handle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/handle.md) | 469 | `declaration-track:f453543ea8a4547e0591e32e9b153b90d5950b670fadd99184741e6aaa1a795d` |
| 17 | `def` | [serveConnection](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ConnectionPublic.lean/declarations/serveconnection.md) | 553 | `declaration-track:c9724b53dc43ebae11ad3849b002a6a35592f24eded6d5a2817d2e3b46da0168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f6947f59165cdf8e20aaf361940ead99900eb78564d45653959823253e49a34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connection/Variantd622f663d5923f2bcad3272a0b990c69fe3f29f4c2732d0a8fce2c4d699a890c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
