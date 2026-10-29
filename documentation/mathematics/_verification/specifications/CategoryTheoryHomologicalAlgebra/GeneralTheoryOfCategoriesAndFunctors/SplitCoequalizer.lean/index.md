# Verification target: Split Coequalizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d28e76f1313d5ff91535b6baddb1c2ca65c0a14",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d28e76f1313d5ff91535b6baddb1c2ca65c0a14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/issplitcoequalizer.md) | 57 | `declaration-track:af133b8347ca65b228626ad4fb1f19f87214d1d90470bdd535e46f213e32339b` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:478d512e11bc001888a88b82aac2c75aeba13beaf159746136a283692a1d76ae` |
| 3 | `def` | [IsSplitCoequalizer.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/issplitcoequalizer-map.md) | 84 | `declaration-track:503fbf2fb74450b1d4d39e626d2fee483052ef2f432978b257dc30d7c2af4317` |
| 4 | `def` | [IsSplitCoequalizer.asCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/issplitcoequalizer-ascofork-source-edition-2.md) | 99 | `declaration-track:b659e2b0158f25cb550293038a5a55eeb282b9e8268a133299194a5fdedbe991` |
| 5 | `theorem` | [IsSplitCoequalizer.asCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/issplitcoequalizer-ascofork.md) | 103 | `result-track:65d151230893c213b704263ccf4c2cace948697db705c60b889149cdcd8570ea` |
| 6 | `def` | [IsSplitCoequalizer.isCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/issplitcoequalizer-iscoequalizer.md) | 110 | `declaration-track:65a37663daf1f23511ecc8a5c10db5bdf810d99194f6496d7c59ed41d208eb43` |
| 7 | `class` | [HasSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/hassplitcoequalizer.md) | 126 | `declaration-track:72351dac415f5d680b744f92b0b5c0e6cd511b936530fd88cc221549274d0289` |
| 8 | `abbrev` | [Functor.IsSplitPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/functor-issplitpair.md) | 134 | `declaration-track:44626b463084797a9a6f818335d02ad0fef1a1bc245edd14a3f7eb3bbf4d54ed` |
| 9 | `def` | [HasSplitCoequalizer.coequalizerOfSplit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/hassplitcoequalizer-coequalizerofsplit.md) | 138 | `declaration-track:2b3354185dfa74a418fc3c1873b2791a163e9ab60f9509bba6880ca63c81f4f8` |
| 10 | `def` | [HasSplitCoequalizer.coequalizerπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/hassplitcoequalizer-coequalizer.md) | 142 | `declaration-track:e6fdb05c9f5919f467dc5a5645f2edd33a7b9502c68cb726c1f3c87bf9f2b4ae` |
| 11 | `def` | [HasSplitCoequalizer.isSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/hassplitcoequalizer-issplitcoequalizer.md) | 147 | `declaration-track:53c14288b035225291a6b2eb72a0b8f180d10cfb969fc5fb1ec00e8a8c7a67ba` |
| 12 | `instance` | [map_is_split_pair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/map-is-split-pair.md) | 152 | `declaration-track:069544008ff3c0d85807f094faa9e15dc70c0ef182d94bf54ea091ab4f3ddf7b` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizer.lean/declarations/instance.md) | 159 | `declaration-track:1b73303fea78f923091ec91ca77a54c8019bfb2a7ade7c83e14a0fccbfde6824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b9bb812ad966c349455cf59096963c0d518575c5b870e477020274ce104513f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant9f98965524885048e262ccd871682b2a133c948f220929aed44ac37ac6885a8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
