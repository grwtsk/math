# Verification target: Triv Sq Zero Ext Namespaced Fst Surjective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506",
  "lexical_observation_count": 164,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TrivSqZeroExt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/trivsqzeroext.md) | 71 | `declaration-track:9e6007e63d80223b058ecbcc022b824eeb097a0c903b35b55ed466854c5752af` |
| 2 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl.md) | 87 | `declaration-track:fb9c3bb4806cb87394cf0610bf4ea987720f8093bfa84880553b1d84cec5e79c` |
| 3 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr.md) | 91 | `declaration-track:3441a558a8024a0abae07d65d5a18faa006d9cdd83da15bcb44de4928c4c569a` |
| 4 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst.md) | 95 | `declaration-track:1d859bee15110c4af409e66a755a8243925b65cb23124c16f42ca71f3e226459` |
| 5 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd.md) | 99 | `declaration-track:2c60ab1df619980d62ad29732588917d4007bf673a171e3021cb1f4b71e54b39` |
| 6 | `theorem` | [fst_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-mk.md) | 103 | `result-track:7eb2112e20f94713e1be63d0aee7ce9c5546c93bc77650635e711f9ac237ab95` |
| 7 | `theorem` | [snd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-mk.md) | 107 | `result-track:a2068fa060dcdc51195d676eaf565126858a21b94b4e2d06e1824efc07f31fda` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/ext.md) | 111 | `result-track:5aa4067afafd36f8399a8c77759d579a67e52060227f8c73d9cafd163ef9f3cd` |
| 9 | `theorem` | [fst_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-inl.md) | 119 | `result-track:d4700bcad9cfac5bb376e9e9c2bd9c19ec71b8746ac381610e7affca4931320c` |
| 10 | `theorem` | [snd_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-inl.md) | 123 | `result-track:e78414d88ec893c46fa1e9ce15d07f02a24429589fca6503c8d9f39ff134064c` |
| 11 | `theorem` | [fst_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-comp-inl.md) | 127 | `result-track:2a7c2d4eaf2c3d5b7522b3b5ab5916c9278f68631ea4a2f01273faabaecc0411` |
| 12 | `theorem` | [snd_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-comp-inl.md) | 131 | `result-track:abbf4bb4a9f25843b38cbcd3c99cd85be7887f88f909b29a29bcf4d24e540d17` |
| 13 | `theorem` | [fst_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-inr.md) | 141 | `result-track:98f18f665dee78bf3355ab1c8abf3889f32e2a3c12329b2c4b1725813e02c364` |
| 14 | `theorem` | [snd_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-inr.md) | 145 | `result-track:c99b64f0fd8ea43d07a240f6e453f34e3451d8cdecd0eaff5f8692ab4e0c7b4b` |
| 15 | `theorem` | [fst_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-comp-inr.md) | 149 | `result-track:5a58ba598bc0611668b380ff82bbeb47422db80be5911b2cfc776123b4611ac6` |
| 16 | `theorem` | [snd_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-comp-inr.md) | 153 | `result-track:08d3a6c5edada0cc46782689456017cdda0681c0fdadd82d3a03f70ca9754510` |
| 17 | `theorem` | [fst_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-surjective.md) | 158 | `result-track:7ba1e15ba8da7804bc3c3fe4ab9a167415dee0decf3d3f746dfd7a7d662ea40c` |
| 18 | `theorem` | [snd_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-surjective.md) | 161 | `result-track:75a1884897219402a36c8d8961152f7b56ae17b48eab11c79ebed0dc8968656d` |
| 19 | `theorem` | [inl_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-injective.md) | 164 | `result-track:cef41e01877c4a3daa4d5a5aa9e5ae1480f78f099b9cba9d0fae9aaab9292e2f` |
| 20 | `theorem` | [inr_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-injective.md) | 167 | `result-track:82df562e00c052282cf4e1b0e013b68685c25f1e6fe7f87327a6d8e2cd7ff34e` |
| 21 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inhabited.md) | 181 | `declaration-track:5058a290d64f9d6221b079f6d81a64f80377d6fafb1a27ae6df748f90472c423` |
| 22 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/zero.md) | 184 | `declaration-track:986a2ff1ec4049ee5d9c1f4ec9e62ec38ec1a5ec65973124f86a93489b48fd98` |
| 23 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/add.md) | 187 | `declaration-track:028a77f8c1db49080c608dc76048a5958dbdef64356be1553114f7a55b76a255` |
| 24 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/sub.md) | 190 | `declaration-track:241314563b439f510de4fee974e697af834b072be968d3e4131962f3f4bfd678` |
| 25 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/neg.md) | 193 | `declaration-track:c48cda841eadfcc252f3f820844cf0f7976227d8a3a6b559f63116a3bea4c080` |
| 26 | `instance` | [addSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addsemigroup.md) | 196 | `declaration-track:ae5f9459c631feb2f1285a0c9425cff74b86ad28f186d1875e7e33b4328ba301` |
| 27 | `instance` | [addZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addzeroclass.md) | 199 | `declaration-track:02146849f7005f9c38cf9b80fecde9fd13f6b56ebde4d707fe907571645cd759` |
| 28 | `instance` | [addMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addmonoid.md) | 202 | `declaration-track:34bc93b1746c336a9837eaa0d8c5352484e354222b3ffa092f8050cff5f5f317` |
| 29 | `instance` | [addGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addgroup.md) | 205 | `declaration-track:9a30f911d5003219a114e93b9abdfcbc9ad3ded7061416e50a7ebd82107d10cc` |
| 30 | `instance` | [addCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addcommsemigroup.md) | 208 | `declaration-track:b9f45d14e18f38f3c6f55230a7952a897e09e6443076669863afe3df4ca4f22c` |
| 31 | `instance` | [addCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addcommmonoid.md) | 211 | `declaration-track:858856c4ef7833debf3d9bdbef44ec4ba5931267cba6f7e21a55b925fa97b0a7` |
| 32 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addcommgroup.md) | 214 | `declaration-track:b98b5a28e246f8ad4a9c5ff5c28989fa57011d6e219275e6aafb4ab01861ecc1` |
| 33 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/smul.md) | 217 | `declaration-track:bc0fd1076b2e2ef6831e89d4006c05794d70536e3d9a7e56e767527f4b5df80b` |
| 34 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/isscalartower.md) | 220 | `declaration-track:08e24a34e1bd06d7775a6a5ddf3e13fc98f7da2dee6c892522c324ed61a90a43` |
| 35 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/smulcommclass.md) | 224 | `declaration-track:da4b7b4e2297a79ae3e5ccc9e28079d1821931b87b44d4284ee91eb70659010a` |
| 36 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/iscentralscalar.md) | 228 | `declaration-track:34bf0eeda37a34b3b8fc1cebb120cf203546bb5daa13607712b939cd6381be11` |
| 37 | `instance` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mulaction.md) | 232 | `declaration-track:2218146d40a6a0ebe11f3fcc21e1616594f6a9681a7f312affff7c950279c58e` |
| 38 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/distribmulaction.md) | 235 | `declaration-track:9ae129becf1fecbc16833672f7a335e486d7490083390ef17af503297443f9df` |
| 39 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/module.md) | 239 | `declaration-track:da27d3a2570e5a1f51e9eb3d060bbf5587e0f53a2d89557226f13da00149bfe6` |
| 40 | `instance` | [instNontrivial_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/instnontrivial-of-left.md) | 244 | `declaration-track:bf38bbcb52709feb0a6e4a929f3fd8997d9420e1b34b261d186a21e17da57e70` |
| 41 | `instance` | [instNontrivial_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/instnontrivial-of-right.md) | 249 | `declaration-track:6bc5606a035c14f04f89f3caab6dd5416af3a366e69464a7402d4281f93f7f96` |
| 42 | `theorem` | [fst_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-zero.md) | 254 | `result-track:dc72e780a9639bc89db0747fbdb2c2f1e88cb48526df9dbd3cd0bf7f0412e66c` |
| 43 | `theorem` | [snd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-zero.md) | 258 | `result-track:19ed1ea6fcba7dc184db1eeb35af19a775de360535b2faca4ff4c0b40b7268ab` |
| 44 | `theorem` | [fst_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-add.md) | 262 | `result-track:ea1795c889ca1128fb398a7681f187b69a30b4ea48a3d69f4edc89cba2de584e` |
| 45 | `theorem` | [snd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-add.md) | 266 | `result-track:2eea874a328fb6681f18de2a1c9acaf6df7e90710ee1a6a24156f638fa23b2f8` |
| 46 | `theorem` | [fst_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-neg.md) | 270 | `result-track:322a1908cf46270eb8f1fa395ffc2e1731a50eb8dc18b2d3eefbb37308990ac2` |
| 47 | `theorem` | [snd_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-neg.md) | 274 | `result-track:63ba5e81378c81b3f46447193b7a231edfe51f90671a94aaa5aea6b41dc2e189` |
| 48 | `theorem` | [fst_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-sub.md) | 278 | `result-track:2d50aeb5dd807cbddbe37aa5a1887a236ffcfb38e6bc4006be7b752956edf01c` |
| 49 | `theorem` | [snd_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-sub.md) | 282 | `result-track:37646340ca425d123384a6d750189327278d36736d151780029385433333f88b` |
| 50 | `theorem` | [fst_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-smul.md) | 286 | `result-track:ba4d2537203127f82b393143bde54dd8c9d2898052083460ba5e707c18c5b66e` |
| 51 | `theorem` | [snd_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-smul.md) | 290 | `result-track:bae91bf5b39fa8435b1ee740d66eaace3ecf74b13e6323d045817b6cce925c8c` |
| 52 | `theorem` | [fst_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-sum.md) | 293 | `result-track:5da9d449baa644235569c2df4727d34be9a9646f4c689e0e15ff3c15230d9d1e` |
| 53 | `theorem` | [snd_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-sum.md) | 297 | `result-track:f92ddc97ccf660a6686d2d265a590ca354e7dc0ff4d9406146f464b65277cccd` |
| 54 | `theorem` | [inl_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-zero.md) | 306 | `result-track:a6b99c2c4efbe8dd11bd80fb708572c561ae292b1cb41b55ae8efa4725e07a8e` |
| 55 | `theorem` | [inl_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-add.md) | 310 | `result-track:5614cd93957dd6ece1d80b1f9f5b40a195e7e0450bc848a2e79789062bacd4a3` |
| 56 | `theorem` | [inl_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-neg.md) | 315 | `result-track:9807a09d20bdd32dfec42b0d314efe0034d9155ea93d6aab6ce9b93c722bc16a` |
| 57 | `theorem` | [inl_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-sub.md) | 319 | `result-track:18caac7cabf6a27d2e5c6b0146a19d1e592d6a07aa9b6109181692b855d944a5` |
| 58 | `theorem` | [inl_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-smul.md) | 324 | `result-track:b38eea04e643a7d50af352dc871991a462e639827c629e768ba0ebb7bcd82daf` |
| 59 | `theorem` | [inl_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-sum.md) | 328 | `result-track:a3040aa42e516bf170294d8acbe0e2c7be1cde96c42748d1c98c9dc028ae3a1c` |
| 60 | `theorem` | [inr_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-zero.md) | 339 | `result-track:f25f2154857ae732b1c35573f8b2c5a488b454996997c90ab882eca8d0b6e73c` |
| 61 | `theorem` | [inr_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-add.md) | 343 | `result-track:611bc8530640e705f589666fe645cd5c9d95301c2afd9340bb1145bbd6482d89` |
| 62 | `theorem` | [inr_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-neg.md) | 348 | `result-track:ab506d3ec3e1173128d68ffc8a4cf5f8ceb68fcfff3d86ab53b545a8d4ab6bca` |
| 63 | `theorem` | [inr_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-sub.md) | 352 | `result-track:b08e3289b704a988a98b4b35035d5619376e0cc82bc382faba3f245f47943a2d` |
| 64 | `theorem` | [inr_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-smul.md) | 357 | `result-track:5e1b2f0a35f47f80e714cb71e61273c535818673f07f867bf226c99ac2f774dd` |
| 65 | `theorem` | [inr_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-sum.md) | 361 | `result-track:5f72aac543dda8ac9ac2958b2cc32e1642bac731df7f9050dfe5d1d18f5a790d` |
| 66 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-fst-add-inr-snd-eq.md) | 367 | `result-track:0f2f089cd8ff123cb2698b9223a9e210eed32b7f800da1ae49fea324ec5df615` |
| 67 | `theorem` | [ind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/ind.md) | 374 | `result-track:fe802b831c7ef7c17f23b45a5b36707356fe20bf5c69549eca8a92ad1886e6de` |
| 68 | `theorem` | [linearMap_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/linearmap-ext.md) | 380 | `result-track:0ac9a85211af63186c48d9c65095022a5e3c239af89f04124bfc0cd0ed977546` |
| 69 | `def` | [inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inrhom.md) | 389 | `declaration-track:06117a79090641d7f28bdf0f2acb2eaf8c6d514388fbbc7f2e6e7b672dc19764` |
| 70 | `def` | [sndHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/sndhom.md) | 394 | `declaration-track:0d3e188f8bd4fa44b09f5ebf6d8b4d6c939b9c015fcc46ed48937d42fd23453f` |
| 71 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/one.md) | 406 | `declaration-track:f350d192ab33502c5555d8f6cf6ddcb260a43fb2aefa5b2ef2b0f6b73c1fc5f6` |
| 72 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul.md) | 409 | `declaration-track:6d6da4015a9e6eb40232b70484884a19b995ca3ef1e3cb5de6004920ae5dcdc6` |
| 73 | `theorem` | [fst_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-one.md) | 413 | `result-track:ab0cb5dc22bc1dc5ac864d93deed487da9423ad01c82657978195fc5abd428c4` |
| 74 | `theorem` | [snd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-one.md) | 417 | `result-track:b9f43bcd1c31b2e75cdfde7f0ec1d110883f22393383c70969251d6fa04c22ab` |
| 75 | `theorem` | [fst_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-mul.md) | 421 | `result-track:a99ddd956628d98190ffad8be09d1cd33cf7a8faffb712ed41c3b05705e8f69c` |
| 76 | `theorem` | [snd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-mul.md) | 426 | `result-track:4b4d96b0321444cefbfdb2e708abaeb925dac1170281e7283c3f781c503d0178` |
| 77 | `theorem` | [inl_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-one.md) | 435 | `result-track:f5f4223f9acbae7cc39a4864490fd5ccc0e9446631da9c0893895ba40b162ad2` |
| 78 | `theorem` | [inl_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-mul.md) | 439 | `result-track:f4246ae1b2ef372a96c30e554c1f5a2d9cdf8deac19096d852e452888bddb946` |
| 79 | `theorem` | [inl_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-mul-inl.md) | 443 | `result-track:f4a928a1734ff1552b6139dbea76a19d9b64e1866b3a8d6ff38d58bccb7a7107` |
| 80 | `theorem` | [inr_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-mul-inr.md) | 454 | `result-track:7d830258560dfb16b9c134ff50982452c501a00a14ee841e08ad0a187d3c78c8` |
| 81 | `theorem` | [inl_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-mul-inr.md) | 461 | `result-track:8413d4f046b0e34947957f860618e23802b464e9d36c211046e7a9431c09b5e6` |
| 82 | `theorem` | [inr_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inr-mul-inl.md) | 466 | `result-track:816077a8df16a680a10af77840a6621a5f1590078625ee93e81ff54467caf2e5` |
| 83 | `theorem` | [inl_mul_eq_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-mul-eq-smul.md) | 471 | `result-track:4b31790fc5f571017386cb9ebc26fce279d5e27fc0bccb5cacf5f2d9e15623cd` |
| 84 | `theorem` | [mul_inl_eq_op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul-inl-eq-op-smul.md) | 476 | `result-track:209b1bf65d1f692d7f38071eed8e1d8984eb058873ca9f9b03f2b7c89072492d` |
| 85 | `instance` | [mulOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/muloneclass.md) | 481 | `declaration-track:cdd64f39231d67153b72773990271f2a6e3c1f8b597c5e739ed702ecacf6ef7b` |
| 86 | `instance` | [addMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addmonoidwithone.md) | 491 | `declaration-track:a451d6f591b09342137d6e181381d02e5d23ec710c6b2b55e1cf8e18bd21caed` |
| 87 | `theorem` | [fst_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-natcast.md) | 498 | `result-track:57e6faee0f8c64a5b8182b5f805cf698d8573718dfda5d9c349c9db0a8e0007b` |
| 88 | `theorem` | [snd_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-natcast.md) | 502 | `result-track:0a2603f6f87a2a41fcb29b26477986b13d0ab827e43eeccce3167e9b4bea36e9` |
| 89 | `theorem` | [inl_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-natcast.md) | 506 | `result-track:f4b4373ede384ba4447c95692a54c355292454674bb1fbd8d0067e5879ab78c9` |
| 90 | `instance` | [addGroupWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/addgroupwithone.md) | 509 | `declaration-track:c0be25c65c7d81e728ebc0718605619b6f75414ea484bc0e573940bb6d16388d` |
| 91 | `theorem` | [fst_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-intcast.md) | 516 | `result-track:eb75b7d38ebcec7cb5f1a9152ba6a0990191ed30d6e43032ddfa74def49e774e` |
| 92 | `theorem` | [snd_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-intcast.md) | 520 | `result-track:e3ecd3fad2f5a3bd74a6aa68aa543dd83579ae9264ef0ca1df6176e0636eda65` |
| 93 | `theorem` | [inl_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-intcast.md) | 524 | `result-track:9eb0c9a53ecd80417e4b5fffc278a845101190ab06375a710727c2b1b513e412` |
| 94 | `instance` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/nonassocsemiring.md) | 527 | `declaration-track:88feb45479c93331f16ddec27e3e9d16cb676cdb85bfe6fcfc9150cd38b0173f` |
| 95 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/nonassocring.md) | 549 | `declaration-track:558e7fb890d53cb96d1cbafb8ff29313610bb0cfa36a37b92b0558c765a63eac` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/instance.md) | 562 | `declaration-track:780730b2ad6e45cc166c373908dda1b2d997fdb4e912d4585cc4d568f2ddcaae` |
| 97 | `theorem` | [fst_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-pow.md) | 568 | `result-track:9f999e0b3a3590c45f9c3d9f66d5711ea4f95bfbb5fd97e43480f6524ece6c57` |
| 98 | `theorem` | [snd_pow_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-pow-eq-sum.md) | 572 | `result-track:50b27c3cf8427a10684b42c9997c634bc733304cc509e48b9b3d8a8e3c47e375` |
| 99 | `theorem` | [snd_pow_of_smul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-pow-of-smul-comm-source-edition-2.md) | 577 | `result-track:88c754fdec4adfd7b080084fa7746a352d9f65dd2475122aba8c811bf5e7fddb` |
| 100 | `theorem` | [snd_pow_of_smul_comm'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-pow-of-smul-comm.md) | 599 | `result-track:49f80c7b383825211be95288e1a9d98b3c307ec8a76a76ac8a41d988491d6ec0` |
| 101 | `theorem` | [snd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-pow.md) | 605 | `result-track:2d5970a54581bf4224ab717f31100c290c0d3102c9b76fd1d168e79309329e94` |
| 102 | `theorem` | [inl_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inl-pow.md) | 610 | `result-track:adbde775809a7e363998e96e0e7d772283c697f29fa459206e9457aa10935831` |
| 103 | `instance` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/monoid.md) | 614 | `declaration-track:6d2120db4eedfcaddae3fd2097cbaf612861eebbf88657d5b16f6b89248e1535` |
| 104 | `theorem` | [fst_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-list-prod.md) | 637 | `result-track:0dabe3677dc39ac5c2fe249f19bbfaee424a8170c0ef230840f0bae2c3a42560` |
| 105 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/semiring.md) | 641 | `declaration-track:330734f6a96b1fdc1ebf1812cb90d58a4e1d942992ff05686ca1f889c0576d24` |
| 106 | `theorem` | [snd_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-list-prod.md) | 647 | `result-track:c300f7643441bdb176c8641f03f5666723447e95fc63a2b587d4467a9606b4b2` |
| 107 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/ring.md) | 662 | `declaration-track:7ba1045d949c478a1b9f95a024f7d5333c95d4b9c0f2741e3f2aa7f925aee3ec` |
| 108 | `instance` | [commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/commmonoid.md) | 666 | `declaration-track:35a50f52e088e4a775dae84a85cb1cadd358f1024b3e9cf6bd6727a2ec96920f` |
| 109 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/commsemiring.md) | 674 | `declaration-track:19e7748c58b90a02ed1c106e6cf66c81393631caf3685ded2e75fa36b706a21f` |
| 110 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/commring.md) | 678 | `declaration-track:684266639fc0fb8437e67c8c34f38a1e4fd15428fd3ffe8e186bf6f834af0639` |
| 111 | `def` | [inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inlhom.md) | 686 | `declaration-track:6bd9aae9ed648b07c7aed537592962491c172d877f3c2fe5ff7d9b8dfc5b0872` |
| 112 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/instinv.md) | 702 | `declaration-track:59a9413d9cccc6fd669782a6ed107ae1ba2ff43fa1ba5d467764200c9d712ba0` |
| 113 | `theorem` | [fst_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-inv.md) | 705 | `result-track:c7c65dc196b959fd7d3f9c733c3a113ce16b4dc1a52ea4b9ddccd2521becf0d2` |
| 114 | `theorem` | [snd_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-inv.md) | 708 | `result-track:6a762272cc6c12a9e84e1b1c2aaf03613ae4eadaaa007c0281b9ebb2faa31080` |
| 115 | `abbrev` | [invertibleFstOfInvertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/invertiblefstofinvertible.md) | 719 | `declaration-track:2dc37270dc9f8c9bd92ded894357ebfe12d01613e3e2dc029da91b70451bdb94` |
| 116 | `theorem` | [fst_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-invof.md) | 724 | `result-track:f943bda0cbf9952073b7c2435cc62588dc232e321b39b91e353b46bdde50500b` |
| 117 | `theorem` | [mul_left_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul-left-eq-one.md) | 728 | `result-track:a25a030796f3266b10d3aee7356b6bf13a3d130ea1abf7a5b730df7eeea18644` |
| 118 | `theorem` | [mul_right_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul-right-eq-one.md) | 735 | `result-track:2e57f8b809310406bb20d0e78fe12c978f18bab27c9b666c5381cbc08561aca1` |
| 119 | `abbrev` | [invertibleOfInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/invertibleofinvertiblefst.md) | 744 | `declaration-track:b2d6a9ba347c04a333ae2a27ffbbd48d8394a161f0c021db6874691ca0059346` |
| 120 | `theorem` | [snd_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-invof.md) | 753 | `result-track:d649af6378e97cb3018a397bb01511200f8fa6ea7bdc72b949d03b2618d38cfd` |
| 121 | `def` | [invertibleEquivInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/invertibleequivinvertiblefst.md) | 762 | `declaration-track:4333dad6eeee600f9e18797d5753ef3fdb13bf53a8a62959c957e0df26436fb9` |
| 122 | `theorem` | [isUnit_iff_isUnit_fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/isunit-iff-isunit-fst.md) | 769 | `result-track:a975b31b49c4e7c8671b133960386a480ebe353b80c6388bcc92409edd045c16` |
| 123 | `theorem` | [isUnit_inl_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/isunit-inl-iff.md) | 773 | `result-track:cbc5f3863aff41b216f33fa66d8891338d23ade997710c2a3c61112116026cb2` |
| 124 | `theorem` | [isUnit_inr_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/isunit-inr-iff.md) | 777 | `result-track:806958a64c69d633ae5971f09c90b2ed549c19882a71cc6d1412813fdaae26d9` |
| 125 | `theorem` | [inv_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-inl.md) | 786 | `result-track:bbd05f82c44e1171eedf9291209083b58f2672a9ae00b7452c38f0a2a7c8521f` |
| 126 | `theorem` | [inv_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-inr.md) | 793 | `result-track:228d02303f3a5691fbebc2e06db1d4962d3320b1205a64dd7e4f5ae07b31ade4` |
| 127 | `theorem` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-zero.md) | 799 | `result-track:3b742d48c955524131a97c075c65a6568c4ee633b8460ec9c03d25b73008a5bc` |
| 128 | `theorem` | [inv_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-one.md) | 803 | `result-track:ed21c913d11950b227da9148e6245735ccac51031c30968beda157d2216ba3a4` |
| 129 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-mul-cancel.md) | 806 | `result-track:40811b8e9b0e364f299847e57354900521242129bbbbb8ecf1c91dd910d8ebf2` |
| 130 | `theorem` | [invOf_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/invof-eq-inv.md) | 812 | `result-track:132031d3e200054af47d55ff2a77c4870cb385f84ee89c86207ad5110a3d260f` |
| 131 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul-inv-cancel.md) | 816 | `result-track:a5886de38d3b185f147a04daf139d42f9cec4d9ad171f7fcdcbd8a0dee78feac` |
| 132 | `theorem` | [mul_inv_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/mul-inv-rev.md) | 821 | `result-track:4beca91bc755a577463cca666bd1bae6479ba14124c95620158974496ab9e83d` |
| 133 | `theorem` | [inv_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-inv.md) | 834 | `result-track:40a6450470498de473bc5244b7ee265fa3d0acf4f4297ced1fdc47e094428ac8` |
| 134 | `theorem` | [isUnit_inv_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/isunit-inv-iff.md) | 845 | `result-track:3f07c47746be919621a6370904213e4cd6fc24f975299f287625bde8bcbe39ee` |
| 135 | `theorem` | [inv_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inv-neg.md) | 854 | `result-track:618085240c807e660f4d823eef8b61f64b9cd5ea31b1fdff34ba60ea2e76b1d6` |
| 136 | `instance` | [algebra'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/algebra.md) | 867 | `declaration-track:a62a1e776b0a0ec25c3cd5c878ffe445b4065fd10f963130f700962daf4f4947` |
| 137 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/instance-source-edition-2.md) | 883 | `declaration-track:908e2b99c5af5b5167ee7daadd88fc676454b6117cc6ed35ca351fbd2c7976cb` |
| 138 | `theorem` | [algebraMap_eq_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/algebramap-eq-inl-source-edition-2.md) | 886 | `result-track:fc3c893a3a2fa69e162334d6cfd4adf237836f0f4f3974450630ce19455a42a7` |
| 139 | `theorem` | [algebraMap_eq_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/algebramap-eq-inlhom.md) | 889 | `result-track:ae3d8992aa5111dda788e16be8b3b0de0975d8cd987e023a22109e14c8200bc3` |
| 140 | `theorem` | [algebraMap_eq_inl'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/algebramap-eq-inl.md) | 892 | `result-track:06a71fc7117f32d1e4c25bc0a07139e18839daee995909e40fa9e25671a564f5` |
| 141 | `def` | [fstHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fsthom.md) | 897 | `declaration-track:cad82d5ad4a6480ed7768aed68956244054cd49ed8f69c718337b46a396ed72d` |
| 142 | `def` | [inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/inlalghom.md) | 907 | `declaration-track:12e1df21ba24483f5e3c8e6933c2a9deca38489726b79ba6cc276638f486fab2` |
| 143 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/alghom-ext.md) | 917 | `result-track:504b08ab7d595c0436520fafd12c21a56c57faafaf2320c2c3fff7d32745fd92` |
| 144 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/alghom-ext-source-edition-2.md) | 923 | `result-track:729e29bff2987e64ea70b617837b53c9f4e0156f5ac0e131bc05ea50f8c3a46f` |
| 145 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift.md) | 947 | `declaration-track:9e7f6408be9725a89d2db5d0caf14cf68d4241feec39edf823d15ea2c2b861d4` |
| 146 | `theorem` | [lift_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-def.md) | 961 | `result-track:c4fea3cb55c4a7e9d0bad422f5d0b8a2cff7a05fbf463e690999b39a49a1b1aa` |
| 147 | `theorem` | [lift_apply_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-apply-inl.md) | 969 | `result-track:1b8bd53de89df59ac9e81f7ca895239832014516330c50d1387eb9ee1816222c` |
| 148 | `theorem` | [lift_apply_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-apply-inr.md) | 978 | `result-track:6c809ca08325986ebb09cbfe6cb59e00e9f3cdbcd9b81928c304eefeb574ad08` |
| 149 | `theorem` | [lift_comp_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-comp-inlhom.md) | 987 | `result-track:277e0c385f1b8aaf45b63245760627df173a40cdf32be6be2799553dc03321d1` |
| 150 | `theorem` | [lift_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-comp-inrhom.md) | 995 | `result-track:f8f33f92992af6bef8dc972e4df75f5eefd7420436258e21a109f2ed55e423b7` |
| 151 | `theorem` | [lift_inlAlgHom_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/lift-inlalghom-inrhom.md) | 1004 | `result-track:e34080ea8f19b13d7bdc10371fef745f2ecc6a7f0477d69193396340aba11fee` |
| 152 | `def` | [liftEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/liftequiv.md) | 1017 | `declaration-track:8b9b70adbf712a366c6e1bd5bff695f2f32773a28d70902776ae1ea3794f9d18` |
| 153 | `def` | [liftEquivOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/liftequivofcomm.md) | 1034 | `declaration-track:b2704b9d00992fd507e40e8abc99989475eb1b8fd79a09e0a34b7dac17f9a1b2` |
| 154 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map.md) | 1058 | `declaration-track:37b6c51619de2fc0ec101941ab10f540b78397093168ffdaef12847fa08a3842` |
| 155 | `theorem` | [map_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-inl.md) | 1062 | `result-track:7917fb8d03258507f5ece0f16be993b81711398f2965c819ca5e1aba1df4e0c9` |
| 156 | `theorem` | [map_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-inr.md) | 1066 | `result-track:fcd88c2276416240af0be335dc420ca14b66145ee69226f5f01f74216a1751b5` |
| 157 | `theorem` | [fst_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fst-map.md) | 1070 | `result-track:aa34d73f43d4c61c032a0a1a93c4456dbc20582589a5a4ad7099c617c96cf78a` |
| 158 | `theorem` | [snd_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/snd-map.md) | 1074 | `result-track:cddae7d868a17fa98bf22f8e14c3ae03396a9656c246c82c393a48246e00d57b` |
| 159 | `theorem` | [map_comp_inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-comp-inlalghom.md) | 1078 | `result-track:68d7285cca5f68a13176fa1a7433a788241aefcfa7193ac737528eaa2a9b060c` |
| 160 | `theorem` | [map_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-comp-inrhom.md) | 1083 | `result-track:d6b5f2a033106e6270d952ba4e3dff3d5fad0fa562c9f1c81401adf93addd3a6` |
| 161 | `theorem` | [fstHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/fsthom-comp-map.md) | 1088 | `result-track:916601c95eb6662b2dad5bea8a84d5c534c5d9c1b816f240c5b169075f36b45b` |
| 162 | `theorem` | [sndHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/sndhom-comp-map.md) | 1093 | `result-track:6efd9b873e2c7c80cf2ba19cfa88f5f596429e49bb2f0e797781dc4308cb1870` |
| 163 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-id.md) | 1098 | `result-track:09b006e90014a50fe603b99a83c52091ce31ecc9d58f953480fe4208ca50f708` |
| 164 | `theorem` | [map_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstSurjective.lean/declarations/map-comp-map.md) | 1102 | `result-track:41f1c82ba0609c86cb9cd29db4070b8cdbff247ed8541f376cedd548a91d3208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=901b51e898109ae1728ff43ab110cf4cee4adff7ddf917b275e4b49b60fed8f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
