# Verification target: Types Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3a15be648ca60a4bf387c7efe79315f513c047",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3a15be648ca60a4bf387c7efe79315f513c047`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompleteType](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/completetype.md) | 67 | `declaration-track:db49f62bff6693ef9ad20807a76bd723fbf1cac05798a02559cac15f82a46881` |
| 2 | `def` | [typesWith](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeswith.md) | 76 | `declaration-track:f74ded8dc351929f77af82dbcc1b9e209e76b30fab08d512348bd54e1800dfb9` |
| 3 | `instance` | [Sentence.instSetLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/sentence-instsetlike.md) | 85 | `declaration-track:46e61e457e5188ea691532e59e6082f3da2db37b413aa84a80e34041c0a44b09` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/instance.md) | 91 | `declaration-track:20fd194facae2b7b8c1e0f818c14988d36607ea094562ba68afd40b15f514131` |
| 5 | `theorem` | [isMaximal](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/ismaximal.md) | 93 | `result-track:56794ab313bebf5794e6ce0c9cde674d2f62778abde3b83df1a3680ebd6d2dba` |
| 6 | `theorem` | [subset](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/subset.md) | 96 | `result-track:a7bb756621ca66d150886547e9e48dc484402f7d751e274b941ff49bbf01c327` |
| 7 | `theorem` | [mem_or_not_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/mem-or-not-mem.md) | 99 | `result-track:bdec1716176c66d1e85cb388036add98a7e833fef04fd5c2b5027c3b5b9c2896` |
| 8 | `lemma` | [false_of_mem_of_not_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/false-of-mem-of-not-mem.md) | 102 | `result-track:0c18468fcbb5ef96e128d11ee6173e6d50f3825e8f13dcbdf643cfc9fc429d14` |
| 9 | `theorem` | [mem_of_models](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/mem-of-models.md) | 107 | `result-track:cc2085f229857e66a4a345367f8f2ef187936973752fea60c9c8c86461bf8583` |
| 10 | `theorem` | [not_mem_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/not-mem-iff.md) | 113 | `result-track:ffd1100ab1608796f51b4792a90760143557d4b0df84a4e229c5fedb8eb0aeec` |
| 11 | `theorem` | [compl_setOfPred_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/compl-setofpred-mem.md) | 124 | `result-track:021bc21ec69148a70986316d1c9a2af872c0a0082c76597cdc08490b537abe79` |
| 12 | `theorem` | [setOfPred_subset_eq_empty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/setofpred-subset-eq-empty-iff.md) | 130 | `result-track:2c76284e6289cbcdb289de8e71aecf03dbb7625b971aa10d6ffe26718a995940` |
| 13 | `theorem` | [setOfPred_mem_eq_univ_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/setofpred-mem-eq-univ-iff.md) | 146 | `result-track:6d00247eecd7249b880c4eddaa8e4ec16245ba3dbb73fe43d70df3fe436d9f47` |
| 14 | `theorem` | [setOfPred_subset_eq_univ_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/setofpred-subset-eq-univ-iff.md) | 154 | `result-track:1566b15e28c03986c6a8c87624089f55602bde217fd76dd8145c461a3dd5c375` |
| 15 | `theorem` | [nonempty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/nonempty-iff.md) | 167 | `result-track:cd5853409b6d4ebef50a2bc4607d92dc8dcaa30b1c1b332826d1de7e0d04ce4e` |
| 16 | `instance` | [instNonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/instnonempty.md) | 173 | `declaration-track:7d0634c260a1b908c10135f4cc028481b95cfa8b11e8b3805db7a8a448043d12` |
| 17 | `theorem` | [iInter_setOfPred_subset](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/iinter-setofpred-subset.md) | 176 | `result-track:e8292c72ba1ca128b08d9429881a2ec4c808e2fb2dc2b523405857e64bb48e83` |
| 18 | `theorem` | [toList_foldr_inf_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/tolist-foldr-inf-mem.md) | 184 | `result-track:b66bff6e2172d0ad8c14fe9ea4f6d702c35679c7a3f2855b7e4d27a8da8a342b` |
| 19 | `def` | [typeOf](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeof.md) | 195 | `declaration-track:8fb863a826a8d75993a844dced9887b12e0a53a24dc689f2e0fc5dc0eb3315bd` |
| 20 | `theorem` | [mem_typeOf](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/mem-typeof.md) | 206 | `result-track:e7ecd1fce905672675edb70566c2d21002bdc087e2d5eaeff73ebec08814c1e7` |
| 21 | `theorem` | [formula_mem_typeOf](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/formula-mem-typeof.md) | 211 | `result-track:c93be833acfe16bbd83b3a19ebec47579ddf441251972fb675ca363e88e25f30` |
| 22 | `lemma` | [mem_typesWith_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/mem-typeswith-iff.md) | 215 | `result-track:9400fd6c612de1c26f0ea660ada3bbd27d5c3ad54752dbf688599e808411a8d7` |
| 23 | `lemma` | [typesWith_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeswith-inf.md) | 219 | `result-track:7daec7c01a2360f2a35b500c6d457956138631d5dd75599d2f0a01748b41c142` |
| 24 | `lemma` | [typesWith_eq_univ_of_mem_onTheory_lhomWithConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeswith-eq-univ-of-mem-ontheory-lhomwithconstants.md) | 226 | `result-track:59c61e6781e64cf9f27b41d3ce611a53fa8b3120ecbabc5d806da9354737902e` |
| 25 | `lemma` | [typesWith_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeswith-top.md) | 230 | `result-track:17db6bacfe7721c1d0533827dbfd1038298ade6d486eb56282991e77ffb082dd` |
| 26 | `lemma` | [typesWith_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/typeswith-not.md) | 233 | `result-track:305a3a6c59843dbfec3df944273959072f3b5526867b795595082854e7364038` |
| 27 | `def` | [realizedTypes](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/realizedtypes.md) | 243 | `declaration-track:3d2297ceefd4a97a734b2ebc0534b4bcff666bd6c8b0197ccfe1780d7f873bf2` |
| 28 | `theorem` | [exists_modelType_is_realized_in](../../../../../MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/declarations/exists-modeltype-is-realized-in.md) | 249 | `result-track:4092c3d821fe6778cbc22068f0f41b011107c854973ce1afe95f58f752487b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26712ec99b4b1ba3494dc1d4737c5ec25bad6aee57785c17d366edfe32556978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
