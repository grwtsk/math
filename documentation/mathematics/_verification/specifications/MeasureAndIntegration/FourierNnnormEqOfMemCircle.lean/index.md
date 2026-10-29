# Verification target: Fourier Nnnorm Eq Of Mem Circle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e3f24af43b78dfe109a344c5517956c1cd4fbfe",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant8d53e47135861fd5afaa2ff273737e09353dc9ae0ba8b6875baa16f3a167b1bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e3f24af43b78dfe109a344c5517956c1cd4fbfe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant8d53e47135861fd5afaa2ff273737e09353dc9ae0ba8b6875baa16f3a167b1bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Fourier/Variant8d53e47135861fd5afaa2ff273737e09353dc9ae0ba8b6875baa16f3a167b1bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Sobolev` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/instance.md) | 24 | `declaration-track:7743071b951516a5e096e10482480173b7b83de0af55fe5587d7bef0921ce623` |
| 2 | `theorem` | [nnnorm_eq_of_mem_circle](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/nnnorm-eq-of-mem-circle.md) | 29 | `result-track:613852ee0138d2d079e8f6cf98d03a6731b3256abddf059ca1d372a657baacde` |
| 3 | `theorem` | [nnnorm_circle_smul](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/nnnorm-circle-smul.md) | 32 | `result-track:53aba7fefe19eba7c533844b05e5d55016ad3f5e25e45db92be87c3055c5c7dc` |
| 4 | `def` | [e](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/e.md) | 35 | `declaration-track:a45b7772a6aab1d064a3c90c889ac1add2bd4272f5e5f50cf29c38d9d2f5a717` |
| 5 | `lemma` | [e_apply](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/e-apply.md) | 40 | `result-track:150122c5ffbbc0ba52d22234746ec67633eb74289f0980c29fb446a3e8ee704d` |
| 6 | `theorem` | [hasDerivAt_e](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/hasderivat-e.md) | 42 | `result-track:21c0f5d062ea5bed4ed0cb4735fda00d79398493606284fef1a6cf67687a2349` |
| 7 | `lemma` | [fourierIntegral_deriv_aux2](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/fourierintegral-deriv-aux2.md) | 49 | `result-track:d359089689a678134c728be11e310844782b7f768009a1ade2d1ee6371f12b42` |
| 8 | `lemma` | [F_neg](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/f-neg.md) | 53 | `result-track:a61db062e7a2eebdc56a80ca2ca1b712cf47a38942479ffd8dde58f2cd4d73fb` |
| 9 | `lemma` | [F_add](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/f-add.md) | 56 | `result-track:d69379c6f06907b564569218a3dc285cc24e9cf9df457c049bb4fb612f558853` |
| 10 | `lemma` | [F_sub](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/f-sub.md) | 62 | `result-track:df011adf0fb5403acd06cc5a8d1190175377fc99962d6364de79304edab22f83` |
| 11 | `lemma` | [F_mul](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/f-mul.md) | 66 | `result-track:49ee9c58fdcff668b3a82235cc0f80f730c6b14412d15c32003c50705f24ac03` |
| 12 | `theorem` | [fourierIntegral_self_add_deriv_deriv](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/fourierintegral-self-add-deriv-deriv.md) | 72 | `result-track:61da0a69b2c2e286baa42041a0b21a545198e0200906cca5e3b87ab8eafe25ed` |
| 13 | `lemma` | [deriv_ofReal](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/deriv-ofreal.md) | 82 | `result-track:907d377fc168b1e96301e5bb73e37ac178426527d3b3166ff9999cf0dd1ea320` |
| 14 | `lemma` | [tendsto_intervalIntegral_zero_of_uniform_norm_bound](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/tendsto-intervalintegral-zero-of-uniform-norm-bound.md) | 87 | `result-track:4109e85eb507887f9ffa7d5514ff94fbeb3d332ef100d6937ddcdfccb516aa48` |
| 15 | `lemma` | [tendsto_const_mul_log_add_two_div_add_two_atTop](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/tendsto-const-mul-log-add-two-div-add-two-attop.md) | 98 | `result-track:40b45948a8fd8780c8ee00489b86955537ec88dbe461cab398d9013c5137d41f` |
| 16 | `lemma` | [norm_fourier_le_integral_deriv_div](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/norm-fourier-le-integral-deriv-div.md) | 111 | `result-track:ef3d39b4116fe3e9541b270ba823053946aa1d9539ba1e78fe8553bec3ffb031` |
| 17 | `lemma` | [norm_oscillatory_integral_le_integral_deriv_div](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/norm-oscillatory-integral-le-integral-deriv-div.md) | 140 | `result-track:e56f9499f6050ed106b36dd3cf2dff76c2d8cfc68fd87d528c0fa49ec5a28cdb` |
| 18 | `lemma` | [norm_oscillatory_integral_le_integral_deriv_div_abs](../../../../MeasureAndIntegration/FourierNnnormEqOfMemCircle.lean/declarations/norm-oscillatory-integral-le-integral-deriv-div-abs.md) | 172 | `result-track:3fb5480a0e73e63a4e606ac67380443a371f1511e95f92ecf1c1b180d52d478e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=277645ed3d82285e8adc49906fca1711d161a7b82193c7a0483e7217f5dde8bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant8d53e47135861fd5afaa2ff273737e09353dc9ae0ba8b6875baa16f3a167b1bc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Fourier/Variant8d53e47135861fd5afaa2ff273737e09353dc9ae0ba8b6875baa16f3a167b1bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
