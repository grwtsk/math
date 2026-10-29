# Verification target: Calculus Mean Value Is Little OPow Succ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b46ffd0e4aa5e81a5fcaf37a270b32772426225",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/index.md) · [Full source](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b46ffd0e4aa5e81a5fcaf37a270b32772426225`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.AffineMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_le_of_liminf_slope_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-lt-deriv-boundary.md) | 71 | `result-track:18a75efec44beab6b5f7919318f964fd73eec316bc1586e1b75a99c9b9d63059` |
| 2 | `theorem` | [image_le_of_liminf_slope_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-lt-deriv-boundary-source-edition-2.md) | 115 | `result-track:637b09ced4b1e1e94d6fddf12c69159a535574397557e2b90b1fbfdd2e859d3d` |
| 3 | `theorem` | [image_le_of_liminf_slope_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-le-deriv-boundary.md) | 133 | `result-track:54ba553bcb188975c90fbf134f7e0f07d93976a00672f09ea128b05380473d96` |
| 4 | `theorem` | [image_le_of_deriv_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-lt-deriv-boundary.md) | 163 | `result-track:1e05b2ae2ab96ec8f5d13ead2aae8169fe14deba5c2d9dd374d33d8f5f5d0030` |
| 5 | `theorem` | [image_le_of_deriv_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-lt-deriv-boundary-source-edition-2.md) | 180 | `result-track:3604566afaba720d0be820ac51c5f1c6ff2fc40f0530d4a92009a69b21f04071` |
| 6 | `theorem` | [image_le_of_deriv_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-le-deriv-boundary.md) | 196 | `result-track:b6f7b89a6cbb1c353665ae8c1f27c3540b835823bbb8a234f75f44a8e41f8e4d` |
| 7 | `theorem` | [image_norm_le_of_liminf_right_slope_norm_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-norm-le-of-liminf-right-slope-norm-lt-deriv-boundary.md) | 221 | `result-track:2f59828a8ba4db2fc3ad1bcaca8cfbf272c42ac3aa1e3ceed743b68a60495172` |
| 8 | `theorem` | [image_norm_le_of_norm_deriv_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-lt-deriv-boundary-source-edition-2.md) | 241 | `result-track:43c0bf50e850c38b6daf65eb437f6167bd8c6fcdebf7a5d7f424cc5fd5ae83e3` |
| 9 | `theorem` | [image_norm_le_of_norm_deriv_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-lt-deriv-boundary.md) | 260 | `result-track:01cee2ee71b532e65bfc66b779a17a8ebf6d16e9710970424dcc4403cfde0072` |
| 10 | `theorem` | [image_norm_le_of_norm_deriv_right_le_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-le-deriv-boundary-source-edition-2.md) | 277 | `result-track:d098c3b6f54bc195e1fb4d1b423e4cf3ce685b2bbb20e9efbbf08f8a7bc70ef2` |
| 11 | `theorem` | [image_norm_le_of_norm_deriv_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-le-deriv-boundary.md) | 296 | `result-track:346ada6b41422552450e49c45eac72fdf8e60694b116916e1efde910eeaa0b69` |
| 12 | `theorem` | [norm_image_sub_le_of_norm_deriv_right_le_segment](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-right-le-segment.md) | 305 | `result-track:91b7cebfc230da287a9b2cb3ac995f874032875ccce631f2333d8d63ae444baf` |
| 13 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment.md) | 323 | `result-track:0cd510807e75d00bdf272e81627aec90caf65b641105a2f06d95a71fcc3abb7d` |
| 14 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-source-edition-2.md) | 334 | `result-track:48134e0aa766287ba8384ca776644d369df874b256be4b8fa5b3b8ae03637ac3` |
| 15 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment_01'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-01.md) | 343 | `result-track:00d6aa8db50a111348e99c5fafd0234b8a9608e63836de820ae8646029fd29d6` |
| 16 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment_01](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-01-source-edition-2.md) | 351 | `result-track:86b57a27ba7440a3911ffb8416520881c1d478419289b0a4b33682d19cfaa350` |
| 17 | `theorem` | [constant_of_has_deriv_right_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/constant-of-has-deriv-right-zero.md) | 357 | `result-track:f47efa9bf72ec02040d3a9e44dff1ebd04a776999105d8b4961556c83a042be0` |
| 18 | `theorem` | [constant_of_derivWithin_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/constant-of-derivwithin-zero.md) | 363 | `result-track:0874c7482789131a34222d7feb3f79fb13d4ef375e9380cdbdca73b78b543320` |
| 19 | `theorem` | [eq_of_has_deriv_right_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/eq-of-has-deriv-right-eq.md) | 374 | `result-track:a0a620e5f6f8a0dd025477ae7bf8cc9ec6be9f6cb1882cc05433e097594d8807` |
| 20 | `theorem` | [eq_of_derivWithin_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/eq-of-derivwithin-eq.md) | 383 | `result-track:05d74ff7c11acf8f568f9b3fed21dc07580080844abe93861ed3e223a45d6e74` |
| 21 | `instance` | [(anonymous)](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/instance.md) | 414 | `declaration-track:14ded5fe188a6ccae366367199cf5bc86ceef3ca163a8d431a4976ac37f723d9` |
| 22 | `theorem` | [norm_image_sub_le_of_norm_hasFDerivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasfderivwithin-le.md) | 420 | `result-track:2e07c7f6287ce422ff77230d1d1b6fda5d8b51539508fdb76c6f7d1677665090` |
| 23 | `theorem` | [lipschitzOnWith_of_nnnorm_hasFDerivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-hasfderivwithin-le.md) | 442 | `result-track:0ce1a45827c4f3fcf132206783a1b1c45cf5c05495073ba83e1396847c0382c5` |
| 24 | `theorem` | [exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/exists-nhdswithin-lipschitzonwith-of-hasfderivwithinat-of-nnnorm-lt.md) | 455 | `result-track:083238c87632a2e1d65fb3b1fe466d4734e3d44cd9b0eb2d821dbec79e9ed6c3` |
| 25 | `theorem` | [exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/exists-nhdswithin-lipschitzonwith-of-hasfderivwithinat.md) | 474 | `result-track:489823fafcddc8789ee01f93c5dfdb5501b3d4465d8fe32178086a8722ef8fcb` |
| 26 | `theorem` | [norm_image_sub_le_of_norm_fderivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderivwithin-le.md) | 482 | `result-track:18dc9c39f49f0f40961183250badc04b3a725828ab9c7eef2d2bdf69b71989a1` |
| 27 | `theorem` | [lipschitzOnWith_of_nnnorm_fderivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-fderivwithin-le.md) | 491 | `result-track:4f0d4ab610a742b82a5616328c8f4ebb8191c58191bf43767c226a009e6a7873` |
| 28 | `theorem` | [norm_image_sub_le_of_norm_fderiv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderiv-le.md) | 497 | `result-track:601bfab3f5c060277ced041ef545a7410170139f4b6a54ee0f2910d2a44afaca` |
| 29 | `theorem` | [lipschitzOnWith_of_nnnorm_fderiv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-fderiv-le.md) | 505 | `result-track:2069b799eecccac2edcc93abd83fb7042cb638bc0cffc9107d2d0105f7093420` |
| 30 | `theorem` | [_root_.lipschitzWith_of_nnnorm_fderiv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-lipschitzwith-of-nnnorm-fderiv-le.md) | 512 | `result-track:cd03583c71c6adff2bfcb4bb4e6b2f73e962dffeff1b5b10a0d50d8f8a1bbbf2` |
| 31 | `theorem` | [norm_image_sub_le_of_norm_hasFDerivWithin_le'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasfderivwithin-le-source-edition-2.md) | 524 | `result-track:c46092e44dd00331e08af77bdbd1a6e927499e14cad46335f4c9ccee5bf4159d` |
| 32 | `theorem` | [norm_image_sub_le_of_norm_fderivWithin_le'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderivwithin-le-source-edition-2.md) | 540 | `result-track:fa4f3094ae844e1da14777c4c7cbb25f58b4e70b62dc55753298313590c7db07` |
| 33 | `theorem` | [norm_image_sub_le_of_norm_fderiv_le'](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderiv-le-source-edition-2.md) | 547 | `result-track:e762735a532e92b93a16ed2ef71c97a5c42b798b25349dbe80175ef720b8c0eb` |
| 34 | `theorem` | [is_const_of_fderivWithin_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/is-const-of-fderivwithin-eq-zero.md) | 555 | `result-track:bb615211c13585063140dfd296c2e7525d8ef9ea2b295cc0a77d469b4bda7257` |
| 35 | `theorem` | [_root_.is_const_of_fderiv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-is-const-of-fderiv-eq-zero.md) | 562 | `result-track:e6aa68239505677c481ebe503da9f6d5850293a1a6ccc7ad9a08256516cfa5d0` |
| 36 | `theorem` | [eqOn_of_fderivWithin_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/eqon-of-fderivwithin-eq.md) | 573 | `result-track:d67ab87b49daa545fb1474599a11778d2a9cfd30f4fdfba2e04cb117ad541f0b` |
| 37 | `theorem` | [_root_.IsOpen.isOpen_inter_preimage_of_fderiv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-isopen-inter-preimage-of-fderiv-eq-zero.md) | 583 | `result-track:6795a729eff73e946df70da455192f189e1d90820475d094be04a6d4f49b5e88` |
| 38 | `theorem` | [_root_.isLocallyConstant_of_fderiv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-islocallyconstant-of-fderiv-eq-zero.md) | 594 | `result-track:88ec3989ac3c6a15186f690877d8d1465c4f1937dc2fa8e321fcf3af4f283135` |
| 39 | `theorem` | [_root_.IsOpen.exists_is_const_of_fderiv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-exists-is-const-of-fderiv-eq-zero.md) | 599 | `result-track:880ad9225a55ae8c42cdd9b24f06b19dcd070dc905c599bfaaef12156c55d05b` |
| 40 | `theorem` | [_root_.IsOpen.is_const_of_fderiv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-is-const-of-fderiv-eq-zero.md) | 614 | `result-track:fcb80adf32ea430ac25503d72643a599b86fca13a6210251e0c1bfcaa401a670` |
| 41 | `theorem` | [_root_.IsOpen.exists_eq_add_of_fderiv_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-exists-eq-add-of-fderiv-eq.md) | 620 | `result-track:541de88d4cff357ec9c3f27ca684037187d6347b9fc0ba1c7172583a7cb09911` |
| 42 | `theorem` | [_root_.IsOpen.eqOn_of_fderiv_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-eqon-of-fderiv-eq.md) | 630 | `result-track:34e16a880ae5b6e2ead6cd43476279c74957cd54daf77177b5daf64d7459f3b9` |
| 43 | `theorem` | [_root_.eq_of_fderiv_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-eq-of-fderiv-eq.md) | 638 | `result-track:a8cf830e33c176718e7fff0b51cf00fbf0c648f63ba5152c596ffaa5a92e5966` |
| 44 | `lemma` | [isLittleO_pow_succ](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/islittleo-pow-succ.md) | 648 | `result-track:61da06ffb9dcac976f3305b296e2edb1673b94ae4955c3a4bb6101739c8072ea` |
| 45 | `theorem` | [isLittleO_pow_succ_real](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/islittleo-pow-succ-real.md) | 669 | `result-track:74c1a60bfe540ee9bd9aa00bea311a523f3a3bb6a5273a491cd4938f6d8fc657` |
| 46 | `theorem` | [norm_image_sub_le_of_norm_hasDerivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasderivwithin-le.md) | 689 | `result-track:cb8ace482f57c881fd815bc4e0b9cae3cdf96de16c2cc11820135468c787566a` |
| 47 | `theorem` | [lipschitzOnWith_of_nnnorm_hasDerivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-hasderivwithin-le.md) | 698 | `result-track:ee75c4a09da97a8f93b88842d32fb5db5544e9a45e03389bfed47c5e8510cf33` |
| 48 | `theorem` | [norm_image_sub_le_of_norm_derivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-derivwithin-le.md) | 706 | `result-track:85213695152e3e92556b865c4d5bd13ed1fb65e9599cc565266f02c18cbcc47b` |
| 49 | `theorem` | [lipschitzOnWith_of_nnnorm_derivWithin_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-derivwithin-le.md) | 715 | `result-track:c43b67cba013d15472e870b6fd96074df96d3640d5096bd9b97a9adca66bf4da` |
| 50 | `theorem` | [norm_image_sub_le_of_norm_deriv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le.md) | 722 | `result-track:cdc5138233ccdbc87789cbe0fdc56456b52427d32ad1fe9f8cfa3ce67cd93b3c` |
| 51 | `theorem` | [lipschitzOnWith_of_nnnorm_deriv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-deriv-le.md) | 731 | `result-track:14f2caa40c0fe7c3725409e3f96b06af6f7c5b592e9f2050fe6659f495bd3afc` |
| 52 | `theorem` | [_root_.lipschitzWith_of_nnnorm_deriv_le](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-lipschitzwith-of-nnnorm-deriv-le.md) | 738 | `result-track:f06acb39f226974201a6ab1b842f5e94ee704e00fe14e2575dea266c7e228323` |
| 53 | `theorem` | [_root_.is_const_of_deriv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-is-const-of-deriv-eq-zero.md) | 745 | `result-track:982777f9d5d2695a9a2523a0472362928e99d3e5465a999df0d6bc02c997eb3e` |
| 54 | `theorem` | [_root_.IsOpen.isOpen_inter_preimage_of_deriv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-isopen-inter-preimage-of-deriv-eq-zero.md) | 749 | `result-track:5aae0063fbc1d972909d642384cd26871df14f04a3330ead72a7ef31089d7d37` |
| 55 | `theorem` | [_root_.IsOpen.exists_is_const_of_deriv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-exists-is-const-of-deriv-eq-zero.md) | 755 | `result-track:3800e13f6a51c365319f057f1099e943dc8b0648215898bc50c62230f7084e30` |
| 56 | `theorem` | [_root_.IsOpen.is_const_of_deriv_eq_zero](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-is-const-of-deriv-eq-zero.md) | 760 | `result-track:b30dae24b0d83c06b138d2466c51c6aa451d27172d1719fd0086e378adc23382` |
| 57 | `theorem` | [_root_.IsOpen.exists_eq_add_of_deriv_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-exists-eq-add-of-deriv-eq.md) | 765 | `result-track:b5387fcc8365448c675768bac9f2f9e5e28ac97b912458fe5c5e0e5e133cda41` |
| 58 | `theorem` | [_root_.IsOpen.eqOn_of_deriv_eq](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/root-isopen-eqon-of-deriv-eq.md) | 771 | `result-track:8c9f3f0f804d39b41236ec9f9558fed72339afa0ce04e41c5130222d6aa45dcc` |
| 59 | `theorem` | [hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/hasstrictfderivat-of-hasfderivat-of-continuousat.md) | 798 | `result-track:cfc0295091d03955029db4f6c162f1bc19acbb9b8a8c829b24c6d48076837b59` |
| 60 | `theorem` | [hasStrictDerivAt_of_hasDerivAt_of_continuousAt](../../../../RealFunctions/CalculusMeanValueIsLittleOPowSucc.lean/declarations/hasstrictderivat-of-hasderivat-of-continuousat.md) | 821 | `result-track:7ae8a6e2f4a92407dda026178549d2c554dbd86d93edb5b7d93be03d7f10e2f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc2a44b6a3469636d6a160942178043ad8b70c26bd8994d5339ee501dc0fec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
