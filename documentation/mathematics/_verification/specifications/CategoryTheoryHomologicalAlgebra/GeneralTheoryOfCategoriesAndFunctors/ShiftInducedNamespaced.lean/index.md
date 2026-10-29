# Verification target: Shift Induced Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a926d716dfeb3f65513d9c079cf833bbbdf6553",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta456635d45b2d1c8adbf74edf6630d5309ebb40c847eb3921286433535a62e8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a926d716dfeb3f65513d9c079cf833bbbdf6553`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta456635d45b2d1c8adbf74edf6630d5309ebb40c847eb3921286433535a62e8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta456635d45b2d1c8adbf74edf6630d5309ebb40c847eb3921286433535a62e8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/zero.md) | 46 | `declaration-track:ea11d4e5fda4bd3bd8ed2035304ee953e8e9b6742434b3f0dfb0652eb6929bc5` |
| 2 | `def` | [add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/add.md) | 51 | `declaration-track:09390532c85a36eac999285440612968bb9a164cc3f7d06da4e10b9b3bb41369` |
| 3 | `lemma` | [zero_hom_app_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/zero-hom-app-obj.md) | 59 | `result-track:a5e49b2467b56d4fe0036ec7df5b59d42d57d730f39c151941116c756d44a9e2` |
| 4 | `lemma` | [zero_inv_app_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/zero-inv-app-obj.md) | 67 | `result-track:9725115d64bcf716be62f9fff1f4c6ed4f55176d9c46c94f4c423603281b7f22` |
| 5 | `lemma` | [add_hom_app_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/add-hom-app-obj.md) | 75 | `result-track:302128bd78e6c05dd2e9a3ddce497475be43ccc4bbd01e2b19a4e032a6af12f4` |
| 6 | `lemma` | [add_inv_app_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/add-inv-app-obj.md) | 84 | `result-track:3d0d4917a2376c868a025fee0718590eb968c565638f7f9e662d168768ccced9` |
| 7 | `def` | [induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/induced.md) | 98 | `declaration-track:f162c14dd666836276fa2abde582322aa4da06145b371c03dd795ec4fde88ba9` |
| 8 | `lemma` | [shiftFunctor_of_induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/shiftfunctor-of-induced.md) | 165 | `result-track:a199179d9d1ad27a88d45069f29b5e2d7524fe984523b6ef8c1386f5f9f96d81` |
| 9 | `lemma` | [shiftFunctorZero_hom_app_obj_of_induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/shiftfunctorzero-hom-app-obj-of-induced.md) | 173 | `result-track:c2bec4018d0bf5183d034624374fbb87a37c8a0733f107f3299b677c654b8f3e` |
| 10 | `lemma` | [shiftFunctorZero_inv_app_obj_of_induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/shiftfunctorzero-inv-app-obj-of-induced.md) | 181 | `result-track:d8b6336bbf6c3d73c30f41df242e30e11cc2b3308c60473b9fb91cb7c74498bf` |
| 11 | `lemma` | [shiftFunctorAdd_hom_app_obj_of_induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/shiftfunctoradd-hom-app-obj-of-induced.md) | 191 | `result-track:00bebe92705fe78a734e9eb4a210da786d22272e968de6f9c5521ef3df361ce7` |
| 12 | `lemma` | [shiftFunctorAdd_inv_app_obj_of_induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/shiftfunctoradd-inv-app-obj-of-induced.md) | 202 | `result-track:db00914d0cecc688449777b4e530cd5c81903516f546a7826b71ffc4d689c0a1` |
| 13 | `def` | [Functor.CommShift.ofInduced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/functor-commshift-ofinduced.md) | 217 | `declaration-track:666c4affdf7fb32d5b9743cb9997eb201342ea0eaa51b13de249b8d201d491b8` |
| 14 | `lemma` | [Functor.commShiftIso_eq_ofInduced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftInducedNamespaced.lean/declarations/functor-commshiftiso-eq-ofinduced.md) | 237 | `result-track:e6ff358f044809821c8a92634c47f5cb7b427c59543d24ea960afffd31e4f852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2c6c83fc2fe2814e81956e1121c62bc8c4d005da2bd271a88d5b56ac2d4e80d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta456635d45b2d1c8adbf74edf6630d5309ebb40c847eb3921286433535a62e8b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Varianta456635d45b2d1c8adbf74edf6630d5309ebb40c847eb3921286433535a62e8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
