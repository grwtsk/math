# Verification target: Hausdorff Dimension Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "722a8626b2272a9b5221703899750e6333813295",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `722a8626b2272a9b5221703899750e6333813295`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Intrinsic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh.md) | 105 | `declaration-track:b1bb0c4d00e799471f5608f437e2e0bc18aa13b91bb05e25032e8c11c9d2ff50` |
| 2 | `theorem` | [dimH_def](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-def.md) | 119 | `result-track:ada720cbae5e5f55689c873a2927fc7435f3c81b5cfea883ad01e315ca05c74d` |
| 3 | `theorem` | [hausdorffMeasure_of_lt_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/hausdorffmeasure-of-lt-dimh.md) | 122 | `result-track:89acbf2308c6ef5b382e7ef4ad1d1a65b87d90e63fa69ad22b18dd6dcd46648b` |
| 4 | `theorem` | [dimH_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-le.md) | 128 | `result-track:c0af3f4174d60b196becdb88753c8480b7df28bbf749e2764ef73363937e6223` |
| 5 | `theorem` | [dimH_le_of_hausdorffMeasure_ne_top](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-le-of-hausdorffmeasure-ne-top.md) | 131 | `result-track:6717dfb521eb537f5512125f4c46a021c0c6e597a1b1837b340c9598f513e1a9` |
| 6 | `theorem` | [le_dimH_of_hausdorffMeasure_eq_top](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/le-dimh-of-hausdorffmeasure-eq-top.md) | 134 | `result-track:5086c62762f4aa9bd6b9c579d9ecd922a2d78fcb0927fc4492656479142457d2` |
| 7 | `theorem` | [hausdorffMeasure_of_dimH_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/hausdorffmeasure-of-dimh-lt.md) | 138 | `result-track:453360a377ed407acd729b0761d6ae474c8c0898d165191dc417d18fe4a2c4c4` |
| 8 | `theorem` | [measure_zero_of_dimH_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/measure-zero-of-dimh-lt.md) | 146 | `result-track:2efe2fba8fa7a3707d1d85e74635a237fa5dd46376dbf9f04f0daba6f04c1652` |
| 9 | `theorem` | [le_dimH_of_hausdorffMeasure_ne_zero](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/le-dimh-of-hausdorffmeasure-ne-zero.md) | 150 | `result-track:7ad973b22a5b30877c8f11b593d87eb9fbdf4f009ce67093e494609d03d079e2` |
| 10 | `theorem` | [dimH_of_hausdorffMeasure_ne_zero_ne_top](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-of-hausdorffmeasure-ne-zero-ne-top.md) | 153 | `result-track:745e7240ce8fa9e6d6a94a157684915f8950bb5c9ac912538ef8b64cf27ed74a` |
| 11 | `theorem` | [dimH_eq_iInf](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-eq-iinf.md) | 160 | `result-track:e8d762be5f141abf48b630663b4cc1ef4f9753c67812369d35519074fea683c6` |
| 12 | `theorem` | [dimH_mono](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-mono.md) | 175 | `result-track:c44233b94b1e9859fb1fa5d54552fc994af5d8a8fef547eca7e6ee15e21524cc` |
| 13 | `theorem` | [dimH_subsingleton](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-subsingleton.md) | 179 | `result-track:9dbeef2d670958b63243ff80c39849c229c955f82c46d531d1ce397fa56b38e0` |
| 14 | `theorem` | [dimH_empty](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-empty.md) | 188 | `result-track:30bb57c66b49e5fe6ee532168b38fb2c742bb6aa8d33c3ff115d31b98dd8aa5e` |
| 15 | `theorem` | [dimH_singleton](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-singleton.md) | 192 | `result-track:78a39b4c55401cba2c67bc337afdcad64f303b900f45548086948eadaa63c83c` |
| 16 | `theorem` | [dimH_iUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-iunion.md) | 196 | `result-track:4353960e33893ac4f3c04ba755ca73546270ca33b7448cce689e12aa205d31cc` |
| 17 | `theorem` | [dimH_bUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-bunion.md) | 207 | `result-track:d83b7617f8ad55255e39dccb54aa0e8b9f6d797f5d73b00430232e5de6c698b5` |
| 18 | `theorem` | [dimH_sUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-sunion.md) | 213 | `result-track:e8b0501f98d1cffc58bcad79e6616c6442ff173b657dc9bf5884538cfb0f9476` |
| 19 | `theorem` | [dimH_union](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-union.md) | 217 | `result-track:f548c1938f28866bec128981630243a5a169d0341f76968c75e9b41f398a324a` |
| 20 | `theorem` | [dimH_countable](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-countable.md) | 220 | `result-track:54f0abf6758153b9421ed1ef72f30b3780f4e86b9710b7e3f19967a3efccd260` |
| 21 | `theorem` | [dimH_finite](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-finite.md) | 225 | `result-track:3477ba33eedb4c04051a7e525c0d6823e1d5d0fa8a08a12075f5753f6e52fb51` |
| 22 | `theorem` | [dimH_coe_finset](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-coe-finset.md) | 231 | `result-track:cdccc72d66d3184f70db0737b73487f8614f734b40550ee2a41c13a4ad721da1` |
| 23 | `theorem` | [exists_mem_nhdsWithin_lt_dimH_of_lt_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/exists-mem-nhdswithin-lt-dimh-of-lt-dimh.md) | 248 | `result-track:e15b24c4e26870b3eaf85f2c0e61aac207ae353cba67289db8b4ea64cbc2c6f7` |
| 24 | `theorem` | [bsupr_limsup_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/bsupr-limsup-dimh.md) | 260 | `result-track:d0092236a1c92e0e3b74585a019019784bad412cc84380465b06336f43120feb` |
| 25 | `theorem` | [iSup_limsup_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/isup-limsup-dimh.md) | 273 | `result-track:ebaf748dcb17a05d968d9d7bc87bf619b26c4150d838a23ae3d3deca4183c560` |
| 26 | `theorem` | [HolderOnWith.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/holderonwith-dimh-image-le.md) | 289 | `result-track:e226dad297cb0bfd6b5092235b4dcfa2373ac6086816e5371c4fbe2f0eef37d8` |
| 27 | `theorem` | [dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image-le.md) | 306 | `result-track:ab2cf6f91d751c06fd46bf157d1e760cb1fee6c885cc2688179e74d7e1743e8b` |
| 28 | `theorem` | [dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-range-le-source-edition-2.md) | 312 | `result-track:504799bc3bfe8e496f69cd6d65919a644e1f1a24bffb4a84d7ea6756dbf74d92` |
| 29 | `theorem` | [dimH_image_le_of_locally_holder_on](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image-le-of-locally-holder-on.md) | 322 | `result-track:0bafb184126bc01c24d059c25f98e6b044218a7e784b77112b45aaa5678ee003` |
| 30 | `theorem` | [dimH_range_le_of_locally_holder_on](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-range-le-of-locally-holder-on.md) | 334 | `result-track:3fe135257a32afe12b51aeb9fa2a47355eba5b249d2bf7ba72688353e2913969` |
| 31 | `theorem` | [LipschitzOnWith.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/lipschitzonwith-dimh-image-le.md) | 347 | `result-track:5e77d083628d213cca9870d15842cd4049d98e0bdb2dc3d3ff4db16cee047497` |
| 32 | `theorem` | [dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image-le-source-edition-2.md) | 353 | `result-track:eb1c1fd65b28a00de801b42af663fe5c39510b055e0d185076af3a3124483353` |
| 33 | `theorem` | [dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-range-le.md) | 358 | `result-track:2b81bef7f40c2dfa56f74b7450994cc6918668e93773580054a14ac6e9da6297` |
| 34 | `theorem` | [dimH_image_le_of_locally_lipschitzOn](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image-le-of-locally-lipschitzon.md) | 366 | `result-track:05bed0f395aa63609789562ddb4dd16c4912460bacb4f2b7096f52d1a96eeeed` |
| 35 | `theorem` | [dimH_range_le_of_locally_lipschitzOn](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-range-le-of-locally-lipschitzon.md) | 374 | `result-track:8fbb814aeaa6e3566fdb45270216320b95102c6d9995a61bb7fd87d4d2d3ce29` |
| 36 | `theorem` | [dimH_preimage_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-preimage-le.md) | 383 | `result-track:4c60827b44a99f36dbb92f25865141e4112ad45c551ccd44c4b2618a7110a6d0` |
| 37 | `theorem` | [le_dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/le-dimh-image.md) | 391 | `result-track:ba09a236b3a41a45454e2fc1008c4e5daca493461afc0e9b3bce7532542ebf18` |
| 38 | `theorem` | [Isometry.dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/isometry-dimh-image.md) | 403 | `result-track:2b45e574b153d9e3006c666403c94692945efc3a65caca36a1f70ff5aa0037d2` |
| 39 | `theorem` | [dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image.md) | 409 | `result-track:2794cb8c778352514799dc1e2aabbd5ded95f255d5601b2178bcb0a776e24da5` |
| 40 | `theorem` | [dimH_preimage](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-preimage-source-edition-2.md) | 413 | `result-track:ab8176557d9ed507a70750f59fcd7f3092c799a33f748c237bb3466e39e1f8aa` |
| 41 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ.md) | 416 | `result-track:0189f396489d1168d490d008371b76178fb355759a90ebf543f69c7febc71a34` |
| 42 | `theorem` | [dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-image-source-edition-2.md) | 427 | `result-track:a873915443ca2ee8eaf512422af7251a4e93a1031b8483419ab249e90efc6de8` |
| 43 | `theorem` | [dimH_preimage](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-preimage.md) | 432 | `result-track:4eb2b33551186f6f82b7027ebae49e28baca47866feb6a18b3366fba4925fec6` |
| 44 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ-source-edition-2.md) | 435 | `result-track:10fe60eb7f303f9165184ddec94118799c1887945094b663b982587a1cdac414` |
| 45 | `theorem` | [dimH_ball_pi](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-ball-pi.md) | 449 | `result-track:7f4e34bf33b17721a8124fe7080a518c000968a40908dfbda3323e65f6cea0de` |
| 46 | `theorem` | [dimH_ball_pi_fin](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-ball-pi-fin.md) | 461 | `result-track:1dc0ad601b436de556bcb3f6c1b70617983fea8c55f55c5378cd7fbd4cb1ebae` |
| 47 | `theorem` | [dimH_univ_pi](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ-pi.md) | 464 | `result-track:52ace8209c08c6d335a7dc097e592d7573fd812ad1a2c1fd34df1ecd044eb9fc` |
| 48 | `theorem` | [dimH_univ_pi_fin](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ-pi-fin.md) | 468 | `result-track:85b9271dcfaeced32027dc695383f6b89e0366e448f229f0850b6303fefaa46e` |
| 49 | `theorem` | [dimH_of_mem_nhds](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-of-mem-nhds.md) | 471 | `result-track:6173a6baec3342da7c43b1c9530096230c2a9a6cb8edbb55d8c989b5ee19f7a8` |
| 50 | `theorem` | [dimH_of_nonempty_interior](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-of-nonempty-interior.md) | 481 | `result-track:24c458db234a3eb7f6e1029711792b96fdf988a472022f0e96b9e8bf200f01e4` |
| 51 | `theorem` | [Convex.dimH_eq_finrank_vectorSpan](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/convex-dimh-eq-finrank-vectorspan.md) | 486 | `result-track:88e43a6adb8c755a32d0d2dd6c1d81eef9b22eb9e27c2766bc6a46c73eea076a` |
| 52 | `theorem` | [dimH_univ_eq_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ-eq-finrank.md) | 500 | `result-track:ecdff04ae626e2bbe04a2a99b876a175c886b32149e5d670ed05849ebc1af6db` |
| 53 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-univ-source-edition-3.md) | 503 | `result-track:dbf55e6f8f17fa0b20a3b176dbb11b5c1de007a9c651b0f7b8357202a5343347` |
| 54 | `theorem` | [dimH_lt_top](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-lt-top.md) | 509 | `result-track:13e609da6bbc0f89bbe5bd0bcac769b50c23ddeb375e951dc8b5ab6707b4392a` |
| 55 | `theorem` | [dimH_ne_top](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-ne-top.md) | 514 | `result-track:326dbbde3b3fd0b5273e18893e932957998aee25417f711dc65f7475950af4a9` |
| 56 | `lemma` | [hausdorffMeasure_of_finrank_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/hausdorffmeasure-of-finrank-lt.md) | 516 | `result-track:4b22f10e338d8d8c50f21457b34bfb2083af012c075e79b2669de40d9034de73` |
| 57 | `theorem` | [dimH_segment](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-segment.md) | 525 | `result-track:84e6e738e34779881383ac6318c0903cd3c074eda19787fa3289cc4d06bd51bd` |
| 58 | `theorem` | [dense_compl_of_dimH_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dense-compl-of-dimh-lt-finrank.md) | 533 | `result-track:01b5d765b66d9db94fcc31b37aa0b5f5a3449fede60040a61ba4fec693951e10` |
| 59 | `theorem` | [DifferentiableOn.hausdorffMeasure_image_eq_zero](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/differentiableon-hausdorffmeasure-image-eq-zero.md) | 557 | `result-track:425290828aa9765c23218724cb2eea66642d06d897a0c7f3cd4e131b9324fbc9` |
| 60 | `theorem` | [DifferentiableOn.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/differentiableon-dimh-image-le.md) | 587 | `result-track:5f161ea558b66d7817750ac5e8340b84891d1d416f71ac343d2ae15073d55268` |
| 61 | `theorem` | [Differentiable.dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/differentiable-dimh-range-le.md) | 597 | `result-track:06fb2a8def619ac7420e3c3b79ec1b6fa5a3ee688b140deba31442259b9c998b` |
| 62 | `theorem` | [DifferentiableOn.dense_compl_image_of_dimH_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/differentiableon-dense-compl-image-of-dimh-lt-finrank.md) | 607 | `result-track:e5eb663058fdc0a50c6edd5fa2e2c51a99f1c9be1b4a6646cbe86dda3c7d311b` |
| 63 | `theorem` | [Differentiable.dense_compl_range_of_finrank_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/differentiable-dense-compl-range-of-finrank-lt-finrank.md) | 614 | `result-track:4c0a1dcf89987a855d046958a3cb829c684979725cb329be57ac55d61ccd2c84` |
| 64 | `theorem` | [ContDiffOn.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/contdiffon-dimh-image-le.md) | 621 | `result-track:460996417084bbfe5571fcd773824a0764f1160c80a1b05d11fcc32a887a009b` |
| 65 | `theorem` | [ContDiff.dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/contdiff-dimh-range-le.md) | 628 | `result-track:48f952b644da2ae22cd52c6bf91aee4532e39423e7266c5187ada74def7e10f7` |
| 66 | `theorem` | [ContDiffOn.dense_compl_image_of_dimH_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/contdiffon-dense-compl-image-of-dimh-lt-finrank.md) | 635 | `result-track:12f15461b9832de5b6b14dc8f5cc3081eaeb403b6a14bbb0da0903ebfb45625b` |
| 67 | `theorem` | [ContDiff.dense_compl_range_of_finrank_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/contdiff-dense-compl-range-of-finrank-lt-finrank.md) | 641 | `result-track:831dbbdbbb218f718fe63c304906bb37a101bba9f02d1893a4cf6d259d9ede42` |
| 68 | `theorem` | [dimH_orthogonalProjectionOnto_le](../../../../GeneralTopology/HausdorffDimensionNamespacedPublic.lean/declarations/dimh-orthogonalprojectiononto-le.md) | 651 | `result-track:594c8fa2ee420471fc0ff6d6926af0163afd6f90fe92bdd5fc7683d2dbcc902b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3149fff43fc703ccc262d97f1f7d8ff525f8c9464afa05a6af7ccd6d7789b01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
