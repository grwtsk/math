# Verification target: Small Shifted Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "210b81819fbcc85569fdb61efbc5940a002bd4d7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `210b81819fbcc85569fdb61efbc5940a002bd4d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.SmallHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSmallLocalizedShiftedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/hassmalllocalizedshiftedhom.md) | 44 | `declaration-track:526fe01c66a568d05c727ce585e5e8723baccd43947e30020d109b86ddb63391` |
| 2 | `lemma` | [hasSmallLocalizedShiftedHom_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/hassmalllocalizedshiftedhom-iff.md) | 47 | `result-track:5614596508eb0d258fd5104eaf32d4027b26f95f84ff5594628bb8c15c793ea3` |
| 3 | `lemma` | [hasSmallLocalizedShiftedHom_iff_target](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/hassmalllocalizedshiftedhom-iff-target.md) | 58 | `result-track:48d5ecc152a41019c4c28d48260e368ac08a2f6f2f8cf75d7a293cdb6814fcd9` |
| 4 | `lemma` | [hasSmallLocalizedShiftedHom_iff_source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/hassmalllocalizedshiftedhom-iff-source.md) | 65 | `result-track:46460f3d1217498f528ab8509617dd5fea3319c9a6a70316028394bb891e7a86` |
| 5 | `lemma` | [hasSmallLocalizedHom_of_hasSmallLocalizedShiftedHom₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/hassmalllocalizedhom-of-hassmalllocalizedshiftedhom.md) | 74 | `result-track:909b63dffd19415754190ca9e5875cd1b70af5eb96a6182a84a215305b4d4ac1` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/instance.md) | 81 | `declaration-track:099a3b6b557dd381b01a6b64c4f0e64ac4a8226853ccfe3f504f7e1ac7f633ae` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:56c35ef3cb76246447d5defb59da47e45c9e05c926e8cb4b0dc90427a7bc524c` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:3c84e1dd59430aada1aa574bb3c2d1203f1c7246a0dc46638fcbe2cbeac67d5c` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:59db1d4b4366f06d3faddcde6cd4a9e5cc2cac159adcca644db45943744c159e` |
| 10 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/shift-source-edition-2.md) | 108 | `declaration-track:7b929abdf43cd68287d716c6941baf4958df4717bbb55f803dd3558e34403e37` |
| 11 | `lemma` | [equiv_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-shift-source-edition-2.md) | 111 | `result-track:89d45251758e81def423cf7f7f93f78f1a0ef7f920b14227933822e8189597c7` |
| 12 | `def` | [SmallShiftedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/smallshiftedhom.md) | 120 | `declaration-track:48351f5633922096fdd17126508ec1d4410eafd4c4c5b7ab81c7641608c09bd0` |
| 13 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/shift.md) | 134 | `declaration-track:00b45c3a814121717bd0cb453ea631e2701184723d807aa2c6de8d517b71f280` |
| 14 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/comp.md) | 141 | `declaration-track:2730aeda7d0adc1e94ea5c3936d7deb2661bb22d0c1a4760778f88d668d0a6f9` |
| 15 | `def` | [mk₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/mk.md) | 151 | `declaration-track:93329fba38bf3ca22a7581c164a08e1e4e3b8475da40a92b4588b6db761dca06` |
| 16 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv.md) | 167 | `declaration-track:5d636aaa9b9fd897c137c047e3a64ad95c4c42a75d73a945f225710062d1a1d9` |
| 17 | `lemma` | [equiv_shift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-shift.md) | 174 | `result-track:30ebf3f1a5fe500f16c0bbac11f1a467a802dde4e57408b868567d8905961962` |
| 18 | `lemma` | [equiv_shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-shift-source-edition-3.md) | 184 | `result-track:ea253e5af45d4f07b98d4142eab5a137b7c4bc5aefe5b94ba0c7d7acaa71bedb` |
| 19 | `lemma` | [equiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-comp.md) | 194 | `result-track:0d8d179f7b0acc22585f70fc20a0fe749d81bb9393a86fe091c970d6465a80f3` |
| 20 | `lemma` | [equiv_mk₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-mk.md) | 208 | `result-track:9864e932a9ead0ec4bd88e4f833fc19d7e891d27b9e666d0987082744e870c3a` |
| 21 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/comp-assoc.md) | 225 | `result-track:53330dfcf13bac32c00ab5bb0f1d1d62bf6bb932c5e477f82e2110c510b18e4c` |
| 22 | `def` | [chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/chguniv.md) | 246 | `declaration-track:1d77713db16d5b1fed1b99b7dfa08f736105635fe2fd666a44f9aa7ec579a622` |
| 23 | `lemma` | [equiv_chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallShiftedHom.lean/declarations/equiv-chguniv.md) | 252 | `result-track:2ccc4a9692108a3ace160e482dbe358d63e823944ba1f079023524825a6cf97c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd3cff411a77c0fee900363903f09ce58de47c35059eaa48513437da21f47dde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
