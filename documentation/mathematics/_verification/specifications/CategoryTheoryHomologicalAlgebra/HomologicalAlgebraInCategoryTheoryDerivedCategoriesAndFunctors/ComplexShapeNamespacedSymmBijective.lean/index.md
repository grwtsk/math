# Verification target: Complex Shape Namespaced Symm Bijective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbdaaa749b0be9d03835cf5711c7c45ddc2e5bd3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantbad2b63bf6ea038933f72fbfabbe7a088eecc196f4fdf63b5ab36e805768f4c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbdaaa749b0be9d03835cf5711c7c45ddc2e5bd3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantbad2b63bf6ea038933f72fbfabbe7a088eecc196f4fdf63b5ab36e805768f4c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantbad2b63bf6ea038933f72fbfabbe7a088eecc196f4fdf63b5ab36e805768f4c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexShape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/complexshape.md) | 66 | `declaration-track:c383acf334294ab36f660d76ae11b3ddb527a380afb75fdb2892f7e359be025d` |
| 2 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/refl.md) | 84 | `declaration-track:1bbe772f9a14e74b0d29f8352dbeccdfa40807e1950879e4f7413d1cb6d2c483` |
| 3 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/symm.md) | 92 | `declaration-track:638b592fa5dbe6f15767f1a08a78e0509f5a5f194899fd1c2e8fb3b64c0f7a2a` |
| 4 | `theorem` | [symm_symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/symm-symm.md) | 98 | `result-track:2958a06e0273111142c308251e19d62aa6b71547c8083478384055b629b3ef62` |
| 5 | `theorem` | [symm_bijective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/symm-bijective.md) | 100 | `result-track:cbac88e5f976a64146ea2d27112f5f9477fa6d3b7d0b986ff2fb27268b6d528c` |
| 6 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/trans.md) | 109 | `declaration-track:8d273e5f5466d0b545d9ae9cbb01af5436946e9c1179d508dde4eb78db88656c` |
| 7 | `instance` | [subsingleton_next](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/subsingleton-next.md) | 122 | `declaration-track:7740a73a81100ed915b479c91e85c69be1b467a08afca312d7704c524d1122f9` |
| 8 | `instance` | [subsingleton_prev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/subsingleton-prev.md) | 128 | `declaration-track:4f4f39957f3463c0813f77a32b4c76afb193f39409c746e104ad1b8890d59a7b` |
| 9 | `def` | [next](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/next.md) | 138 | `declaration-track:d17ff9b0c340f8b5312aecc7281c7f7337f13c9bf6c5fc83f9e3b60b83c88051` |
| 10 | `def` | [prev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/prev.md) | 145 | `declaration-track:70e324e12e82cb41a53a19949a13f72d738456f95f8d2e2708e9f165ff4bdf1b` |
| 11 | `theorem` | [next_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/next-eq.md) | 148 | `result-track:5c6a5a807dd259ddd3cb77074c6acc4a7f80b2503a40963e64c8a68fd8c7950b` |
| 12 | `theorem` | [prev_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/prev-eq.md) | 154 | `result-track:47d113b5ca374496af95cb89442e4836fe72b43c4d2022bf386b4f36025324ef` |
| 13 | `lemma` | [next_eq_self'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/next-eq-self-source-edition-2.md) | 159 | `result-track:aee776cd2f26cbed403838aea8a00ef47d39350c287c7956909b9778efa6a6bc` |
| 14 | `lemma` | [prev_eq_self'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/prev-eq-self.md) | 163 | `result-track:b2aeb7a73cd0a1c198bf20456351020d7f289d789e30fd7619070580e95f505a` |
| 15 | `lemma` | [next_eq_self](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/next-eq-self.md) | 167 | `result-track:a6089efe5581863549d39456114da75f4a365e9efa2d3a426c12987a61d9fdd3` |
| 16 | `lemma` | [prev_eq_self](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/prev-eq-self-source-edition-2.md) | 171 | `result-track:dc796dcd7fe5f9321ab8e3956eecda74c70d2015b484b2e723172d61d31dd894` |
| 17 | `def` | [up'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/up-source-edition-2.md) | 179 | `declaration-track:f732ddf7df2e9d8c8bddec3f618ffe35f8e9577d37e61610b835dc43ed9694a0` |
| 18 | `def` | [down'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/down-source-edition-2.md) | 188 | `declaration-track:dface1fe4353918c5353a995d708023b6af8ed902c7c2d56484cd0ea3813b6b2` |
| 19 | `theorem` | [down'_mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/down-mk-source-edition-2.md) | 193 | `result-track:9a2460e5b963b3493da7de75e446f08eceb133990dc1d0e19d3fa95428f97619` |
| 20 | `def` | [up](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/up.md) | 199 | `declaration-track:6a078bfb95703fbb09206ab657a7c3729ea6b81c52a465463db7e931ba81cfd4` |
| 21 | `def` | [down](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/down.md) | 205 | `declaration-track:1e59f6aeba1b8db7e732521e66acbc3bd96dadcfe47e5aec7d358589b7e32b1a` |
| 22 | `theorem` | [down_mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/down-mk.md) | 208 | `result-track:678c942a5942097f8cb2ec344d041fe4da2cc6f6917e4be3920ebd878aad98d6` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/instance-source-edition-4.md) | 220 | `declaration-track:f03834493173a5dd0f60ce131c7fa9ce42eca040a931c9efec1badcba2e54556` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/instance.md) | 223 | `declaration-track:5e42eb6731c8287260c88f1df9092be2fff4dd36372dbb1d5535c8bfb74022ae` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/instance-source-edition-3.md) | 228 | `declaration-track:bcf149589cf94e1a4d5e581c18642bab98600ab635d417b8670d95bfe2e6b4b7` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespacedSymmBijective.lean/declarations/instance-source-edition-2.md) | 231 | `declaration-track:6d7240293b30c0171678a978deeb86ada7148b00d7258eb4eb95d179cc94c603` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7200db67640f99717dcb2999e3bd66c1df1b75a6d2999ede3d395b745ec53e23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantbad2b63bf6ea038933f72fbfabbe7a088eecc196f4fdf63b5ab36e805768f4c0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantbad2b63bf6ea038933f72fbfabbe7a088eecc196f4fdf63b5ab36e805768f4c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
