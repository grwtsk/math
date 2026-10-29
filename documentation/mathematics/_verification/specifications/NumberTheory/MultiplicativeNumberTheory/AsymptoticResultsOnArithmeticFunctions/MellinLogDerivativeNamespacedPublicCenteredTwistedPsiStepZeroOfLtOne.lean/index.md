# Verification target: Mellin Log Derivative Namespaced Public Centered Twisted Psi Step Zero Of Lt One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6000020806bd4e60fb81b36430dd648e001b3fb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6000020806bd4e60fb81b36430dd648e001b3fb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep.md) | 50 | `declaration-track:9cff5e341b014e200feb654584ad3da784db132911c128a9ecb6e79d1d7a96a7` |
| 2 | `theorem` | [centeredTwistedPsiStep_zero_of_lt_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-zero-of-lt-one.md) | 58 | `result-track:12c9f8bfde1a0028b432956337ad5a5f7e0e18a93f131ac226e7f9ec502f4b2b` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_of_one_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eq-of-one-le.md) | 67 | `result-track:4eb1176520d3ed98dfe1fbf220ec737795cc3f7f25ab2ff722de49dbe2985533` |
| 4 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-natcast.md) | 75 | `result-track:76882542aada228141b17d768237f568b3d2169f505ffe94de3800518348debf` |
| 5 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eq-floor-add-error.md) | 90 | `result-track:4aac7775a4e5858a4c6eb57d76b70e9f47a70de0696e9e4a6c189e82f2f4dd12` |
| 6 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/norm-dirichletprincipalindicator-le-one.md) | 100 | `result-track:fb88532d8ba755d836f171806b0fc469fcd6c72c163c9be3b54e453a9034899c` |
| 7 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-isbigo-rpow.md) | 112 | `result-track:c93d5c36a51975be29aacb1d7099213a10cb898ca85b1f4ba4630b9eb09c4dc6` |
| 8 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-locallyintegrable.md) | 165 | `result-track:2cb09d6cdd10ee7cb7b12fc27dc67fd25217dfdde337130656f2e47706d71c59` |
| 9 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero.md) | 204 | `result-track:68e0f8a163eb94cf922ca094e8b8b5fc64bb2dd1dbd61d2320169b2876098645` |
| 10 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-isbigo-zero-rpow.md) | 214 | `result-track:0317e7fa2b43c94f4dfa99eee203c36fc5e68fc24cc2a80cf2124ca2976b5689` |
| 11 | `def` | [centeredTwistedPsiMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin.md) | 225 | `declaration-track:f44e4201176159e4c248a731c3f0ed05e96c9373cb6b775229ae8403e8b501da` |
| 12 | `theorem` | [centeredTwistedPsiMellin_eq_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-eq-integral.md) | 234 | `result-track:5efe78529d5443d95aa83fea9d014a1f8e954f66c1087085e687fd3c6143ee2a` |
| 13 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/differentiableat-centeredtwistedpsimellin.md) | 258 | `result-track:4adae193fd91f6f4f03dc3beda7a19bef162c0052ed9379b272ca9739a032bca` |
| 14 | `theorem` | [centeredPsiMellin_differentiable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredpsimellin-differentiable.md) | 290 | `result-track:ec0a4ddb8706c2f2744a883e3c0cf469e6295b3fc512fd59f0a24bb2da4690c9` |
| 15 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedvonmangoldtnormpartialsums-isbigo.md) | 298 | `result-track:3b73bce8a882611dc23aa8d6755c9aad3d276c460f4c5a8ad45c92df3495d720` |
| 16 | `def` | [uncenteredTwistedPsiStep](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/uncenteredtwistedpsistep.md) | 330 | `declaration-track:9becc4af678c25767ee8b96684a3761e03b51b9f2b493a92b1c1861f66c1ffe3` |
| 17 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedvonmangoldtlseries-eq-uncenteredmellin.md) | 334 | `result-track:5da6471cf8bbd285073683d4f23acb7d432912ef678ba3f8b99f579ce8a68626` |
| 18 | `theorem` | [twistedPsi_isBigO_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedpsi-isbigo-one.md) | 362 | `result-track:625d9c265c5b750b6e460fb5cb3e0b4301178275db8d0a66a4b1d49c4122003f` |
| 19 | `theorem` | [twistedPsiKernel_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedpsikernel-integrable.md) | 371 | `result-track:5a1b451eee1a43a06ca2482f1897ec42bdf839b4ae321e89b6f1ccc7a7884922` |
| 20 | `theorem` | [principalMellinKernel_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/principalmellinkernel-integrable.md) | 434 | `result-track:e8841ace8679f2cbf0b939b50afb1e37dbff5fe6df699098b5069d8c10b02fcd` |
| 21 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-eq-lseries-sub-principal.md) | 463 | `result-track:566987cb4fae65ec4ee9c537543852f6e7c06ed49ef67769d9ac0dc369763ff0` |
| 22 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo.md) | 568 | `result-track:137b028c3355351993a0f29fcb425991989ece055eecac40c18c8ff948ec01de` |
| 23 | `def` | [criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/criticalrighthalfplane.md) | 602 | `declaration-track:d50f0c0e1abbbfaf0b4b8a91b6378ac86678c7a423156da40fc4f2d85a8158a9` |
| 24 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/isopen-criticalrighthalfplane.md) | 606 | `result-track:78dca003b64d44d5b30d0a10aa9a750bd2d027ec9812566b64cd3f8af1f9bf0a` |
| 25 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/ispreconnected-criticalrighthalfplane.md) | 610 | `result-track:649e10614425104eae59112577054fd3535f5d1477541fd57d3e2512aa2decaa` |
| 26 | `structure` | [MellinLogDerivativeSquare](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare.md) | 623 | `declaration-track:785df3add728aaa5d4a889c9ea3cf91589cca39c23b4a7001502dcc61754ff34` |
| 27 | `def` | [canonicalMellinLogDerivativeSquare](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/canonicalmellinlogderivativesquare.md) | 644 | `declaration-track:8f3ca08a96183f8f4591dcd3c73c10456367d48ea51cf72efdc74489ad441477` |
| 28 | `def` | [MellinLogDerivativeSquare.residual](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual.md) | 657 | `declaration-track:d4d8a85970b4e1af3b80b52399833588fffa3cf37f7fb6980a5537043b948f0a` |
| 29 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-differentiableon-residual.md) | 664 | `result-track:54d427fd93c37dc1ade1af01dac04a1bf684b13250c49d412a87f796efafc20b` |
| 30 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re.md) | 679 | `result-track:c13368d8f4ca31399ec57eb08fb5126a6769e4fb9e87940ff43cdcb0918cdb93` |
| 31 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual-eq-zero.md) | 692 | `result-track:cb67bd28a51c0129b4447fcac6c86d12506d921ad6edb4c800716b5b0f2699b1` |
| 32 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic.md) | 720 | `result-track:fbf7d2686f66c7c10541891913c939fbdd56e50f12194eb5cc319e7b35055366` |
| 33 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/poleremovedl-nowherezero-righthalfplane.md) | 771 | `result-track:b4fcf23f5cb67a2b6c306e3046c60926696775dad421cc5b7510790ea6c21ae9` |
| 34 | `theorem` | [LFunction_zeroFree_rightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/lfunction-zerofree-righthalfplane.md) | 813 | `result-track:f7a39f4e6e03861be377a27308182f8331f10394865751f0520ddeedc7873252` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26157d279f5fa150c6595d7d37eb85e58f67855c804bb26e0cc2ac4f7a670c8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
