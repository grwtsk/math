# Verification target: Assembly Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3469a865bcf135c2b08ee407b8cc36179ab7deac",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3469a865bcf135c2b08ee407b8cc36179ab7deac`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.Inputs` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideTemp` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.TracesBoundsE` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Normed` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [posIndex_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/posindex-le-rank.md) | 83 | `result-track:82b8b76278b61d152b32a9d75ede09f4e0806689598e7cfc0cad70b5b22f625f` |
| 2 | `theorem` | [zeroside_rank_core](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/zeroside-rank-core.md) | 101 | `result-track:68e5a37c86ccbb9187145aeecf2b004db9e322ed268bc40685a17b5a4cfd7874` |
| 3 | `lemma` | [frobSq_eq_sum_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-eq-sum-norm-sq.md) | 124 | `result-track:d7f1ed7bb78865cddd84948f352494307ce13e5aca6579f36d8059b5d51bc16a` |
| 4 | `lemma` | [frobSq_eq_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-eq-norm-sq.md) | 132 | `result-track:7aa362957276585ac9424ac79d0cfba0da408a62d3d78b43258e632d27960392` |
| 5 | `lemma` | [frobSq_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-nonneg.md) | 137 | `result-track:f2af176b4a05e59435e05777fad5f64bed8f1fbc04ed12a70b92cd8a47ba63b7` |
| 6 | `lemma` | [norm_eq_sqrt_frobSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/norm-eq-sqrt-frobsq.md) | 141 | `result-track:c719214c7d610d3019a59166f80d09271144da4537ba7fc62470053ed792cbc5` |
| 7 | `lemma` | [frobSq_sub_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-sub-le.md) | 146 | `result-track:868dfa82ad637301040902555da4e881237e9f4d309630d63b29d5cc2064ed16` |
| 8 | `theorem` | [four_tr_sub_frobSq_perturb](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/four-tr-sub-frobsq-perturb.md) | 158 | `result-track:63b5e0fe31cdda39913294f5088d6c4dcb9e754142fa2d6cf90de990ceff3510` |
| 9 | `theorem` | [zeroside_core](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/zeroside-core.md) | 189 | `result-track:09da6867f8d0e1e9198b7ce76475d0fe54a0a4ffe58974d6d7ded553c75c50a5` |
| 10 | `lemma` | [posIndexAbove_congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/posindexabove-congr.md) | 205 | `result-track:d2ec601d4f2882f7c53c3606d23e236b1ddab7fb79e4aef9e4b05c8578644185` |
| 11 | `theorem` | [nplus_lower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/nplus-lower.md) | 214 | `result-track:024be9f2ef26922193c203e5f39f9ff36551a243a747cd3bd1233565e064ca88` |
| 12 | `def` | [c₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/c.md) | 230 | `declaration-track:e5eaa1aefa5a6e5b2ba6f8cf9e13b4c24d4abf6f71eef70d5bd81e5335b213fb` |
| 13 | `lemma` | [c₀_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/c-pos.md) | 232 | `result-track:65d3c3608f7e525498af64b8d6c336291b14af3a27b94a8fbb7df633f092a4d2` |
| 14 | `lemma` | [c₀_lt_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/c-lt-one.md) | 235 | `result-track:8689e71317b556151b1be897d41a9d66cf6b9f2ab1872ad89ed9f525224dd88a` |
| 15 | `lemma` | [ell1_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ell1-eq.md) | 238 | `result-track:33a67bb0558d215faea3817d7f14c8d18bb13a03d8c9df61c8535998d30405b9` |
| 16 | `lemma` | [ell1_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ell1-pos.md) | 240 | `result-track:91c80defba54c386b0b4f808167a9855b0207c4a0269c838193a9f48b8faf99b` |
| 17 | `lemma` | [lam1_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/lam1-eq.md) | 244 | `result-track:ebd4823281d8f2b3526f5ad1e5b0166d71ab6814462762cffed90114ffe8fa32` |
| 18 | `lemma` | [lam1_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/lam1-le.md) | 248 | `result-track:b28e5ffab15dd90ce6205a51e499060fe959eda0928f8f8e69783bdc9b121b91` |
| 19 | `lemma` | [sub_lam1_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/sub-lam1-le.md) | 255 | `result-track:62dca2da7c0dcaf1f73573be5c018b052072b8177cd65c60b993ceab240d23bd` |
| 20 | `lemma` | [lam1_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/lam1-pos.md) | 266 | `result-track:3321c425176c24dcb3a255e0d2c2a649e4f00ffd6554d7d3d088aac0e248a4f3` |
| 21 | `theorem` | [Hfun_lam1_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/hfun-lam1-ge.md) | 273 | `result-track:f5f22ad5a88b214c1bccf009d93ead3e2d59b5debb980f1e044401f03726e4a4` |
| 22 | `lemma` | [Ffun_sub_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ffun-sub-le.md) | 289 | `result-track:d667574d2ee7edc4f124f3bd9caaba8ae438e0fdcbdcc3ae73c2439b73ee1e88` |
| 23 | `theorem` | [Ffun_lam1_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ffun-lam1-ge.md) | 297 | `result-track:4212d6ab389b3b8ca9da33c4c412d3826efbf5346cd28dc828a82e56bfa9a4f2` |
| 24 | `lemma` | [Hfun_ge_near_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/hfun-ge-near-one.md) | 308 | `result-track:467541b953e41b72322ea8396721095575f20d9c3818701f2ba6d5406cbd74ec` |
| 25 | `lemma` | [Ffun_ge_near_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ffun-ge-near-one.md) | 317 | `result-track:d1394d3dfe8dacd45a3cb492a0aa5d154f3d64248276b583a49f3363933efd5a` |
| 26 | `theorem` | [N0star_lower_explicit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n0star-lower-explicit.md) | 338 | `result-track:c48d1baff2562edef403ca988c982f76e8f28815d7457dd461f57242912058cc` |
| 27 | `theorem` | [N0star_lower_H](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n0star-lower-h.md) | 350 | `result-track:c9c3a09f13e511351a7799d4098ac40fa66ee3e3e0d4753d93fb36d5a4437cd5` |
| 28 | `lemma` | [rtrace_smul_ofReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/rtrace-smul-ofreal.md) | 373 | `result-track:15f6b16a7b0e9109c8141b5b44454355141fd43bcd20ebfd4396e8c20fdda6f6` |
| 29 | `lemma` | [frobSq_smul_ofReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-smul-ofreal.md) | 378 | `result-track:104529263693a12b2a79874a54ba4104012b40731a5af58bf9c6cb9ee6a1d53c` |
| 30 | `lemma` | [tilde_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tilde-eq.md) | 390 | `result-track:e46e1f0cda68ae31d78ea17700bb03fbadcd8b9202b0e1a9db0487f7087bab2e` |
| 31 | `lemma` | [hat_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/hat-eq.md) | 395 | `result-track:e58b78168a37259ffcbe957494409fbc7fb646696244212553276576ff1ac36e` |
| 32 | `lemma` | [hat_eq_smul_tilde](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/hat-eq-smul-tilde.md) | 400 | `result-track:1f86526c415ad3253ff98f87680cf08fa9e30112f3c98c3bc504cb74927db1c6` |
| 33 | `lemma` | [rtrace_hat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/rtrace-hat.md) | 408 | `result-track:4f21f3fd40fcf1325dfdffaddc494efcb5300b9777881988538d6635dd847be1` |
| 34 | `lemma` | [frobSq_hat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-hat.md) | 413 | `result-track:c8226f3d334fb1634f0b8f023e549334ca010f04d681483c20a11be75a425efa` |
| 35 | `lemma` | [rtrace_tilde_Gp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/rtrace-tilde-gp.md) | 419 | `result-track:21e8c63b19875c84dd9bc8c1d1ce320f6134cd00f6e48c61c14127f4dbc5c7e7` |
| 36 | `lemma` | [frobSq_tilde_Gp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobsq-tilde-gp.md) | 425 | `result-track:722c1f1a204aff22abc9383403a23aedd1d837266470fe7027383976f51d8bb8` |
| 37 | `theorem` | [trGhat_sub_N_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/trghat-sub-n-le.md) | 436 | `result-track:306d291cd65e025f7ba6f8d96a6a12fe3a22c5ef243b147545a3d244729b165c` |
| 38 | `lemma` | [mainTr2_hat_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/maintr2-hat-identity.md) | 447 | `result-track:63644d780a0543696ff2deb2d9af7d748284f7d11ff787e45e60379d1486984f` |
| 39 | `theorem` | [frobGhat_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/frobghat-le.md) | 456 | `result-track:061210d878d8c0538a26896e9435f9008e911f58e845882b3fcc5492b2328710` |
| 40 | `theorem` | [eps_form_of_isLittleO](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eps-form-of-islittleo.md) | 496 | `result-track:86f8b1ef292aac707a71d1c9fb38e2aea8af344412ec8fe9bb4dfb14880023b4` |
| 41 | `theorem` | [err_isLittleO](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/err-islittleo.md) | 511 | `result-track:e26aa2f68280f6d609fe4ccb0d5b262568cdabd011bd046a9ca0d60c1be7c8db` |
| 42 | `theorem` | [eps_form_sup_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eps-form-sup-half.md) | 551 | `result-track:f544f72b4e5941b45fc3973d991f3a92c8bd1d40d354559e0a18e26236f2ffa9` |
| 43 | `lemma` | [exists_lam_near_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/exists-lam-near-one.md) | 563 | `result-track:1242227afbd80ac3b49493f402e42dd92ebcd982eb5ef9aa23989a952bba8d4d` |
| 44 | `theorem` | [eps_form_twoThirds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eps-form-twothirds.md) | 569 | `result-track:7ff92ff98146b4d3689e6a0b7cbe378c49599ac719a81fa8dcaecad94492ac6b` |
| 45 | `theorem` | [eps_form_threeQuarters](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eps-form-threequarters.md) | 578 | `result-track:af5907b9dc7ed5769b949706f54bf7f7eace03c4b8bdfd799ab90a7bd83ddd7c` |
| 46 | `theorem` | [eps_form_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eps-form-half.md) | 587 | `result-track:d839b57c60b22e7e37598d56e85d8bf0d288a01a9db29e1f52dd1568873fa652` |
| 47 | `theorem` | [dyadic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/dyadic.md) | 600 | `result-track:0e91f4944ed591d89f2fa4095c0fd457c9580c0a34fbeedbfa782e33cbbc91c5` |
| 48 | `lemma` | [tendsto_l_atTop](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-l-attop-source-edition-2.md) | 692 | `result-track:d237943ed553d798939b399b0036cc8cb3e9208db38d603f2aec9f56ecebc08d` |
| 49 | `lemma` | [eventually_l_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-l-pos.md) | 695 | `result-track:b15b63969bb212b4703446f5feb7c30c75b51aba1f4aeda7067a7ec77cb9b4f4` |
| 50 | `lemma` | [eventually_one_le_l](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-one-le-l.md) | 697 | `result-track:72b7ef5103f4e2ab460802ccd19d0124d9709997f7e8b3c2ddd93f81c4b38e8b` |
| 51 | `lemma` | [tendsto_L_atTop](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-l-attop.md) | 700 | `result-track:261497e6de14ac2569a9ece4e4d86fc5a04259b5616365c9cae3afb46d10e833` |
| 52 | `lemma` | [log_eq_l_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/log-eq-l-add.md) | 704 | `result-track:e594cc31161d8d06d2a352496684fe57d2bda9a20618cd91a05e7052be1c09bc` |
| 53 | `lemma` | [eventually_log_le_two_l](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-log-le-two-l.md) | 708 | `result-track:fb17eb681a50184cfc8b9150369b3ca210a450f4941fa6d3fc8e55b3b2c9fcf5` |
| 54 | `lemma` | [eventually_log_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-log-nonneg.md) | 713 | `result-track:1ffaac6f5b5732399b02ef7971594ddbde447ace8130a1050a2904d3a716c22d` |
| 55 | `lemma` | [tendsto_Tl_atTop](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-tl-attop.md) | 717 | `result-track:22e55ed292110e9174e0087e8940d59c6df15739f92a8e1715ccc9cc434f3d27` |
| 56 | `lemma` | [eventually_N_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-n-ge.md) | 721 | `result-track:2c826cffe9d29e1ef97b61061010e3c5aa808d81b7acdfebe98eaea0257407f5` |
| 57 | `lemma` | [eventually_N_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-n-le.md) | 742 | `result-track:b2b121659c2fbe3a32eb5a9ddf4ad9ad62a631c59ba97907180c9dce2b18d644` |
| 58 | `lemma` | [tendsto_N_atTop](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-n-attop.md) | 763 | `result-track:80a1745fa950d5476e72165672d7577faa51b2e5754aed22bae3533084893ecb` |
| 59 | `lemma` | [isLittleO_N_of_isLittleO_Tl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-n-of-islittleo-tl.md) | 768 | `result-track:d0d6acf344b11ea96c63dbeb176b52e9b0d70954c1531ac0e9931eba07bd15fc` |
| 60 | `lemma` | [isLittleO_l_Tl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-l-tl.md) | 779 | `result-track:2bfc0115697d64da79336237e79e39be0a6317e289da669204ac648082a91187` |
| 61 | `lemma` | [isLittleO_log_Tl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-log-tl.md) | 788 | `result-track:7d9fb0a0dafb38e8fdb24afb9c566f2860e4a22dd67c0149e06738bf67c7416b` |
| 62 | `lemma` | [isLittleO_sqrt_mul_l_Tl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-sqrt-mul-l-tl.md) | 794 | `result-track:7144fb45061d50f2cfaff80dd35f255905aa0970fc97cc3a0ac985cfa4e0ec77` |
| 63 | `lemma` | [sqrtX_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/sqrtx-eq.md) | 811 | `result-track:90ddd1530675676c63515d4fbd8aa3c398d5d59b37792a81b6c5ad6c1c324893` |
| 64 | `lemma` | [tendsto_rpow_halflam_sub_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-rpow-halflam-sub-one.md) | 816 | `result-track:2b63c815925b517cea6950e7efe2e4880f19a9f89e4ce657516cd35f29e5d4c4` |
| 65 | `lemma` | [isLittleO_sqrtX_Tl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-sqrtx-tl.md) | 823 | `result-track:917137949bc838c7fcc854b5c74aafc000135da1323747bda9c5a227e0d746d3` |
| 66 | `lemma` | [tendsto_theta_over_L](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-theta-over-l.md) | 842 | `result-track:fb83e9d965fae2c9cc7f780d77150072c1e5021488193ac2a63e47cd8d9e1ee2` |
| 67 | `lemma` | [eventually_clam_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-clam-bounds.md) | 853 | `result-track:0626b7c581a151d0f79117655ca75dcb9325a0b7279ab6ce616755ece604d5a6` |
| 68 | `lemma` | [tendsto_a_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/tendsto-a-one.md) | 868 | `result-track:fcda0300eeb5fc788491ce47f43e836411e2a733bc59b05a3081882ea6fd0ed2` |
| 69 | `lemma` | [window_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/window-union.md) | 890 | `result-track:675aa018e76734027239c7db1104021a03ad3b38675eb614e9f13e7ff6abe3b5` |
| 70 | `lemma` | [window_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/window-disjoint.md) | 903 | `result-track:50967fa363c7464b16b31c019b5839f573c05f7f26a1121066cb7681c16ef824` |
| 71 | `theorem` | [N_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n-add.md) | 909 | `result-track:63f1e5d116971975d4a40142126e99b103ccbe438e1c20cd1fa000efa4cda0e5` |
| 72 | `theorem` | [Nd_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/nd-add.md) | 915 | `result-track:cca93a86807481e1039ccac90adb4aab01e6f32fb3c21c04d93d180d6334e7e4` |
| 73 | `theorem` | [N0star_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n0star-add.md) | 921 | `result-track:648dd3abff9deea56f34ec2e32e089252043be21e04801d7b591e1fc94fdfdac` |
| 74 | `theorem` | [N0s_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n0s-add.md) | 929 | `result-track:f0dbea10642bcc62bbe8d26bf61cc4283003b0a119253e732ab2051d3f82b17e` |
| 75 | `lemma` | [N_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n-self.md) | 938 | `result-track:3343bb2e29f46045486b6f5312cd8fa94507417fedfa372c15aa649c974ee079` |
| 76 | `lemma` | [N0star_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/n0star-self.md) | 941 | `result-track:0d80b4e91baddc685541a8dbe6dac92fc0ef4d768205132838b9a9ae200a4e03` |
| 77 | `lemma` | [D0_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/d0-nonneg.md) | 946 | `result-track:9fc925e31e0a79f5a2664e8386ba72a924b948dfc17ff5ade72b31cbf0c27db0` |
| 78 | `theorem` | [NIprime_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/niprime-eq.md) | 951 | `result-track:69bb275ed98a43081d034aa6a874bf15204746513459fa95fc012df204adb719` |
| 79 | `theorem` | [s1_add_s2_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/s1-add-s2-eq.md) | 959 | `result-track:1e6bf2e456544a6ee0cdd48148890d5a8c61695e2dec0034039b1906550fb67b` |
| 80 | `theorem` | [s1_add_s2_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/s1-add-s2-le.md) | 983 | `result-track:efa87616fb9b045582745fec078cc68cef9303484684b8a586798651095c09b5` |
| 81 | `theorem` | [s1_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/s1-le.md) | 994 | `result-track:26042d70ff6f4b322f33934bcd62c929e402c1a640d2a5165546b5e9eafcdfe0` |
| 82 | `theorem` | [card_ZIprime_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/card-ziprime-le.md) | 1008 | `result-track:d838e68b2f79f7ad72ad1ee60508d280be444f7d40d6ef287ba42585e8b2c41d` |
| 83 | `lemma` | [hat_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/hat-add.md) | 1034 | `result-track:1c9d5af5ca9ac5db06f5a5f6d5aa171e61a837e801e1f781340d0f07d03c44ee` |
| 84 | `theorem` | [seamA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/seama.md) | 1040 | `result-track:3e82921d314869565d6b0aa414efcb4f9f7aa535c6e7867dd96c219cecb3ab31` |
| 85 | `theorem` | [seamA_BC](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/seama-bc.md) | 1064 | `result-track:4732e206ce82099a599d2f8c09b2280e654286dc32416eee3290a7836d7b6822` |
| 86 | `theorem` | [seamB](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/seamb.md) | 1089 | `result-track:1390b6a3395ca35dbe64f9007fb25c364ad48c6347a837dc17e3f5abc8bf56ab` |
| 87 | `lemma` | [isLittleO_of_tendsto_zero_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-of-tendsto-zero-mul.md) | 1121 | `result-track:8a0fbc38de08a4fe417024bdf3d77ce71dd161f849d44e12de2ecc3b5eaf0c9b` |
| 88 | `lemma` | [isBigO_one_of_abs_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/isbigo-one-of-abs-le.md) | 1126 | `result-track:15f1a015ff2c59b65cad0053edf9180cf64ffd53fd6240ff74477f0689c96569` |
| 89 | `lemma` | [isLittleO_of_bdd_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/islittleo-of-bdd-mul.md) | 1131 | `result-track:00e30af3068368086e1b033f1f668dcd2d0c031f9e483596610118ef055c4d01` |
| 90 | `theorem` | [thmA_abstract_err](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thma-abstract-err.md) | 1146 | `result-track:4d978181424571ec8805e1213420ed9755d73e59bae9b6e005c425fe54e2e119` |
| 91 | `theorem` | [thmA_abstract](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thma-abstract.md) | 1294 | `result-track:1b3b34a918bf58a17da9e8cb0fc9d7845e323dda41b65d1ce0604aab9b8e2385` |
| 92 | `lemma` | [isHermitian_ofReal_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ishermitian-ofreal-smul.md) | 1318 | `result-track:bc26440f199a6f4d6eb3518b0376e3c692d9f3830a2598c40934a6eb3fd2961d` |
| 93 | `lemma` | [Gp_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/gp-ishermitian.md) | 1326 | `result-track:aa1d324519b1d30eaba49b617a41ccf09b7a3c8eecbe32f20d16ac41fa7c91a6` |
| 94 | `lemma` | [isHermitian_tilde](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ishermitian-tilde.md) | 1333 | `result-track:de345e985c734571efaaa9b7e288115e32d5d0ebece1065860e880bd2c9840e7` |
| 95 | `lemma` | [card_fin_d](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/card-fin-d.md) | 1337 | `result-track:c0ab0a87c1ef53ec4bcb9b80918cbb5b473baefccf0d8b44ff254f4bb88f3c26` |
| 96 | `lemma` | [d_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/d-le.md) | 1339 | `result-track:a88bd98c40c5e5261064ad170504af00bce1c4430a7ae69f62ff28c5c68f9495` |
| 97 | `lemma` | [eventually_calE_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/eventually-cale-nonneg.md) | 1343 | `result-track:82db0d1c833121fed63643d5f13cb4ce1f53bc8256a4df5732a551532311cce5` |
| 98 | `lemma` | [Ffun_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/ffun-bounds.md) | 1353 | `result-track:584b866a44dff1d42a4834dac6a0f3a4a4b65f58a39eddba70ce6a28b11227d5` |
| 99 | `theorem` | [nplus_ge_explicit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/nplus-ge-explicit.md) | 1361 | `result-track:72b13782ea078e8b8f2e2428a672209160213021ea789fb1fb3fbab118a04e0f` |
| 100 | `theorem` | [thmBC_core_err](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thmbc-core-err.md) | 1384 | `result-track:0594c677abc27bb9f53f5240f3507b1d1bb4a9f1956345dfea6868463d4a77a7` |
| 101 | `theorem` | [thmBC_core](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thmbc-core.md) | 1520 | `result-track:2ac3e94898c78a586d1e686f2172825b723155010fc0634160894bf995022136` |
| 102 | `theorem` | [thmB_abstract](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thmb-abstract.md) | 1537 | `result-track:3d552896a44efa6e73ab24e9bd8bd755efe35f73d2ce7eb31fb6d752e30245a5` |
| 103 | `theorem` | [thmC_abstract](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/thmc-abstract.md) | 1554 | `result-track:828aeed6e22e73d51616246e65b43c4300be596cf99cfb69a9bee730410efd03` |
| 104 | `lemma` | [X_le_T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/x-le-t.md) | 1575 | `result-track:943fa7f97c60de61e28c495e91e6fbd8bdc7f4b5bcf67b35daa3ff7bc7bee24e` |
| 105 | `theorem` | [calE_tendsto_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AssemblyNamespaced.lean/declarations/cale-tendsto-zero.md) | 1588 | `result-track:1fc3083071a7ee0754700ed3fafb605bcc77c0fdfaaf967088dd0af0bfcfd973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f37d2dcc38d7d14bf74d4e060cd866341b5bc13540813f2d175bd36718ca7d1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
