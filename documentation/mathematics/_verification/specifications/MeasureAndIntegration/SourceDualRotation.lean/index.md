# Verification target: Source Dual Rotation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDualRotation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDualRotation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceReflectionConjugation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarterTurn](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn.md) | 28 | `declaration-track:71fd026b17b769603ab6c41d31880746a52335bd1ad67a078ec8a73c30f75b75` |
| 2 | `theorem` | [quarterTurn_apply](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-apply.md) | 31 | `result-track:d0f272c04e9b6574ee05301de356a0ad14f3da7cb209f8c8c4962da40a0448aa` |
| 3 | `theorem` | [quarterTurn_sq](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-sq.md) | 35 | `result-track:fe05ed12f52b2e84657ac98193e2733ce0a859d54ab1696a0abe3af6852623a1` |
| 4 | `theorem` | [quarterTurn_inner_skew](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-inner-skew.md) | 40 | `result-track:bbc39b0960273a8c0825eefba91dfc5c665cc0a047f89c187ab576abed8a8d66` |
| 5 | `def` | [quarterTurnCLM](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturnclm.md) | 47 | `declaration-track:07d15d1dfbf7c4415b00f391b620f09947554fe4985d810e77072d87a691cc83` |
| 6 | `theorem` | [quarterTurn_adjoint](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-adjoint.md) | 51 | `result-track:f98484788d926bafb2755b599b78d980432077522fbbff3f52c8743fa0f9aa42` |
| 7 | `theorem` | [reflection_translation_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/reflection-translation-reverse.md) | 61 | `result-track:f78423188cd3b665a1eb8f931a0248620cb248be2f9ae04d2a9d931428a33980` |
| 8 | `theorem` | [quarterTurn_translation_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-translation-reverse.md) | 76 | `result-track:61cc527c6e3fa14c3ff33bd3b50da1385468d0ee49e50d74e32338c394b50e77` |
| 9 | `theorem` | [dual_quarterTurn_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/dual-quarterturn-reverse.md) | 82 | `result-track:888ba6ac4691b66f9a46821b261f5f3766662ec219b274f5cfb11c99d71c16b0` |
| 10 | `def` | [rotationMap](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotationmap.md) | 88 | `declaration-track:de66530822a254d71d39c670b43aee5c40dc2f5b40042d251e374d8460a12071` |
| 11 | `theorem` | [rotationMap_apply](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotationmap-apply.md) | 92 | `result-track:c299100c0cb5dca945adc7416d56bbe4700301fdc9e58d4376fe57cc865e62c5` |
| 12 | `theorem` | [rotation_comp](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-comp.md) | 96 | `result-track:f9f21e0660c147df1a221fd57827e61ce3699d2bec128d6520b5dc760fa13832` |
| 13 | `theorem` | [rotation_inverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-inverse.md) | 104 | `result-track:7c7bd1c3b385c83600edb5ac80d03ea61a4f3079a6d6ec98f23066c6fc7dacc7` |
| 14 | `theorem` | [rotation_inner](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-inner.md) | 113 | `result-track:5f5b86d87e99058c1fa439abd5db855e124a3f617871c63293413a7b501dba7d` |
| 15 | `theorem` | [rotation_norm](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-norm.md) | 125 | `result-track:3c1eb2992b258c914d92368091bc8ee5b639c64fbc14b4afd5c774782e549c2e` |
| 16 | `def` | [rotationLI](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotationli.md) | 133 | `declaration-track:d7aedfacf03931b517278cc5ca63de621f3880d6707fa5271909a608336c1cf2` |
| 17 | `def` | [rotation](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation.md) | 138 | `declaration-track:2ba4c490d931cc9ee2ea5e99072a2245971f59a7bad1d4e555aa7599033b7eff` |
| 18 | `theorem` | [rotation_apply](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-apply.md) | 143 | `result-track:10481be4bb09540740441a1dfcdba5cd3ddefc53705a27638729d7b474c93a5d` |
| 19 | `theorem` | [dual_rotation_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/dual-rotation-reverse.md) | 147 | `result-track:9eede41519e9cd83677f3c76a9a64f2285419349551e46af6e4f793130f415f2` |
| 20 | `def` | [angleRotation](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation.md) | 153 | `declaration-track:d539f7be9000ec3ffb4e74817ba9ca582783d2a23ce4112ce350dc529c7699d4` |
| 21 | `theorem` | [angleRotation_apply](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-apply.md) | 157 | `result-track:e605e06ae6dd7422d8302efa6592f97b2aa1476645e44ca07c9bd80c62bd05d5` |
| 22 | `theorem` | [angleRotation_comp](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-comp.md) | 161 | `result-track:22ff28ce9c4afa481a80d2b56b1c3879f0452a7b3ec00cdb9e5129f90b774433` |
| 23 | `theorem` | [angleRotation_zero](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-zero.md) | 168 | `result-track:525ea57d32d090c5a5c7aa5bf2f37e915e57f37464304ea96e0b79d2ac94eafd` |
| 24 | `theorem` | [angleRotation_inverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-inverse.md) | 172 | `result-track:5f552317d2a47394b37d39f3fd2bd07645822b22625343b9f2e0e618ff369217` |
| 25 | `theorem` | [angleRotation_pi_div_two](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-pi-div-two.md) | 177 | `result-track:77c5cb5fc400301952e2d91bf336f3ef25c5086b129b572c97c565b31075e9e4` |
| 26 | `theorem` | [dual_angleRotation_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/dual-anglerotation-reverse.md) | 182 | `result-track:122cbdc2936de561e8b6022a6f15fbe6ac77eb7deeb098eda828ffa394b86dec` |
| 27 | `theorem` | [even_dual_inner_zero](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/even-dual-inner-zero.md) | 187 | `result-track:61c3f53689db5bdee2b129d9295d5f6fbda81eda0ed16b8c708e3117d3bea930` |
| 28 | `theorem` | [even_inner_dual_zero](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/even-inner-dual-zero.md) | 196 | `result-track:122981355782d591dcd3b78d64389a0a3e6115ea2c01e5960bf7e1b9aad93756` |
| 29 | `theorem` | [quarterTurn_even](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-even.md) | 201 | `result-track:905ffce02b2bd946466552bb18c3ea473257f2e888bd2962b3b7d468668cc8ae` |
| 30 | `theorem` | [quarterTurn_even_dual](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/quarterturn-even-dual.md) | 205 | `result-track:0a7d3b6a4d92a827749ac14c15f42aa8559c3c510754057f02be3928908f3e53` |
| 31 | `def` | [sourcePlane](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane.md) | 210 | `declaration-track:7c70a865afd441d7e9a5068801a8b64754eb05633771d07a44ac089d014b6764` |
| 32 | `theorem` | [sourcePlane_reflection](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-reflection.md) | 214 | `result-track:761845cc6efbd71ea28a616cd29f885be97403fc4f167be8cfb19b160814ac82` |
| 33 | `theorem` | [sourcePlane_duality](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-duality.md) | 219 | `result-track:fa374a22be4348d14829f3c7e8ffa86a12b7d297343715c4f1653ba320edd39d` |
| 34 | `theorem` | [sourcePlane_quarterTurn](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-quarterturn.md) | 225 | `result-track:0a6d741d2807c5e8f92924ffeeed35d7a317c60dc88beb9d7d67a7995f474586` |
| 35 | `theorem` | [sourcePlane_rotation](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-rotation.md) | 231 | `result-track:55e1ad6f688f258f3b2338728587a2292d7cdf5d3fa3db5ee0bdc5ef50f14905` |
| 36 | `theorem` | [sourcePlane_inner](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-inner.md) | 240 | `result-track:4285b6a4e4e2f7242b729132777d4c58c1f5585b4ff1a73a876a3c83b6d3ccd2` |
| 37 | `theorem` | [rotation_norm_not_signed_readout](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-norm-not-signed-readout.md) | 253 | `result-track:a4b890c20f2f4a5f4a505ee94d0078a41bb088fdd1ebf9be8d9043caa0f59a38` |
| 38 | `theorem` | [actual_source_even](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/actual-source-even.md) | 267 | `result-track:0589c909b636fddf45bee48c87cc9eef05177396ea977e702142a47b9ea84004` |
| 39 | `theorem` | [actual_source_norm_sq](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/actual-source-norm-sq.md) | 278 | `result-track:1b0dc8febe6e2069824199d737992d9e9456403b615eedbfbc4df76170c23f72` |
| 40 | `theorem` | [actual_source_exists](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/actual-source-exists.md) | 294 | `result-track:68619f7d4d4969eb4d943ab25ded6a5e1499842f0b1bfee386044a963fc778d5` |
| 41 | `theorem` | [actual_source_rotation_readout](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/actual-source-rotation-readout.md) | 311 | `result-track:b7b74cc8ed45ea1a71daeba02ad237a103fbfc846acf8186fe34834192892300` |
| 42 | `theorem` | [rotation_even_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-even-fourier-coe-ae.md) | 319 | `result-track:460afb08e64807009fc5c5d00f2476107203b9b06eb392ec05d56cf2d8b9d52c` |
| 43 | `theorem` | [rotation_source_angular_symbol](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-source-angular-symbol.md) | 343 | `result-track:574cd1947bc8687f44e210d2ef8261417d36462f09e615e5d6960523ba8a7ec3` |
| 44 | `theorem` | [rotation_equal_coefficient_negative_half](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-equal-coefficient-negative-half.md) | 351 | `result-track:a14aea2155e93771e36ecf0e47181649fd4945cb6ab8725c8c4a6895a42a9a02` |
| 45 | `theorem` | [rotation_equal_coefficient_positive_half](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-equal-coefficient-positive-half.md) | 359 | `result-track:c0b6638283643b84f35ac502aebc0f3d0f5cbb6b520b797e78f60c1103994c2c` |
| 46 | `theorem` | [rotationMap_adjoint](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotationmap-adjoint.md) | 368 | `result-track:a285cd52d7480abee22e898dfe5212d6e85c59476cd9d595b103e890b96378d0` |
| 47 | `theorem` | [rotation_symm_apply](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-symm-apply.md) | 384 | `result-track:3b89f9f366a0a5215cf1ba8ce33a728c3d30eedb2110ea639c12265db08db50f` |
| 48 | `theorem` | [rotation_translation](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-translation.md) | 390 | `result-track:bb868ae9f831a4c93c8c0fa490f54f90d10ce380c1545693af072b786795f7d0` |
| 49 | `theorem` | [reflection_quarterTurn_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/reflection-quarterturn-reverse.md) | 396 | `result-track:153d699979edb2ee937f6dda1ca01cc402d9828b92252045115a5bfa7f08c682` |
| 50 | `theorem` | [reflection_rotation_reverse](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/reflection-rotation-reverse.md) | 402 | `result-track:8efe08e74d93ae692d759b08a3c944f3f8cae4880ade205a20178606f7d305bf` |
| 51 | `theorem` | [sourcePlane_norm_sq](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-norm-sq.md) | 408 | `result-track:32345ef5487a3e9ea2a285d5dc07a7092e5320dfd5ed75eb937c68fb2d28d7a6` |
| 52 | `theorem` | [sourcePlane_reflected_inner](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/sourceplane-reflected-inner.md) | 421 | `result-track:8026ef26ef5ca32dd5a79f2e9e3bbd8412640b77d432ffef8d219ddb7aa8e5d0` |
| 53 | `theorem` | [even_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/even-fourier-coe-ae.md) | 428 | `result-track:0bd1d15a319abfcfe7189a2e600addecebdbae06ed2753d604428a8c32b80144` |
| 54 | `theorem` | [rotation_paired_fourier_mass](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-paired-fourier-mass.md) | 437 | `result-track:29b89df0a632eefa4fd5bd45a80e88aa8d605a70284d9288aebd9fc310aabbd7` |
| 55 | `theorem` | [unit_equal_coefficient_spectral_half](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/unit-equal-coefficient-spectral-half.md) | 460 | `result-track:3cdc8a83f2ba00ebb28bfbb5059889b33d4a9b6259151c8dabb105f1037f3936` |
| 56 | `theorem` | [angleRotation_mul](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-mul.md) | 467 | `result-track:df1ed3c4625f90d44c8269962de256c8d1567f5351cca2c9fe067e115110aca8` |
| 57 | `theorem` | [angleRotation_commute](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-commute.md) | 474 | `result-track:f6faaf055a2f7a6bceffd31e66d5ab58031deba335bec08e15b4862175a907f0` |
| 58 | `theorem` | [angleRotation_inv](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-inv.md) | 479 | `result-track:a1e139708852f57297d81d13e2e99c1f8151107d908614534a8d5c8666927ff4` |
| 59 | `theorem` | [angular_duality_inv](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/angular-duality-inv.md) | 486 | `result-track:7907dc8c1116e78cae8763a5323a4ba01046380e1b094160e718d3a130596707` |
| 60 | `theorem` | [angleRotation_sign_conjugation](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-sign-conjugation.md) | 495 | `result-track:9817f3eadee5b62cd0afe25479aecdc55d04977d56f87f8cae311a722b2ec478` |
| 61 | `theorem` | [angleRotation_pi](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-pi.md) | 503 | `result-track:76736a4dfe3f8890ac2177953a3cc8bf045a001d4c71da17b8f5846c5d19acee` |
| 62 | `theorem` | [angleRotation_two_pi](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-two-pi.md) | 507 | `result-track:b70b418e10bd359a6d536b1a971472d6224e11342f777018d32530be102c2ba8` |
| 63 | `theorem` | [rotation_even_source_angular_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/rotation-even-source-angular-fourier-coe-ae.md) | 511 | `result-track:968792fb5fafb2f016e768e5177e53f09732bf07acfed0e9a971f64dd6cd23ba` |
| 64 | `theorem` | [angleRotation_pi_div_four_spectral_half](../../../../MeasureAndIntegration/SourceDualRotation.lean/declarations/anglerotation-pi-div-four-spectral-half.md) | 530 | `result-track:3f43670125a860116c001abaf085e161a2e2e6cfda6e39ca8b09bdd84df0dfb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e896375cf8cae3ec10aa07129bf43f8fde1e4fee30a27ac116d1c7e2b24bb89e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
