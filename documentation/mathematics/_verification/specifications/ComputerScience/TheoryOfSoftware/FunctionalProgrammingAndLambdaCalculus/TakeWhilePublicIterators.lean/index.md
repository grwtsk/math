# Verification target: Take While Public Iterators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0818588a064442741df256690c0c9ec07321adb6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0818588a064442741df256690c0c9ec07321adb6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean.json)

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
| 1 | `structure` | [Iterators.Types.TakeWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/iterators-types-takewhile.md) | 42 | `declaration-track:652ba2e0c0eb98f029525fb611bf20374690d545529c2925252262f489656bc2` |
| 2 | `def` | [IterM.takeWhileWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/iterm-takewhilewithpostcondition.md) | 87 | `declaration-track:5114d083dea0005f6643dbc8290d63128de1c8e69873309c626e1c84d13ea437` |
| 3 | `def` | [IterM.takeWhileM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/iterm-takewhilem.md) | 123 | `declaration-track:ff966a2f675ce0407e17c1c8e1ca17234f38c6b8eab52a776eae117ff6b75186` |
| 4 | `def` | [IterM.takeWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/iterm-takewhile.md) | 159 | `declaration-track:3ae96a2467a02c9afe58747a4c73bbe92d3f948bf428be6689022472e173f796` |
| 5 | `inductive` | [TakeWhile.PlausibleStep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-plausiblestep.md) | 169 | `declaration-track:c94ba879bfa02b2d613dfae082acae8b714c3c4e33108d428dcc2cfae4101858` |
| 6 | `instance` | [TakeWhile.instIterator](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-institerator.md) | 180 | `declaration-track:225eb9c33b1f2dbfa07f6b0efd2ec03e6189c512f99904e8c6eae0fd217d7d96` |
| 7 | `def` | [TakeWhile.instFinitenessRelation](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-instfinitenessrelation.md) | 191 | `declaration-track:4ae7293f84f7c3a108e21da0009b0add5856e21ce9ec80a40608074cc604b2d0` |
| 8 | `instance` | [TakeWhile.instFinite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-instfinite.md) | 212 | `declaration-track:dc5a3f4efc62755f804569560283018d30495d7691b7f61527585ff7376ac685` |
| 9 | `def` | [TakeWhile.instProductivenessRelation](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-instproductivenessrelation.md) | 216 | `declaration-track:1c056e7882726522880b7a1341e4e58838b25170ca3f80307b5989dd784f946f` |
| 10 | `instance` | [TakeWhile.instProductive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-instproductive.md) | 227 | `declaration-track:aa7162d59f5e7a05ed09f7e66ae3073cd3df7fc3c0bf86b2172cd8262ed2af70` |
| 11 | `instance` | [TakeWhile.instIteratorLoop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TakeWhilePublicIterators.lean/declarations/takewhile-institeratorloop.md) | 231 | `declaration-track:0ccae2cf2b0e9a5170246d835eeaf2dd5cab1ba7b847a165e68b7f4d7abe266b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17dfe73670fe132941f8fa60e761c93729fcad83d6692a3c404874bc6a7e6a3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
