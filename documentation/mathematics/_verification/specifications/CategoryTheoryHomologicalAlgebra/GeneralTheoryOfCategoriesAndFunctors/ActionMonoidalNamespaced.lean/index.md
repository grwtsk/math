# Verification target: Action Monoidal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1e67ade8b33756b1d96e3d238f011bb9ef7d6e3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1e67ade8b33756b1d96e3d238f011bb9ef7d6e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.OfEquivalence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Concrete` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Limits` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instmonoidalcategory.md) | 47 | `declaration-track:bdd196c3e0433fec1ec76b38d639de48f7fe0431217169ad95729523e9194c71` |
| 2 | `theorem` | [tensorUnit_ρ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/tensorunit.md) | 51 | `result-track:903e34762250bfa63d81f5437b07164e986a94698b73c8447c9851983330b03e` |
| 3 | `theorem` | [tensor_ρ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/tensor.md) | 56 | `result-track:0d8e59289dd9d7a88cac1427bfe3da9911ac2f733a9fb55c54c8fd685c39837e` |
| 4 | `def` | [tensorUnitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/tensorunitiso.md) | 62 | `declaration-track:b244ff096e539949a312b447c6b5e54b981076f31428f5ad7d4d2d837d0b1aee` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-19.md) | 67 | `declaration-track:f53d116ef9f9c909fcb29c5c208b691445199c7dae3676571da1e99abef5b629` |
| 6 | `lemma` | [forget_ε](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/forget-source-edition-2.md) | 74 | `result-track:81d298471e178e8494bcc57faab3fbd6352d5561af6ee10332c19e0491779c4c` |
| 7 | `lemma` | [forget_η](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/forget-source-edition-3.md) | 75 | `result-track:84be49877f16cf5d57b9a946e22a79a26a37e6ec8eb4e3d28a043f6dfbc964d2` |
| 8 | `lemma` | [forget_μ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/forget.md) | 79 | `result-track:298399d0328639df913c41deabdfe4c78a489d9f5c3cc88fc6bffc227d74e191` |
| 9 | `lemma` | [forget_δ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/forget-source-edition-4.md) | 80 | `result-track:ce42dbf3a802b64f50b6f685624d9d15b07b8ca16a3c702559bb533572594e67` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-16.md) | 88 | `declaration-track:b1d53ccc07bd468cc17d7b4e610b02a284c2f6dfd5fe446cca42179f7d935edc` |
| 11 | `theorem` | [β_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/hom-hom.md) | 93 | `result-track:d699da8d61f7cfe8ca1a67298e27e85d471850aa1785f29e0ff1b0f04421ac95` |
| 12 | `theorem` | [β_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/inv-hom.md) | 96 | `result-track:2ddcf5665ebd4a0aaeb0204c7bfeee7aea692dc93c8b04d747259b63f05ccb55` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-9.md) | 99 | `declaration-track:45d4f34eae2e18955e39adc79bc85b337b244d2c7abc77becd06d92de9050378` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-15.md) | 103 | `declaration-track:a2b19d251705f450a5c19fae1b9365d873e59db76afcda1d099c0c8ba46b98fb` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-12.md) | 112 | `declaration-track:82776fb7744ebaa6f12d547462025a2126ca51b401a73e74c2dba75c08c4abf6` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-17.md) | 116 | `declaration-track:dbee3cce4b7cc23b9e2cb6bf619dfbcf72d1649105acef5c65affedf19e06a7e` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:14e04dd9dfa6585b17013017ed87c6ccdbd4fe945ef4769dbc887d8d569625ed` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance.md) | 127 | `declaration-track:0755ef3a34e020d4f1dcaba7cb539c5b2db36d9ae1e76e23ff4ea0c10cfb175a` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-13.md) | 131 | `declaration-track:82f14a2d1b4ed8b088557981e7cd987c1b15878e05f68efd5743d7f9e94f866f` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-10.md) | 135 | `declaration-track:5b07bcb934bac560bfec22402fba847685f9c06de84d9ee3dc79cbab812bbdb3` |
| 21 | `lemma` | [FunctorCategoryEquivalence.functor_ε](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/functorcategoryequivalence-functor-source-edition-4.md) | 139 | `result-track:dadc38df59254bc97adf054682c8dc5771486c25bb47588b23f80f95c0658711` |
| 22 | `lemma` | [FunctorCategoryEquivalence.functor_η](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/functorcategoryequivalence-functor.md) | 143 | `result-track:4a651f0ec5707cee23f6ddd61fedd94d7bbdddf87e88ee4d7b00f1c44cd78ab4` |
| 23 | `lemma` | [FunctorCategoryEquivalence.functor_μ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/functorcategoryequivalence-functor-source-edition-2.md) | 147 | `result-track:6c8193b38983f6b61ca34e5cf71015312b0393a3c90237cf7b22720638b04623` |
| 24 | `lemma` | [FunctorCategoryEquivalence.functor_δ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/functorcategoryequivalence-functor-source-edition-3.md) | 151 | `result-track:9012d33457009aacdc86e3f84a88624d0e493639a2f4849996b7a401f4c9170e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:0b97f98ee2f0f10edb6a78f18ac8326e17a4fc321b9df467bd86a20d16e54100` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-3.md) | 161 | `declaration-track:10f7f3c92f772d2cc39b53914b4ff411f5f5aab7459f93538a589215be32742f` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-18.md) | 165 | `declaration-track:f1c152dba45f0a53747a3f730648b880088da821b3fb0fa44f69d8c4940007ad` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-7.md) | 169 | `declaration-track:3cce5b95d71f35474a9e4b3e6e7efaca40578964c14d1de3886917ec53160e46` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-8.md) | 172 | `declaration-track:4058322ce7a3d8f60d622ab6d1d3f311fa2ea6ab93f127c2f1fd199c1345ed35` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-11.md) | 176 | `declaration-track:7bbaff8622556caae867ef5a30d9ad7fc6a10148e734ec635b6bcad8bf74a423` |
| 31 | `theorem` | [rightDual_v](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/rightdual-v.md) | 183 | `result-track:068576ce713182438c60a6c027c5c42ce7097e63cdba72d50de84ba9108e7c9f` |
| 32 | `theorem` | [leftDual_v](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/leftdual-v.md) | 187 | `result-track:2c919a03be351e22fab7fc55702ec295f7d13f6575415b686d238431e99cc560` |
| 33 | `theorem` | [rightDual_ρ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/rightdual.md) | 190 | `result-track:fc58bce1c220efac462045413c0df37c20443840751ea3a2ec2aec216be3e848` |
| 34 | `theorem` | [leftDual_ρ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/leftdual.md) | 193 | `result-track:820fd4192bb83a39370122711d98806f8f58a802bdb795f30fd826da36e35f1b` |
| 35 | `def` | [leftRegularTensorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/leftregulartensoriso.md) | 207 | `declaration-track:5ad904be1f80416a4241c5ed49131dca228406e20c123cae6fb5212466feddc8` |
| 36 | `def` | [diagonalSucc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/diagonalsucc.md) | 238 | `declaration-track:9210b48d8193c33592f5da01c30d747194815dba49daefa908751f79e4493853` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-5.md) | 255 | `declaration-track:257662be5ffb30b8875b7f72005883b4bb240f3ddae2838d1b5eef4afeaec1ef` |
| 38 | `lemma` | [mapAction_ε_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/mapaction-hom-source-edition-2.md) | 271 | `result-track:9d16c45eeeaaecfc1ea0440321c39674cf29416b565c0c6ac62b8fb6334b978d` |
| 39 | `lemma` | [mapAction_μ_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/mapaction-hom-source-edition-4.md) | 274 | `result-track:b4375ea5084700a911a8c0443a78af91f6a2d030c81c4bf958a9e28497dddf62` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-6.md) | 279 | `declaration-track:2aa620d1a622a278add94325660f0fc93bf0c302142c4064c7cefcc5eba4e774` |
| 41 | `lemma` | [mapAction_η_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/mapaction-hom.md) | 295 | `result-track:81a4dd63599211ab955263ac262cca02720020e9115cfa2de4a09373b32ccfb4` |
| 42 | `lemma` | [mapAction_δ_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/mapaction-hom-source-edition-3.md) | 298 | `result-track:a5e20a57d21b02fddf5d575a97a8d999c8c8565d1ce2888e8644caab6f230769` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ActionMonoidalNamespaced.lean/declarations/instance-source-edition-14.md) | 303 | `declaration-track:92645c00f429c971d828fae6e65acc0b51c47708f59226fd3f4187bcc19fc31b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c8b7ae7640557be4dbd969c1078bc9d075639acb371fe630163a2a5eb0ea46a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant07ba3cd906172e322660ae2d7bcfde9efd72b3c90f7a3dc05d83ac160f7f46cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
