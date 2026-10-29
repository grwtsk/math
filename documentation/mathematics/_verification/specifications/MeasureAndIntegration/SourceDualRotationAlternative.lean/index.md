# Verification target: Source Dual Rotation Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "000fed530f8b8930c81dd1ec0f58c91d4a847ec9",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `000fed530f8b8930c81dd1ec0f58c91d4a847ec9`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean.json)

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
| 1 | `def` | [quarterTurn](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn.md) | 28 | `declaration-track:80c841edffff83a0898b957e03536b34b116439d4c83b654be2e9d097213bac6` |
| 2 | `theorem` | [quarterTurn_apply](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-apply.md) | 31 | `result-track:f8921e98bf014500303a77983d11b627d1358772e3b3da1eafb4da05e039a8ad` |
| 3 | `theorem` | [quarterTurn_sq](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-sq.md) | 35 | `result-track:32024abc7fa94da4368f45ba70fe0a45cdf1294861064fb0624b9c1898e60c41` |
| 4 | `theorem` | [quarterTurn_inner_skew](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-inner-skew.md) | 40 | `result-track:7dcbe1cc1df9ef63fb693c6674639e2a0dede564228601aacbad7963bc124877` |
| 5 | `def` | [quarterTurnCLM](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturnclm.md) | 47 | `declaration-track:7def0d2b26fec82d87469a1745e7c1fb9cf5b3bebd34d9628825bc52a113eb18` |
| 6 | `theorem` | [quarterTurn_adjoint](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-adjoint.md) | 51 | `result-track:3e1c35e06ba6dfa5498adca5a4c510e7c71e17774fd9d17700d8afd70139e431` |
| 7 | `theorem` | [reflection_translation_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/reflection-translation-reverse.md) | 61 | `result-track:aadf946c5cfa91d6059aa006b1f71ef13b72e8f28378f2a2562d478eb3ff4eb1` |
| 8 | `theorem` | [quarterTurn_translation_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-translation-reverse.md) | 76 | `result-track:b5795e20ac57bf00c7bb7dd14cf8f0aaf7109d09f89aa4493c934a8ef42ce3d8` |
| 9 | `theorem` | [dual_quarterTurn_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/dual-quarterturn-reverse.md) | 82 | `result-track:2f152e3d808a151e7e9e3e41873843726be93ab66ab88b816783876769f16d78` |
| 10 | `def` | [rotationMap](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotationmap.md) | 88 | `declaration-track:9ed645b2a3383efdfb6e71e155f5fc83bc3d12afc7f45968d37ae6af615742c1` |
| 11 | `theorem` | [rotationMap_apply](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotationmap-apply.md) | 92 | `result-track:50639df574f1f48227487682c9bf2a9a707a6f196dadb71c96dae7cb35e9c148` |
| 12 | `theorem` | [rotation_comp](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-comp.md) | 96 | `result-track:2f327170ab17cc6d26acf30c29cd65482c60fa979c9d61d3144d5a0fb752a4a1` |
| 13 | `theorem` | [rotation_inverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-inverse.md) | 104 | `result-track:38bb8d4ce627ac45d032569ddb628e474b2fa264ae7b38bf11088321f9f128b2` |
| 14 | `theorem` | [rotation_inner](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-inner.md) | 113 | `result-track:af4a96535da03cb1240df27d38d767aab5580a5ce3c16c6c17d35ab80750ef16` |
| 15 | `theorem` | [rotation_norm](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-norm.md) | 125 | `result-track:dd6cccf98cd1cc6ff7f642f63ea73775f6ca1e700d04a624e7c0217ec87d40e9` |
| 16 | `def` | [rotationLI](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotationli.md) | 133 | `declaration-track:7c2982c58bf066ee0c3c9ec84e1686ce293886555c4b0d5f440a329e70ad3eaa` |
| 17 | `def` | [rotation](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation.md) | 138 | `declaration-track:27527201f44574d78a3060e2cf92bf32c36173cca4b723f245b1045778e1a279` |
| 18 | `theorem` | [rotation_apply](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-apply.md) | 143 | `result-track:008bfbcaa2505a76dd54ccf49cc7bf74eb24547fe40dc6e29b810d7765bc75f2` |
| 19 | `theorem` | [dual_rotation_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/dual-rotation-reverse.md) | 147 | `result-track:2aecb1f78dd77bdbbe4587d79c351c3abcb0909a6c0c2f3762c4fadd0fbbc9d0` |
| 20 | `def` | [angleRotation](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation.md) | 153 | `declaration-track:03423559daa14c49bad71878959d8f51c0c4c1b605aafabf34923ce475054a80` |
| 21 | `theorem` | [angleRotation_apply](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-apply.md) | 157 | `result-track:1468e396d52055b02434b3ec4d1b1d6d2ce5ec4d983ce34c8342a03644bdcd99` |
| 22 | `theorem` | [angleRotation_comp](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-comp.md) | 161 | `result-track:24ce03721b77bdc24be99c452f6174dc0a01eafecbe0911717263a59e479f7aa` |
| 23 | `theorem` | [angleRotation_zero](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-zero.md) | 168 | `result-track:97049582142d7b01baabe810fd85b78198e0d3f38b3b1632149b8e9bdd5306eb` |
| 24 | `theorem` | [angleRotation_inverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-inverse.md) | 172 | `result-track:119627ca74648eb2cfc369f35bf8c8a58de5556a69d4bd68c59ed1dfc092197d` |
| 25 | `theorem` | [angleRotation_pi_div_two](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-pi-div-two.md) | 177 | `result-track:a9acd307eb03d466888c0024fa14429ab5e54118264feb4cf03239eb2db290e8` |
| 26 | `theorem` | [dual_angleRotation_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/dual-anglerotation-reverse.md) | 182 | `result-track:2921a061eb176e541b19dda4c56accc1393da5dc2dd7009a25e176f2af93a65e` |
| 27 | `theorem` | [even_dual_inner_zero](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/even-dual-inner-zero.md) | 187 | `result-track:94759cfa5d61b1ee301bd33437a541f368416cd7f5912a9cd5a203639e05924a` |
| 28 | `theorem` | [even_inner_dual_zero](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/even-inner-dual-zero.md) | 196 | `result-track:868ff5858e009ee8e1fe1c8466d9e075349bb9a62c5d808edf583af2bc4f35cd` |
| 29 | `theorem` | [quarterTurn_even](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-even.md) | 201 | `result-track:7819f5d6358805e6fa54bafbc9aafe81875e23dc347976b4f23eae2c0fdab35c` |
| 30 | `theorem` | [quarterTurn_even_dual](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/quarterturn-even-dual.md) | 205 | `result-track:3f14467950c6a002b003e86a33e6c8dbe73c30514f3413f93d1b3bd64a1f0d1d` |
| 31 | `def` | [sourcePlane](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane.md) | 210 | `declaration-track:568410060b94c70542f9a26dc574b3864bd0a7e41477c17cefdf51c93927bc2e` |
| 32 | `theorem` | [sourcePlane_reflection](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-reflection.md) | 214 | `result-track:38c2cffa7e49bf6ff2f5a1418905136af616722750590114673acbb22353bed2` |
| 33 | `theorem` | [sourcePlane_duality](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-duality.md) | 219 | `result-track:675d1f0a3eca79b23c420eb21a92df684253d3abb77fd0104a621bb3eeabfb7e` |
| 34 | `theorem` | [sourcePlane_quarterTurn](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-quarterturn.md) | 225 | `result-track:150a6cdea328a125a4b89312edb33b58f13d35cc36655c11128bcedee354fc32` |
| 35 | `theorem` | [sourcePlane_rotation](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-rotation.md) | 231 | `result-track:6abf4fdc0cdc0674758cf950386757f915dbc1131315877e9fbec76d21de4585` |
| 36 | `theorem` | [sourcePlane_inner](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-inner.md) | 240 | `result-track:895dbc9cef4dbbb1001e1c6eafa6e075e271ecb4688d037567e852f881eb9658` |
| 37 | `theorem` | [rotation_norm_not_signed_readout](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-norm-not-signed-readout.md) | 253 | `result-track:cb622a97cd50efd2935d81d23d0eea00ed02a6c4a4aa8ef6e9af00d01aac214d` |
| 38 | `theorem` | [actual_source_even](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/actual-source-even.md) | 267 | `result-track:a432167a22f84161556847b63522c3124c2cb924770a8c97cf5015eefccb6789` |
| 39 | `theorem` | [actual_source_norm_sq](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/actual-source-norm-sq.md) | 278 | `result-track:c79a44a9f7db726db6f91021486ec8780d367b0f7a698ad85c6d62a41282998b` |
| 40 | `theorem` | [actual_source_exists](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/actual-source-exists.md) | 294 | `result-track:56fa745eb09ff31b56797de700fc35c3a0d7f08425c1b5c1f5f86de430b47162` |
| 41 | `theorem` | [actual_source_rotation_readout](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/actual-source-rotation-readout.md) | 311 | `result-track:0a802d2122c35766a99f1e52b9ef8317be13ccb8c7ad17290aec10f644c01834` |
| 42 | `theorem` | [rotation_even_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-even-fourier-coe-ae.md) | 319 | `result-track:4ee01d41a4736844ddaafe8a0da360a04108391e209c6487ecdf5424931a40df` |
| 43 | `theorem` | [rotation_source_angular_symbol](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-source-angular-symbol.md) | 343 | `result-track:364243beb5461eea9dd3da8ecc25def84a8afb1c977ef21a0ba20f6be31a563f` |
| 44 | `theorem` | [rotation_equal_coefficient_negative_half](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-equal-coefficient-negative-half.md) | 351 | `result-track:00c07d3f0a0c72804a19f0c274872ce7e388592f374b2a0ab60cd85c2519589e` |
| 45 | `theorem` | [rotation_equal_coefficient_positive_half](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-equal-coefficient-positive-half.md) | 359 | `result-track:a77dd5dde3c24a3548ef778cd78a37c177f2e66506768679587144d973b98fbd` |
| 46 | `theorem` | [rotationMap_adjoint](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotationmap-adjoint.md) | 368 | `result-track:9644acf1839da14dfb588365d3fa68bb92dbb811736a75f4f1d42afcd8e22510` |
| 47 | `theorem` | [rotation_symm_apply](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-symm-apply.md) | 384 | `result-track:d88d4d1b8a40a502323b8d1a182ef91b09a6b544b7b0a875f3ac18bcbd95807a` |
| 48 | `theorem` | [rotation_translation](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-translation.md) | 390 | `result-track:0c490669451b0a361ce504f31580b9ec95f89b87f0336927f9654b9472285cf4` |
| 49 | `theorem` | [reflection_quarterTurn_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/reflection-quarterturn-reverse.md) | 396 | `result-track:4e491da00a678b2a2743b2c69cc46f7dddde1b1d68f3329b31c92c6ebab2a55c` |
| 50 | `theorem` | [reflection_rotation_reverse](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/reflection-rotation-reverse.md) | 402 | `result-track:d0f27bd7d4e9e55876e4e5211d5d4421ee3a72d643c1b394a23bf4fb0a6a9519` |
| 51 | `theorem` | [sourcePlane_norm_sq](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-norm-sq.md) | 408 | `result-track:f205e862b4c78bccef0df23040473ab8ab5e6c066a2cef5fb2b62b75a2e76b4f` |
| 52 | `theorem` | [sourcePlane_reflected_inner](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/sourceplane-reflected-inner.md) | 421 | `result-track:867cc8c13347b6f5c7e3578bf4b75b98cf1475e800f4dd006df76da1edd7a7ee` |
| 53 | `theorem` | [even_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/even-fourier-coe-ae.md) | 428 | `result-track:d5f393c4b0c59a4130ec162fb3bba63fdd38f07108b58bbfb8f6227b3bc9c1fa` |
| 54 | `theorem` | [rotation_paired_fourier_mass](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-paired-fourier-mass.md) | 437 | `result-track:108abd1c83ce15cb67029287c38870e4befb490a2a83fd4f46cdd01ca29dac29` |
| 55 | `theorem` | [unit_equal_coefficient_spectral_half](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/unit-equal-coefficient-spectral-half.md) | 460 | `result-track:e0c694f467e2d97271e19e55620775ac2c8cf44ef19415e9b55960a54d4b9242` |
| 56 | `theorem` | [angleRotation_mul](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-mul.md) | 467 | `result-track:2dcbe75e6bf3a991aa5597702e9219160054aa8365ef5135240c99e2ad541b12` |
| 57 | `theorem` | [angleRotation_commute](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-commute.md) | 474 | `result-track:18683510cebe03fed6ed1c19ac985bbeb6b6024e4ef0e378130b4db1e2d6c83b` |
| 58 | `theorem` | [angleRotation_inv](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-inv.md) | 479 | `result-track:cc663c1dd1a0e1a9e39120a34e20a747d83b1a6edd32dbd118fdb0138f28cf13` |
| 59 | `theorem` | [angular_duality_inv](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/angular-duality-inv.md) | 486 | `result-track:920da28e82193264d4c678a5a28f472c330ba7147e76d467dab9eabc1e158858` |
| 60 | `theorem` | [angleRotation_sign_conjugation](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-sign-conjugation.md) | 495 | `result-track:373a49a12116a1550ff7da35412d42da7602131e88f7754d57af65963446e0bb` |
| 61 | `theorem` | [angleRotation_pi](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-pi.md) | 503 | `result-track:e9aa6abd361592b7cec073cb6437d36bfe6ac620cc7c650fd784411273abf992` |
| 62 | `theorem` | [angleRotation_two_pi](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/anglerotation-two-pi.md) | 507 | `result-track:efb06bc8abfcdce4995cbde03cc8443a8c3695d2995c771c20c597fe9a2341d2` |
| 63 | `theorem` | [rotation_even_source_angular_fourier_coe_ae](../../../../MeasureAndIntegration/SourceDualRotationAlternative.lean/declarations/rotation-even-source-angular-fourier-coe-ae.md) | 511 | `result-track:69bb57b1c294dce777e0314d7d725a1b3aaa3b85d53dcd6df11f38f35a324eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f2e253a0e4feee48f12fe5871ad7c4860c7a28c794ab09cd5b29332102b782d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant45adf57012d8f97243dcdf165542bfec153832302db0815659ee5f8c0fa0b380.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
