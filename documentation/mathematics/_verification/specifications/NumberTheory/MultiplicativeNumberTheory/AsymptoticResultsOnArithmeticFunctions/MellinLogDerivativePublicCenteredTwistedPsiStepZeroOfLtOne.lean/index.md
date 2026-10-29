# Verification target: Mellin Log Derivative Public Centered Twisted Psi Step Zero Of Lt One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b0fcf7d64749973a5fb5d946954d9abe24d966`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep.md) | 42 | `declaration-track:c407f9216a520b862ceb3ece2e52948b2760335c97543c4ae29cf7aec5b1b65c` |
| 2 | `theorem` | [centeredTwistedPsiStep_zero_of_lt_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-zero-of-lt-one.md) | 50 | `result-track:a22d5961613c8ae4196b98231a4e7f9fc4a8114dfc593f013525df92170e5a12` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_of_one_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eq-of-one-le.md) | 59 | `result-track:106e05a969684e45b9fd2f7a178cebd554fbe5848eff9138b7ed23a186b7c61a` |
| 4 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-natcast.md) | 67 | `result-track:6630472b379fc90df98770bd3105d1ac078fa9f30899639ff79a8bb4b65567c9` |
| 5 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eq-floor-add-error.md) | 82 | `result-track:e8347eb67c7034188719c34f8947596cfdefa48eac8060ca75016f746367ae91` |
| 6 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/norm-dirichletprincipalindicator-le-one.md) | 92 | `result-track:93a6a1e4de2393d89f306bc20c6f3a48563c66c5d55588e8af2be213febbcd21` |
| 7 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-isbigo-rpow.md) | 104 | `result-track:3cc6010a5546fefea8ac450671d7ec765b801b7ade4e812fae3924b5c2c77679` |
| 8 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-locallyintegrable.md) | 157 | `result-track:70e8b8260ab0b99a9b88ff86576710bca41c5bfa9a1cacb7c4b7e77e63741be4` |
| 9 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero.md) | 196 | `result-track:de5991f6d59abdb244aad43e0b876703ffe6a52c307f689ab43c1c22bfbeefb0` |
| 10 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsistep-isbigo-zero-rpow.md) | 206 | `result-track:2aa5f63d7515090946688bf1ae623f69e3a73954b70a55c875e47c51551824f9` |
| 11 | `def` | [centeredTwistedPsiMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin.md) | 217 | `declaration-track:91f772e3085013100ce4a2c9bcc6a2c6b6aa8194c0baee9bb02cbf4323944d21` |
| 12 | `theorem` | [centeredTwistedPsiMellin_eq_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-eq-integral.md) | 226 | `result-track:44c80f4b04d77bb85b40c1175eec315ba4b1e4a8c14f8ff63b4f955fdf3d15ad` |
| 13 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/differentiableat-centeredtwistedpsimellin.md) | 250 | `result-track:d45a2af277108cf8c8071f3298df3b52ee9ce28a462f842ae964dd334a6c7376` |
| 14 | `theorem` | [centeredPsiMellin_differentiable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredpsimellin-differentiable.md) | 282 | `result-track:416f166f0df50d0a2e2709e67d3f9da7a03cc67d7faf7e20ae66c2221b3b3b14` |
| 15 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedvonmangoldtnormpartialsums-isbigo.md) | 290 | `result-track:d09947b8be2e674685bae905119950283303a549a6f888305c89f4508b606b82` |
| 16 | `def` | [uncenteredTwistedPsiStep](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/uncenteredtwistedpsistep.md) | 322 | `declaration-track:9dbd4a86865bd5d05894df5b63a54fdbec200d9a7c90e052a97eb8a798ddb20b` |
| 17 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedvonmangoldtlseries-eq-uncenteredmellin.md) | 326 | `result-track:2cc8b9d49f25cb8352ce70e10b8eb0323e6decafba30346f702ffb3ce1d5549f` |
| 18 | `theorem` | [twistedPsi_isBigO_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedpsi-isbigo-one.md) | 354 | `result-track:7ce664bb2949756080bff976bf7418ec8b96d1740d94a77bf17f9543d86a7f98` |
| 19 | `theorem` | [twistedPsiKernel_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/twistedpsikernel-integrable.md) | 363 | `result-track:ef81eb5cf53dffe8e0952e6364a7ea99ad50acfc37ed4d6f35dfb31c634bf3bf` |
| 20 | `theorem` | [principalMellinKernel_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/principalmellinkernel-integrable.md) | 426 | `result-track:18e4f07df7cfa69807e07992d1a85da76ce61f3e65dcf0ed816407538d019d65` |
| 21 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-eq-lseries-sub-principal.md) | 455 | `result-track:f4bc99b7fd9c3237c8761e49a8fd0f64026c749a6613111b794e21f28d2a7671` |
| 22 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo.md) | 560 | `result-track:1754b2a089d427b730152ab46e6067ef557057bf12aa47736435bc49b248c9f3` |
| 23 | `def` | [criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/criticalrighthalfplane.md) | 594 | `declaration-track:c8251dc657786791436258f5f54e4796ea6fb1877ff00e68ed7a3ea1d798d393` |
| 24 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/isopen-criticalrighthalfplane.md) | 598 | `result-track:0b0c23a9e302e969101ef4e967e18db84d5992769716695a140c85f16cc80709` |
| 25 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/ispreconnected-criticalrighthalfplane.md) | 602 | `result-track:f1cd81cce6362b1d601f26cb64be0634960cb28fd713b85f2ae5ad508cda82e4` |
| 26 | `structure` | [MellinLogDerivativeSquare](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare.md) | 615 | `declaration-track:083bd6a68015ea20a62311429043a662b9f486e576fbdf7c2714521a36062dfd` |
| 27 | `def` | [canonicalMellinLogDerivativeSquare](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/canonicalmellinlogderivativesquare.md) | 636 | `declaration-track:6dedbab27c44eb22ab16204d777af5a9ea4ecf9971d2f2af47cf0ce536003f51` |
| 28 | `def` | [MellinLogDerivativeSquare.residual](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual.md) | 649 | `declaration-track:11482dd560fe4e1f987105c4c510e8a7aee9951db65ae2d5f565d227a90510cc` |
| 29 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-differentiableon-residual.md) | 656 | `result-track:6df5bcc14e3038e8049e2e487b3b12ffcab2ea7d34b004cbe83edc9e65865de0` |
| 30 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re.md) | 671 | `result-track:6e53ddd12f50714f08bff10fe71e769952e41d409bda8088de36bcb10779abd9` |
| 31 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/mellinlogderivativesquare-residual-eq-zero.md) | 684 | `result-track:df5a7dacb6541e99702f8f2eb66c3dd53587ebe34b57418fd4925b35b905b50f` |
| 32 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic.md) | 712 | `result-track:6dfa51c6dd0b351ab5e20e1e83e2593d4611f41f96783d8ac47e5363888386ba` |
| 33 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/poleremovedl-nowherezero-righthalfplane.md) | 763 | `result-track:c8a845a4ba2840461316f2a8041011482f49ca8894a025b138599c08326cae63` |
| 34 | `theorem` | [LFunction_zeroFree_rightHalfPlane](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublicCenteredTwistedPsiStepZeroOfLtOne.lean/declarations/lfunction-zerofree-righthalfplane.md) | 805 | `result-track:224c9b18f26f714f0da4759042454c45f633f9cda01efaaf8954145aa1a907cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=907d12396be4d68579a106e5f34ababb53273c43c67121289e94b2f60a425141 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
