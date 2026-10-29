# Verification target: Fixed Source Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c2c661a43aef27b50627acad91c3d3a2909dbb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedSourceKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedSourceKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c2c661a43aef27b50627acad91c3d3a2909dbb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean.json)

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
| 1 | `def` | [logSample](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample.md) | 18 | `declaration-track:6bd93dd6913dc6a59528979804cee2f6f92f85180156c27c28153dbce1e508c0` |
| 2 | `def` | [sampleDerivativeProfile](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/samplederivativeprofile.md) | 21 | `declaration-track:e0055dfb74d96470b2935830bbd74aa4a089fdf6c0abd7a32583ae0b7b973f0d` |
| 3 | `theorem` | [v_diff](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/v-diff.md) | 23 | `result-track:bf74f02aa842c3fdbfbd0130d6bd3c55e56322ea2b12555d61ed54ff6317ba37` |
| 4 | `theorem` | [v_cont](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/v-cont.md) | 26 | `result-track:6d12b161609e2da647ff3383d096549c393be2567d59217f7300829c278894a6` |
| 5 | `theorem` | [profile_cont](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/profile-cont.md) | 28 | `result-track:ac56754574050877336281c758e1e9416b50ffaedd98004eea47c568b1861641` |
| 6 | `theorem` | [profile_compact](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/profile-compact.md) | 32 | `result-track:07ae4683c36a49c48ffa17fd3d8af8dadfb00e1d81d60948dee5b3b45266eed7` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-hasderivat.md) | 40 | `result-track:9f2b9c7b5d5a4fe16e0c9377c365ee9b3aae2e79abdc3bba2ced1cc7dc684be3` |
| 8 | `theorem` | [logSample_eq](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-eq.md) | 50 | `result-track:266c61660518e65b507966a10bf51544ca8dbfbcdf3878acd5bd39279fdb9fad` |
| 9 | `theorem` | [logSample_exp](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-exp.md) | 55 | `result-track:2c3828523d7085478b8c150b7e0f3f09030d4ef1aa7786af87cbf4317bb35a6c` |
| 10 | `theorem` | [translated_compact](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/translated-compact.md) | 62 | `result-track:c5ffcb10755592f2da66b8edba675c23fb2a9dc0e91dd3a98ae35844e4c9c1bc` |
| 11 | `theorem` | [logSample_integrableOn](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-integrableon.md) | 69 | `result-track:985750f57311df7ad761a91b1b813989a86cb0a8c13e9e3b269c619789fefe19` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-deriv-exp.md) | 80 | `result-track:b05f5d5f4daabc06cf07cf14a6492a0265a155735e3c5d5737ebe11739782a50` |
| 13 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/derivativebudget.md) | 88 | `declaration-track:4bcfe812a749c4e3c9453796087698cd46af63222f2a87bc428f0fe3337c6c89` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/derivativebudget-integrable.md) | 91 | `result-track:8175fc4b493f7a68fa18540bc4576da1bc452ea383e78acd023ffdad808ab46e` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/derivativebudget-nonneg.md) | 97 | `result-track:c79f5fa3484369a72750977a31820229b25eebc1a7cecaa53a23a9338310a0c5` |
| 16 | `theorem` | [derivative_translate](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/derivative-translate.md) | 100 | `result-track:05f1c302ee6c9c0620b403ab31e96050f8a0acc1fe7fd56f894c66bd4d53443e` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-deriv-integrableon.md) | 109 | `result-track:7cd87a59560d8995727c959fc62a292ad78b63a31c112d98e1e0bf1169e8bb6e` |
| 18 | `theorem` | [logSample_variation_le](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-variation-le.md) | 127 | `result-track:3c5d0c11276c4bc54d87d539a317a25f9a21199691abdad098f9dfbd9fab6111` |
| 19 | `theorem` | [logSample_zero_of_time_le_log](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-zero-of-time-le-log.md) | 146 | `result-track:6e6d223bbaf104089e964f0e60ff78c563b7ebfe07018d353be6b5db73a31d41` |
| 20 | `theorem` | [logSample_zero_of_exp_le](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/logsample-zero-of-exp-le.md) | 153 | `result-track:73e9388a19c0b89451fee90efd7b0c05fc0c6a1475dda0a04a68e885879abbfc` |
| 21 | `def` | [fixedKernel](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel.md) | 159 | `declaration-track:1cc9b667d21f2b5e02955ec66f0f8d8e9262c94149697bacd3daa2ec61405322` |
| 22 | `theorem` | [fixedKernel_eq_sum](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-eq-sum.md) | 162 | `result-track:f8d9dc37b017e4acfe3eda0d0ea8c8f78f6cf62a26511d484b7d39f6cfc45e65` |
| 23 | `theorem` | [fixedKernel_summable](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-summable.md) | 172 | `result-track:b4eabe162c08af1b5574030684cd6cb3dc2a6b80d99920fe986f4adee83f578d` |
| 24 | `theorem` | [fixedKernel_eq_literal](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-eq-literal.md) | 184 | `result-track:b9bb01e308375939b57e1358193ae48f5919e0699ce18369c408a151c5998ff6` |
| 25 | `theorem` | [fixedKernel_measurable](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-measurable.md) | 193 | `result-track:b5e247a523d6d844a16c85713fd8e693e63c35950e00aedefcbcdf582fbdb35a` |
| 26 | `theorem` | [fixedKernel_zero_of_nonpos](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-zero-of-nonpos.md) | 200 | `result-track:269c003728d27d96c23e20da1085cfb5d5eee9315c91a739a38016847e65334b` |
| 27 | `theorem` | [fixedKernel_integrableOn_Icc](../../../../MeasureAndIntegration/FixedSourceKernel.lean/declarations/fixedkernel-integrableon-icc.md) | 208 | `result-track:ceae4106d9489e9a2fdd4a1833e384a108319e14a5eb6b4c3dbbb7275e7fac82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5445f78a0cc20d5303b2237972da78e3ee834faae3964da18a884951b99e8b41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
