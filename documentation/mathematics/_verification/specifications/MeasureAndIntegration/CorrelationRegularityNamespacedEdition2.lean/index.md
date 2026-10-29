# Verification target: Correlation Regularity Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42a4a4f45107dd2918d8bc348c5a69217eb1de39",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42a4a4f45107dd2918d8bc348c5a69217eb1de39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Indicator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/indicator-hasderivat.md) | 31 | `result-track:7d8da430034908a8ba47b9b9a71f5d3c7961cb875898adf1449c957b3e0bc846` |
| 2 | `def` | [thirdInterior](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/thirdinterior.md) | 65 | `declaration-track:0357d63378f861757c40182621f730212a6baa7ccd7f0b361f28121e0fb9608d` |
| 3 | `theorem` | [secondInterior_hasDerivAt](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/secondinterior-hasderivat.md) | 70 | `result-track:ae2a3fbad9dc368f55d0b4e6101ba28a142086fbf8603fda29abcf0448b6cf07` |
| 4 | `theorem` | [thirdInterior_endpoints](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/thirdinterior-endpoints.md) | 82 | `result-track:b42eb43dc4045da8920cac38de4f98afad21881a3c23ece990706b95ae94d619` |
| 5 | `def` | [normalizedInterior](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedinterior.md) | 87 | `declaration-track:fbecb3107bf56db4880af92b4fa83eae7cfaa2edd3475ec1e36bcb829e6b8239` |
| 6 | `def` | [normalizedInteriorDerivative](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedinteriorderivative.md) | 91 | `declaration-track:37d051dabaced18de1e5581e53fd05b289cb612d7b0235049b27cba9b14a2102` |
| 7 | `theorem` | [normalizedTest_eq_indicator](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedtest-eq-indicator.md) | 95 | `result-track:8aa599731a52e49e111e98a29553b5c48ae80b6a3224b71a6bb707e4e59b2c83` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedinterior-hasderivat.md) | 104 | `result-track:9600c1d28e9df98507b1bde97b3a0a6a4b2feac17a42dfbfb68f198787fa94b7` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedinteriorderivative-continuous.md) | 109 | `result-track:ea7d1d3d70a570fa3013945e2d634f4df6d08499d3de923dee1374cd7b875c63` |
| 10 | `theorem` | [normalizedInterior_frontier](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedinterior-frontier.md) | 115 | `result-track:95a32c5d6b3da1edf765e446bd6bab0d3a9bf6903c27b1fc2e288d204f948735` |
| 11 | `theorem` | [normalizedTest_contDiff](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedtest-contdiff.md) | 131 | `result-track:fd3284286bda4f3e1d541bb140bfd0676ef069fd224606b986dfe02f395709d9` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedtest-zero-of-le-abs.md) | 144 | `result-track:a8579d4c1326ee35b9bb63fcd6629072be3dfc42b247c40d4ba1950827d2758f` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedtest-hascompactsupport.md) | 162 | `result-track:1e873819512b7f7857c327257642c6e9f22352d38b421ea7e9f2a47cb6f848fb` |
| 14 | `theorem` | [normalizedTest_integrable](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/normalizedtest-integrable.md) | 170 | `result-track:0ea4191e3bd0faf1092cc537968d1ff1aae64285c034d6727c8f07d0e6dc4c25` |
| 15 | `theorem` | [correlation_product_integrable](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/correlation-product-integrable.md) | 177 | `result-track:24f7254efbf64fe737a31d84a17b4e4882f10cbe61fe2112d287ca7b07719ab9` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/reflectedtest-hascompactsupport.md) | 185 | `result-track:6e1b2733eda5abeb744c88f6481969e66aa418c590b1ba16e4ce144e79529a6e` |
| 17 | `theorem` | [reflectedTest_integrable](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/reflectedtest-integrable.md) | 195 | `result-track:10030cb8b25dca222b76a73d06fc538260cc5926e1e3225bcfd3d0e01536c114` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-eq-convolution.md) | 201 | `result-track:aaa02574934abbfe5667552f9eafc5e4c6bdeb610da297d4a92cd5313d68ef1d` |
| 19 | `theorem` | [sourceCorrelation_contDiff](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-contdiff.md) | 212 | `result-track:746be234e4d96ab840579305dd60e7875b27d093b57fe68454e108b1ef9475bf` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs.md) | 221 | `result-track:f97d67b4473f4a733a18cd5cfa49a600dc2a35e931b00c4b3f6e6a656253df2c` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-upper-endpoint.md) | 240 | `result-track:c067851ace884f79c0545055c55700f82538a935a97aaa88ea4414d044a09212` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-lower-endpoint.md) | 245 | `result-track:41b4927069417951d04ea2f8afde8be1423ae05a028d0276bd5e3c6cdd78b475` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-hascompactsupport.md) | 251 | `result-track:23603be6d450010315a24b1582dbdaa7ebb13b2f19ff7ad92dfa5f4c95860d42` |
| 24 | `theorem` | [sourceCorrelation_integrable](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-integrable.md) | 261 | `result-track:1b63ae9f93308f8b5510163ea475d7e414a0f4c9f1487bbeee60ca0d6f68baf1` |
| 25 | `theorem` | [sourceCorrelation_even](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-even.md) | 267 | `result-track:b88b63487a5e893cb1791ff3563bce2f2192b02e3315f20c7e4eb7fe9af85080` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/sourcecorrelation-seams-contdiffat.md) | 277 | `result-track:c920c093561eb927677718656866aa5964d157b8a77f30791da59a4ddbac081d` |
| 27 | `theorem` | [correlation_certificate](../../../../MeasureAndIntegration/CorrelationRegularityNamespacedEdition2.lean/declarations/correlation-certificate.md) | 286 | `result-track:d4bf112436ebf3c7b3592c6dba8ead110b35681787c97781a74754bcc999eb10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f40a2183eeaf6fa8bd7e6d304b0b45816a842616ad18988e174e50f35355716 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
