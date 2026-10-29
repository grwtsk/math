# Verification target: Is Sheaf One Hypercover Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b37ef0bd3f976d7017ab090a0594e1e988b8e0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b37ef0bd3f976d7017ab090a0594e1e988b8e0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.OneHypercover` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OneHypercoverFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/onehypercoverfamily.md) | 56 | `declaration-track:f25825104faebee5e9c3b96d06e2395a4aea17bd5cf431e9ddf82ae1fa5581b9` |
| 2 | `class` | [IsGenerating](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/isgenerating.md) | 66 | `declaration-track:307faa8f9974f9a133a7e9d07098525ff3aaa5e55ef3b91a7da6fa5103338786` |
| 3 | `lemma` | [exists_oneHypercover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/exists-onehypercover.md) | 70 | `result-track:f220b9bdea33c0d831177dab5503154da99b1175a7d6700d3b304738b8d7040a` |
| 4 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/hom-ext.md) | 81 | `result-track:e7915cebb415e29b6e7bb335b2b2b0175557670eea23dd876435415c03ec8ceb` |
| 5 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/lift.md) | 96 | `declaration-track:51e0c3abdd09c421c78557c68f2659285e25cfca87d88f1ba3505c109c975bee` |
| 6 | `lemma` | [fac'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/fac-source-edition-2.md) | 107 | `result-track:6e368d476128517f211b3a6477bc7a22e7393fc143fe2545376ac140ffe2d8c2` |
| 7 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/fac.md) | 112 | `result-track:6563a1544fad4d74da43b6e37c39f02f09573255e9a9338728679264c676819b` |
| 8 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/islimit.md) | 128 | `declaration-track:4678ad24ebbc500f5ad184ae8043a5037c438f765fa1fa9489b7c860746aedcc` |
| 9 | `lemma` | [isSheaf_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/issheaf-iff.md) | 143 | `result-track:0acdfde6cb9dd8fdbb047611c0147868993545d11c59853a06c46ad8948f64a3` |
| 10 | `abbrev` | [IsGeneratedByOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/isgeneratedbyonehypercovers.md) | 158 | `declaration-track:325085038f37791af31db5d2792838d097b06c90664ae03688245007bbd2387b` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/instance.md) | 161 | `declaration-track:c72690165079452dfa92d569aa0b11c5cc778c8d9262e3b3d5805fb8418f3f96` |
| 12 | `lemma` | [isSheaf_iff_of_isGeneratedByOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafOneHypercoverNamespaced.lean/declarations/issheaf-iff-of-isgeneratedbyonehypercovers.md) | 168 | `result-track:88d05dda5297e494ca857fcb207c192b3dbbcdabf515954327e91545a4fd0880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f480e9b938d4e088a531adebaa4c7332b3948dc3d7a68d523a6d5d35534cd1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
