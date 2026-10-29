# Verification target: Iterator Namespaced Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4a9cce68fa376ab47213e414ba7941c00fa1cc1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4a9cce68fa376ab47213e414ba7941c00fa1cc1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/iter.md) | 38 | `declaration-track:fbcb839593ab31d916119370617a1656e5ba40c4999eddbc17b1d53f274dda94` |
| 2 | `def` | [keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/keysiter.md) | 54 | `declaration-track:745a4da12c0b1d999aa76604d4546f7a2226336ca353542216c910063d93ee80` |
| 3 | `def` | [valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/valuesiter.md) | 70 | `declaration-track:8fea7ce12a0669ffb5e35d5cbeddbf80c383d4509deec2bb83c0d1fafd10208b` |
| 4 | `theorem` | [toList_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/tolist-iter.md) | 75 | `result-track:bbc7fe932216f1c12890d4b03fddca4918a5918bcb1dd8174863635d645f84bd` |
| 5 | `theorem` | [keysIter_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/keysiter-tolist.md) | 82 | `result-track:804420cd9302532aab9ae776205b26ddf480848ed048b0f104be5b4262a1cc99` |
| 6 | `theorem` | [valuesIter_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition4.lean/declarations/valuesiter-tolist.md) | 87 | `result-track:bd337fec096897633a205a9661bea455300d34a72dff747e4bc85810ea4630c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52dda7ec2a56e5cb2823ba2adc52979c9c4a7c22aa17876152dbe9a7c2a2b09d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
