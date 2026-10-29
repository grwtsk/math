# Verification target: Linear Algebra Determinant Namespaced Det Eq One Of Not Module Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43388bddadbe90771fc50f56f6faa331d76d06c1",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43388bddadbe90771fc50f56f6faa331d76d06c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivOfPiLEquivPi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/equivofpilequivpi.md) | 67 | `declaration-track:3613879027b8f487971c0fd05ee636bf33cbeafb96e443dadab16b2fcb9696f6` |
| 2 | `def` | [indexEquivOfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/indexequivofinv.md) | 77 | `declaration-track:79eec77a6285a19fdf8e16fc5e915c3e0731b031aa6b604cbf5457e26ba06bc2` |
| 3 | `theorem` | [det_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-comm.md) | 81 | `result-track:923857c5ca23891aa0e2688a125c2e66dd3d6e21efec1077f25288dd47100fe4` |
| 4 | `theorem` | [det_comm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-comm-source-edition-2.md) | 86 | `result-track:ee8a13e72224731eb0ab45011739605294c28aa8833bf8b5a9c1ffc262b1dee6` |
| 5 | `theorem` | [det_conj_of_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-conj-of-mul-eq-one.md) | 98 | `result-track:67647768f39e5949c73876d4b0f40ad80ee82c3810707753decf454409a4d9a0` |
| 6 | `theorem` | [det_toMatrix_eq_det_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix-eq-det-tomatrix.md) | 116 | `result-track:fc46e16d95f3faaf0cb812f59a46a4669182ca0fb64743adc8af29ce8b4272cb` |
| 7 | `theorem` | [detAux_def'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/detaux-def.md) | 141 | `result-track:296c9cfc184a2a29cccb6f728f5b1e5e8aae2889bc8ad6f816b0c8927bb3cfbb` |
| 8 | `theorem` | [detAux_def''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/detaux-def-source-edition-2.md) | 146 | `result-track:3dd9c03fec01e59f7af8902c40b124ddc21e684c75233c3bb237779b5a04c5a0` |
| 9 | `theorem` | [detAux_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/detaux-id.md) | 153 | `result-track:ac83f4019ea905e967b60b18d3f3e196d93e51cf59d47d81738a80c37e5a003f` |
| 10 | `theorem` | [detAux_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/detaux-comp.md) | 157 | `result-track:cdd1517dc56d802f81cf30d75e961009f570023bbf31a6c04d63d62e9a95b302` |
| 11 | `theorem` | [coe_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/coe-det-source-edition-2.md) | 175 | `result-track:eca49b60842206bf4c35dcbf692e0c8c51993c44d5669cecf8c02fbd8005ffc9` |
| 12 | `theorem` | [det_eq_det_toMatrix_of_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-eq-det-tomatrix-of-finset.md) | 190 | `result-track:99e427660a76a6c52e1f28a972cc8d95e7afc6b5618343468fc93aedf8902019` |
| 13 | `theorem` | [det_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix.md) | 196 | `result-track:05076b95f19ebe051f83b78bd779cc21ed5f8d01621d48c072313b5cf2a7075b` |
| 14 | `theorem` | [det_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-tomatrix-source-edition-2.md) | 203 | `result-track:34e96d424b8258a3ae20f866930e4fe2c69746e926adfa073603fcc9a49445ab` |
| 15 | `theorem` | [det_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-tolin.md) | 207 | `result-track:0ed3429b65c8a410c0743911a0b6b72d5bb23be8dbe0c9cdd3c04c291da12beb` |
| 16 | `theorem` | [det_toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-tolin-source-edition-2.md) | 212 | `result-track:dc689d229c33c6b29b4106937efe0bafc1a1e383a4bdffabf8f2738bcb309922` |
| 17 | `theorem` | [det_cases](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-cases.md) | 218 | `result-track:a1018ed948f75d33a344ed2cd27c51b58fe730f061bc9112b49a1563735e8ae0` |
| 18 | `theorem` | [det_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-comp.md) | 230 | `result-track:51cf66eeef4aea592810b294e8d42e5cc6e53c1c5cb0e3dbbe69e7f673d58d30` |
| 19 | `theorem` | [det_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-id.md) | 235 | `result-track:3df37e1abebe583315a1ad489319e229f6585cee3d6cc61a086f2377d39921e8` |
| 20 | `theorem` | [det_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-smul.md) | 240 | `result-track:347ba166880919735d02491318bc09396b643ceff108bcb6542b2fa91e7e669f` |
| 21 | `theorem` | [det_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-zero-source-edition-2.md) | 253 | `result-track:799576ca189dd5ce01d53ffd3e71fb90435ec75f8ba7fdfc71246e1e096772db` |
| 22 | `theorem` | [det_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-zero.md) | 263 | `result-track:453d70b997e9b6ccbae4a5c5e46df805da9dcbc77a18fd125ce836e895ed791d` |
| 23 | `theorem` | [det_eq_one_of_not_module_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-not-module-finite.md) | 267 | `result-track:9771fcd233964fc7b91786c927309ed58f9495d37973f37109c8cfefd7a0e02f` |
| 24 | `theorem` | [det_eq_one_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-subsingleton.md) | 272 | `result-track:6688c479871a59a3c88811a589ef3b978fa0b3e3ff16a0801fffde6755483299` |
| 25 | `theorem` | [det_eq_one_of_finrank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-eq-one-of-finrank-eq-zero.md) | 278 | `result-track:ef69e4a67b0fc20058c957f428d3a471b3688a807865d0393c986dffd2d4e314` |
| 26 | `theorem` | [det_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-conj-source-edition-2.md) | 291 | `result-track:30fc53c3ed633c332925975d7e5aa1408831ebd3c5f123e82758ebdb99a13685` |
| 27 | `theorem` | [isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/isunit-det.md) | 309 | `result-track:aa3b7e8de55812224faaab8408f27456bbdf861e9a687d44a5ac1e5c8787ba68` |
| 28 | `theorem` | [finiteDimensional_of_det_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/finitedimensional-of-det-ne-one.md) | 317 | `result-track:673862ea90da3bc780ee51edeb86b1789ccd459fe6cfdd81e30346685c1ab3e9` |
| 29 | `theorem` | [range_lt_top_of_det_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/range-lt-top-of-det-eq-zero.md) | 325 | `result-track:9815eb251772cb1ff293444eea7d09d2a86914e7f335d5ca6d771e7a10f837fd` |
| 30 | `theorem` | [bot_lt_ker_of_det_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/bot-lt-ker-of-det-eq-zero.md) | 333 | `result-track:42a42badac70b3c340357c93dd44d59944a3f5e82901a67c745b46bea45eb608` |
| 31 | `lemma` | [det_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-ring.md) | 341 | `result-track:67e3090aa1a060032314a673c8bfdb1fc8d25bf59dc394fc9830296597355d32` |
| 32 | `lemma` | [det_mulLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-mulleft.md) | 344 | `result-track:f7c20d6d117355da386d4b36e0b015ef97c16446ce473a3ee2aa31b0ddf9a107` |
| 33 | `lemma` | [det_mulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-mulright.md) | 345 | `result-track:23fddeced0a48336f9245dd803b5e4cc1f24d1c6d1de06e2b6062a2621ddfc00` |
| 34 | `theorem` | [det_prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-prodmap.md) | 347 | `result-track:bd3612254c2703b03bde0431ed97702510ddaa5fa69a130b026543fb992b2307` |
| 35 | `theorem` | [det_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-pi.md) | 356 | `result-track:f04bfa996e90f5f99231666190cf6c0e751bea8c5f1743d27027128072b6359f` |
| 36 | `def` | [det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det.md) | 383 | `declaration-track:cc33c68a546c9c8d49be98f1744d72d0d1f682a2f678115640fdad9fde2f02d1` |
| 37 | `theorem` | [coe_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/coe-det.md) | 388 | `result-track:7c896dac7a0abe2193acae0a332b32d8daba566b451dc57935a6ce1a031fa85c` |
| 38 | `theorem` | [coe_inv_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/coe-inv-det.md) | 392 | `result-track:09f44f91a660b5af462ef1c1962d9734bdee7060936fac40a258d7e043d96df4` |
| 39 | `theorem` | [det_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-refl.md) | 396 | `result-track:dc7668535a4dc1c64411ad082baf48e22f73eeca6cbc50f6d6aa6217a9f73f72` |
| 40 | `theorem` | [det_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-trans.md) | 400 | `result-track:bcd771acf06554a2eae31a3257f0dd7372fd31f79cf4247f25fb5352232c1880` |
| 41 | `theorem` | [det_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-symm.md) | 405 | `result-track:f1bf77562bdc99c381e1bced937b0533060af5ba7a9089b6330e3b23d48539f2` |
| 42 | `theorem` | [det_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/det-conj.md) | 410 | `result-track:1a8bfd2c92d1350507318cf3c08d5748660310df571187ca090b86cc52d78087` |
| 43 | `theorem` | [LinearEquiv.det_mul_det_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-mul-det-symm.md) | 420 | `result-track:cbaeac71774e61a54e64e628e03459ad2fe6e42d01c5c60569b09427b9a8759c` |
| 44 | `theorem` | [LinearEquiv.det_symm_mul_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-symm-mul-det.md) | 426 | `result-track:f668781a21b0b19873047b7a8b19662643af78a47f7cd473515d3c5c71942647` |
| 45 | `theorem` | [LinearEquiv.isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-isunit-det-source-edition-2.md) | 431 | `result-track:9bd900231b9589d9393b9471064537ffc02b603cf1cf1b60e491c15423e6d861` |
| 46 | `theorem` | [LinearEquiv.isUnit_det'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-isunit-det.md) | 437 | `result-track:361eef5c6acf22086959254f426ff7f8c6d34252b62f219cb3dccd29fea7e61d` |
| 47 | `theorem` | [LinearEquiv.det_coe_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-det-coe-symm.md) | 442 | `result-track:84e78acfa8d3c3c5a0820065213005108a9b2d8d2049129495da1c76797865f5` |
| 48 | `def` | [LinearEquiv.ofIsUnitDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-ofisunitdet.md) | 448 | `declaration-track:efa70a93b7c93f818f20e7b83c275f1ea309fa613d90126d47772a1c01055f49` |
| 49 | `theorem` | [LinearEquiv.coe_ofIsUnitDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearequiv-coe-ofisunitdet.md) | 466 | `result-track:5bffed17d32961fed2d315d6d8cdd1ba78ae0ed75c714260132533c5313e2b0b` |
| 50 | `abbrev` | [LinearMap.equivOfDetNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearmap-equivofdetnezero.md) | 474 | `declaration-track:070bda55a90f1bc27bc9cfb03f892d8656a7ce62b4d0a7dab98f057c6d9fc2fc` |
| 51 | `theorem` | [LinearMap.associated_det_of_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearmap-associated-det-of-eq-comp.md) | 482 | `result-track:cc4753736f90f62b06bd2e5d7ccf0a0597395ecff4df6df72b4160aeb8d313ae` |
| 52 | `theorem` | [LinearMap.associated_det_comp_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/linearmap-associated-det-comp-equiv.md) | 491 | `result-track:b1d85880daeadde6902b56ccaa8bca9e9774e51605a9ee7a04cf1f5d70d5cf2a` |
| 53 | `def` | [Basis.det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det.md) | 501 | `declaration-track:90c7b1702ef48a778637168e1778d954eb3f4c299b4667cfb0e6f0c407f365c3` |
| 54 | `theorem` | [Basis.det_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-apply.md) | 517 | `result-track:b2b0b4407b2ce1ac12fd7130b74ea1dc8ecf79c65b554a0177e730fb0843e72e` |
| 55 | `theorem` | [Basis.det_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-self.md) | 520 | `result-track:0b0ef344d6d0e9f40df60f346bee710dea2755753fb58c74bb9365ae97377c21` |
| 56 | `theorem` | [Basis.det_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-isempty.md) | 523 | `result-track:c88cec9a8674e6af90e3e754ef59b3917357c4ffba30d5a90941efef68abdb14` |
| 57 | `theorem` | [Basis.det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-ne-zero.md) | 528 | `result-track:534cb3ef45cd3d42d2b23b2b94736d3b99cc39a1f8a29b5c437c4bf1636989bb` |
| 58 | `theorem` | [Basis.smul_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-smul-det.md) | 530 | `result-track:8dc1ff445c0cc3d88358f268d8ea88937b52debabf564661f7d3adf706633e80` |
| 59 | `theorem` | [is_basis_iff_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/is-basis-iff-det.md) | 535 | `result-track:b5809b364356a3d987311d12378d1afc236abb9b79df5c5d5bbda25621165b4d` |
| 60 | `theorem` | [Basis.isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-isunit-det.md) | 553 | `result-track:edb4683dcc5415007cab2448204ef38e297d04c299246f325096b82102c95a1c` |
| 61 | `theorem` | [AlternatingMap.eq_smul_basis_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-eq-smul-basis-det.md) | 558 | `result-track:ddc06379062f4ee2e94466b7fcf9f6e33125127370daee8c9e609c7d220a3d3b` |
| 62 | `theorem` | [AlternatingMap.map_basis_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-map-basis-eq-zero-iff.md) | 565 | `result-track:0c98995f6b0dce7666b47a5081dbe5f446f811beb8a13f59f0c9e8f9834ac5ea` |
| 63 | `theorem` | [AlternatingMap.map_basis_ne_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/alternatingmap-map-basis-ne-zero-iff.md) | 573 | `result-track:34236323b22133013f6f57ea28cfcefe99644af7c0c3d7c7cfa143f159b14c80` |
| 64 | `theorem` | [Basis.det_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-comp.md) | 580 | `result-track:c9e0e3fa27120acf0114e72438865dba43a713c6bded1b664fcbedb618e6e947` |
| 65 | `theorem` | [Basis.det_comp_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-comp-basis.md) | 587 | `result-track:a0b113080606e408d00b9dc09ab92654e08f9e9f085f063d5bc9dd7bc54939e7` |
| 66 | `theorem` | [Basis.det_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-basis.md) | 595 | `result-track:dfb16b946b5910c2aae06e4a38ef2a77c25a5ae9de4df7613a05b8440c1ad740` |
| 67 | `theorem` | [Basis.det_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-inv.md) | 599 | `result-track:819a63f0aa162bae49491f7551d43918b5248bbcb5ca46299097785547b35822` |
| 68 | `theorem` | [Basis.det_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex-source-edition-2.md) | 604 | `result-track:c5fe128e0e14f6fd92e0f7e837019b609cd13134b0db8ba7efb4b52741d28a92` |
| 69 | `theorem` | [Basis.det_reindex'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex.md) | 608 | `result-track:843ef3bfd7410b922dee37f3b9cf9a512e316941df91f8db738a32963e696071` |
| 70 | `theorem` | [Basis.det_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-reindex-symm.md) | 612 | `result-track:e0175e1bd2352d269f5700942a945ab0b0a141ded5f0bd42e1244c38d6bda656` |
| 71 | `theorem` | [Basis.det_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-map-source-edition-2.md) | 617 | `result-track:c847e10daf61ec5cdd72228254a79d1400aa50f28e970eec927261e37b90adce` |
| 72 | `theorem` | [Basis.det_map'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-map.md) | 621 | `result-track:2b40d11405224080479be7637ed51dc9b91b7172aacdb55cd7286f89d2418bc9` |
| 73 | `theorem` | [Pi.basisFun_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/pi-basisfun-det.md) | 626 | `result-track:fd47936a721b950bb7dc4ef576e00c158b5447226f75367e724a7bad7dc1fda5` |
| 74 | `theorem` | [Pi.basisFun_det_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/pi-basisfun-det-apply.md) | 630 | `result-track:b19979b7ecd1956269fef139b24f8c9668450ace0fec284ef1207205e1889ea6` |
| 75 | `theorem` | [Basis.det_smul_mk_coord_eq_det_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-smul-mk-coord-eq-det-update.md) | 637 | `result-track:9e299270f86014cd6c33c153c31b97cd795e7d0fe1684679b7887ee4ae4fd719` |
| 76 | `theorem` | [Basis.det_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-unitssmul.md) | 652 | `result-track:a70eb3c3a2d3bfc2706e2f193cf5f83e6125ea83670d7b704ae28be7a8b5f625` |
| 77 | `theorem` | [Basis.det_unitsSMul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-unitssmul-self.md) | 664 | `result-track:0b8ecb4ecef522371c24c665d3ac8bebba456c90881e7659c20654a08fb84808` |
| 78 | `theorem` | [Basis.det_isUnitSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDeterminantNamespacedDetEqOneOfNotModuleFinite.lean/declarations/basis-det-isunitsmul.md) | 669 | `result-track:4c7ee6e260a5fb0996dc84c2c93bfc13b72b720ee19b8e8f8908b3951c72ff2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0a2e474469ba65623dbfd9e81a7a7d711a5342c1ebe7f6a605610d27f02ed6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
