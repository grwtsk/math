# Verification target: Enriched Hom Congr Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed643711e8deba2c5c513d1d5224a77c4992fd2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed643711e8deba2c5c513d1d5224a77c4992fd2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHomCongr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr.md) | 48 | `declaration-track:880663a980b645778cd3c2cd286a7d8ef7e45c53e0e9ffbc7dd5e4514620dca7` |
| 2 | `lemma` | [eHomCongr_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr-refl.md) | 61 | `result-track:dfe160b839a078b9545e995e8cd7e753558b787b435bbfba0eb7ca24983c1205` |
| 3 | `lemma` | [eHomCongr_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr-trans.md) | 64 | `result-track:f1173e35a68bc1f7225bb929e3576e0ab33b4c6a83c97dfab62e6a6aa26590ff` |
| 4 | `lemma` | [eHomCongr_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr-symm.md) | 70 | `result-track:a9c83dd2472daf96206e393def33674b62cf7920d5cc91d63082fd714c702295` |
| 5 | `lemma` | [eHomCongr_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr-comp.md) | 80 | `result-track:18d03f84c41d4c6c92a3d85bb37017dcf276fa323b035edc08f5999b0dac8716` |
| 6 | `lemma` | [eHomCongr_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedHomCongrNamespaced.lean/declarations/ehomcongr-inv-comp.md) | 95 | `result-track:a5a1c835e48c4f04b8d2fc76bddc57762e15f473dbb6d6ea716626c4cbe52e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25101f62f334ccee60bc3efc2f4072d579434194d253f2b601382b7ed5134bfd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
