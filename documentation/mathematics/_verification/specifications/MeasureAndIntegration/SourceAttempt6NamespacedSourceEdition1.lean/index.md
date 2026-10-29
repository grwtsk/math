# Verification target: Source Attempt6 Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd32b8a795cb8e5f3be05bd4b8f48f35ea5540f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd32b8a795cb8e5f3be05bd4b8f48f35ea5540f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/p.md) | 23 | `declaration-track:42a5afa305a66894fb1dfd13dd1c5ff057c678e36e89904905c9a4e6d61016ae` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/a.md) | 24 | `declaration-track:a830d851e417fafa9734dd3ffc2e6ae9b02d77176fde6538f1d33a24ec8e093b` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstterm.md) | 26 | `declaration-track:433e28a57462366fc53ed797aef78b3fd138d4d6e8e335b70355ed9f69717f2a` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondterm.md) | 28 | `declaration-track:bd409a5b14079e73043ce849ebb5ec757a72ff3745c83937180ff2817fcbf7c0` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstseries.md) | 30 | `declaration-track:e68a57757e13b9a99c28df9f06d741323dbf9aa8eb2e9137fd0b0fe092ef5c6f` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondseries.md) | 32 | `declaration-track:6ee1ce359a546489695ff00597106581ea855fe1cf18c983b088f91abac08fe3` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/weight.md) | 34 | `declaration-track:f4efdc6cbba4ee00fc0c42235607635840af73843ea5a1f446507756bc6d6515` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/weight-eq.md) | 36 | `result-track:dd13127ccf8af63be22245fcfb98a64558bdd979e4d75b22fb71d789120cb766` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/weight-summable.md) | 41 | `result-track:3579c016b99494acd810d68ee31f8cb9295b4f489bf471668ffa4c5ee75d2b1d` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/pairedterm-hasderivat.md) | 46 | `result-track:4a0b6173d773cb8af0d49363ed33eaf6e8421071d5b1a08bb19d59a8ccd77edc` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstterm-hasderivat.md) | 63 | `result-track:36868dbd1ede398d33083cfd0f7557976d3f8c6b6e121ab15f5ca603e0242763` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/lowercoefficient.md) | 81 | `declaration-track:83252ee359bbd043564365dc061688d0afa70ae37ac009bfba0ca1bc2342ada6` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/lowercoefficient-pos.md) | 83 | `result-track:cdff421c6f227ed3e12243fb62236cc8d5cfb2e5de05963fb97acfac43da3046` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/rate-lower.md) | 86 | `result-track:b4c4c110fb4620cc942a3ad5e943c6adafc054e0180c370fee7283678b14aac7` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstterm-bound.md) | 95 | `result-track:75fa692fbd55379d7cf8c924dd5e2b67c471c592fd75988ed075a9456e3cea89` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondterm-bound.md) | 124 | `result-track:ed8ca030a54a6da62751c94853026f5a0f4f1cc7cf454104dc1dcbf8d6dcdebf` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstterm-summable.md) | 141 | `result-track:0ababc61ba2b13ad803e28a0476c7b3abaffcb90195895a9449b5082a6ecfcf0` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondterm-summable.md) | 148 | `result-track:c40663c4aeeb382c1f8fa39ca38b941ded754fb320cf5f1165734498095f8c15` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/actualprofile-hasderivat.md) | 154 | `result-track:8b0ec7213008a42a6f5991496303a622a08cf97f5d9d201d630a688470baa8c8` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/actualprofile-deriv.md) | 169 | `result-track:a0c4c797fd2822119a60bcc9fe62b8bc3a43c66c3def0a8f2d691784257fac92` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/firstseries-hasderivat.md) | 172 | `result-track:751478aee37ae5c56c0edd917148abdc098901a32edab00808055af15b3508ee` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/actualprofile-second-hasderivat.md) | 184 | `result-track:22fc4d8d6eedc6c653addb1f5c18180810215b08bc087f7ae3409b9cacdc3e3b` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/actualprofile-second-deriv.md) | 190 | `result-track:22284a973a188e975b987cb31b471b6a0198d2ddb170446fa6652287d929f6c6` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondterm-nonneg.md) | 194 | `result-track:d3d560e3c764feb808073038e233c5afac675db0a71cc350f0478b5df8550ccc` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/exponential-firstmoment-integrable.md) | 198 | `result-track:c26f2e3bd7d33f9bd96862a004673aa43f54994da735fe1ef1cf9cfc750f95a2` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/exponential-firstmoment-integral.md) | 211 | `result-track:3ec916d370ed08ce2dd12a4242b989862c1b1554efc64709fe9ceb7b19b12ea7` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm.md) | 219 | `declaration-track:ae5497aac45cdc5d082c7fa83747879788b6b9f0f09b1ffef4e64f296bde0bb8` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/curvaturekernel.md) | 221 | `declaration-track:4f8591746ff05695c10b1c71ba26ea309841f4e1ab79c58b850e42fda31986cd` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-nonneg.md) | 223 | `result-track:98f320d3baf2bfb3f526e7a51a6fd3b1b9f667cc44e371ac92fd0e4b850bfd37` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-integrable.md) | 228 | `result-track:0b2792e7feef5674615566e096ce04b2a66aa88790a88ecae1cf3e2669f770dd` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-integral.md) | 233 | `result-track:4ab6f9059abf96a01f6cc1c266e182b36c1e1a85a588f6f7de1aea77a0f0058e` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-hassum.md) | 238 | `result-track:9c41114a1e13db3a124d482dae6ca1934213d7516a57c6263da17b447fdcce85` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/curvaturekernel-continuouson.md) | 254 | `result-track:7647fc94da7d1897da1e5c61cc479fd86b6bd1dda4038a4a0ba07548e2cdb052` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-integral-norm.md) | 261 | `result-track:136f62879de76b6bc41962069a955ddd011c8553ad0e3f9cfd7476532562a189` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-integral-norm-summable.md) | 269 | `result-track:dd7eb859500c2cb726c33d0b7eff11420990f3fce97f74288453aa790397b0c4` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 277 | `result-track:e04411320aad63a868d0e336d65dac57eef2a4f7deef0bdcbaac3040df001e6a` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/curvaturekernel-integrable.md) | 289 | `result-track:3592ebbcc9a75442722831e473d8e7d531b10077abfff2c6358e2c6821ab6c68` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/secondseries-eq-curvatureintegral.md) | 303 | `result-track:c4ecf929fd97d013def71be94b20a990eaa3074097e78c9039a88227a4af5851` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceAttempt6NamespacedSourceEdition1.lean/declarations/actualprofile-second-integral.md) | 314 | `result-track:ffa478a6c805b0219ba7e1d0b74ba91bce9c6a2ff5987b675d24cbeef3300600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0307f6cb155e145df375ec68e6ea77fb758d47961252989e9cda66cde2038e9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variant0dbe2490d7210e6ceb07afd6a983ff99346644936633a09f358827e5b570d4ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
