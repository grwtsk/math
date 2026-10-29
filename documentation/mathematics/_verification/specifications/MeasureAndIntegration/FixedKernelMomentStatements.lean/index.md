# Verification target: Fixed Kernel Moment Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33c4819098a09041062ef80ad7a9d717c31571bb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33c4819098a09041062ef80ad7a9d717c31571bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample.md) | 18 | `declaration-track:d4ff3acf741a0f54768773340592deedd07813c22b5521048df63fc4c76e859d` |
| 2 | `def` | [sampleDerivativeProfile](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/samplederivativeprofile.md) | 21 | `declaration-track:0dae613960a6514ae34f167719e03dfb26bd51d4c1bf09058254b580fc458616` |
| 3 | `theorem` | [v_diff](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/v-diff.md) | 23 | `result-track:5705dd5630e794419f78e20df03881a008402b6529f57b351bc687ace51e190d` |
| 4 | `theorem` | [v_cont](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/v-cont.md) | 26 | `result-track:e861736c0e866c0480063ed5d224588543a1e81e836dc684626660e3ad2d6aa5` |
| 5 | `theorem` | [profile_cont](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/profile-cont.md) | 28 | `result-track:ac2e477242d88f00db8b3cc661cddc0208ac3998066d1d3e0d770cdd1af0e0f7` |
| 6 | `theorem` | [profile_compact](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/profile-compact.md) | 32 | `result-track:13f7a5347268f6182efe35d7642dbe7d9a0c2fdffa694549c2e5b1d356355629` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-hasderivat.md) | 40 | `result-track:ba1c0730bbfda87073ddcfbd4f34ce9be02321466cd9de497893e6bb0ff82efc` |
| 8 | `theorem` | [logSample_eq](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-eq.md) | 50 | `result-track:6aff2ba2a76998925a333d16c358474508f915b30b96034a6c2f45fcfb635868` |
| 9 | `theorem` | [logSample_exp](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-exp.md) | 55 | `result-track:b9f1158569b0a3987ecf9e12f7ce1d0a574b6e1a981473cf5132eef33c21e24f` |
| 10 | `theorem` | [translated_compact](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/translated-compact.md) | 62 | `result-track:0c73887b4bff7f1e79079020ff578b1047dc2d7fa0bd0ff76d8f9fa336cddcae` |
| 11 | `theorem` | [logSample_integrableOn](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-integrableon.md) | 69 | `result-track:4dee20ecf296d9454fc5af3abfe21b1f6af19b7db11a42980adcb2eef1c77c8c` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-deriv-exp.md) | 80 | `result-track:c4ae761836c937317f901e0d300db3ed10030b77ff5ce2a6a6e338d9a09a6dc8` |
| 13 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/derivativebudget.md) | 88 | `declaration-track:0bb6c6672d7fe6d055e8746ffa0bcfd471706bae68b63f552511eec0745eb37d` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/derivativebudget-integrable.md) | 91 | `result-track:1a674f530560dc70fe238b7f370dbcecf151eec5d1410dedda684cb40c39626d` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/derivativebudget-nonneg.md) | 97 | `result-track:fb4d421a585a1c5814f3a774c209b9dab033fa81daff34c2fe701357b417f8bf` |
| 16 | `theorem` | [derivative_translate](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/derivative-translate.md) | 100 | `result-track:d04c5ef910f8cf6fcdc2533281fe4475679f7af688d8deaf892eb6ceb229492a` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-deriv-integrableon.md) | 109 | `result-track:a37eaf59f893e2b3c3df2b001b28ab5efa6c2b9c950f4a74c7eb3a9668df8fe7` |
| 18 | `theorem` | [logSample_variation_le](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-variation-le.md) | 127 | `result-track:dd493af98bd09673b0fc29b7fa0ac0b6fa4900e3ab3a25a74a95ff28f6c7c6da` |
| 19 | `theorem` | [weighted_translate](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/weighted-translate.md) | 159 | `result-track:6fe8383a60eb15e45bd59b113741df9cc6ddf996e161e5716d571b84ef1c3138` |
| 20 | `theorem` | [weighted_translated_integrable](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/weighted-translated-integrable.md) | 168 | `result-track:80fa6486af34f6da18fbe65f6e9c5b56ddf3f859be874e5ed943941dc8728769` |
| 21 | `theorem` | [weighted_translated_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/weighted-translated-integral-zero.md) | 175 | `result-track:f63bc6e2e2be57aee1c9c2a3dd236666ebe332dcf4e9ec4143d81f6cf3dfd4de` |
| 22 | `theorem` | [logSample_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-integral-zero.md) | 183 | `result-track:8fa064430a161426c523bad110f9f80b817bfc259abb46819e38e8897cb7cf4e` |
| 23 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/logsample-integrableon-and-integral-zero.md) | 197 | `result-track:d60f573efb8951c574ab7c76e29d6a3ff4cd4030d3e3063d97c4901fc5898efb` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/example-source-edition-2.md) | 210 | `declaration-track:30b5b1bcd8afa69b2e5b419ab8bd43c28aee3775f061a5588396846bb4b9735a` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/example-source-edition-3.md) | 214 | `declaration-track:8cb6d93bec45b41e652515e6bba6ea9344fe776590a14c5a2462c8feb6040f50` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/example.md) | 219 | `declaration-track:084fba4178c19398beaf4bfc60b823fc363006b3b54e115bc1ef1e388d8f2d52` |
| 27 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FixedKernelMomentStatements.lean/declarations/example-source-edition-4.md) | 224 | `declaration-track:deb063efbd337d80f652923fc7aae7ad3fd77cc7f7830b1c0beede50b176b1a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c44013d4f8a51c680bf0bb9b85aa3d2a89fef9b0708dcc0d8b0a1cd234cda9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
