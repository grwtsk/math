# Verification target: Non Preadditive Namespaced Add Neg Self

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca060a74999a97976bf0b97eedb839c72f5f6827",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca060a74999a97976bf0b97eedb839c72f5f6827`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Images` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonPreadditiveAbelian](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/nonpreadditiveabelian.md) | 78 | `declaration-track:08e710e9126ebb6470a887a5f6d60dd417049987f72d0b1ee781c4c869827ea0` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:f3ffd8ccab7036b15189be637a76ec013fafbee17c8863c6701a2ee90bca855e` |
| 3 | `instance` | [isIso_factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/isiso-factorthruimage.md) | 149 | `declaration-track:65009f2594e70873fea767c90c78a89321fe7b9af996526f1ddb6090d0b8d3c8` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/instance.md) | 154 | `declaration-track:04ae7b8f77f8800d9ace58158d85f573f6ff9f19481e729406ab71803f1d5e5d` |
| 5 | `instance` | [isIso_factorThruCoimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/isiso-factorthrucoimage.md) | 187 | `declaration-track:99bc3e8495db4d30d556c2726f6c018af3a0065d29a3043ffe80281eb35bd8df` |
| 6 | `def` | [epiIsCokernelOfKernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/epiiscokernelofkernel.md) | 200 | `declaration-track:5495b1495c183f9d012bc8f0c087922f258f7b5d717a184f8942e0c78cc90020` |
| 7 | `def` | [monoIsKernelOfCokernel](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/monoiskernelofcokernel.md) | 211 | `declaration-track:d78cc64ae03263fb7f494ccd6cf1e337e47b53a2a16bc9438b632b249da9652b` |
| 8 | `abbrev` | [r](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/r.md) | 225 | `declaration-track:c8a35db741319de3863330cabbc726dca440e9f4a017ebd1e92a312509d9b560` |
| 9 | `instance` | [mono_Δ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/mono.md) | 229 | `declaration-track:62ea0c64f1e6858f83c497aeb88a7f37a2a33f337015c32238e33518b098b785` |
| 10 | `instance` | [mono_r](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/mono-r.md) | 233 | `declaration-track:e9968081732ed3646e39b427ae5b4704abcb2006c587d3e6dd0abde0b60960f3` |
| 11 | `instance` | [epi_r](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/epi-r.md) | 250 | `declaration-track:bde4ce65e81e3e63c5b4a2ae6e4f75fa0ba63e7433a222632e335484f623077b` |
| 12 | `instance` | [isIso_r](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/isiso-r.md) | 277 | `declaration-track:d969627ecf3b9b14d152317c68aa82eee63760eb9b28d433e444917010515dce` |
| 13 | `abbrev` | [σ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/anonymous.md) | 285 | `declaration-track:4198bdaebd145fae8b18072d1452cb0be8e9b650429199beacca0c90bab1ec5e` |
| 14 | `theorem` | [diag_σ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/diag.md) | 293 | `result-track:595c751fc9796963c84243e50368c2c9dd7120e28f0d53185bf3f39ee1af0baf` |
| 15 | `theorem` | [lift_σ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/lift.md) | 297 | `result-track:27a72a30c8341285d09eaee41987899b80b6c7774974cadf32324cd971206800` |
| 16 | `theorem` | [lift_map](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/lift-map.md) | 301 | `result-track:24ddbf74d2f0d4ee82178883879bb5a299a9f62b86ec10195eaa02e0d9c6e992` |
| 17 | `def` | [isColimitσ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/iscolimit.md) | 306 | `declaration-track:013fc4f48ac5c2962cd0a0f13c7e6909aa3f0c79bd473a92e206f460022dac42` |
| 18 | `theorem` | [σ_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/comp.md) | 311 | `result-track:d6f2066c3fd97c1ffe33ca2f0ead57b20ddf82005c5674b14ab6fbaa81fc1e6c` |
| 19 | `def` | [hasSub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/hassub.md) | 328 | `declaration-track:d05a103fe41886643dd4092c8ec41682ef6bf6f85a64bdca0118f15d55773507` |
| 20 | `def` | [hasNeg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/hasneg.md) | 336 | `declaration-track:0f529a04930ccc21940484d7f0641777cc1b7d4c51f9ab67c2f9889859802efa` |
| 21 | `def` | [hasAdd](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/hasadd.md) | 344 | `declaration-track:5281bdbb9a5e364567bd75c8068ee436468245e408fc11b638b4723220abcb1c` |
| 22 | `theorem` | [sub_def](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-def.md) | 350 | `result-track:5408948c82f7b3241bd58f3c965c54ebd1adf54db3eed25a22db6a01c7537cd8` |
| 23 | `theorem` | [add_def](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-def.md) | 353 | `result-track:a6f3a24bd3cb86b86922ca2ef0c9273fa0a3854938dd48bfb889374a3baf0262` |
| 24 | `theorem` | [neg_def](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-def.md) | 356 | `result-track:6ace7e55e2fbd4f55d90c175c122edde98d757bfaf362dfc0b58ff1537c2724a` |
| 25 | `theorem` | [sub_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-zero.md) | 359 | `result-track:160ba9486abd071a226b459074d20118d74e22e3fde1c1952bcdf3ba4b2134bf` |
| 26 | `theorem` | [sub_self](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-self.md) | 367 | `result-track:628202c06cb8a18a34945a48e9610d32c751054c7e1a9185ffb3051c172ac7a9` |
| 27 | `theorem` | [lift_sub_lift](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/lift-sub-lift.md) | 371 | `result-track:c106feaf551499151f9b943f678bcf2d3f20bfaf54778f8a9bd8f166d08cbd82` |
| 28 | `theorem` | [sub_sub_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-sub-sub.md) | 379 | `result-track:0115691ec923648bebc65728761bc442c8afad4de5120094d1064b8fa98ce03b` |
| 29 | `theorem` | [neg_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-sub.md) | 383 | `result-track:6cba7542a6d58dc713cb5d367c4d98caf9047408a2141eb888899e93b8444c78` |
| 30 | `theorem` | [neg_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-neg.md) | 387 | `result-track:b405f6917032cc56c83f81f881b1fab3062c0ce0c24677640cf86f8e4cb142ac` |
| 31 | `theorem` | [add_comm](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-comm.md) | 394 | `result-track:80415832d75595388846393b4950ad5fe865848b34646f45b0a2b9ec8d69a5ca` |
| 32 | `theorem` | [add_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-neg.md) | 405 | `result-track:1a8d5136cdccc52b8eada4e01b63e9f711ba357f88945fef674f6c89a92b568b` |
| 33 | `theorem` | [add_neg_self](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-neg-self.md) | 408 | `result-track:dc3b73229be597dcc98425189299c5938af33232c72ac511f7bd0643d9c37580` |
| 34 | `theorem` | [neg_add_self](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-add-self.md) | 411 | `result-track:4ca8f8fc55f4ddb5bd120990495c38151cb53222f3aadebaf8e5c879e707f317` |
| 35 | `theorem` | [neg_sub'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-sub-source-edition-2.md) | 414 | `result-track:7ba5c4268b1b51d7948467271f6396f6ae78a00184954ca7b9ad4eec406a980c` |
| 36 | `theorem` | [neg_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/neg-add.md) | 420 | `result-track:ff360838cd3b97043817e667ea4165229cd2d2ac68b922509aa2c72c6d80ac05` |
| 37 | `theorem` | [sub_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-add.md) | 423 | `result-track:c12134d6530e6c3ec77ae5d48802a91146b264d2c2737e554aa64ca7b151ad3d` |
| 38 | `theorem` | [add_assoc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-assoc.md) | 427 | `result-track:80db6cc8b850d686beb9d9aad86a55e06972779cebcf867438774659352f2fb9` |
| 39 | `theorem` | [add_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-zero.md) | 433 | `result-track:869ce4be78814e254c76763bf852f7a041ac17635e83eddc2bb86adb48fe40fb` |
| 40 | `theorem` | [comp_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/comp-sub.md) | 436 | `result-track:c5a092e0a5c7f2093d20c045cc21aa92861a2757e5e85a9cf765f7538a859987` |
| 41 | `theorem` | [sub_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/sub-comp.md) | 440 | `result-track:68dd3af6376633a6ca8eb12c364ed6dacb5d9ce29e2becf450241b6171ccbfd9` |
| 42 | `theorem` | [comp_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/comp-add.md) | 444 | `result-track:ed086ab436dfedd6a0ac27f551e049f0879ead4c591ff97810c516a912b65dd0` |
| 43 | `theorem` | [add_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/add-comp.md) | 448 | `result-track:881f3b3f401ee034247a82da5e2189ed0456112b925d18516652d32474ce0b91` |
| 44 | `def` | [preadditive](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/NonPreadditiveNamespacedAddNegSelf.lean/declarations/preadditive.md) | 453 | `declaration-track:cbcc97dd1e7cec44d1a10eb36bb8ccea7edbea6539bbb71e19875939432c0055` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=504a9acab9e808c9c149a7ab336e8e916aced298e2ca44d0288aef8b9ae92079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
