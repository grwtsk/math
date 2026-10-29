# Verification target: Source Upper Support Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24a9f3ec59d0ec72074337828d2b7f0697b90c26",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Varianted5bed2e6304ca6a375036169b2f0f1f312a5a1b0e173cafd492fc30cff0e3eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24a9f3ec59d0ec72074337828d2b7f0697b90c26`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Varianted5bed2e6304ca6a375036169b2f0f1f312a5a1b0e173cafd492fc30cff0e3eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Varianted5bed2e6304ca6a375036169b2f0f1f312a5a1b0e173cafd492fc30cff0e3eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaRemainder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceSamplingKernel_zero_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/sourcesamplingkernel-zero-of-two-mul-ge.md) | 14 | `result-track:8d3d28fd0d580e774e9ea3dae240810779f19d6e05b447e1480549ab17f850de` |
| 2 | `theorem` | [thetaKernel_zero_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/thetakernel-zero-of-two-mul-ge.md) | 26 | `result-track:1e1e022cb8f805d5c624f6c28c447a23742f2afbd2e5f6dde5acc1df6e0b8d2d` |
| 3 | `theorem` | [thetaKernel_eq_sourceSamplingKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/thetakernel-eq-sourcesamplingkernel.md) | 38 | `result-track:1789eeda88bef747a6266778157fad9770ebde2e092816a6868396a7d1dc7f1f` |
| 4 | `theorem` | [sourceSamplingKernel_eq_two_channels](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/sourcesamplingkernel-eq-two-channels.md) | 58 | `result-track:bbb6177cd29ebb8ef5ea083e5e43bf2732017e7bde296b45fed49746ef4bbaa7` |
| 5 | `theorem` | [thetaKernel_eq_two_channels](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/thetakernel-eq-two-channels.md) | 98 | `result-track:97a868b56e9fe1e53d5610efec806b481d717cff80cd3cbd262b0d95e7d18222` |
| 6 | `theorem` | [thetaRemainder_eq_neg_rankOne_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportAudit.lean/declarations/thetaremainder-eq-neg-rankone-of-two-mul-ge.md) | 110 | `result-track:009606ea79d06fee71245748491eca590eb906b99ab26a399b6f41ab389ef040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efabf64bf2ef0128e55e5c3651e72327826ab8fc60614c08262f01655e2db426 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Varianted5bed2e6304ca6a375036169b2f0f1f312a5a1b0e173cafd492fc30cff0e3eb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportAudit/Varianted5bed2e6304ca6a375036169b2f0f1f312a5a1b0e173cafd492fc30cff0e3eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
