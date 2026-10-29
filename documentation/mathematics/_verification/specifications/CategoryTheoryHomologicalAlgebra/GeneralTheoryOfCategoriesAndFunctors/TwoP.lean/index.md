# Verification target: Two P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "833835efb2cebf09cb13984fc1bb094e00df31b0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant23b76e0d38f8fb39d87018604fa95091a42f29020fc40dbe782d6de3cce2311e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `833835efb2cebf09cb13984fc1bb094e00df31b0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant23b76e0d38f8fb39d87018604fa95091a42f29020fc40dbe782d6de3cce2311e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant23b76e0d38f8fb39d87018604fa95091a42f29020fc40dbe782d6de3cce2311e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TwoPointing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoP](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/twop.md) | 29 | `declaration-track:9c8f76b376ce4fe41808eaa0592336e449b9f788948bf74d32aa4d4917869314` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/instance-source-edition-2.md) | 37 | `declaration-track:670fb2a7c4def9a1b1dd565f01889adbb23dfe5a24fe8572a365646f6537c988` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/of.md) | 41 | `declaration-track:3fdf93ce34d9315a00c8e7aacd9bfbfcaa268026aec4d40a13b21c53c8cdb9d5` |
| 4 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/coe-of.md) | 44 | `result-track:aba6f88a5ee9ed0e37f8cb74332ee1a8737fc839d5b275d7fcadad04fa1c6679` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/instance.md) | 49 | `declaration-track:134045cdeb76da34b45d1b013f99887e392a97402f75e4931593913d3cb638aa` |
| 6 | `def` | [toBipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/tobipointed.md) | 54 | `declaration-track:fdd60986c03ba8e511ed7af2597daa80591260bd28a32454dfc3227a16924c13` |
| 7 | `theorem` | [coe_toBipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/coe-tobipointed.md) | 58 | `result-track:277d73ffcbc13daa3a4ea087772424bd4893b8fd73c9abc56a8de4b11d4f05a5` |
| 8 | `instance` | [largeCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/largecategory.md) | 61 | `declaration-track:b9e845fffc76c0d0426653ad4222521ea1d55d8a85fd686075b3f6dce4784eab` |
| 9 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/concretecategory.md) | 64 | `declaration-track:fea6d3093ccce77a08b0a812ce280df974516216f67c53e0fa732df0e02a58f2` |
| 10 | `instance` | [hasForgetToBipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/hasforgettobipointed.md) | 68 | `declaration-track:f787e1acda19b3a8922e3afc7c0088d759cf07b2d93e05020a9fce5faf20e712` |
| 11 | `def` | [swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/swap.md) | 74 | `declaration-track:fd3f68659b386b1d2a537dc195ed40b3623692679e4539354fdbec3251025771` |
| 12 | `def` | [swapEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/swapequiv.md) | 80 | `declaration-track:272afb9b7dc4d1a90bcd5e0f07fb9ff2ffa230549d377d210f9c79b63894aed1` |
| 13 | `theorem` | [swapEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/swapequiv-symm.md) | 87 | `result-track:4fb825eb93538a5dae28b0f0539bf22138a44e4597d2f66a2579b5b53f3e89c6` |
| 14 | `theorem` | [TwoP_swap_comp_forget_to_Bipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/twop-swap-comp-forget-to-bipointed.md) | 93 | `result-track:bdbbb8022367dab9d4cbf8b1e243e96bb80e7ed0f3c72eff8ddaa3e2c0f0c81a` |
| 15 | `def` | [pointedToTwoPFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopfst.md) | 99 | `declaration-track:8a94afe9f6c66ad22cc1ec555bc708bdd01244f0c98943cc35e39971d302c31d` |
| 16 | `def` | [pointedToTwoPSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopsnd.md) | 107 | `declaration-track:446a1c5b32f9d67187a80d8c9616ad81804660bb3fdcfa9f581b424f609309b8` |
| 17 | `theorem` | [pointedToTwoPFst_comp_swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopfst-comp-swap.md) | 114 | `result-track:cf17677a07f90a32d499e0f1c563c1483337d9936fa7622e6a46d4e39fe375ad` |
| 18 | `theorem` | [pointedToTwoPSnd_comp_swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopsnd-comp-swap.md) | 118 | `result-track:c6ded469dafd1012861f209f80f18e37af00dc5034d843e22ba5f9e2a0c4d8ac` |
| 19 | `theorem` | [pointedToTwoPFst_comp_forget_to_bipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopfst-comp-forget-to-bipointed.md) | 122 | `result-track:4a15b6072acb1266223b498a34af4b6d43da97ee4506ec266d12d0ccd081ac8a` |
| 20 | `theorem` | [pointedToTwoPSnd_comp_forget_to_bipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopsnd-comp-forget-to-bipointed.md) | 127 | `result-track:b6cebf93a513e2df83694bd224f7d863dc3c8d075ff8883406439706ab3b4050` |
| 21 | `def` | [pointedToTwoPFstForgetCompBipointedToPointedFstAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopfstforgetcompbipointedtopointedfstadjunction.md) | 132 | `declaration-track:703b1c2d09d950a99214cfc414550083d4baa2731e7a37f0dc8491d22f01c847` |
| 22 | `def` | [pointedToTwoPSndForgetCompBipointedToPointedSndAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TwoP.lean/declarations/pointedtotwopsndforgetcompbipointedtopointedsndadjunction.md) | 151 | `declaration-track:ed83ebe9735954a3146a2bd14788b552ff264e2e54a910846e941fc75e2a2bda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35394225323bb0bfeccdc117000d0e8ce3d0a33265c549561d86efce5a5b5e00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant23b76e0d38f8fb39d87018604fa95091a42f29020fc40dbe782d6de3cce2311e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant23b76e0d38f8fb39d87018604fa95091a42f29020fc40dbe782d6de3cce2311e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
