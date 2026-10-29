# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckAbelian.Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7253a96167993fdf90b22bd9ec35a1f46857b30",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7253a96167993fdf90b22bd9ec35a1f46857b30`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexAbelian` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [locallySmall](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/declarations/locallysmall--eacc31ba4bef93bc2b371b0c.md) | 40 | `declaration-track:eacc31ba4bef93bc2b371b0c1e99ff11c09970f42d7aefe1307a8264e9c96de4` |
| 2 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/declarations/instance--7bc6f5c71bd85ed489c81ec5.md) | 50 | `declaration-track:7bc6f5c71bd85ed489c81ec582b5a46bd6832bc6ac477535aa5b0336fbceb0eb` |
| 3 | `instance` | [hasExactColimitsOfShape](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/declarations/hasexactcolimitsofshape--db44845d75344b60b7734ae6.md) | 54 | `declaration-track:db44845d75344b60b7734ae63f668e69926fa17837dded5ec2a09937bd9c3ddc` |
| 4 | `instance` | [ab5OfSize](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/declarations/ab5ofsize--7d536e4f26cde4148623c7f1.md) | 65 | `declaration-track:7d536e4f26cde4148623c7f16443cc8847c04afe57ebb4d5d0bcc76a49dcb4d8` |
| 5 | `instance` | [isGrothendieckAbelian](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/declarations/isgrothendieckabelian--aab5c36a61e296ce0f6bf1ac.md) | 72 | `declaration-track:aab5c36a61e296ce0f6bf1ace2c006738e9a7fa292a5a9d55be5620bed73b25b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19f5c673dcf60ccda93f24eaae6df4ac914122b71e3bfdacab3ff377433f8f16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
