# Verification target: Compact Kernel V1 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68d41299f5c544e34b34d83b52dbcceda806008d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Variant7db8c60031f159c9cff1a3325e92198511f9960875f78770bddcae41a5965ee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68d41299f5c544e34b34d83b52dbcceda806008d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Variant7db8c60031f159c9cff1a3325e92198511f9960875f78770bddcae41a5965ee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Variant7db8c60031f159c9cff1a3325e92198511f9960875f78770bddcae41a5965ee7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/forwardhalfkernel.md) | 25 | `declaration-track:57a6dd8fa9b6ebe150f8b00fd6395e4d37677ad1e9dd391e551fa7b77f37f2c2` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/forwardhalfkernel-continuous.md) | 30 | `result-track:a82ffc99bfcc05608fa7183c857a72b6d556a0a13a1cbac85683ef16bc1f39b5` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/forwardhalfkernel-hascompactsupport.md) | 38 | `result-track:d14e3961f19e8a293d10ca474e39e839ad523785bec962f84996d87b54769454` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/forwardhalfkernel-integrable.md) | 60 | `result-track:18b78c1e7ae00b7b8fa95626855a22e4fefa557b5d28b245138ad0c2562e80e3` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/sourcecorrelation-eq-plus-shift.md) | 66 | `result-track:65f1d8c61125c1c60404db2d230237746b3c0fc2f5a3662b48a7308bf8015339` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../MeasureAndIntegration/CompactKernelV1SourceNamespaced.lean/declarations/negativesmoothmoment-eq-forward-integral.md) | 74 | `result-track:4f48a62a223d627b4e26951a0c03af637efcdc399b6a421dca5c0ed554a884c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d727241212697c350fa56854ec07e9ca47098072c539289feeb27a1c8fa9ea5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Variant7db8c60031f159c9cff1a3325e92198511f9960875f78770bddcae41a5965ee7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Variant7db8c60031f159c9cff1a3325e92198511f9960875f78770bddcae41a5965ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
