# Verification target: Alternating Const

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b74ecf5b038954e6a47b465fa1e7b96dd8da86",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b74ecf5b038954e6a47b465fa1e7b96dd8da86`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alternatingConst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconst.md) | 28 | `declaration-track:9acb68c9c80b76bbc6fec1ac5f5180e44f9aa8823b5997fdb1eab4ee61ad3f3c` |
| 2 | `def` | [alternatingConstHomologyDataEvenNEZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconsthomologydataevennezero.md) | 49 | `declaration-track:c13bed12ae9a00abfa4c94f6cc127c611f8fbf06e67af543a723a7d1f3026eaf` |
| 3 | `def` | [alternatingConstHomologyDataOdd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconsthomologydataodd.md) | 56 | `declaration-track:c81a225e60294c0ed64e4fd5d15933dc5ce052b627f400c1563f08a1e6581698` |
| 4 | `def` | [alternatingConstHomologyDataZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconsthomologydatazero.md) | 62 | `declaration-track:7bdf7bb6ca2ab2b92a12f126b94218ab0d0fe0d9ebbd1c0481b1b67cde1493f8` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/instance.md) | 66 | `declaration-track:e2bd8aced5322f2478119c1cf9359315f404c6bbd3c18bdb818a8be0b9db7fb9` |
| 6 | `lemma` | [alternatingConst_exactAt](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconst-exactat.md) | 74 | `result-track:8405f62de402417f393b464bdae0248c8877dbd54dda86f96ff28db15269d2f9` |
| 7 | `def` | [alternatingConstHomologyZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconsthomologyzero.md) | 82 | `declaration-track:76646d79e95473f6e53208406603a8aade96489f61326d4f8fd72c19b744cee4` |
| 8 | `def` | [AlgebraicTopology.alternatingFaceMapComplexConst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/algebraictopology-alternatingfacemapcomplexconst.md) | 90 | `declaration-track:ef80ff6ee76e259ad25f76ce47447c8f778fd831e47d01062d79b601b46b538e` |
| 9 | `def` | [alternatingConstHomotopyEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConst.lean/declarations/alternatingconsthomotopyequiv.md) | 101 | `declaration-track:2bfd5543ccac1b3fed36413cbee479a8091ef0ba8459908451c9e91944442cda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7721c4b272a92487773745abd92b37e397ef76586a335286bf0b9248fe78f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
