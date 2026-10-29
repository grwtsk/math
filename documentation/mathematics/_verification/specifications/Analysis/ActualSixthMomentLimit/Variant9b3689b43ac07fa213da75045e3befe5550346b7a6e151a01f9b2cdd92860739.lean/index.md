# Verification target: GRWTSK.Analysis.ActualSixthMomentLimit.Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf549a47a77bf5d31a9308da68139406a511e872",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/index.md) · [Full source](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf549a47a77bf5d31a9308da68139406a511e872`.

Source path: `GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ActualSixthNormalizedFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_radius_power_tends_to_zero](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/declarations/inverse-radius-power-tends-to-zero--3438e47ab385b7f0f2667496.md) | 21 | `result-track:3438e47ab385b7f0f26674969a05190560c449d278febf64e0c83b56312d51ed` |
| 2 | `theorem` | [actual_source_normalization_limit](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/declarations/actual-source-normalization-limit--46e441a20d66ec7e092d5155.md) | 28 | `result-track:46e441a20d66ec7e092d51550170500567d175f2920604753da9409885ddf790` |
| 3 | `theorem` | [actual_sixth_endpoint_correction_limit](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/declarations/actual-sixth-endpoint-correction-limit--be6e272611055e05bcab3eca.md) | 45 | `result-track:be6e272611055e05bcab3ecab1d6c7e5f2e32e2a0833068ca698543c8399a051` |
| 4 | `theorem` | [actual_normalized_sixth_moment_limit](../../../../../Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/declarations/actual-normalized-sixth-moment-limit--004a074a9b7a27176f1d1214.md) | 79 | `result-track:004a074a9b7a27176f1d12147858a5adbfd73556755b6ab64345fdc8b1956f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c51976fcf9cf0c1094fdd93f3726d42338b70e370a792a9a2607cf59e6e73f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean","GRWTSK/_verification/specifications/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
