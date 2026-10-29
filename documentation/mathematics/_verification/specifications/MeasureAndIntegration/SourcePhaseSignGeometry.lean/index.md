# Verification target: Source Phase Sign Geometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7804639baa87c9aa85779796cf39fefea97761d0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7804639baa87c9aa85779796cf39fefea97761d0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailTest` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairedTailTest_eq_balanced_phase_prefix](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/pairedtailtest-eq-balanced-phase-prefix.md) | 27 | `result-track:257188927d8fe03ea134d59767d6eef22ec946ab056b67cb86026bf66ca6dd70` |
| 2 | `theorem` | [exists_pairedTailTest_pos](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/exists-pairedtailtest-pos.md) | 50 | `result-track:b04608a014f85c4e77827fd7458d5b7f24963433a937056f1bd3d81e2fa699a5` |
| 3 | `theorem` | [pairedTailTest_early_point_neg](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/pairedtailtest-early-point-neg.md) | 71 | `result-track:5e06958f0559d0f5e2b56ea9ab57337aa89405bd8f340a4046a5e7f4ccfae42c` |
| 4 | `theorem` | [exists_pairedTailTest_neg](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/exists-pairedtailtest-neg.md) | 77 | `result-track:7936603c668e53165dadc87f34217a2f3cb170a5a2daccb474fb0e5575a5d8e8` |
| 5 | `theorem` | [pairedTailTest_has_both_signs](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/pairedtailtest-has-both-signs.md) | 82 | `result-track:287b4924eb39881802b3fe0d1c969a4e8fa7f6aba7c86a2a9c4c3ad976239f47` |
| 6 | `theorem` | [pairedTailTest_not_nonneg_on](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/pairedtailtest-not-nonneg-on.md) | 88 | `result-track:f841209996469ee0ef0c6c2878fed209bbd0ac1e88af533fa6a2cbbb85cf57a8` |
| 7 | `theorem` | [pairedTailTest_not_nonpos_on](../../../../MeasureAndIntegration/SourcePhaseSignGeometry.lean/declarations/pairedtailtest-not-nonpos-on.md) | 96 | `result-track:51d94b50b31bc3bb4da8d0089d0bb188c1e0d9b60e8037d0a166969ba471cfc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2f5268f9ef9e00d452e191562dd6d69cfa3e1d5f30de0420e426a9fc918d45e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
