# Verification target: Lax

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7924e51e155c13cad6e16719b2edbfa384fa914d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7924e51e155c13cad6e16719b2edbfa384fa914d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.ToApp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LaxFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/laxfunctor.md) | 56 | `declaration-track:7de790a819c712ebf5bc493423e57fa051b8f787cdbc059eaae8bc9468675212` |
| 2 | `lemma` | [mapComp_assoc_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/mapcomp-assoc-left.md) | 100 | `result-track:2d33ff60feb7f8a402a626a5db697d9320eecf1b46c8e463d3e037d2523efd27` |
| 3 | `lemma` | [mapComp_assoc_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/mapcomp-assoc-right.md) | 107 | `result-track:073bfa3537de415e7482cc722910ef6290d55c413134d83e92a09c804185de29` |
| 4 | `lemma` | [map₂_leftUnitor_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/map-leftunitor-hom.md) | 114 | `result-track:2adaa9ffa1e74e81e2017e7b9d74d5b66b5869b81f91674590f56559c5448ccf` |
| 5 | `lemma` | [map₂_rightUnitor_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/map-rightunitor-hom.md) | 120 | `result-track:73c734b38397b7447b47cf46868dd9eba315b0ad512a88a303d62988b9b99610` |
| 6 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/id.md) | 127 | `declaration-track:b8fa0b265a2c5c6fe67c6d4127bd9d633e844742440f3699c7eff904da727568` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/instance.md) | 132 | `declaration-track:078b2ed94bacad549c59dd12fc18e02a7d224596befdb3e0192c6ea87f3b22b9` |
| 8 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/comp.md) | 137 | `declaration-track:dce078ba5dcc8204e0d978fa4995905fff02b81b76961062fe884e798b45e536` |
| 9 | `structure` | [PseudoCore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Lax.lean/declarations/pseudocore.md) | 169 | `declaration-track:f868f88157fd9e663bd82f744ed57eded4c62e325786ea7e1fa5d2c76aae9c76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6aa351469e8da85d7c08b827b41ab3463459c0e3e77de774d88ebc10c01c767 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
