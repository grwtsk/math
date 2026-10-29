# Verification target: Simplicial Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863a5836dfd6a11ffe2787dd7edc4316536c8f66",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863a5836dfd6a11ffe2787dd7edc4316536c8f66`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SimplicialCategory](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/declarations/simplicialcategory.md) | 45 | `declaration-track:2a10ed5b2cfc2a4bc1e76d03a91cecb2cd66ae9e88edcce12be89fea6ff36cce` |
| 2 | `abbrev` | [sHom](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/declarations/shom.md) | 54 | `declaration-track:b8b36f51fade2ef35a5257fabe970db7c113683e1fb0cbcf8f78fe6eeaccb4d9` |
| 3 | `abbrev` | [sHomComp](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/declarations/shomcomp.md) | 57 | `declaration-track:68ba0a66c7f42d50afa2782ccb66d1938f3be2633eb22ebf0713c0b57900d88e` |
| 4 | `def` | [homEquiv'](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/declarations/homequiv.md) | 61 | `declaration-track:cfe457bc7f044e5c472cf919597a805f1da375d0f2801a220948b9750ac4b611` |
| 5 | `abbrev` | [sHomFunctor](../../../../AlgebraicTopology/SimplicialCategoryBasic.lean/declarations/shomfunctor.md) | 66 | `declaration-track:d85b1b10d1a9e57afbead17a0a33898759fffbaaa92db2c0e144d1901331ff2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c933e001b1543e17279716f83f2a87f20a90b743d84dff1e7862c761c5cd5e57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9fdfa4d83eac4a0e557f4284a802416abf27bce8a59016dc03d6cdb24827f691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
