# Verification target: Homology Differential Object Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad03b939bf17ad9e13c20aa824b88e34f34d8e7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad03b939bf17ad9e13c20aa824b88e34f34d8e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DifferentialObject` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/objeqtohom.md) | 51 | `declaration-track:aa1f4592692f579be4a32247e601da933082e48b5ba7268876fec3f21f85f453` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/objeqtohom-refl.md) | 58 | `result-track:0c79a9cc24927a47c7cd1e34afbb58fe94a499e51b97206125530cd55ebbd691` |
| 3 | `theorem` | [objEqToHom_d](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/objeqtohom-d.md) | 64 | `result-track:d736c9218b94eef4bbecf532357915d8d1f996c93f78467f99ecfe4a970c1011` |
| 4 | `theorem` | [d_squared_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/d-squared-apply.md) | 69 | `result-track:86a625097996bc56932d10782cff26078eeabaa7ab72eed08de536adbe241409` |
| 5 | `theorem` | [eqToHom_f'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/eqtohom-f.md) | 72 | `result-track:a1f46edc989e767c83e14d114dff18ea3eac585b070bc500e34d019cc44485db` |
| 6 | `theorem` | [d_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/d-eqtohom.md) | 89 | `result-track:b2f5780795db2503767bea0f9b3bb5c02c9852171f1de2db417aea6838f00ce5` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/dgotohomologicalcomplex.md) | 97 | `declaration-track:fdaad1ecaba2660f9552c59acbf3dde0d897c3189ed4e1d09dbeeca7a4f70075` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/homologicalcomplextodgo.md) | 122 | `declaration-track:260a8b277f742fe167d072208c9dba262844be71dfb2a927ab16c674324d3a0f` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/dgoequivhomologicalcomplexunitiso.md) | 134 | `declaration-track:6aac80125ec9c68a439a1967a4bb72995870503c6ad2b3dfac17d5433108c923` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/dgoequivhomologicalcomplexcounitiso.md) | 145 | `declaration-track:fcadd0c4bdc5991d6125c5f1a999875f71ccbb598e0ce248b1394b6863256593` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectNamespacedAligned.lean/declarations/dgoequivhomologicalcomplex.md) | 157 | `declaration-track:fb71822f26ef5bc9748ece9b36f2c3f0a70e90bf5867a624e8b2c2b1c569954f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcf1722419f30e08e131516a4119326b883265730a76c4b8254c4d6cd37d514d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
