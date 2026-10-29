# Verification target: Homology Differential Object Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f131f2892167e7d31fe0efced05a044254bd164f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f131f2892167e7d31fe0efced05a044254bd164f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/objeqtohom.md) | 40 | `declaration-track:31a190b2d4ed83404e330e07a1d95d7f2828aebadae3449ce5a309c2cc9ee683` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/objeqtohom-refl.md) | 45 | `result-track:e21cd5cde729b4340eeed50affca606060e3674381089046a5d0a5aadf5b0b29` |
| 3 | `theorem` | [objEqToHom_d](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/objeqtohom-d.md) | 52 | `result-track:d88c10caf3d10d409affeb748e384b5495bda68ff857a1842329bcd317b2b725` |
| 4 | `theorem` | [d_squared_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/d-squared-apply.md) | 56 | `result-track:c8594ab2e739185ea4a2e2e7c79704bb146dd7b18f04b2a014457b5a42ca9091` |
| 5 | `theorem` | [eqToHom_f'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/eqtohom-f.md) | 61 | `result-track:9f818eafe7d679414e235d2f776cc3c083238bb116df29c27fb624d49f57054b` |
| 6 | `theorem` | [d_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/d-eqtohom.md) | 74 | `result-track:d5c899374ca27c55eae899e02e081575d395cef1a124e7e3fa24408cd342d54b` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/dgotohomologicalcomplex.md) | 82 | `declaration-track:f617a90e0ec50a2046707c5d9fd5938400ba0d47a558fd7ec87068fbe8b36c13` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/homologicalcomplextodgo.md) | 104 | `declaration-track:5dac4d55ae5ec8cac86c6577bb36fcec1e405597ec4ba8592303b96045a9a85c` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/dgoequivhomologicalcomplexunitiso.md) | 117 | `declaration-track:d2c55a5fcb37c32320b3e4f62089b33beef1ef6551115f5d310348ce98a5d7ba` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/dgoequivhomologicalcomplexcounitiso.md) | 129 | `declaration-track:c5f19cd2328e89df24718e5fc69a411723d8027bb5eac6afcd88f4850e12153d` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectPublic.lean/declarations/dgoequivhomologicalcomplex.md) | 141 | `declaration-track:df0352706612bc993a5a9198887812ab7c555bafbe57d266be025d4879d26fbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03e440a970b8e60fde61112739e9cbd86cd2016d2c21917bb6551225730b4d6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
