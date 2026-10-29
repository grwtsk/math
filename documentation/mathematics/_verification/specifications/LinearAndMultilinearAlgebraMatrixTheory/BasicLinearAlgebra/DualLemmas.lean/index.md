# Verification target: Dual Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed2cd3478a099aa7c5c95ca88bea01ed9e09bfbf",
  "lexical_observation_count": 121,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed2cd3478a099aa7c5c95ca88bea01ed9e09bfbf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.ErdosKaplansky` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Projective` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualProdDualEquivDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualproddualequivdual.md) | 87 | `declaration-track:a9c58f7202441c622d212782de52002c2ffd666de2bd23c1fcb980daa99faab0` |
| 2 | `theorem` | [dualProdDualEquivDual_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualproddualequivdual-apply.md) | 91 | `result-track:920e4f8d7270929d1c76bb671a011f83eabcce1b9ac86e75e19e9892f088d83e` |
| 3 | `theorem` | [Basis.linearEquiv_dual_iff_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/basis-linearequiv-dual-iff-finitedimensional.md) | 117 | `result-track:5fa8024d2893a35288161e384cdf2857e6a75f538b94663e94d8dd8582993ece` |
| 4 | `theorem` | [Basis.dual_rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/basis-dual-rank-eq.md) | 126 | `result-track:f475f15bf2bbfddd939607a40b4bc3aa1ad7560b2ae7037b021dfb0407ac39f3` |
| 5 | `instance` | [dual_free](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dual-free.md) | 136 | `declaration-track:39b8d53dda0a820c458b9dbd323f06d297f48cfa20a2ee0a4d9cc75282227468` |
| 6 | `instance` | [dual_projective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dual-projective.md) | 139 | `declaration-track:e192f157befdbac332be7112e432a86cda426dbb596d60cafc1d69238db376d3` |
| 7 | `instance` | [dual_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dual-finite.md) | 143 | `declaration-track:dce66b5eaf628cdbea54d1c165d430c5edbb0bb60cb0054ce7d62b1a36f71e7b` |
| 8 | `theorem` | [eval_apply_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/eval-apply-injective.md) | 170 | `result-track:7b6ccdb24b5c00330b3ea9aede260e2a26eb5aa7a3db4be4f50bf31bb4bc4e08` |
| 9 | `theorem` | [eval_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/eval-ker.md) | 177 | `result-track:c968c8e5150ad06e483dccc14a26a431882e89096ec52eca3821d2872319fee4` |
| 10 | `theorem` | [map_eval_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/map-eval-injective.md) | 179 | `result-track:5d6e92d4f0cc8f7a87c57d5ccd0b2794bf5bfc724ec219b43b962bc93fa9bda6` |
| 11 | `theorem` | [comap_eval_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/comap-eval-surjective.md) | 182 | `result-track:28df8df4b97b7367d8f921de8ab3a6c637755874e7a897910ade05da9a48e21e` |
| 12 | `theorem` | [eval_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/eval-apply-eq-zero-iff.md) | 191 | `result-track:618ade3eec167a6a34150f74176a4a68af60c8ceb500be0da13cc5a1df14b5a0` |
| 13 | `theorem` | [forall_dual_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/forall-dual-apply-eq-zero-iff.md) | 194 | `result-track:ec729ea5e322f0f94861adbc5dfbf1e9f25162938870d338311d2959180fdd27` |
| 14 | `theorem` | [subsingleton_dual_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/subsingleton-dual-iff.md) | 199 | `result-track:5c446d80723d8424dbc79680b007c307038ff651828e7c27142199c988788ab8` |
| 15 | `theorem` | [nontrivial_dual_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/nontrivial-dual-iff.md) | 203 | `result-track:2f21a16fb2fd4db01db43df3c46fdbb308b44d416340c640ec22c0bae25d2d5b` |
| 16 | `instance` | [instNontrivialDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instnontrivialdual.md) | 207 | `declaration-track:a72184ff0f1bde8e21b2cf210b39c2441069fce1eb6fc6e59d43728262bb222b` |
| 17 | `theorem` | [finite_dual_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finite-dual-iff.md) | 213 | `result-track:5b1c3c020a03e7488b6818b3630f93ab1a345a808e555db06b26167cc2864a6d` |
| 18 | `theorem` | [dual_rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dual-rank-eq.md) | 228 | `result-track:575365d10dc3cf72b90313e417400ba3f3d8872aae49ccb4edcc803194d44046` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instance.md) | 240 | `declaration-track:60fcfff351ac1d1d2b3618164f90a502fafcf3518b3dbb2ba3251b4f1ceb623f` |
| 20 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instance-source-edition-3.md) | 247 | `declaration-track:86a77b0a33e7fa00edaa68366f6196469c4be0c0c6459bc5bcb5e2979633d77e` |
| 21 | `instance` | [_root_.Prod.instModuleIsReflexive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/root-prod-instmoduleisreflexive.md) | 252 | `declaration-track:5bf84f573f9d1b66b26d89af466c443da085bdb45cc2a4530319002ababbf433` |
| 22 | `instance` | [_root_.ULift.instModuleIsReflexive.](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/root-ulift-instmoduleisreflexive.md) | 264 | `declaration-track:987bc27e869ff3f06462c90bbbf2055eba90f941755820bc06ecba8a4d656356` |
| 23 | `instance` | [instFiniteDimensionalOfIsReflexive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instfinitedimensionalofisreflexive.md) | 267 | `declaration-track:b4c88b022767005179437d1fbdccbdc89502b30f89b5806e0c29494d4e3043b0` |
| 24 | `theorem` | [dualCoannihilator_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcoannihilator-top.md) | 294 | `result-track:a7d8bca257a5a49bc1de5e5d9e292503a9dc6df38ccb46b1a8305ce0cad20535` |
| 25 | `theorem` | [exists_dual_map_eq_bot_of_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/exists-dual-map-eq-bot-of-notmem.md) | 298 | `result-track:3400c8662f555553b8cff57708a0f54e91d058fdbb08a6b10ac0de7f19fbdf98` |
| 26 | `theorem` | [exists_dual_map_eq_bot_of_lt_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/exists-dual-map-eq-bot-of-lt-top.md) | 308 | `result-track:5dad50bf21a3e8fbc99a0f15b449f479ec9601cba3198a4ab8aafd78fd52eb4a` |
| 27 | `theorem` | [span_eq_top_of_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/span-eq-top-of-ne-zero.md) | 316 | `result-track:5065f3bc15361fd5a8f7608ded87e34639f1e329e541c3e86b70e2e663ab36b2` |
| 28 | `theorem` | [_root_.FiniteDimensional.mem_span_of_iInf_ker_le_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/root-finitedimensional-mem-span-of-iinf-ker-le-ker.md) | 332 | `result-track:6437aa4a8c8c449867fcd3229e4f446cf960defd95e0647f0cf5b29e13cf9ef0` |
| 29 | `theorem` | [_root_.mem_span_of_iInf_ker_le_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/root-mem-span-of-iinf-ker-le-ker.md) | 347 | `result-track:17267356592daacde2cde2a9d65bf57e410999317c98a76d6cb60c25d47a39a7` |
| 30 | `theorem` | [dualAnnihilator_dualCoannihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-dualcoannihilator-eq.md) | 380 | `result-track:428100cb1265556c3bd593a30de966934b6822379be90d3c549f8456a828e2dc` |
| 31 | `theorem` | [forall_mem_dualAnnihilator_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/forall-mem-dualannihilator-apply-eq-zero-iff.md) | 390 | `result-track:2f48feaba6da4330a3d30001b4a325b3547a12e30425972365f107631aa55302` |
| 32 | `theorem` | [comap_dualAnnihilator_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/comap-dualannihilator-dualannihilator.md) | 394 | `result-track:f3a49c0f7557c4c2bd4bdd36d74ecca030b8509c3acc8b7c78391ca27f2440e1` |
| 33 | `theorem` | [map_le_dualAnnihilator_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/map-le-dualannihilator-dualannihilator.md) | 398 | `result-track:58cfa76de66e333131b57a185d273df40be89366a7c89e660b19fa9d385d79dd` |
| 34 | `def` | [dualAnnihilatorGci](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilatorgci.md) | 403 | `declaration-track:d0f10f8476af179f0395e7435d330fdfaf39b8b21c034a585c4c22e96ea2ab14` |
| 35 | `theorem` | [dualAnnihilator_le_dualAnnihilator_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-le-dualannihilator-iff.md) | 412 | `result-track:53b13d627df49ce916252ef031246e173212dc43c00bc59bf67b9941b9c6dab3` |
| 36 | `theorem` | [dualAnnihilator_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-inj.md) | 416 | `result-track:cbe40f2b3722d2d2d0fb72cbe7d7b3a275f83f1befa43e10d9573324237c6449` |
| 37 | `def` | [dualLift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/duallift.md) | 423 | `declaration-track:f4c157d14d2d77a44794038b1a80b22ec0599f82677f0c49e654b5bb072416f7` |
| 38 | `theorem` | [dualLift_of_subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/duallift-of-subtype.md) | 429 | `result-track:fcfba29ea9fb3842c9c2d87d0afc2a6e29b8589c4aae47983732c2d7142c0d04` |
| 39 | `theorem` | [dualLift_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/duallift-of-mem.md) | 433 | `result-track:192836e2c090ce2b5930fa5d83c2c3c8fcc715078d365252724cc5cec5197247` |
| 40 | `theorem` | [dualRestrict_comp_dualLift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualrestrict-comp-duallift.md) | 437 | `result-track:4cdba721dc05d49b0872568c238840610a9514d7cc80cdc408246d76ecc6cead` |
| 41 | `theorem` | [dualRestrict_leftInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualrestrict-leftinverse.md) | 441 | `result-track:6aeb78c11f2d843289ea6985f8ae309e7485572b32fce3889ae52e5d3c1bd7c1` |
| 42 | `theorem` | [dualLift_rightInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/duallift-rightinverse.md) | 447 | `result-track:884469b1ee75571cb516177b3c91332c8ff1bcce1b4c9422ef1254b88ac24c8e` |
| 43 | `theorem` | [dualRestrict_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualrestrict-surjective.md) | 451 | `result-track:adc536a8f6a417a5b9cb6e3c93fd1fbdb7bc0f7ea4fb2e76a7d166c1afeb3937` |
| 44 | `theorem` | [dualLift_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/duallift-injective.md) | 454 | `result-track:08c7a4544aa68bbb6e8de476da1efee9cc4fe71ebf28c738af20e2231652ab6e` |
| 45 | `def` | [quotAnnihilatorEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotannihilatorequiv.md) | 459 | `declaration-track:14791a5c53fe1af284308ca161683405fc884e820db23a936d30173cd15e3a56` |
| 46 | `theorem` | [quotAnnihilatorEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotannihilatorequiv-apply.md) | 465 | `result-track:7463e94de89d3d5e60923e4cabcc2e1d599a83cb314e1a6274752ba92687b8f1` |
| 47 | `def` | [dualEquivDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualequivdual.md) | 471 | `declaration-track:9c0f4fa75f857ee11eb08afbc2df73bac1abb99f48451671126ce88a60feb907` |
| 48 | `theorem` | [dualEquivDual_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualequivdual-def.md) | 475 | `result-track:e0239000c6e3232df87be22b8532a88794a9e95f13191da639d255a4ac62aac6` |
| 49 | `theorem` | [dualEquivDual_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualequivdual-apply.md) | 480 | `result-track:f03cd86bc42a48d6962d4fa9aef3dae086688ad7a970aad009d29a4d903c002c` |
| 50 | `instance` | [instModuleDualFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instmoduledualfinitedimensional.md) | 488 | `declaration-track:432e813f17d0ef7899dd7c6b125826c4d8f2f15fe9dcfcd5c37884cafd0541d7` |
| 51 | `theorem` | [dual_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dual-finrank-eq.md) | 493 | `result-track:9c48857a6e019d0b368f4e34694b84fd1b4ba5f933273bbf89ea7c3c706f1b6e` |
| 52 | `theorem` | [dualAnnihilator_dualAnnihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-dualannihilator-eq.md) | 502 | `result-track:f0b24e287f210ffa537894fd4ea09826098f5fee6c61c7fb6c58d4058b987c7b` |
| 53 | `def` | [quotDualEquivAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualequivannihilator.md) | 509 | `declaration-track:ba8c66a44ccdd6eeb74d309d4047c408b2b705909f73f1a9f536f4ebdba682af` |
| 54 | `def` | [quotEquivAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotequivannihilator.md) | 515 | `declaration-track:4e8c28e33eebfe074f6a9c9557661c31ded777d149767cb862bcd55f5938b2df` |
| 55 | `theorem` | [finrank_add_finrank_dualAnnihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finrank-add-finrank-dualannihilator-eq.md) | 522 | `result-track:faf83f457156733e45c33ea1b5042fd2aca8999860e599a73323c8ed208a1e8c` |
| 56 | `theorem` | [finrank_dualCoannihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finrank-dualcoannihilator-eq.md) | 527 | `result-track:0b0c7ed6007fbbaf069188e3aecc807d3db16729abe43ddb836e1147984fef25` |
| 57 | `theorem` | [finrank_add_finrank_dualCoannihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finrank-add-finrank-dualcoannihilator-eq.md) | 532 | `result-track:666f5127af9742d49c20a6f57d7dcdb43fe1a7684cd5fcb8053fe680fa74d61c` |
| 58 | `def` | [dualCopairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcopairing.md) | 553 | `declaration-track:baafae00037aa082732199d896207448fa946a8f3c7e18f1049569ad51e20148` |
| 59 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/instance-source-edition-2.md) | 561 | `declaration-track:630ebc0e1263f0c87a97cc166b2bad3c93656d245d51f23d24408e44138522ea` |
| 60 | `theorem` | [dualCopairing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcopairing-apply.md) | 569 | `result-track:92f5335d61278d43f2adbf75bb5b7431b06d4ccea3a6ac04f3dd3e0fc426be67` |
| 61 | `def` | [dualPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualpairing.md) | 579 | `declaration-track:5b474626c1cd3b0397e2525a2a31cb56da3f5f98c00d6fa2e5b537f5c915ba3d` |
| 62 | `theorem` | [dualPairing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualpairing-apply.md) | 583 | `result-track:ea71b72ee4b8a81b404a4f4dc2339ab2f4cb00605d6a0090548096305d874ea3` |
| 63 | `theorem` | [range_dualMap_mkQ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/range-dualmap-mkq-eq.md) | 588 | `result-track:a250e3d11b1a9e0a90eaf6aa8da3399a5afad4685b53a9655987f0d2b154c97b` |
| 64 | `def` | [dualQuotEquivDualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualquotequivdualannihilator.md) | 604 | `declaration-track:f7819f791a017ea7bd743717207ab0567c8388793b935075b368b03bac0f6c31` |
| 65 | `theorem` | [dualQuotEquivDualAnnihilator_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualquotequivdualannihilator-apply.md) | 612 | `result-track:ac58ebf568c09489e98905b3fff94bff093c4dd310fee80f8da11262cf547c11` |
| 66 | `theorem` | [dualCopairing_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcopairing-eq.md) | 616 | `result-track:c47906559ba023f9f2e73f64c8aa0d267b0e7f6fb45e3bcd355f24c00e1bba5c` |
| 67 | `theorem` | [dualQuotEquivDualAnnihilator_symm_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualquotequivdualannihilator-symm-apply-mk.md) | 621 | `result-track:ece72581237db11049f1af395b27303ea2592f887bcba60f4da48aa1047a0438` |
| 68 | `theorem` | [finite_dualAnnihilator_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finite-dualannihilator-iff.md) | 625 | `result-track:e92917645fcf5dacf55ad24d84f08f746f88832d179af305f9d75a992526608c` |
| 69 | `lemma` | [dualAnnihilator_eq_bot_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-eq-bot-iff-source-edition-2.md) | 629 | `result-track:236b3909bbb8268233e4605eaccbb2226373b4012eb023324fdadfac2e85fbfe` |
| 70 | `lemma` | [dualAnnihilator_eq_bot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-eq-bot-iff.md) | 633 | `result-track:12f136b1eb3475775eebbd56c3b710f8f39129e37c78c1bf533be712c82bcadb` |
| 71 | `lemma` | [dualAnnihilator_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-eq-top-iff.md) | 637 | `result-track:132e3f9e4b2681e0d87218d1e66f7e16d3365d494b54fea205fba2022d3770f2` |
| 72 | `def` | [quotDualCoannihilatorToDual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualcoannihilatortodual.md) | 647 | `declaration-track:105aafb91a77947c62693a5f9d16dff553fa761ca5ec7ab7c5b9a396b5940425` |
| 73 | `theorem` | [quotDualCoannihilatorToDual_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualcoannihilatortodual-apply.md) | 652 | `result-track:e1cdcf8aa0682508cb33370288134f79f2f80e5951753f64148bd5b14a8e133d` |
| 74 | `theorem` | [quotDualCoannihilatorToDual_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualcoannihilatortodual-injective.md) | 655 | `result-track:2babd2a7405f001f53a27c04914663bcc4aee9b8ff0d284c3f19ede6d21ac51e` |
| 75 | `theorem` | [flip_quotDualCoannihilatorToDual_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-quotdualcoannihilatortodual-injective.md) | 659 | `result-track:b6b25e660915489f2bd5d6c6fbd6924efee0e17a75c6ab7c7eda265e95ebdc33` |
| 76 | `theorem` | [quotDualCoannihilatorToDual_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualcoannihilatortodual-nondegenerate.md) | 664 | `result-track:1acbb116bcfc1f9dfd04fe68d23ca96bf525fe456e553a3590a0f40ffcc8779f` |
| 77 | `theorem` | [range_dualMap_eq_dualAnnihilator_ker_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/range-dualmap-eq-dualannihilator-ker-of-surjective.md) | 677 | `result-track:5a92fb40b1524730bdecd4406cac7b2ed180720f4409430fde9bf41e4b350fc8` |
| 78 | `theorem` | [range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/range-dualmap-eq-dualannihilator-ker-of-subtype-range-surjective.md) | 684 | `result-track:1ea3436df04fe46aa11f47d39d5fcc21ed69ac8d625e7ca34c70e2f0237b18f2` |
| 79 | `lemma` | [range_eq_top_of_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/range-eq-top-of-ne-zero.md) | 716 | `result-track:6d1e70fadfe0f923bd08e5ec6bb4cb72c20033d6883531b498a4cfdf0840bc7e` |
| 80 | `lemma` | [finrank_ker_add_one_of_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finrank-ker-add-one-of-ne-zero.md) | 724 | `result-track:033c6b2b47413c38ad7011fb3428e705f2e182b24c3dcfad575a376ee4b897dd` |
| 81 | `lemma` | [isCompl_ker_of_disjoint_of_ne_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/iscompl-ker-of-disjoint-of-ne-bot.md) | 731 | `result-track:d06e2e8fbc62a843e6591be014dd3d7abb318cf7fb72509c0bf5f09b1f420b78` |
| 82 | `lemma` | [eq_of_ker_eq_of_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/eq-of-ker-eq-of-apply-eq.md) | 742 | `result-track:7cf31875d2c7c9edafd605d65c86b19995cde905329e08a0b6f8e7734777a9c1` |
| 83 | `theorem` | [dualPairing_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualpairing-nondegenerate.md) | 767 | `result-track:0894ca62fbca31cfbac9ffa0995a55ecb2ced108f10f981bbed0b6fd469e9edc` |
| 84 | `theorem` | [dualMap_surjective_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualmap-surjective-of-injective.md) | 770 | `result-track:baab869fd88e7ebee8380c14c27345b775154921541873232c2308fad662a2d0` |
| 85 | `theorem` | [range_dualMap_eq_dualAnnihilator_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/range-dualmap-eq-dualannihilator-ker.md) | 775 | `result-track:d25ef466aa824f67408969fb0d0f62ad1e9fc035d2b3d00c8d47369c33298c34` |
| 86 | `theorem` | [dualMap_surjective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualmap-surjective-iff.md) | 782 | `result-track:192d81c354ca785cdaa1d1f78d6c92b69787382c6c93980eb0145265208e211d` |
| 87 | `theorem` | [dualPairing_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualpairing-eq.md) | 793 | `result-track:74f9fb5109efea80446b2dad24dedd342aef7e4806d7653e5d925ddbdbc0d7db` |
| 88 | `theorem` | [dualPairing_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualpairing-nondegenerate-source-edition-2.md) | 798 | `result-track:d5fee359124be8e2e249bd9309e72f87453a816c5e0767238415c7de21bd1ba4` |
| 89 | `theorem` | [dualCopairing_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcopairing-nondegenerate.md) | 808 | `result-track:09b9dc873277d1a7dc2490af000180a55b0dc71d1377da53a2b63351138d1ae7` |
| 90 | `theorem` | [dualAnnihilator_inf_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-inf-eq.md) | 818 | `result-track:999c54f9967989a7cb9aa4b40139ea9de9cdb1c002e51bcd672099793a6e3cfb` |
| 91 | `theorem` | [dualAnnihilator_iInf_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-iinf-eq.md) | 841 | `result-track:6c2cadb12594beaf6eab35f7f0a25595bbec270e81ee4302e05339c7fe8a8532` |
| 92 | `theorem` | [isCompl_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/iscompl-dualannihilator.md) | 854 | `result-track:c2c0e7f1a8ea77ab731c6322d81af7172ca7908e13be28ad80fecb6e915157e1` |
| 93 | `def` | [dualQuotDistrib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualquotdistrib.md) | 863 | `declaration-track:bbc27ab5758bb9f0de77e0855ea17ad66636b7f9b59799f2dbb90195b180a924` |
| 94 | `theorem` | [finrank_range_dualMap_eq_finrank_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finrank-range-dualmap-eq-finrank-range.md) | 876 | `result-track:d1c57e701a23b956eb28f2f3e749df0d722e00b4240beb65c8d98700c2258282` |
| 95 | `theorem` | [dualMap_injective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualmap-injective-iff.md) | 886 | `result-track:b8706eccb86ebe5e7e7b8d038a8a0dfcbdcc519fcb4378e68e8417a5910974ed` |
| 96 | `theorem` | [dualMap_bijective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualmap-bijective-iff.md) | 895 | `result-track:1ff635d6b74566e6651d38933c56a8f0a396f895bd44c27da9618acdb1a7ea8b` |
| 97 | `lemma` | [dualAnnihilator_ker_eq_range_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-ker-eq-range-flip.md) | 902 | `result-track:c52becfc431bffca86fc71bdf7562e1bbff1e1bbbb08da88497544287a3a69b8` |
| 98 | `theorem` | [flip_injective_iff₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-injective-iff-source-edition-2.md) | 909 | `result-track:20eb9912353cfc0ca1ea76a44504b0c83e7a13f63188b0f1f344d4f91d6391ad` |
| 99 | `theorem` | [flip_injective_iff₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-injective-iff.md) | 912 | `result-track:02174ffd60fac65e1b887c9d8e6f0245d2c628c259b8827cb9e23ecc52a1dd0a` |
| 100 | `theorem` | [flip_surjective_iff₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-surjective-iff-source-edition-2.md) | 915 | `result-track:b7a99c012395da33b4b73ef45d74ccf865446558e48cef3665efff3a27184eb4` |
| 101 | `theorem` | [flip_surjective_iff₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-surjective-iff.md) | 918 | `result-track:a9e4087234e78a6399964c0bebe32f255a430cdf94bde82c6ec8a5465dbedb11` |
| 102 | `theorem` | [flip_bijective_iff₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-bijective-iff-source-edition-2.md) | 921 | `result-track:db68ae13e9649cd35b2a9cca6958f49f6fd26ef22a2d35422a9eb48425c8801f` |
| 103 | `theorem` | [flip_bijective_iff₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-bijective-iff.md) | 924 | `result-track:5eb397d2d4cf4c7ce16cad0d24e57cd9cb3efec5ed43c33a780cfdf0240e788c` |
| 104 | `theorem` | [quotDualCoannihilatorToDual_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/quotdualcoannihilatortodual-bijective.md) | 933 | `result-track:b1b3015cf4b5690ac848a15f2d06099ee280538adbd882720dc41857b001d618` |
| 105 | `theorem` | [flip_quotDualCoannihilatorToDual_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/flip-quotdualcoannihilatortodual-bijective.md) | 938 | `result-track:7973fa8cd4a0e2854ca576de6e76f4f96c396c345321cb91d9959804b259dfb9` |
| 106 | `theorem` | [dualCoannihilator_dualAnnihilator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualcoannihilator-dualannihilator-eq.md) | 943 | `result-track:4551b2bf733a1d4d2719d69d450633bd8ae4cfb3b3241df2b3dd99e86aa322be` |
| 107 | `theorem` | [finiteDimensional_quot_dualCoannihilator_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/finitedimensional-quot-dualcoannihilator-iff.md) | 951 | `result-track:0f4fffd25d9b7f2245e64271cf6beaab661d8cf4403356b8d5dcf9f11cfafef6` |
| 108 | `def` | [orderIsoFiniteCodimDim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/orderisofinitecodimdim.md) | 960 | `declaration-track:61889a273da249a74bd9d8d39ce9fe3beb9534bc029d6bfda1c26c5d38cfe486` |
| 109 | `def` | [orderIsoFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/orderisofinitedimensional.md) | 974 | `declaration-track:e8e35ea60390f1c14fbabe5ed8a2c103f016cae1a0d1321b516b195307e01d30` |
| 110 | `theorem` | [dualAnnihilator_dualAnnihilator_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualannihilator-dualannihilator-eq-map.md) | 983 | `result-track:d53b4d7b34b5ee50000319ec8005dce5888995949a13919271eb70f7f2893558` |
| 111 | `theorem` | [map_dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/map-dualcoannihilator.md) | 993 | `result-track:8091c9c11a14d97672bf09f983eb61090dc9641d3a8c7b8c1475cdc96f9ecfa2` |
| 112 | `def` | [dualDistrib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib.md) | 1027 | `declaration-track:3d4a67739fe8aef057f2b0d0b65751f53ff08b48c67a42c70fcd9232dd3a1f7e` |
| 113 | `theorem` | [dualDistrib_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib-apply-source-edition-2.md) | 1033 | `result-track:ec2704a3e4d30d5b25db53f5271f08f5bcfa95c25ba418b53f3e754604f0ef11` |
| 114 | `def` | [dualDistrib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib-source-edition-2.md) | 1044 | `declaration-track:c308fe099b1c0d5f72419016e295075b9b1cf4faf053fc1c2ac71d6f3e8c3b4a` |
| 115 | `theorem` | [dualDistrib_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib-apply.md) | 1050 | `result-track:0798c63ce6f5eec90239d32c56d765f0f32df2665d9d5e6b5e8311884b4cc25e` |
| 116 | `def` | [dualDistribInvOfBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistribinvofbasis.md) | 1062 | `declaration-track:cfc6b1c366adef712391ea82bd6ce85d227a75bab5aa0c844a62be2b539d09ff` |
| 117 | `theorem` | [dualDistribInvOfBasis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistribinvofbasis-apply.md) | 1070 | `result-track:f43569a6a47fd600b3fb418ba63d217f4ce09f046539761217a4bfd0a4d5b272` |
| 118 | `theorem` | [dualDistrib_dualDistribInvOfBasis_left_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib-dualdistribinvofbasis-left-inverse.md) | 1074 | `result-track:b8a9d40e8724a3d90de76bee5bce8d487316bb1e618d9ceaa59fe48568ec04a0` |
| 119 | `theorem` | [dualDistrib_dualDistribInvOfBasis_right_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistrib-dualdistribinvofbasis-right-inverse.md) | 1089 | `result-track:786a500b434d2bfb1cb4697d5c2f477b3e8d2e2130cd3f8cd44ab97a0a859dc6` |
| 120 | `def` | [dualDistribEquivOfBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistribequivofbasis.md) | 1105 | `declaration-track:dcca9ff52853749636bb1eadc313787f9185f19509bdc00b8c422b8ae4e83f19` |
| 121 | `def` | [dualDistribEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualLemmas.lean/declarations/dualdistribequiv.md) | 1120 | `declaration-track:e6a512dde7a148a301373278d9ba6252b3d23c944c60141b8ac7a441860e6267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=334c563a95e5687ae66206ca59c242a641e26cb2b13842b589cd1e5d0ce50170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
