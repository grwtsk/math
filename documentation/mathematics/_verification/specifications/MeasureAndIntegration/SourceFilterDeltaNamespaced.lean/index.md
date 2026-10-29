# Verification target: Source Filter Delta Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72169a910defd63d6fc326c7abc50933825f7f78",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72169a910defd63d6fc326c7abc50933825f7f78`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Lindelof` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment.md) | 34 | `declaration-track:e1d53248ebeb8397ccc5974ad73d22cba010907abe32452ca1e27359a8f95372` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-intervalintegrable.md) | 39 | `result-track:f2c19aad8bd7cad0f983e6aeb454ecc78bb570d633c4a0f6e3db317fa630b7a5` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-zero-eq-source.md) | 46 | `result-track:7bb0d3b852267e61041e12673cd9914d87c08324281917c636d7b34589599507` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-zero-zero.md) | 59 | `result-track:dcdc5f2b1ee4f208fd788fe42840aa8148114cf7f0efe806f3f49932ad8fecd6` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpflux-hasderivat.md) | 69 | `result-track:da867c49c7a6f691a38ca8002bbecd3069d9bf3c18db3149c13cb319d5ed165a` |
| 6 | `theorem` | [bumpMoment_equation](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-equation.md) | 80 | `result-track:fb3a223288cd93f82b36acdec232d3581cb784ca1d84334cf1d31f7376fa8ebe` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/re-eq-zero-of-weighted-energy.md) | 115 | `result-track:c6c4b8f7a03d86952acbd2d726cd80f51760fc403be48b3b1208e6b1e37606c1` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpprimitive-hasderivat.md) | 144 | `result-track:6b749ef80e88f2da218cd65872cbd399df7fd713dc1a5d6ff836d45cf7c670f7` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-closedformula.md) | 159 | `result-track:98d9bee4083eb95c024e09f377c85f6b3c6f3a0a1eebbc93ff1dc2cbfbd58e87` |
| 10 | `theorem` | [V_zero](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/v-zero.md) | 184 | `result-track:f20c607dcc39d6c44b37815d2383c002533c89c7ac9aa8d63d8bdb23d8ccf05f` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/v-eq-bumpmoment.md) | 193 | `result-track:3b197b95d21e168f5113d7dc6ef84edfaf1a3dc5d5738f49d3ac57de12602bc7` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/w-eq-bumpmoment.md) | 206 | `result-track:b2a1064ed12c07d2e9c4fd28a0423bec84bfbb9392d0f62771543527067de728` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-hasderivat.md) | 228 | `result-track:06061fdde9a8a601c211ec003a76b90c20c51dc24e99ac53037979947edf1e40` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-continuous.md) | 264 | `result-track:8f5ed45d11d0000f296b6e76675e0ff9e90c41e44740ee9deb729a7adabba851` |
| 15 | `def` | [radialProfile](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialprofile.md) | 269 | `declaration-track:a6baf6facc0e74d4a6a0e79847d65a667bc9a89f6201e46ae4f315282016b828` |
| 16 | `def` | [radialFlux](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialflux.md) | 272 | `declaration-track:654609244d1b12dfc5fa2fcabec595c53b50b13c787ccf259909cbaaebf739ed` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialprofile-hasderivat.md) | 276 | `result-track:5b52cc4c77beaae0fff7b9aed9ef175292614cf416bc1e2861cc3480ee93cb88` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialflux-hasderivat.md) | 285 | `result-track:b6cb262df2b6db7ce05b0bae6ee9eb76679574a9de95138332ae903170dd3508` |
| 19 | `theorem` | [radialProfile_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialprofile-continuous.md) | 295 | `result-track:e9a82aceb68a8617e2a841b7d0700489fecefd28ead2c33e94cb7fde28be6c14` |
| 20 | `theorem` | [radialFlux_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialflux-continuous.md) | 299 | `result-track:b5f8d7246b592598e4c9f5a0efa213ebd82f8938d55e3505442f0d5401862a05` |
| 21 | `def` | [radialMass](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialmass.md) | 304 | `declaration-track:6a7acefd717d96139711d27f09c3e42a0ff8fef9f553618987f2b2a5a48df1e6` |
| 22 | `def` | [radialEnergy](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialenergy.md) | 307 | `declaration-track:3cb1e60fa7f43dbc0531a9ddfaebdf754e44dd30bacba40e8e4fc4442696bc68` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radial-integrands-intervalintegrable.md) | 311 | `result-track:991af9e53814cda7cb585b5077e90a9cf75f133f484bce2ef658ab2cf2735c11` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialenergy-nonneg.md) | 323 | `result-track:1c5abe4a0d0fd3a6adcb15c628bfe80feef427be042581817ddb66269db2f0c1` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialprofile-eventually-ne-zero.md) | 329 | `result-track:20b3f08818d0f15eddc45fda8318c6f03a5153d0102b107763974440a035ff23` |
| 26 | `theorem` | [radialMass_pos](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radialmass-pos.md) | 336 | `result-track:cd1f31675b09f6e12e76ae572ff5d3837e388395ca59fa86b99e5671a5100365` |
| 27 | `theorem` | [radial_energy_identity](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/radial-energy-identity.md) | 352 | `result-track:20ef8b5426a4300c15dd492c21455174d133fc1fae00e9ebda70085e6c655bf6` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/bumpmoment-zero-re.md) | 410 | `result-track:6d9ff55e8b4937c41abc8231cb646a983476e3eb76d43c345d166642dcefa190` |
| 29 | `theorem` | [W_zero_set_countable](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/w-zero-set-countable.md) | 427 | `result-track:6bdd28c0e82dd6ac64cb3ded0c277f0d66837768222be7f12467ffbd2b5a6de1` |
| 30 | `theorem` | [boundaryW_ae_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/boundaryw-ae-ne-zero.md) | 448 | `result-track:dafa0ad5a78e268867f47a3958b9cb6ecae6d9587bde178b5076c107dd9e9212` |
| 31 | `def` | [boundaryFilter](../../../../MeasureAndIntegration/SourceFilterDeltaNamespaced.lean/declarations/boundaryfilter.md) | 455 | `declaration-track:437cf80985a832a03dbc8dd93d6f5b3cd123adc4c41c96768aa451db56b7db7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72413a1793b339573bb771218841a3707a65a4a2f41278b0b2157d392c357f63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDelta/Variantae03e0094e42cdab7f638e66e713caddaaff36f79f269143410ccb257e2beb42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
