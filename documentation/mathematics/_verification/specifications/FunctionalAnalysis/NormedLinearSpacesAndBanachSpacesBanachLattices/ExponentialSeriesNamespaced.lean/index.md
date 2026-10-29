# Verification target: Exponential Series Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5df4e8773134a0194d815c5b6a30940a5319b1e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5df4e8773134a0194d815c5b6a30940a5319b1e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_exp_series_hasSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/complex-exp-series-hassum.md) | 33 | `result-track:c217d8facae96236e2592a017462a2e510fbc5da23b0aa994ace2d315b4ea5e0` |
| 2 | `theorem` | [complex_exp_series_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/complex-exp-series-summable.md) | 41 | `result-track:8b7373aad2ab999046dfdac19fb1b3b1c758c43201e8c50c767feabebe8e3369` |
| 3 | `theorem` | [complex_exp_analyticAt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/complex-exp-analyticat.md) | 49 | `result-track:012878a5fd670b55befbf2ff061847585e62aa25ffe7bfd50dfac826d9104098` |
| 4 | `theorem` | [complex_exp_differentiableAt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/complex-exp-differentiableat.md) | 55 | `result-track:e5802e6bf9397b60f7df5f3507104739356b12276e4e88a97639054e7f76c979` |
| 5 | `def` | [exponentialSeriesContext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/exponentialseriescontext.md) | 61 | `declaration-track:8eb8df6267cf0aeba1c98a6738a408ae2901465d9f0db439c6d92d9a1f41f836` |
| 6 | `def` | [exponentialSeriesClaim](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/exponentialseriesclaim.md) | 68 | `declaration-track:6c4cb9133220972a03ff920f5b37cb7bbcdb61654665a73c2a6a3a71c78d46e8` |
| 7 | `def` | [exponentialSeriesMathlibProofCertificate](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/exponentialseriesmathlibproofcertificate.md) | 84 | `declaration-track:ae29878f6b5e7e21d3cb7ecfd29618cd69e5bf5f4e98c9e08037e71730159f13` |
| 8 | `theorem` | [exponential_series_through_boundary_calculus](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/exponential-series-through-boundary-calculus.md) | 101 | `result-track:a8665533996bf0b3c4343c3207f745465063711971a58af13f77ca83e4a9a988` |
| 9 | `theorem` | [exponential_series_no_direct_crossing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ExponentialSeriesNamespaced.lean/declarations/exponential-series-no-direct-crossing.md) | 115 | `result-track:5382a089c13a35ef694f5abfc790f10afbb9ef79d2630844fcc0485fb37b2b19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9ccda1eba6d4e2ba3d5a38320e66923c6f67cf5837f1d4bb22625802730c301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ExponentialSeries/Variant379ed2814b5a373e479b8af15f229428f963cd34b3b90ce00fc4a9210130bdd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
