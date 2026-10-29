# Verification target: Category Theory Differential Object Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "039b30affed4c4d677f59fc5607481702fda1085",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `039b30affed4c4d677f59fc5607481702fda1085`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/differentialobject.md) | 47 | `declaration-track:e5887d089ae7c77d477e31de05c1c2500905ece0ac67f30b49ec19e3dce80b9b` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/hom.md) | 66 | `declaration-track:2af97203960561d211fabed04b6b0e11d77fbfbe2bb5eebfdeb43ee417fd9b1a` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/id.md) | 78 | `declaration-track:11391727c226dbec337efc9f9fe7b975cbb9f8a492eae1167319b4214b435f6e` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/comp.md) | 84 | `declaration-track:740101ff62e968b846248b4d3741e89fc773c01865c0d9826110e294bffca015` |
| 5 | `instance` | [categoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/categoryofdifferentialobjects.md) | 90 | `declaration-track:0da870f0bda1582585bf64a930bbc7a97326b87922f21b36042c0dd963d0a814` |
| 6 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/ext.md) | 98 | `result-track:edb1242c916b2d918528fc737b1aeb28830c07d3fe4a2a54306bf186c53da372` |
| 7 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/id-f.md) | 102 | `result-track:deb8e8b3ab3950dd2c0c0b0f90ce966cd9085f5b69c9c0c27cd6c7e034a3c910` |
| 8 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/comp-f.md) | 106 | `result-track:b3e3fe0df886266f374294617301a231566aac9ff02d51f37931f42b137c1754` |
| 9 | `theorem` | [eqToHom_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/eqtohom-f.md) | 112 | `result-track:1639deeb7e16a324c836cc1ceb43ff720ec78d7ec1d66e998a2cb4a5d887d57b` |
| 10 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/forget.md) | 122 | `declaration-track:d315c023a3e0f79c8b35e7404132ec2e3050faa538fdf101528667c87b5a3ea7` |
| 11 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/forget-faithful.md) | 127 | `declaration-track:78137b887f4ec86c650f4146d33dba14b647c4da6ea234882370a43c05badfd1` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/instance.md) | 132 | `declaration-track:0aefec740d52d661f65856d3eb53f9445a67fd28f6d27f10a211091f3985cb77` |
| 13 | `theorem` | [zero_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/zero-f.md) | 137 | `result-track:1eef88aed8739ed2cb54e766179263796b7b4b9b52de629323175ed7dd2eb933` |
| 14 | `instance` | [hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/haszeromorphisms.md) | 140 | `declaration-track:9e31141443f336aaab5c5c4bfc2d2ba6a497cb45b25f674f4499a05aff760c9e` |
| 15 | `def` | [isoApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/isoapp.md) | 145 | `declaration-track:d6dd062ca876bafff95e69731a08e2a887e9ab79cc33235b81591c90b755d648` |
| 16 | `theorem` | [isoApp_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/isoapp-refl.md) | 153 | `result-track:ff4f7fc05416ac1bc4e1668e6a461da8e13822b6039494480caca8dfdfe9ea2f` |
| 17 | `theorem` | [isoApp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/isoapp-symm.md) | 157 | `result-track:0123483ea091bdaf84330638f0233b50c8c51e2c9830939414f4e11181319c77` |
| 18 | `theorem` | [isoApp_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/isoapp-trans.md) | 162 | `result-track:f2cf07d143844147496e9cd1387903ef203b6414cc05a54e6917b0977149c0af` |
| 19 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/mkiso.md) | 169 | `declaration-track:40ba3fedbf38d12b6ca470b0994a55d7ce26cdb1ef09da2a31538a2f2a2c36c4` |
| 20 | `def` | [mapDifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/mapdifferentialobject.md) | 192 | `declaration-track:66475ecc2d8303472e8f1fc38774ae94aa4be7037c22b4c4715546fb11d414bb` |
| 21 | `instance` | [hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/haszeroobject.md) | 230 | `declaration-track:6e6b8c9d634a873de9baa167ef26ad86a193ce49309d6deb874467488773ae66` |
| 22 | `instance` | [concreteCategoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/concretecategoryofdifferentialobjects.md) | 246 | `declaration-track:c230134725c5846bffbeee6046bb27389f265e08ad7a23b3e7119f3028091cd4` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/instance-source-edition-3.md) | 250 | `declaration-track:c3cedd8f6e8a3bb103a4731bdcd779a5485ea2d8c134674c079a9cf8e15c9843` |
| 24 | `def` | [shiftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/shiftfunctor.md) | 268 | `declaration-track:18adb797a8c409026a86300e872df49cb8097d5b956c852f35b4a1fda05e9433` |
| 25 | `def` | [shiftFunctorAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/shiftfunctoradd.md) | 288 | `declaration-track:943fdee4a29e765ba95b94d8f40b83125cadbb472d6dc080bdee5faa397b7108` |
| 26 | `def` | [shiftZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/shiftzero.md) | 306 | `declaration-track:1e160ffb3e33b64ad73d9fd1f8e2bcc2c4d5b8cf5a19222d1c68818ed77839d2` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespaced.lean/declarations/instance-source-edition-2.md) | 316 | `declaration-track:33195f3e04db27d19392339368ede5cc47c4fc4f47328d22ba3ab32cbe8dafd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=290e88b189dbed247aced21da39bce79bf6b0cf64a0862d6030777923ed6287f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
