# Verification target: Symmetry Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34b2b546a1b034b46d28fc7be70f2d4affcb81b8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34b2b546a1b034b46d28fc7be70f2d4affcb81b8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmEquivFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/symmequivfunctor.md) | 44 | `declaration-track:f07bcf5dfd79d2fb640cdf0821563114e9edf3e0cdd1ed5078eb5b21269a3ebb` |
| 2 | `def` | [symmEquivInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/symmequivinverse.md) | 51 | `declaration-track:4ac19654b7f19a6e9f852c5d0f7dd62e0cf42d2aa6a20e5a7236137a6150a253` |
| 3 | `def` | [symmEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/symmequiv.md) | 61 | `declaration-track:819a4451f924611670b599fdb6a4716c1bd3e1ee5987bccbb1bec23c94715304` |
| 4 | `def` | [inverseFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/inversefunctor.md) | 76 | `declaration-track:f619cf4da89e321086dbbff8ea51634729fd1c9c6bbd0b4973d7adcf3948d4c1` |
| 5 | `def` | [inverseFunctorObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/inversefunctorobjiso.md) | 83 | `declaration-track:a935d808cfca1a923584070a3b0326d0e72934a521ba42c618e0196984d0f7ed` |
| 6 | `lemma` | [inverseFunctorMapIso_symm_eq_isoInverseOfIsoFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/inversefunctormapiso-symm-eq-isoinverseofisofunctor.md) | 89 | `result-track:4b95fc96f4c42ec20cd03557cd3cf21d236ba933d3b715846909fba22c1dce70` |
| 7 | `def` | [inverseFunctorObj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/inversefunctorobj.md) | 96 | `declaration-track:38ba4c1b3c024c7e7d1011193d4b9978e1ca260eaf17f365de6460a4cc8609bd` |
| 8 | `def` | [congrLeftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SymmetryNamespaced.lean/declarations/congrleftfunctor.md) | 103 | `declaration-track:aa4606c1abd6be55c5524ecd6c5e21b61457d4b80035fae59115e40defd752bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db418b54fa01a54bbaba3c3ebed0a95658a0801220ba3c841a0a9b6df6324dcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
