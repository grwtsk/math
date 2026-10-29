# Verification target: Shapes Grothendieck

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Grothendieck` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasColimit_ι_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/hascolimit-comp.md) | 40 | `result-track:7062bb8c5d8b891ef5e7e690cd8fa853423998ae897291ace035a1f6e81ebed0` |
| 2 | `def` | [fiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/fiberwisecolimit.md) | 47 | `declaration-track:e63f8a2862f82afa14c29415dcfe731dadfaebcb56e5b8f715a18bad202f144b` |
| 3 | `def` | [fiberwiseColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/fiberwisecolim.md) | 82 | `declaration-track:408502a6cb53529272e63af91d5432bfab0a6a99c8bc90cc8be8e2242782bd90` |
| 4 | `def` | [natTransIntoForgetCompFiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/nattransintoforgetcompfiberwisecolimit.md) | 93 | `declaration-track:037a563f902a809e6e549b53f29b235129f2b1fee418b081ba3d84136d69ec88` |
| 5 | `def` | [coconeFiberwiseColimitOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/coconefiberwisecolimitofcocone.md) | 110 | `declaration-track:ee67bb2dde1f868a59ea78118e946971d6b878557728e49a6bc99f265c80978e` |
| 6 | `def` | [isColimitCoconeFiberwiseColimitOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/iscolimitcoconefiberwisecolimitofcocone.md) | 118 | `declaration-track:6fd28c57425aa0c6745a23c357452f612355b5bc80f1f94ce2824f350a7b7362` |
| 7 | `lemma` | [hasColimit_fiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/hascolimit-fiberwisecolimit.md) | 132 | `result-track:a21314863b6cdaf49d66efd95dd574cbee740ee0f6105761022c47c0a5177d44` |
| 8 | `def` | [coconeOfCoconeFiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/coconeofcoconefiberwisecolimit.md) | 140 | `declaration-track:eebfae515f36035ad5a5aa5cb542b2891bc372c04aabe0635f04a30c1ce7edb7` |
| 9 | `def` | [isColimitCoconeOfFiberwiseCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/iscolimitcoconeoffiberwisecocone.md) | 154 | `declaration-track:d8710b0587fbeba8f390bfecec15ae5c36014f7625a38302c071808bd5185d36` |
| 10 | `lemma` | [hasColimit_of_hasColimit_fiberwiseColimit_of_hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/hascolimit-of-hascolimit-fiberwisecolimit-of-hascolimit.md) | 176 | `result-track:f732e3057ae47b404c5e7ba08bc260f247e7b0bf85e3ae239c0822a8fd3464aa` |
| 11 | `def` | [colimitFiberwiseColimitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/colimitfiberwisecolimitiso.md) | 182 | `declaration-track:ad1e0b8ffd2be1d0c61423afbbc02540ad55b812522a3cecf8077ab8e6d272b8` |
| 12 | `lemma` | [ι_colimitFiberwiseColimitIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/colimitfiberwisecolimitiso-hom.md) | 187 | `result-track:687212044f5c59af8033c7ccff6b5ef06467a877c5624b43d18d3ac29b9d41e6` |
| 13 | `lemma` | [ι_colimitFiberwiseColimitIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/colimitfiberwisecolimitiso-inv.md) | 193 | `result-track:21eb86d02ae656f448df6852a78d1c2647989c0a6a3e8967a23967258305fab8` |
| 14 | `theorem` | [hasColimitsOfShape_grothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/hascolimitsofshape-grothendieck.md) | 203 | `result-track:95ed761cebb3fbc55f0920811a1a7cfe7f7a279be56743356d32762d64af2140` |
| 15 | `def` | [fiberwiseColimCompColimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/fiberwisecolimcompcolimiso.md) | 214 | `declaration-track:2c2be0281584e83faca0b8c1613d59eaca47a0f1bb5226f5fb419bf4cb4790d8` |
| 16 | `def` | [fiberwiseColimCompEvaluationIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesGrothendieck.lean/declarations/fiberwisecolimcompevaluationiso.md) | 221 | `declaration-track:c1cda1ef28c7a6e7918fcd6b31bdda8129fa099ae0deae8da8b2877674fe3fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44d614863a853c4a217b79688aee4ea5a05013b374133982e957e6d51df6047d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
