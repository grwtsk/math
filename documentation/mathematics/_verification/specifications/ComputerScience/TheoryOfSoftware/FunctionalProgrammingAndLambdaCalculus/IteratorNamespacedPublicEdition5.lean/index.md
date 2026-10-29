# Verification target: Iterator Namespaced Public Edition5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d57a6157898debd2c362658d4c41a11cebc6b59c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d57a6157898debd2c362658d4c41a11cebc6b59c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c.lean.json)

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
| 1 | `def` | [iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/iter.md) | 36 | `declaration-track:d5f23f5da802ad73d4ae3803370dd5d30cdd1c160dbca56676eaafb049564853` |
| 2 | `def` | [keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/keysiter.md) | 52 | `declaration-track:2fa1c249d616810dddf3ecc441c1cf68e103f6213f2e83236c3257ace0eb855a` |
| 3 | `def` | [valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/valuesiter.md) | 67 | `declaration-track:708d9738aa8498d295058a9a0e5cae070eba0a1e2bc777f1ab69a8b8d535a421` |
| 4 | `theorem` | [toList_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/tolist-iter.md) | 72 | `result-track:bbc69330a68ff164b1b58b333ce0da8eb2fb3563d35a9b6f786dbe5c13dd8adf` |
| 5 | `theorem` | [keysIter_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/keysiter-tolist.md) | 76 | `result-track:22f3e12e3acb3046e34b89fe41f33b44d19eb57af200e9f0fa604ddb138fd045` |
| 6 | `theorem` | [valuesIter_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/IteratorNamespacedPublicEdition5.lean/declarations/valuesiter-tolist.md) | 80 | `result-track:5a66d2d849e5fd2d511c3460166da045f4d6df0b67780363087684f4f8e9ef2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa8579e1b09d6ead4a1d43b6ababf7bf0cb052b1cc1828f927774d8f40fc8871 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
