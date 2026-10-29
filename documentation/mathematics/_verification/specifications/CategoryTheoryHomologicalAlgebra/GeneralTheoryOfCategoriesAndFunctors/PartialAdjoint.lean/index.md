# Verification target: Partial Adjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c48222f674f41826200847952192444df7c07e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c48222f674f41826200847952192444df7c07e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointObjIsDefined](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/leftadjointobjisdefined.md) | 48 | `declaration-track:657bebff0185f82cd9dfdf7a829386461ecaf7ea9f4d852318519689ec83895b` |
| 2 | `lemma` | [leftAdjointObjIsDefined_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/leftadjointobjisdefined-iff.md) | 53 | `result-track:281bed6c5d3a572c1dfa1889e7d87874821b6b6e351e80a13aba8a51ebc40438` |
| 3 | `lemma` | [leftAdjointObjIsDefined_of_adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/leftadjointobjisdefined-of-adjunction.md) | 57 | `result-track:0567e73735b6da030fe23eeb5025b9864b3ad12a1c99d89c4659b8f9efaa019f` |
| 4 | `abbrev` | [PartialLeftAdjointSource](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointsource.md) | 62 | `declaration-track:b418817afed5fac61055cd56b9dc2646932f1a6efbaaf134d11fdfc996b0d957` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/instance.md) | 64 | `declaration-track:a5bf5c2eae3481fa29a9dc2a93ce0558469d9064092c3ff9e8dfb3d54ccdca6c` |
| 6 | `def` | [partialLeftAdjointObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointobj.md) | 70 | `declaration-track:b087e7a6937307798805fce37a56c54e305a58ef7f73771e8d23c63f8fb49c32` |
| 7 | `def` | [partialLeftAdjointHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointhomequiv.md) | 76 | `declaration-track:6c20a6e2fc54cce5e59c27c00ed33151b6dff09875ad7fd99ec3475ed1194302` |
| 8 | `lemma` | [partialLeftAdjointHomEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointhomequiv-comp.md) | 80 | `result-track:2b9d7e8b98312f66de333770e6749c0cd5259424904665380fa8a9e6a3cd4a1f` |
| 9 | `def` | [partialLeftAdjointMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointmap.md) | 87 | `declaration-track:8de23ad9a78015bf14aaf5c5eb4f043560b01e882fa446436e7a674f354a9a66` |
| 10 | `lemma` | [partialLeftAdjointHomEquiv_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointhomequiv-map.md) | 92 | `result-track:49b0dcf95d650c824b22ee3cfd25ed2edd327905011d9fc949dbb659eec1ed72` |
| 11 | `lemma` | [partialLeftAdjointHomEquiv_map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjointhomequiv-map-comp.md) | 98 | `result-track:0d21adff801d3fbd7fa4000f923f943ddb13cd2912962c92457e7adca126a42b` |
| 12 | `def` | [partialLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/partialleftadjoint.md) | 107 | `declaration-track:00cb844915e956f785f3bbd2c722053798c436f331c6d887c9a3d1d67f052429` |
| 13 | `lemma` | [isRightAdjoint_of_leftAdjointObjIsDefined_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/isrightadjoint-of-leftadjointobjisdefined-eq-top.md) | 126 | `result-track:64200df5bd9bfdfd72db4a2dab5d17e85a1afd8608e21ad42ac6a057108eb9b1` |
| 14 | `lemma` | [isRightAdjoint_iff_leftAdjointObjIsDefined_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/isrightadjoint-iff-leftadjointobjisdefined-eq-top.md) | 135 | `result-track:33f083c0607e1f3ddd87ac5272281e63580768a2b8c698ed8f4004ce14704ed6` |
| 15 | `def` | [corepresentableByCompCoyonedaObjOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/corepresentablebycompcoyonedaobjofiscolimit.md) | 143 | `declaration-track:da2d61569ebccaeb5a917424223c3065fbb0c933c6ac12f582eeebc2b082c6ba` |
| 16 | `lemma` | [leftAdjointObjIsDefined_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/leftadjointobjisdefined-of-iscolimit.md) | 170 | `result-track:7e47ff4d99879a2af29765f6aee045b09fa541ef9e7cf2b20b65ac7cba0b1254` |
| 17 | `lemma` | [leftAdjointObjIsDefined_colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PartialAdjoint.lean/declarations/leftadjointobjisdefined-colimit.md) | 177 | `result-track:48222d8ff1ac828ff87a607b40c3981d4f8b62d96c4ef7f41f74264addc20cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33e345ed67100ce141d898452f10de10171bbba23962af02d0b262474a454bec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
