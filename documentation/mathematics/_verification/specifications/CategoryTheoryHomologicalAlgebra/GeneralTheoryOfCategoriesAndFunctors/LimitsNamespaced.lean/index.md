# Verification target: Limits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "052cb4836f5aeb381ba374913e0ba469525b9d34",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Limits/Variant997c8e552a4d173c2abf97ea8bdea908c665e83daccb18345850cc2c9dab74c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `052cb4836f5aeb381ba374913e0ba469525b9d34`.

Source path: `GRWTSK/Algebra/GroupTheory/Limits/Variant997c8e552a4d173c2abf97ea8bdea908c665e83daccb18345850cc2c9dab74c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Limits/Variant997c8e552a4d173c2abf97ea8bdea908c665e83daccb18345850cc2c9dab74c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MonCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/moncatmax.md) | 44 | `declaration-track:03d6b4998d2930a0e576b466a4828968d27cf16a00c1e3e1562cc491839b1103` |
| 2 | `instance` | [monoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/monoidobj.md) | 51 | `declaration-track:7fff801a951e22004845cec4653db7a856639ceb44ea49bea497802c196a6fd6` |
| 3 | `def` | [sectionsSubmonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/sectionssubmonoid.md) | 61 | `declaration-track:0e8c5193c19f1fa4b6d3de94893c6cd967da3f327ddf5a9b435dee572246146a` |
| 4 | `instance` | [limitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitmonoid.md) | 72 | `declaration-track:b424203d0cd5ead0ccdc994d61e2d1e2e7b30d586fcf6a016b9d6a435fd9e871` |
| 5 | `def` | [limitπMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limit-monoidhom.md) | 80 | `declaration-track:c8aedf58067d3c569d35cc279795bc604095cb3481d860cd0cf33baf585c4eaa` |
| 6 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitcone-source-edition-2.md) | 98 | `declaration-track:cbdbfcfe30c146de99c41ffd899bc3f3123b886430ef7d12159a2e96aea7dede` |
| 7 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitconeislimit-source-edition-2.md) | 112 | `declaration-track:f98db406629d7a75c85fd5da89ab4f456086bbf918acafd66bf1ec50b02a4090` |
| 8 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/haslimitsofsize.md) | 125 | `declaration-track:17a562304010d3123294e12f4a429ae3b7c958f733915ab93eb5f6fb41beaa8b` |
| 9 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/haslimits-source-edition-2.md) | 135 | `declaration-track:4f21bdc4c6e81cb4081e2a510de8f402160a5b7bf226df312a8c912762a73f0b` |
| 10 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forgetpreserveslimitsofsize.md) | 145 | `declaration-track:05a43e94007dacc0b6c3a7ab455986f89f6588aeb332e0e42769b7eeaf87fc7c` |
| 11 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forgetpreserveslimits-source-edition-2.md) | 155 | `declaration-track:54dbf3b96c79304fee6cfa90b47178a2f315b47045ede59c1286aa9f1b543494` |
| 12 | `abbrev` | [CommMonCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/commmoncatmax.md) | 169 | `declaration-track:88ca7d7e55819af8dfca442165c14349ce8edef904062cd7c87c82b45c3f7586` |
| 13 | `instance` | [commMonoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/commmonoidobj.md) | 176 | `declaration-track:b9437dfc16a9aea2371ae6ebd0e1a0d1a0399aa2a6b81e021ef25a02d6880aaa` |
| 14 | `instance` | [limitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitcommmonoid.md) | 184 | `declaration-track:29938cd22f9f7aecbc354c64ea47be30312a41eabfdcee13a7a0e874f47639a8` |
| 15 | `instance` | [forget₂CreatesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forget-createslimit.md) | 198 | `declaration-track:3a7f7d665480d684c31851dcd10979153832a9d738642358cb46f2000397d9b5` |
| 16 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitcone.md) | 218 | `declaration-track:a84bf9d4e8f9a7d12ae51d17487dece73d18939c825bc838e8115d78606fbc4d` |
| 17 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/limitconeislimit.md) | 228 | `declaration-track:cc4b4b1d721e51e5525157f285b66ab8c45bf3fdf1433ab429b72ed652edb5c9` |
| 18 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/haslimitsofsize-source-edition-2.md) | 235 | `declaration-track:2b25adb0372c9684d7886fe32ea514649865e56517a5d2388b3de37ca5c643f2` |
| 19 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/haslimits.md) | 242 | `declaration-track:02148fdc21f19aee2fbc857b9885875af63dd24f4035931cdac190784b65802a` |
| 20 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forget-monpreserveslimitsofsize.md) | 254 | `declaration-track:b4eb1344689e30fc0d1ce4aded3d8e8ec3e033b8881b087069193d53344871bc` |
| 21 | `instance` | [forget₂MonPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forget-monpreserveslimits.md) | 261 | `declaration-track:6061e1eb51b6ac8775face01abf7f2b18b50f3ab2eb96f5db5a209754a1509dd` |
| 22 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forgetpreserveslimitsofsize-source-edition-2.md) | 273 | `declaration-track:59f628d5a1de9e73ed0f2507268e1b4ee387502b1dadf5f73782892362cdbd40` |
| 23 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespaced.lean/declarations/forgetpreserveslimits.md) | 284 | `declaration-track:3e8a84c170b31121f75499366134e558b8b98b8a3251d6da9a3f52bbc132ab30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff66604fe8189247c91109f796dee5f4b11ab171fb7dc218dbc9681bf57e71a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Limits/Variant997c8e552a4d173c2abf97ea8bdea908c665e83daccb18345850cc2c9dab74c9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Limits/Variant997c8e552a4d173c2abf97ea8bdea908c665e83daccb18345850cc2c9dab74c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
