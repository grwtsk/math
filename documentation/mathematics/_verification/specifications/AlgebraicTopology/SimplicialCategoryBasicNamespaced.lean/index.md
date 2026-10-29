# Verification target: Simplicial Category Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03dd50dc946ccd79b85c3f7306dba3c1f9ec4358",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03dd50dc946ccd79b85c3f7306dba3c1f9ec4358`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SimplicialCategory](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/declarations/simplicialcategory.md) | 53 | `declaration-track:b6f27263d15afd865a9bf2ab65aacb8bcaaf5fa16a70fe63c5110ccaf692b5d5` |
| 2 | `abbrev` | [sHom](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/declarations/shom.md) | 62 | `declaration-track:eb383d8883fdca44ec3a56caaedf15585c8aa1f0b7be390240925754485ed90e` |
| 3 | `abbrev` | [sHomComp](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/declarations/shomcomp.md) | 65 | `declaration-track:816c9b98f5fca1969183fda74ee1e92b15766f52b912fe665b5aa97e2b6c1a2d` |
| 4 | `def` | [homEquiv'](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/declarations/homequiv.md) | 69 | `declaration-track:1ab3906b33dcbac60b83ad30641025149f756dccf45f79b5032baaf9e5655882` |
| 5 | `abbrev` | [sHomFunctor](../../../../AlgebraicTopology/SimplicialCategoryBasicNamespaced.lean/declarations/shomfunctor.md) | 74 | `declaration-track:22bb95d01aa3706fbcd53daabf387cfc7f111c3ada15cae170906f8d0cb7ec1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76cca3e92ce3463f8e21089494972081a8f7d1930ff3b72515000472c593f3b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcb4ccf9d150c1e6428f50af9d4759eb4d07192fe4c99249c2568e331e4ab393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
