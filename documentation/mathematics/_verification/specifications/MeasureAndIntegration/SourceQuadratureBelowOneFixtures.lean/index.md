# Verification target: Source Quadrature Below One Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceb1a73217347a1390ca6b9195159aba109e054b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceb1a73217347a1390ca6b9195159aba109e054b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [belowOneBump](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump.md) | 24 | `declaration-track:f22364419ee3cddd1d23f748ac9c77f51dfd716e4f9349242e19fee5e547554e` |
| 2 | `theorem` | [belowOneBump_contDiff](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-contdiff.md) | 27 | `result-track:60a2991d82d4cab7248c1449fc6ade906a299d7efdd5e6a1bdb410c7d444fcaa` |
| 3 | `theorem` | [belowOneBump_zero_below](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-zero-below.md) | 32 | `result-track:dd799ba67c840d1b93f4dbd992757d07fdc7aa40e791aab2bba3f73a3f031cad` |
| 4 | `theorem` | [belowOneBump_zero_above](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-zero-above.md) | 43 | `result-track:8064378f7d0ce1095d742999094eb3949d17cdf50792f335a379f332b2dd3efc` |
| 5 | `theorem` | [belowOneBump_hasCompactSupport](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-hascompactsupport.md) | 54 | `result-track:3130212823cf85bda04d2f6923c8490df8351adf7d1f16b82c1b08e841bd93e3` |
| 6 | `theorem` | [belowOneBump_interval_integral](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-interval-integral.md) | 64 | `result-track:8ac8a030567579761b2c74e1aae24e8e9010321afeaccbc6ceb5877b6d1c9474` |
| 7 | `theorem` | [belowOneBump_positive_integral](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-positive-integral.md) | 82 | `result-track:9a4a5b406e5e29738c3cf4b3664c5147a625011fe4b810c2d51c69d8f12dd259` |
| 8 | `theorem` | [belowOneBump_positive_samples_zero](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-positive-samples-zero.md) | 98 | `result-track:fe152eecca4475cc4fdb42fb6cdeff89092ad28946ed7c027351dd15e7b8dad8` |
| 9 | `theorem` | [belowOneBump_signed_remainder](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-signed-remainder.md) | 104 | `result-track:9678ed22925bca8cd7849bc7ddcb2fbce055b2bbbee88076879575d3c3830e0f` |
| 10 | `theorem` | [belowOneBump_truncation_false](../../../../MeasureAndIntegration/SourceQuadratureBelowOneFixtures.lean/declarations/belowonebump-truncation-false.md) | 114 | `result-track:1b1444167bb01e988ea78014579b2d8c937aa5d195ada4e4c177410b69dc9d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0c94bc81bb81aeaf0475bb1e35469d3a00cb8f8a36ec0dfa3fb9be52cbc7595 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
