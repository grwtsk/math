# Verification target: Basel Series

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed464a68823f193bc87326fd43692fd521f0173c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed464a68823f193bc87326fd43692fd521f0173c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Mathlib.IntervalArithmetic` — import line 2; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Zeta` — import line 3; external provider; requires a separately pinned dependency.
- `Number.NumericalEstimate` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baselTerm](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselterm.md) | 41 | `declaration-track:1eb3aaa480db89bfe6c9b61ea0ec060cfab2de6d85ce47681a4d1a5601e9ebff` |
| 2 | `theorem` | [basel_term_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-term-nonneg.md) | 45 | `result-track:5c26d8c452f7de6e1e14900dd463b01f70d7a5289e3733e18c725a81eee35cdf` |
| 3 | `theorem` | [basel_hasSum_pi_sq_div_six](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-hassum-pi-sq-div-six.md) | 50 | `result-track:82b1371325d639292bf50780d35d3364377bd2440b27c034f953d04486834987` |
| 4 | `theorem` | [basel_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-summable.md) | 65 | `result-track:74487bdb6e24565fdcc6bc6e75a45d47b36a1d0fd0a1dae4c3cb8538d058f990` |
| 5 | `def` | [baselPartialSum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselpartialsum.md) | 69 | `declaration-track:d69153587f08fb3fce126a539fdd433680a6d63ba909aa660820bf11abb36767` |
| 6 | `theorem` | [basel_partial_sum_10_eq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-partial-sum-10-eq.md) | 73 | `result-track:3d1ec0efc87e9b74caccd86c98f9fafe88d570f064a7d1f5ed45a4a77f3aec78` |
| 7 | `theorem` | [basel_partial_sum_real_eq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-partial-sum-real-eq.md) | 78 | `result-track:83e214e8e03f4622d932360f4069939963bc08ceb5de35ca68c3898ec739e365` |
| 8 | `theorem` | [basel_partial_sum_10_real_eq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-partial-sum-10-real-eq.md) | 87 | `result-track:94526ff0d8b89134782a9ae7d49cfdb8166de8325bb6cb92e49fd91515195117` |
| 9 | `theorem` | [basel_split_10](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-split-10.md) | 93 | `result-track:fee1f7e44e83c9fee2e1220639f076102a6f8694a90559eb8737d94e43642782` |
| 10 | `theorem` | [basel_tail_term_le_telescoping](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-tail-term-le-telescoping.md) | 102 | `result-track:b02b5c16e008fb572bfa94eecd9b53d16181af004ba1ff662984fcd256fb2c99` |
| 11 | `theorem` | [basel_telescoping_sum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-telescoping-sum.md) | 126 | `result-track:26cf285538a013a50b75578a2d2a3c37aedcc34415b5144fff232c4ded95f423` |
| 12 | `theorem` | [basel_tail_bound_10_telescoping](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-tail-bound-10-telescoping.md) | 140 | `result-track:dc9a2929335ba20ca09ecfd85e363489c0a70c0ca5575bd0cdfe14689d254467` |
| 13 | `theorem` | [basel_tail_bound_10](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-tail-bound-10.md) | 155 | `result-track:ddf421a126464f4066c13096583476bbddef18c272b9e24ecdc3efca7e4a5290` |
| 14 | `theorem` | [basel_tsum_lower_bound_10](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-tsum-lower-bound-10.md) | 161 | `result-track:37deb48c021fcdaa97bc36b172107f87ff9b29090e1759e1e4b02440b4361823` |
| 15 | `theorem` | [basel_tsum_upper_bound_10](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-tsum-upper-bound-10.md) | 170 | `result-track:ba66c44b696ae28bf58ef5303bd079fd9defd779b0c70bd94f5eac5421acb5e6` |
| 16 | `theorem` | [basel_interval_enclosure_10](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-interval-enclosure-10.md) | 178 | `result-track:71efb4032bb570497ea345aa96a5122197f97bf114e4c6862866521a40a7a2d6` |
| 17 | `def` | [baselEndpointLower](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselendpointlower.md) | 192 | `declaration-track:4aba4b367cab3df3a7eebb0a6fc74fd3810d04914e472f78010e1b84e9ca8638` |
| 18 | `def` | [baselEndpointUpper](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselendpointupper.md) | 198 | `declaration-track:592b986ebc310968eb7b9f194ee2fdf3a4e51936de2e6af6c89786905060a105` |
| 19 | `def` | [baselFiniteInterval](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselfiniteinterval.md) | 204 | `declaration-track:09898e9be75e905923ef985a238645cb70f1aca1c735f319c210d9dc8fecf60f` |
| 20 | `def` | [baselFiniteDomain](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselfinitedomain.md) | 212 | `declaration-track:c0728cff0e2adfcb43545a150309f236f595f2e299fb42a0dc95e4341ddf5e2e` |
| 21 | `def` | [baselPrecision](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselprecision.md) | 220 | `declaration-track:8eba8895df06f519c881c8df8d29e0ade7caf30629487035a78f6b4a1787d8c5` |
| 22 | `def` | [baselAlgorithm](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselalgorithm.md) | 230 | `declaration-track:58a5503696e960c1df66666ee6924de8f94e285ed1b324838a74d3157b0b2ffe` |
| 23 | `def` | [baselErrorModel](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselerrormodel.md) | 239 | `declaration-track:0d5603edda64554b0aeb8518b24eba29de022cb4c106afd8af9080bc5e746c04` |
| 24 | `def` | [baselFinitePayload](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselfinitepayload.md) | 251 | `declaration-track:4894e8a11f23532c191988a6a3f91bfa40e19d9407f5797e8762388e37abebbd` |
| 25 | `def` | [baselEstimateSymbol](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselestimatesymbol.md) | 279 | `declaration-track:b0c659b5433e31de7a3a867185cfbd89257a9b1f5239f32a16db69e0d5ff38cc` |
| 26 | `def` | [baselDomainSymbol](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baseldomainsymbol.md) | 285 | `declaration-track:7d8da4b9ab1b395c928243a9600e556f48c6d7a3b85f066934f19d1772383d02` |
| 27 | `def` | [baselPrecisionSymbol](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselprecisionsymbol.md) | 290 | `declaration-track:35abd0da27c80ccf62113acda144b11ffc99efa956e385173f06b6f307e1978f` |
| 28 | `def` | [baselAlgorithmSymbol](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselalgorithmsymbol.md) | 295 | `declaration-track:9a1386840fec2732cbf07ccbe49db0fa92cabbf7f68f0fcdada8bf9c28bee549` |
| 29 | `def` | [baselErrorModelSymbol](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselerrormodelsymbol.md) | 300 | `declaration-track:24c2545dd40aea85be09af1651792d72c30e8398bd557d69efbbe188bbb7e0e1` |
| 30 | `def` | [baselNumericalSchema](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselnumericalschema.md) | 307 | `declaration-track:58d7c4834ee8e4dde438c4c4275efcaeb8edbaeec879797034396dd1dcf913f3` |
| 31 | `def` | [baselIntervalArithmeticAuthority](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselintervalarithmeticauthority.md) | 330 | `declaration-track:debddcb448dfff2fa1d6885ed8937dde4c014be35019bece1b73f37a33e4a307` |
| 32 | `def` | [baselContext](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselcontext.md) | 341 | `declaration-track:9da01bab9321cf376ae831a59f897f22bea1cc04048bf49c304d26289590f0fa` |
| 33 | `def` | [baselClaim](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselclaim.md) | 346 | `declaration-track:6bb47ab1c45bd377f4b6d9e854b8fbf0cf6e02bf4a727bb84d2cca6e35f4ee5e` |
| 34 | `def` | [baselMathlibProofCertificate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/baselmathlibproofcertificate.md) | 358 | `declaration-track:93246dff29c350ca9da6d0b556611d2462da137a071ec8be893aa34efcde68b1` |
| 35 | `theorem` | [basel_case_study_through_boundary_calculus](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-case-study-through-boundary-calculus.md) | 372 | `result-track:9bc663ed2687c91639c04f470f2fc0c0422642cd194378b15d66d0d81bcf9658` |
| 36 | `theorem` | [basel_finite_payload_not_analytic_authority](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/BaselSeries.lean/declarations/basel-finite-payload-not-analytic-authority.md) | 382 | `result-track:6cc398e2bd375991e9b473f7a395feacbf8b32cba4addcebbfd12ff81d5122eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b352b661a272b72519dc79b319ebc4ccb78dad14cf7228976907b08a1a0efa1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
