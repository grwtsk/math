# Verification target: Prime Harmonic Remainder Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1cfdfd698c8456e066a496de1a0147735fd0878",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1cfdfd698c8456e066a496de1a0147735fd0878`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaconstant.md) | 27 | `declaration-track:57633e08da05ed750ac34a6510d58b244c336403f9d41757fc83747b0f3b28fc` |
| 2 | `def` | [thetaTail](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetatail.md) | 29 | `declaration-track:32f1b7e50c2ab87fd072cc30a6fbd83d2d26bcefbe4f39c5ce9762f76691dfce` |
| 3 | `def` | [thetaRemainder](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaremainder.md) | 31 | `declaration-track:7e4349bce6a80d0980612a0e46764c68efa31e2fbc677ca2dcae174b4f5f31a2` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetalogerror-signed-integrable.md) | 33 | `result-track:b43e2e3d3120c7de56bcd0042d589a5d69a1541c9b977988e2e86adbc8f96215` |
| 5 | `theorem` | [thetaTail_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetatail-integrable.md) | 37 | `result-track:fabef43799aaac8518bbc17a15efecf5e0a731872e8b9786e16faf8eed87623c` |
| 6 | `theorem` | [prefix_add_tail](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/prefix-add-tail.md) | 41 | `result-track:d3276f73d2099218ea9333b6d5354b13c8a71167f7e2fc6961ef9b9ae4aad52a` |
| 7 | `theorem` | [centered_prefix_eq](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/centered-prefix-eq.md) | 46 | `result-track:795fc6cb181b7a3b00876ae3197327dfc3f68fa8d6ab6c146e668885854546ce` |
| 8 | `theorem` | [thetaTail_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetatail-measurable.md) | 53 | `result-track:e585ad31d30a5226f5cfde514cf0d37be0c1908aca85e9137bea840ec83cf9db` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaremainder-measurable.md) | 65 | `result-track:b1f09bb39115d074c76d018114e4dd88fd22607940289a3acfdd80b9eba6d47f` |
| 10 | `def` | [tailKernel](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel.md) | 68 | `declaration-track:54b3740027f5f5ef0b31954d1d0bb6d27cf68a5716360cbbd7661838dada57c5` |
| 11 | `theorem` | [tailKernel_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-measurable.md) | 71 | `result-track:4d032f697b48e9a886d945e404d7d8e683381d621e62eb041f28a2ea9c1cad8c` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-fiber-integrable.md) | 75 | `result-track:ecca3e4a7c40eefd541d7f7af20c54f71bcdb1976b4b58901fe1d34b066ff459` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-fiber-integral.md) | 84 | `result-track:a228d331d3c6a6c89186ff9d26d49ab4bb637708c80a77d638fc069baf82deaf` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-fiber-norm.md) | 93 | `result-track:25eb440c9b887ddb005e18f99f52bb8d7b975b72140c1162288c03e11b040dd3` |
| 15 | `theorem` | [tailKernel_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-integrable.md) | 103 | `result-track:9dbc9eb091bfc036f45060c9a6747c0675d699f3fba8e37c190e34f99cf88b6c` |
| 16 | `theorem` | [tailKernel_outer](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/tailkernel-outer.md) | 112 | `result-track:88470ea5675da7bd3c574bf9f74d74bfcfd92f536046f495cafccaa810c1efdc` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/absolute-tail-first-moment-integrable.md) | 118 | `result-track:b244801255509f6affa8326f24cab1991785a54373bbc69e3e320c97b0eba445` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/absolute-tail-first-moment.md) | 124 | `result-track:57db9e0cfa5f323e9e8cc254d2525643944946740b69786afe35218b97ce4714` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaremainder-abs-le.md) | 140 | `result-track:d730e25b8042b5ac184257df595fa26c1c854a032fdc92e267d5b96732685422` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaremainder-first-moment-integrable.md) | 147 | `result-track:dad4c5c5d3773ebcc40f82b6ae9469a897940a20db7516bb4b4c02259bab3eec` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../MeasureAndIntegration/PrimeHarmonicRemainderAuditNamespaced.lean/declarations/thetaremainder-first-moment-bound.md) | 161 | `result-track:749770c2674a69fc988a7b5a0f9785a407841932a16badf217ad3664957f45ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=150c6fd833cf7860426d5ae90330f6bad79dd13fb57cdc58ac9c79ebf974cdf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
