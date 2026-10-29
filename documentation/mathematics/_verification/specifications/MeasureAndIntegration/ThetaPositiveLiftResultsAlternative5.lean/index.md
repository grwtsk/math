# Verification target: Theta Positive Lift Results Alternative5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "204e6bffeea98af5efdb01cc1bd619b790e465bd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `204e6bffeea98af5efdb01cc1bd619b790e465bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiPhiTransform` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPositiveLift` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_poly_exp_norm_le_tail](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-poly-exp-norm-le-tail.md) | 30 | `result-track:612ff33db2a2562b52c1001eca8becaab08bb49af9b363bb14c00870c69eaad1` |
| 2 | `theorem` | [thetaPhi_poly_exp_integrableOn](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-poly-exp-integrableon.md) | 71 | `result-track:ce8ab46c34baf7dc8419ce355dbf6050ce403cc133aa50b4b64af09fa6cd6b9f` |
| 3 | `theorem` | [thetaPhi_evenBasis_integrableOn](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-evenbasis-integrableon.md) | 97 | `result-track:93f4c37a7928e91cd292a7a256cb288ca1e08923c59c5bbdf1d82d47e8afb84c` |
| 4 | `def` | [thetaPhiExpMomentIntegrand](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphiexpmomentintegrand.md) | 102 | `declaration-track:bedc6a83bd76c92b92773e4cd151b25d56cc294e34ce0e8251d51173325eb8d8` |
| 5 | `def` | [thetaPhiExpMoment](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphiexpmoment.md) | 106 | `declaration-track:0f34d96683329792986ee1fd13f6ea9762d1df6608dfaad0e2b83bb0a17240de` |
| 6 | `theorem` | [continuous_thetaPhiExpMomentIntegrand](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/continuous-thetaphiexpmomentintegrand.md) | 110 | `result-track:286f3409cd4c5fe75971e5937b5491292161f84eb7b4a62f4a4786c6be868c94` |
| 7 | `theorem` | [thetaPhiExpMomentIntegrand_norm_le](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphiexpmomentintegrand-norm-le.md) | 118 | `result-track:fd8c741eebf7cb27354997cda1ed540e64bd180fd5987d831c886176d7b3b33c` |
| 8 | `theorem` | [thetaPhiExpMomentIntegrand_integrableOn](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphiexpmomentintegrand-integrableon.md) | 138 | `result-track:e5d2e27f54d82afe52f65e01b080b0b9653e0480d9b6cf35976e227affb986e2` |
| 9 | `theorem` | [hasDerivAt_thetaPhiExpMomentIntegrand](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/hasderivat-thetaphiexpmomentintegrand.md) | 146 | `result-track:0b40ab0c8512c803bc5ef2c62812ef96b46fa4711c2d0e7383726b5442805de2` |
| 10 | `theorem` | [hasDerivAt_thetaPhiExpMoment](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/hasderivat-thetaphiexpmoment.md) | 156 | `result-track:1a0adcaeada7044780d605baa205fca329db0df1a0774bbb4dea9d2d67a36abd` |
| 11 | `def` | [thetaCenteredMomentJet](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetacenteredmomentjet.md) | 183 | `declaration-track:74a4b46689b0711b6a906bee88b9e350b303c81380f145e76f5dc9bc7fbc8f41` |
| 12 | `theorem` | [hasDerivAt_thetaCenteredMomentJet](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/hasderivat-thetacenteredmomentjet.md) | 187 | `result-track:4e4e60e721f681893ea2e173e8450ac787b705bded09b61b3899bce8deb2ca81` |
| 13 | `theorem` | [iteratedDeriv_thetaCenteredMomentJet](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/iteratedderiv-thetacenteredmomentjet.md) | 196 | `result-track:8300150b28c72d59eec7e5e471e707589ed24c56512da892fde3a90ff8b41c2d` |
| 14 | `theorem` | [thetaCenteredMomentJet_even_zero](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetacenteredmomentjet-even-zero.md) | 205 | `result-track:a25c6d2901766d11d09b68003171977d4b17ca20c905459e09166b030ce1a00a` |
| 15 | `theorem` | [xi_centered_eq_thetaCenteredMomentJet](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/xi-centered-eq-thetacenteredmomentjet.md) | 215 | `result-track:3dee79dc737d890f8e6e96431aa8db878e2fa6f09d8988c79e85ec89180146b4` |
| 16 | `theorem` | [centeredXi_iteratedDeriv_even](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/centeredxi-iteratedderiv-even.md) | 234 | `result-track:07f9c290494bd2672444f67d70d2737226079ec46af2cd094353381d033b1851` |
| 17 | `theorem` | [iteratedDeriv_centeredXi_zero](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/iteratedderiv-centeredxi-zero.md) | 242 | `result-track:f5a9b09d13bd972549f0acfa1030e5ee402a2c95f0a40c89d3eac95cd8e6a591` |
| 18 | `theorem` | [iteratedDeriv_cosh_linear_zero](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/iteratedderiv-cosh-linear-zero.md) | 249 | `result-track:9ad608a0c43eb115589bf123b7f535992b312a4bea6b9dce36f0054b7c92061a` |
| 19 | `theorem` | [xi_iteratedDeriv_even_eq_thetaPhi](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/xi-iteratedderiv-even-eq-thetaphi.md) | 262 | `result-track:da36e5bde6b8a6c28509030b5c87b309355f7b724ddf85ecde62abf051d55a95` |
| 20 | `theorem` | [thetaPhi_complex_even_moment_eq](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-complex-even-moment-eq.md) | 269 | `result-track:436540bcde9a5ba3db30b9169235bacb55a3a2abeb37ef02b38e8d97ec9c9cd2` |
| 21 | `theorem` | [thetaPhi_power_integral_re](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-power-integral-re.md) | 276 | `result-track:ee2a2145d7df2de44b7c956540ebf381ff18f5fb8849e7263e932844e05aba99` |
| 22 | `theorem` | [coefficient_eq_thetaPhi_Ioi](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/coefficient-eq-thetaphi-ioi.md) | 282 | `result-track:203b87579c19dee86f6ea5d672f3d27189b681892a4fca394c64a6c90b716460` |
| 23 | `theorem` | [thetaPhi_evenBasis_integral_Ici_eq_Ioi](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetaphi-evenbasis-integral-ici-eq-ioi.md) | 298 | `result-track:07dbc74538716c65644956008edc4259236e5d65ec66d9e643055ccaf664a48b` |
| 24 | `theorem` | [thetaCoefficientFormula](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/thetacoefficientformula.md) | 305 | `result-track:0bd9414f9de5074012d151f0a659e13983438451c14aac0c767d4a21cd22e66d` |
| 25 | `theorem` | [coefficient_zero_eq_eight_integral](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/coefficient-zero-eq-eight-integral.md) | 311 | `result-track:2d3e567bdd52f48630428097804c4114f0f2bf2ef8b4fa5f05290294c0d4d93e` |
| 26 | `theorem` | [coefficient_one_eq_sixteen_integral](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/coefficient-one-eq-sixteen-integral.md) | 317 | `result-track:d100e37ef75c08a2756efe8dd4f10511069edc5cd22f745eead0e993010c57c9` |
| 27 | `theorem` | [coefficient_zero_pos](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsAlternative5.lean/declarations/coefficient-zero-pos.md) | 330 | `result-track:1ca903113983a323742bc1b142517ae730c1fce0979ce2b591873386d1057188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1135bdfe99bca137fb492863de63d359363ffce7184baf569ee209974498a108 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
