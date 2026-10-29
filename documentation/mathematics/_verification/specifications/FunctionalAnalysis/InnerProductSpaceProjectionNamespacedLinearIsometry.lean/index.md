# Verification target: Inner Product Space Projection Namespaced Linear Isometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e0bb95bd0e70c01a34341ae30299a7a56af087e",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e0bb95bd0e70c01a34341ae30299a7a56af087e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Orthogonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Symmetric` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_norm_eq_iInf_of_complete_convex](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/exists-norm-eq-iinf-of-complete-convex.md) | 83 | `result-track:da18ba2e5ddf78a9f9d2040b4945d09a80e7fae8b2aa63b2de3afa3e9788cc6c` |
| 2 | `theorem` | [norm_eq_iInf_iff_real_inner_le_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/norm-eq-iinf-iff-real-inner-le-zero.md) | 209 | `result-track:f6237a2797076110db32e2af2721230a2cc635e6a32ea58fa410ca586344950d` |
| 3 | `theorem` | [exists_norm_eq_iInf_of_complete_subspace](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/exists-norm-eq-iinf-of-complete-subspace.md) | 302 | `result-track:5b65ac7a497f616bf3b5ef24848b5d641a0976705d69cd99d613a1c9a2545505` |
| 4 | `theorem` | [norm_eq_iInf_iff_real_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/norm-eq-iinf-iff-real-inner-eq-zero.md) | 317 | `result-track:bc80cdd98dad47af71a344ecf24260d249baad4bd51bb8da6cda6e5bbac8b10f` |
| 5 | `theorem` | [norm_eq_iInf_iff_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/norm-eq-iinf-iff-inner-eq-zero.md) | 360 | `result-track:2768409125c7d925013adad58d9ced0017c98780592c659994cdf14340f3e7dc` |
| 6 | `class` | [HasOrthogonalProjection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/hasorthogonalprojection.md) | 387 | `declaration-track:9ae8e7f1fe401b6800b15d97bb1cacb449b2f46980b809b2c11c40161e6355e9` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/instance.md) | 390 | `declaration-track:47c10b971a7d834640b7311e0e749abf036a90d9728e757b1fdb4ec24e55941a` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/instance-source-edition-2.md) | 398 | `declaration-track:8ac2af78d8aa8663ffddabf4a03357b646dc8e835de70b43ece4c8dae5c0c266` |
| 9 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/hasorthogonalprojection-map-linearisometryequiv-source-edition-2.md) | 405 | `declaration-track:eb8ec2441255364bcd5ed4245b25c506c20118e6790ace62fc4cf9037691cbe0` |
| 10 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv'](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/hasorthogonalprojection-map-linearisometryequiv.md) | 413 | `declaration-track:81b115708dc9f0674d7e453894377273b3d63dcd82bb6a6fc824c3ee9d4b4450` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/instance-source-edition-3.md) | 418 | `declaration-track:ccc81eb5590e972d945ec70933e21f721fb813cea341b1f3f9ba3b931d2f3668` |
| 12 | `def` | [orthogonalProjectionFn](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojectionfn.md) | 428 | `declaration-track:66b6939e175dfe8ace1a0be4a0c90431dd03bebef63ccf654c76d65a308d1a14` |
| 13 | `theorem` | [orthogonalProjectionFn_mem](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojectionfn-mem.md) | 437 | `result-track:bd9c332987594e1d979b747c55b471b16f020952a8a561b3539ca95979fe847c` |
| 14 | `theorem` | [orthogonalProjectionFn_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojectionfn-inner-eq-zero.md) | 444 | `result-track:4d7f4345ccf827d6a6c4313f1104e697defa519223f2fa72dd3576a77c026d8b` |
| 15 | `theorem` | [eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-orthogonalprojectionfn-of-mem-of-inner-eq-zero.md) | 453 | `result-track:fecf6c24ab1c8c504b4103a17cb2e8f1cf312c029320256614cc519e246d0db8` |
| 16 | `theorem` | [orthogonalProjectionFn_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojectionfn-norm-sq.md) | 468 | `result-track:56498a91d0b895707eae88fea97d09ec672f7dafb21218da4959a9a2c94146a5` |
| 17 | `def` | [orthogonalProjection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection.md) | 479 | `declaration-track:99b9f723aecaed42ef96160df49bdc680725d49c0f0c3a75db7cad6585580ead` |
| 18 | `theorem` | [orthogonalProjectionFn_eq](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojectionfn-eq.md) | 511 | `result-track:42dc13bf9b2152cb72abb951f253ade92e7eea3d4a6be7016870c28716036c8b` |
| 19 | `theorem` | [orthogonalProjection_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-inner-eq-zero.md) | 518 | `result-track:c27394df16662ee0e4c051e64d5bdce42fefb6953ed0e7f704444847e6019cf8` |
| 20 | `theorem` | [sub_orthogonalProjection_mem_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/sub-orthogonalprojection-mem-orthogonal.md) | 525 | `result-track:b758d31093438e1af75c9b6b096b1a2246ade016b6f74f46ea7c77a3d1e5a13a` |
| 21 | `theorem` | [eq_orthogonalProjection_of_mem_of_inner_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-orthogonalprojection-of-mem-of-inner-eq-zero.md) | 533 | `result-track:8f4252b17a1bbedecfb3d39065287a3d8884fb791bc970324c256587ed734339` |
| 22 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-orthogonalprojection-of-mem-orthogonal.md) | 540 | `result-track:1831cea2b609b51e2a7d1d6497d237b4fd55dc0888ce8c939811273762803688` |
| 23 | `theorem` | [eq_orthogonalProjection_of_mem_orthogonal'](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-orthogonalprojection-of-mem-orthogonal-source-edition-2.md) | 547 | `result-track:4871812e235e2e29505fe50645127f78304a63bd375b870129311284b113d263` |
| 24 | `theorem` | [orthogonalProjection_orthogonal_val](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-orthogonal-val.md) | 553 | `result-track:1e7b836501657a9bdbc1fec3dbb9c66f520a877ca135025722366911c761711f` |
| 25 | `theorem` | [orthogonalProjection_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-orthogonal.md) | 558 | `result-track:3e6e44eba1b8def998312b8867046d45edaabc3ad1f572a9379c313acd8cdf29` |
| 26 | `theorem` | [orthogonalProjection_minimal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-minimal.md) | 564 | `result-track:706492ddd06b50daf10394925c3985833110772c186e0333846f88ab66e28cf1` |
| 27 | `theorem` | [eq_orthogonalProjection_of_eq_submodule](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-orthogonalprojection-of-eq-submodule.md) | 571 | `result-track:3272c108648fd0d3106f5c0d673e41a0ff4de90cf9f6ff1e3aed78afbccdcfd4` |
| 28 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-mem-subspace-eq-self.md) | 578 | `result-track:e5cd1b600c85e174426ceda4335ff942b2c2e2830e54e1350ca00fe87b53dd75` |
| 29 | `theorem` | [orthogonalProjection_eq_self_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-eq-self-iff.md) | 584 | `result-track:84b258aa9df449f23ed5f8ccd89f2af1a0f89de4669ba22317d7df606e4fd46d` |
| 30 | `theorem` | [LinearIsometry.map_orthogonalProjection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/linearisometry-map-orthogonalprojection.md) | 591 | `result-track:181c33636d88cd5842309defb0f3ab97bb05c8de46eab3a2ec3390e0974865e8` |
| 31 | `theorem` | [LinearIsometry.map_orthogonalProjection'](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/linearisometry-map-orthogonalprojection-source-edition-2.md) | 601 | `result-track:3304801e14ed2b1c39fecb92d395bd293ecd9b35c83964d3613afcd809901bdb` |
| 32 | `theorem` | [orthogonalProjection_map_apply](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-map-apply.md) | 610 | `result-track:dea196b1b1021640573c7222c4d4f91396502b151bb859ecadd292d5a42ff9d4` |
| 33 | `theorem` | [orthogonalProjection_bot](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-bot.md) | 621 | `result-track:b181deb0ad4005cf708d1181328c64a7ef1ed6dbd9710a50dc857c153665fd09` |
| 34 | `theorem` | [orthogonalProjection_norm_le](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-norm-le.md) | 627 | `result-track:b1e01935fd0c3e4ac431fff1ca111b9538e6547e34a54d5fd899818269be1c73` |
| 35 | `theorem` | [smul_orthogonalProjection_singleton](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/smul-orthogonalprojection-singleton.md) | 633 | `result-track:7e35f629113b382950016e9c9b5d564450e06d823c55158e722fc32d7190167b` |
| 36 | `theorem` | [orthogonalProjection_singleton](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-singleton.md) | 645 | `result-track:1bfd485705dc2fbb5973e1b09c5a69075d5e7f3b15a3025800d3e10798fdbd0e` |
| 37 | `theorem` | [orthogonalProjection_unit_singleton](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-unit-singleton.md) | 659 | `result-track:0854e409638ecbf42a6dc6cbc76a23c3d61ba1f6e8c21ccf41213c8aa857d356` |
| 38 | `def` | [reflectionLinearEquiv](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflectionlinearequiv.md) | 673 | `declaration-track:c42d3a275bf8f492272a528928665f21ff2aeb096d403f950edc8bd1fa1e6200` |
| 39 | `def` | [reflection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection.md) | 684 | `declaration-track:4d7060f9f782f7440781103974315c75806b1c4b5e718ecf2f824ff4bf9e8b20` |
| 40 | `theorem` | [reflection_apply](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-apply.md) | 705 | `result-track:fe2bc02fff1681bd1ee9b515e7e802b4479b5f6121e370d0ace3c768d0713ecd` |
| 41 | `theorem` | [reflection_symm](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-symm.md) | 711 | `result-track:38157c1911edd5920e6195e18062ec324e0faa1d3487b49aa2b71b37c6c80eb3` |
| 42 | `theorem` | [reflection_inv](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-inv.md) | 717 | `result-track:bb94354b6ff77af986440dad9ea35ce9e9d44872248cc12177c4558926cec421` |
| 43 | `theorem` | [reflection_reflection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-reflection.md) | 725 | `result-track:7950a3af9f4d061f4cbe8fa09b139955b910e708397fbf7d740eafea45cca734` |
| 44 | `theorem` | [reflection_involutive](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-involutive.md) | 730 | `result-track:f5381826f7c0be1b3ad5d68db65cba65d4483d4f51ca0c19e777f66c96f58db2` |
| 45 | `theorem` | [reflection_trans_reflection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-trans-reflection.md) | 736 | `result-track:bdf9c1068c2976921a501dee0485e933951b7737131d311e83cac30d3f5d0514` |
| 46 | `theorem` | [reflection_mul_reflection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-mul-reflection.md) | 743 | `result-track:f49b5fd79c04582cc4b2b7c26faff015f36676dbacd178c7a146c80d43c45708` |
| 47 | `theorem` | [reflection_orthogonal_apply](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-orthogonal-apply.md) | 747 | `result-track:8558837beb7ebbba50670485b8a692042ebe307df13e8db8b7642a7ca0cb3b6d` |
| 48 | `theorem` | [reflection_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-orthogonal.md) | 750 | `result-track:a1318c4827867ef3bffacd4843292ff9dfe89c9c7a4064f4052fbc8595bcc0e5` |
| 49 | `theorem` | [reflection_singleton_apply](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-singleton-apply.md) | 755 | `result-track:cbc63571b897f0f2158a61018c60f5c5807f249098ed62fb832e3350fb9dc003` |
| 50 | `theorem` | [reflection_eq_self_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-eq-self-iff.md) | 760 | `result-track:31b8c3477790eaa22ba1f5b94c211a4febcd4e6f0c2b3277dc0be584a5b9f26f` |
| 51 | `theorem` | [reflection_mem_subspace_eq_self](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-mem-subspace-eq-self.md) | 767 | `result-track:895e3a3cecae836ab22d60878d8ea651230a25c55d5c9469dc000695eaeb18f6` |
| 52 | `theorem` | [reflection_map_apply](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-map-apply.md) | 772 | `result-track:572a6385ef1c5526e2803ad0e1693715a6889d9c847d94905266a6db56704f63` |
| 53 | `theorem` | [reflection_map](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-map.md) | 780 | `result-track:35c55425f31ca9e5d8ba20fd15023101ff419dd7adcf344b5070b2334994f28d` |
| 54 | `theorem` | [reflection_bot](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-bot.md) | 789 | `result-track:9d735f09659ff2c6e8b05fb6642210aa7fc97f92b1737a846a82dff9615247dd` |
| 55 | `theorem` | [Submodule.sup_orthogonal_inf_of_completeSpace](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-sup-orthogonal-inf-of-completespace.md) | 798 | `result-track:39be7f0f1f1c89091049f03666afacda2b4cf10693d7b1ef46e78d9a72ebd3ac` |
| 56 | `theorem` | [Submodule.sup_orthogonal_of_completeSpace](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-sup-orthogonal-of-completespace.md) | 813 | `result-track:0878524af026544857221ed3c002aa59b3ebcf29bdf6b650e1ec0396b852033c` |
| 57 | `theorem` | [Submodule.exists_add_mem_mem_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-exists-add-mem-mem-orthogonal.md) | 821 | `result-track:4e9a047c8207bd4ba381b8c9f7725f8d45d7dc1ff21780f64815afbbb0d884b9` |
| 58 | `theorem` | [Submodule.orthogonal_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-orthogonal-orthogonal.md) | 830 | `result-track:f6238361ee54bbae64abb939a4fc04e637a36d4cc5f3232e2966f4f0250c4f14` |
| 59 | `theorem` | [Submodule.orthogonal_orthogonal_eq_closure](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-orthogonal-orthogonal-eq-closure.md) | 850 | `result-track:b65249c7aa5ffccf79f4c6f9f27845fc0476b3115d1034d5d594bb17a812889f` |
| 60 | `theorem` | [Submodule.isCompl_orthogonal_of_completeSpace](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-iscompl-orthogonal-of-completespace.md) | 861 | `result-track:3617c38f75bfa97a42527f39b404caadad48d166d333cd2126960b1fd7a09b9a` |
| 61 | `theorem` | [Submodule.orthogonal_eq_bot_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-orthogonal-eq-bot-iff.md) | 866 | `result-track:be6d22befae2342de56cb706e38695ca02a26e1a575524da17767c27a150e2fa` |
| 62 | `theorem` | [orthogonalProjection_mem_subspace_orthogonalComplement_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-mem-subspace-orthogonalcomplement-eq-zero.md) | 874 | `result-track:010e9c6a9f3bae1d999bf5d8ad03213c84a5a60d0e9ec3fd7e612d4ef81ef39d` |
| 63 | `theorem` | [Submodule.IsOrtho.orthogonalProjection_comp_subtypeL](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-isortho-orthogonalprojection-comp-subtypel.md) | 881 | `result-track:aed7923a756e4027f9ddc0ff95b9fe9c06509c02e8e29dc2d60937ce3a0417df` |
| 64 | `theorem` | [orthogonalProjection_comp_subtypeL_eq_zero_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-comp-subtypel-eq-zero-iff.md) | 889 | `result-track:2cdeb387befe3418110212c619cc045ab0ba290e1c1baf0cfa3b8ba2bee1f8c0` |
| 65 | `theorem` | [orthogonalProjection_eq_linear_proj](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-eq-linear-proj.md) | 898 | `result-track:056b280b49c106973008652fe6405d0f1be7d14997ce3a9f0c192694ac4a1897` |
| 66 | `theorem` | [orthogonalProjection_coe_linearMap_eq_linearProj](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-coe-linearmap-eq-linearproj.md) | 907 | `result-track:0606c5003070fad91646362befbd82f44fac649548f56cb121c8aafcae796083` |
| 67 | `theorem` | [reflection_mem_subspace_orthogonalComplement_eq_neg](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-mem-subspace-orthogonalcomplement-eq-neg.md) | 914 | `result-track:1877d59048f4be966df27a3d9432f2326819a6c875ab384885fba46d692b83b5` |
| 68 | `theorem` | [orthogonalProjection_mem_subspace_orthogonal_precomplement_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-mem-subspace-orthogonal-precomplement-eq-zero.md) | 920 | `result-track:7e8a964420e331ae77fd069cf7cf73d4260575e15cd126e0abe2d744f3c62da8` |
| 69 | `theorem` | [orthogonalProjection_orthogonalProjection_of_le](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-orthogonalprojection-of-le.md) | 926 | `result-track:ac5a0bc7266f29eb771f97588be004fcdb74059a838ffa03cc6051e4653dc0ef` |
| 70 | `theorem` | [orthogonalProjection_tendsto_closure_iSup](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-tendsto-closure-isup.md) | 938 | `result-track:6636e3cb4c9044764ab050e58a939b79672244e971fe939f7e2a0516211e031b` |
| 71 | `theorem` | [orthogonalProjection_tendsto_self](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-tendsto-self.md) | 966 | `result-track:34e36443d138182a1fb71db5aa7b1b1ec2d366612a81be2ab4e904238aace5d0` |
| 72 | `theorem` | [Submodule.triorthogonal_eq_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-triorthogonal-eq-orthogonal.md) | 978 | `result-track:9f48c4681e56f01cfb5d9f5c33fbda94a33c9cd2aeeff2e857c088580bdc01ef` |
| 73 | `theorem` | [Submodule.topologicalClosure_eq_top_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-topologicalclosure-eq-top-iff.md) | 984 | `result-track:0ae3188ed7f5e25d36c5d6ed4eb3b628e7143ac3368516b923721f1c1a3b6fe1` |
| 74 | `theorem` | [eq_zero_of_inner_left](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-zero-of-inner-left.md) | 1000 | `result-track:1c0b60287668e5a8dd416bdaf376b57fc2622fd762be85f6a7e05a5ae7b438f4` |
| 75 | `theorem` | [eq_zero_of_mem_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-zero-of-mem-orthogonal.md) | 1006 | `result-track:4f38da6858a983e5860ae6e17bbe5be8202ef8e2a201d6a7fe0010732a2c5b08` |
| 76 | `theorem` | [eq_of_sub_mem_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-of-sub-mem-orthogonal.md) | 1011 | `result-track:ccdf4c12cbac2ec87d9e93a8d3f112ec08137e584b65701bc8f7cf77120c7849` |
| 77 | `theorem` | [eq_of_inner_left](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-of-inner-left.md) | 1015 | `result-track:d2454abc8f2e5a078f0698ef298a580849d66622802aadabee72d10fe563bcca` |
| 78 | `theorem` | [eq_of_inner_right](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-of-inner-right.md) | 1019 | `result-track:b3a5931ba60d03e987b0317110d903837f173916674f1a3e495f976431e33cd4` |
| 79 | `theorem` | [eq_zero_of_inner_right](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/eq-zero-of-inner-right.md) | 1024 | `result-track:c6e46fada07504bd1502b2ad3a012d7811a67bde19ce44d1e8c52beb12bd9fc8` |
| 80 | `theorem` | [reflection_mem_subspace_orthogonal_precomplement_eq_neg](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-mem-subspace-orthogonal-precomplement-eq-neg.md) | 1031 | `result-track:3bdd3e8736dcc01a3ab54d8b9ce13ebf0cedb5c78d5ac0d3a8623f064e6f25bb` |
| 81 | `theorem` | [orthogonalProjection_orthogonalComplement_singleton_eq_zero](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-orthogonalcomplement-singleton-eq-zero.md) | 1037 | `result-track:0e7acaa0a0b079afebb0f9d5e7cd3d9f61f8ca20e2586500fd7602baee442b93` |
| 82 | `theorem` | [reflection_orthogonalComplement_singleton_eq_neg](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-orthogonalcomplement-singleton-eq-neg.md) | 1044 | `result-track:ee70fbc370330d552c6598b3a54fcac934e1e162bb409c57329e7cca51472084` |
| 83 | `theorem` | [reflection_sub](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/reflection-sub.md) | 1048 | `result-track:362bc93ef60fd2230f20bf42ee7b1e88841311484359db3758daa8587e931b46` |
| 84 | `theorem` | [orthogonalProjection_add_orthogonalProjection_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-add-orthogonalprojection-orthogonal.md) | 1069 | `result-track:afa4752f34f4a21873b28ba90e519e34a76f687a85392c8133139b07b906d217` |
| 85 | `theorem` | [norm_sq_eq_add_norm_sq_projection](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/norm-sq-eq-add-norm-sq-projection.md) | 1075 | `result-track:686ebc75d1ebbf9ccd67fc09efa31cd18e5dfe223c2141f3e7a88938f69dd795` |
| 86 | `theorem` | [id_eq_sum_orthogonalProjection_self_orthogonalComplement](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/id-eq-sum-orthogonalprojection-self-orthogonalcomplement.md) | 1088 | `result-track:24444f5d05c499497d925e7a2053a6e1c7437c8a4662f3a56ba2772237b9ae4a` |
| 87 | `theorem` | [inner_orthogonalProjection_eq_of_mem_right](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/inner-orthogonalprojection-eq-of-mem-right.md) | 1097 | `result-track:972eea4142f5ac5b19ed71544dced1b449c5c36f037943dece99406c0785b17c` |
| 88 | `theorem` | [inner_orthogonalProjection_eq_of_mem_left](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/inner-orthogonalprojection-eq-of-mem-left.md) | 1108 | `result-track:3f27f8cc2a68d12777feddc198544dbca8ceaf522e0578707c3a7ec1b82a900c` |
| 89 | `theorem` | [inner_orthogonalProjection_left_eq_right](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/inner-orthogonalprojection-left-eq-right.md) | 1114 | `result-track:e5a9695e7607613e0382508092eefa037d1c4ec10414a0b41704f7160a2e5f4a` |
| 90 | `theorem` | [orthogonalProjection_isSymmetric](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalprojection-issymmetric.md) | 1120 | `result-track:c59533d1b16df6b05081afc6f83c6a14b439541b754f02e12804895e0a9992ac` |
| 91 | `theorem` | [Submodule.finrank_add_inf_finrank_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-finrank-add-inf-finrank-orthogonal.md) | 1130 | `result-track:31bf15afe78a58c39c2c58e868bc632ca8c762e1d90c17f7405ab032ddd83d04` |
| 92 | `theorem` | [Submodule.finrank_add_inf_finrank_orthogonal'](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-finrank-add-inf-finrank-orthogonal-source-edition-2.md) | 1145 | `result-track:f5c96004f54a75791eb3f3a896e7308001031abe26a54d7c760e2271b1bc6f32` |
| 93 | `theorem` | [Submodule.finrank_add_finrank_orthogonal](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-finrank-add-finrank-orthogonal-source-edition-2.md) | 1154 | `result-track:bf0f7b7b317f1acb690574f710c95cebd282a6e881d9b3cca2e25cfd3862e633` |
| 94 | `theorem` | [Submodule.finrank_add_finrank_orthogonal'](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/submodule-finrank-add-finrank-orthogonal.md) | 1163 | `result-track:8d49ec65b23355fda6c59c3ae0454da3a5c862fb69817fa9f7aaccb1095a2d9f` |
| 95 | `theorem` | [finrank_orthogonal_span_singleton](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/finrank-orthogonal-span-singleton.md) | 1171 | `result-track:4ad27c358d61361c2ba6edc125ea95c27709592f997601c68b63d3ac0661a349` |
| 96 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim_aux](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/linearisometryequiv-reflections-generate-dim-aux.md) | 1181 | `result-track:e99ed49e95762bcc900da3a16e6dfbc5e9b9ba4425e468b31b272f612068384b` |
| 97 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/linearisometryequiv-reflections-generate-dim.md) | 1260 | `result-track:c571b0fd762af89e4c287e93a071a7ba8d40c61c8cf866ecd4e4c7a744247e8e` |
| 98 | `theorem` | [LinearIsometryEquiv.reflections_generate](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/linearisometryequiv-reflections-generate.md) | 1267 | `result-track:dbe2f7441f8f10795b2410530173626884c67b266c5f86b4a72c5da5a339c8c4` |
| 99 | `theorem` | [OrthogonalFamily.isInternal_iff_of_isComplete](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalfamily-isinternal-iff-of-iscomplete.md) | 1287 | `result-track:6cfff31664d9d172c4813a52eb185a0bd917ff6e45ee2e6dd4563bf05148b94d` |
| 100 | `theorem` | [OrthogonalFamily.isInternal_iff](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalfamily-isinternal-iff.md) | 1298 | `result-track:0e0ab169aa31ce29de93974320a6c31f89df955a5bc56336dba568ea242c63fc` |
| 101 | `theorem` | [OrthogonalFamily.sum_projection_of_mem_iSup](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalfamily-sum-projection-of-mem-isup.md) | 1308 | `result-track:adc7afdb7814eddfdab1c5a310dfc04fcbed52e65dfb290cc9bb661a905ec551` |
| 102 | `theorem` | [OrthogonalFamily.projection_directSum_coeAddHom](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalfamily-projection-directsum-coeaddhom.md) | 1329 | `result-track:a8039e121251ea19e66f87c01d20549e53692f61bdcf18cdc3154cc2b041912a` |
| 103 | `def` | [OrthogonalFamily.decomposition](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/orthogonalfamily-decomposition.md) | 1354 | `declaration-track:ab5a5b12b2b6127c0cc0a48db62618a31496b039ac31ce502bcb508b4b1e8734` |
| 104 | `theorem` | [maximal_orthonormal_iff_orthogonalComplement_eq_bot](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/maximal-orthonormal-iff-orthogonalcomplement-eq-bot.md) | 1383 | `result-track:43725a522db527187f13ea8518136fb1578f5d00235a26f909c6e756f8565023` |
| 105 | `theorem` | [maximal_orthonormal_iff_basis_of_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceProjectionNamespacedLinearIsometry.lean/declarations/maximal-orthonormal-iff-basis-of-finitedimensional.md) | 1449 | `result-track:1b245fef562ee5295662efbca48ad7eb46744b1e3ebe1e836c9388ffeb707590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6414771d29165ee9c15729544d1663b884391e44ba00cd0c769a22d1cc00da01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
