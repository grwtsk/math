# Verification target: Absolute Mertens Envelope Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "089b8bda4336b4d26f8a627417e5d9f4d8306f75",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AbsoluteMertensEnvelopeAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AbsoluteMertensEnvelopeAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `089b8bda4336b4d26f8a627417e5d9f4d8306f75`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quarter_power_div_sqrt](../../../../MeasureAndIntegration/AbsoluteMertensEnvelopeAuditNamespaced.lean/declarations/quarter-power-div-sqrt.md) | 36 | `result-track:49564ea6785bc0d1a3de51918d5bea67fefcc135fd25d36f10fd8f599968e74c` |
| 2 | `theorem` | [three_quarter_power_integral](../../../../MeasureAndIntegration/AbsoluteMertensEnvelopeAuditNamespaced.lean/declarations/three-quarter-power-integral.md) | 43 | `result-track:b7e04f9a3b8b83837b36b596c5ec29b19e7b8439658f1daec51c21188e14c7cd` |
| 3 | `theorem` | [not_integrableOn_div_sqrt_of_quarter_power_le](../../../../MeasureAndIntegration/AbsoluteMertensEnvelopeAuditNamespaced.lean/declarations/not-integrableon-div-sqrt-of-quarter-power-le.md) | 52 | `result-track:76a24796a7419708d19b97fb93264359dd66ec1a2a79491905cc84cd7b707e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8127ed2aa0ac1ac63ec410334c4342982c89c8cfd1aaa69a8bacbef5a4ca17f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
