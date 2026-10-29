# Verification target: Fixed Curvature Limit Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d34c8296eb1399b2e937c35e18ddcf2f3362373",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/index.md) · [Full source](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d34c8296eb1399b2e937c35e18ddcf2f3362373`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/correlation-deriv-fixed-tendsto.md) | 20 | `result-track:89ad6f1bd08cb3f69242e87b75c5297b8a08ba2f61e8d64efbc9edf197b8ba8f` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/correlation-second-deriv-fixed-tendsto.md) | 29 | `result-track:25d147dcdfd0eef334f52692354bfa036dd311e8f43f3f0f929ebb6f6a3c6f83` |
| 3 | `theorem` | [critical_second_deriv](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/critical-second-deriv.md) | 39 | `result-track:477aac237a9bbcdd0a3ef4a070e3e064bc39c1826e61ffdc4fc23a5e199a84f4` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/criticalprimetest-deriv-fixed-tendsto.md) | 62 | `result-track:81540c6868b952874f6cc4df3a372b4a45282fcdac4a7be48080aec9f8ae56f4` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto.md) | 78 | `result-track:d73bde3249c0e249b4bd247c2270f4d8828cec61e8e6ef4c2a2069e4b36e5730` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/criticalprimetest-deriv-eventually-pos.md) | 95 | `result-track:ee4949365a7eda0ba6d3f7db77613e68a57ddc8da4b703d1b6f16fd36fdda35a` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/paired-curvature-eq-neg-critical-of-positive.md) | 102 | `result-track:6ca39c3eea396803c45bae8450da56cf2a719fecfdbaa1a8cb3d99d4410f2d9f` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../GeneralTopology/FixedCurvatureLimitAttempt01.lean/declarations/paired-curvature-fixed-tendsto.md) | 118 | `result-track:808e412aaee03d01d3da76ba6afd8dce393b85566cf9be35fdc35c0ae533eed8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87c19989813fd4245f9bf509beaeea39d542f14cee5355fab524acb3ba0947de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
