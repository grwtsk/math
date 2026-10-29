# Verification target: Category Theory Action Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "829d3779f3746fb103f76ed86f5f3ae30ca8381c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `829d3779f3746fb103f76ed86f5f3ae30ca8381c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionAsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/actionasfunctor.md) | 37 | `declaration-track:92b1bd1fb6e2f2dab9c58e24f9da842ccaaf7b5beaa5dc151380a86393da5edd` |
| 2 | `def` | [ActionCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/actioncategory.md) | 47 | `declaration-track:ee6247de5e128429b73e82bab49b8c87c9226533c13c4ae4f5bbdbe28e1e299b` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance.md) | 51 | `declaration-track:4393c975cab3539aa5206a21f48d1133b9a34df82b4df85e9052b5b6781e0408` |
| 4 | `def` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/anonymous.md) | 59 | `declaration-track:05dbdaf3ad518d6a282bac10d11eb8c17222fcc5221173bb203c44595c28b782` |
| 5 | `theorem` | [π_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/map.md) | 64 | `result-track:54e95b3eecba941852161a3e27b323d1a351b395a5d35afa84c32c71df92003d` |
| 6 | `theorem` | [π_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/obj.md) | 69 | `result-track:66651b81e7c757e16557e264bc1a52620c74d0651cd31c5e05a71784045e42fe` |
| 7 | `def` | [back](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/back.md) | 77 | `declaration-track:e697ff24314b0f0e8c57b320106bb2e7bd7992231d9302661d879b30444fe3b0` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:c1d7c0fbd620557ba8e67d70cc2fa85b992ddc130b010a3e3a7dd6e467e5dd3f` |
| 9 | `theorem` | [coe_back](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/coe-back.md) | 84 | `result-track:3ba433348969bb6ae7344f7e767269b41ed7fe3f19876e3eabfe4c2283c6d6bf` |
| 10 | `theorem` | [back_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/back-coe.md) | 89 | `result-track:84c41354c7cdbe47469a1126eb19219a08628d62c55bec1d74e61c64cf1e1de0` |
| 11 | `def` | [objEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/objequiv.md) | 95 | `declaration-track:b339cd1abe2ba133f9c2f2d7cadbd767f683a5ea7f86d077a8788758feb0e1b5` |
| 12 | `theorem` | [hom_as_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/hom-as-subtype.md) | 102 | `result-track:2eb7c02161252934c08fe3e77dd0c41f9f6275a226222537b656617d8cd4580a` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:74141dabcb68e856a9cdda8f65dc6a6f291828770c54c2cdae6d4de5fdf34473` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance-source-edition-6.md) | 109 | `declaration-track:cb2d74ce739887f76ee62b46bb0919301641fd78834d95963f7a78bea64cbdb0` |
| 15 | `def` | [stabilizerIsoEnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/stabilizerisoend.md) | 116 | `declaration-track:923b2deeef2d73e785d6bd83e03fdb22da1ed7ee4ae3c1f682d70e205bf6c99a` |
| 16 | `theorem` | [stabilizerIsoEnd_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/stabilizerisoend-apply.md) | 121 | `result-track:3cb0b46541158b6e2719988f8045a15b602e9bef285c6e14ab911972d6ec78fb` |
| 17 | `theorem` | [stabilizerIsoEnd_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/stabilizerisoend-symm-apply.md) | 127 | `result-track:fdaad064ae8c8bddaeeed57168e99e61b32af2333ffd0c59c245051a2b96ad6c` |
| 18 | `theorem` | [id_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/id-val.md) | 134 | `result-track:e1f2997e5c77526efbdebfcb39cb63f9320ae5ee98414df46d70313821a810e8` |
| 19 | `theorem` | [comp_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/comp-val.md) | 139 | `result-track:83fdd9ac98972b512c79eff7f67099b9a870076f4fb0abecf603aae0a9c9d5e5` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance-source-edition-2.md) | 144 | `declaration-track:4d82340223d8d9ddfd8e4b02cec0d3b73a2cf58d5d1c53b81d6cd3787b223428` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/instance-source-edition-4.md) | 153 | `declaration-track:94f81bca8f021623afe60bdc5ee5fcffcd1c3e39c5a4d07ebda83b8e8826f2a1` |
| 22 | `def` | [endMulEquivSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/endmulequivsubgroup.md) | 157 | `declaration-track:dd08ebcd2123b742585290e8c5217c8b5a5c831122590851f53f7485ce02b25e` |
| 23 | `def` | [homOfPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/homofpair.md) | 163 | `declaration-track:c07100323c3f9391e370a62f24146e7485f56c24cc3e01a0d48385b560e1f000` |
| 24 | `theorem` | [homOfPair.val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/homofpair-val.md) | 168 | `result-track:ebfbacfd9e002081e6d817c5181f86ccb8200f3bfb50f81412a665a19c89792c` |
| 25 | `def` | [cases](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/cases-source-edition-2.md) | 173 | `declaration-track:5c973211a52f0207d99db16cf0c18997e84d489be3ca23592d89429f788a3e48` |
| 26 | `lemma` | [cases'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/cases.md) | 184 | `result-track:1351c7327ec64c4e1cf276c923fff5b2bda158f4d11322702b1ab00c8b2af5f2` |
| 27 | `def` | [curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/curry.md) | 195 | `declaration-track:cec647a969a69ae5c6ea9e0f51774de252f426dc1be716476bfb9d195e138fc9` |
| 28 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryActionAligned.lean/declarations/uncurry.md) | 219 | `declaration-track:36c4f0450effa4025ae34abb6cf4704766341557c0df6d0fe11e7c4088dfe562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83078f5ea155b2f668ffc57b92427f714b41b1379c41a225338fa51a8d9cd980 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
