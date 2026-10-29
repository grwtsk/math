# Verification target: Category Theory Differential Object Hom Subtype

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a211d4f74bcd4faaa69d1e24605bc2adb730d252",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a211d4f74bcd4faaa69d1e24605bc2adb730d252`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/differentialobject.md) | 36 | `declaration-track:0eafed09b4b77b62f9b358d256a71329a895bb1d499948072a75ed4b326a03a4` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/hom.md) | 52 | `declaration-track:47b1c507c9a3f8a9e2916ca4cb78f52c1c77487d4793bdc6551589943cf59b07` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/id.md) | 63 | `declaration-track:0178243ad121c077ac8f85c67699fa26ebc30ed4767d76f48ece3a06bea3b591` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/comp.md) | 68 | `declaration-track:b899fd2c2b9b6c2789667963ffd16c8f17a06b3518e4318b55847ea301b4c9a7` |
| 5 | `instance` | [categoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/categoryofdifferentialobjects.md) | 73 | `declaration-track:8263b846a325f1153a5b0aa4ce608e90678c0a8588e494876bfd3129e55a073a` |
| 6 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/ext.md) | 79 | `result-track:7144a6d4c0cf4a2d026ac5538e150f03e8a37c3ad1c462cda3e97e2827c4cd58` |
| 7 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/id-f.md) | 83 | `result-track:2ad049929350415cbe394651bc9ba295902006e5abf205e104d327e976e55c74` |
| 8 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/comp-f.md) | 86 | `result-track:f261a39c56d6f3dd466eda103c42e1cd8f581638b8bcefe971c2ed377af57742` |
| 9 | `theorem` | [eqToHom_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/eqtohom-f.md) | 91 | `result-track:670bffcab5bb84a741e865ececfae37765f86af192cd52a4d0562a9aba06c486` |
| 10 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/forget.md) | 100 | `declaration-track:d7aeb1fb3749916334a279aca51617a64b8690aed31bd02ffa2f3d079e2771b4` |
| 11 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/forget-faithful.md) | 104 | `declaration-track:cb2b5019716e7ee4ac71f28db4420751ea23b970ab3c93c0403bdd94a2094da3` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:4a43851782683c60e8f655e9e3a00d3709a968efaed65b454cba7eca4589e1cd` |
| 13 | `theorem` | [zero_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/zero-f.md) | 114 | `result-track:668ee7c456d4461c5214577c1687ae9b957251c0a139ab1273b2ba4aec9242c2` |
| 14 | `instance` | [hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/haszeromorphisms.md) | 116 | `declaration-track:5d33d17bbac4401b13d1acd223bd23ca80c012db6e940d1445a9f2d8ed3f26b1` |
| 15 | `def` | [isoApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/isoapp.md) | 122 | `declaration-track:4bc72f7d9aa18006f5fb40f49828a98c17f4ae754ecbd849037fc81879ca562a` |
| 16 | `theorem` | [isoApp_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/isoapp-refl.md) | 129 | `result-track:faf3d7643cf3f7af4bbcd8a10fcd7d6bf36e00851de70a7a054ed061a87f77ec` |
| 17 | `theorem` | [isoApp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/isoapp-symm.md) | 132 | `result-track:b4083704fad24269fce178beb5453b9c3bb162bfee68d96591b9bcdcf6d8b49e` |
| 18 | `theorem` | [isoApp_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/isoapp-trans.md) | 136 | `result-track:200eedb8f77b4996969133162cf0543a2b9bf5f2d21278802045c9b2e4a8a405` |
| 19 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/mkiso.md) | 142 | `declaration-track:88589515fa8e8fc1f90abab4760be164a559197f1c0aa8c668db02953139c760` |
| 20 | `def` | [mapDifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/mapdifferentialobject.md) | 163 | `declaration-track:9cfa45c75309904049502f9477a3f0d3e9d135068af519a9ed7db18c2e4ca2e5` |
| 21 | `instance` | [hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/haszeroobject.md) | 199 | `declaration-track:09e3cd1b48f5d6e632d73352502370750d4702c0c02684c1063df66544d9e1c6` |
| 22 | `instance` | [hasForgetOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/hasforgetofdifferentialobjects.md) | 214 | `declaration-track:9c842cc35050d47910cfd9bd98480816235b0d35c5519635da48a8d32c93b7cc` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/instance-source-edition-3.md) | 217 | `declaration-track:7a6a9f307e5b5322baf12039c06d7cbb0880b46faaaddeda06a513b16769f815` |
| 24 | `abbrev` | [HomSubtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/homsubtype.md) | 232 | `declaration-track:5ea6276933365207eb5e0f8ed894aeb1a967486b31cbe1f7a86442b521e02829` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/instance-source-edition-4.md) | 235 | `declaration-track:cfed8ececf36dea6d9e5709de25f87696009504cf28ef8334b7ee6835f39ad6e` |
| 26 | `instance` | [concreteCategoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/concretecategoryofdifferentialobjects.md) | 240 | `declaration-track:c49a9c03aed5dbe7e638c33e4a3c491ba0dcc67d863b653fde9f4d9e23819bfc` |
| 27 | `def` | [shiftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/shiftfunctor.md) | 265 | `declaration-track:27f5741375f7d4363b856bbd6dd71773ba6926f85765c6aa38c01a49582480ee` |
| 28 | `def` | [shiftFunctorAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/shiftfunctoradd.md) | 285 | `declaration-track:83481c5b0c7d06fa5ac890b40f7e4d02ed3241ee3398f6716ae36d8cf1668101` |
| 29 | `def` | [shiftZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/shiftzero.md) | 302 | `declaration-track:debb343ae8d62d4581f06c3eb7912d4960fea81835978d476a6a07bf9ec01ec7` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectHomSubtype.lean/declarations/instance.md) | 311 | `declaration-track:049a45646ad9d3cad94d7f674ee5b46a2ad3675a785ad07afbc7276d1054f1d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4bddf19e237a31dd1c43f1714541c3e2a90e8d44e9b97984829f4bdcf13e885 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
