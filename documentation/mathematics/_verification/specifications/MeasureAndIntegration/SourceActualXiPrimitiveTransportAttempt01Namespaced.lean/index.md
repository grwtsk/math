# Verification target: Source Actual Xi Primitive Transport Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1ee243618a198e288327e9f1c66054ba13a8824",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variant0ce7d726a0e8a031aa78dfca562078cd9c646b2eeaea7d6cf722d5812bdffc86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1ee243618a198e288327e9f1c66054ba13a8824`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variant0ce7d726a0e8a031aa78dfca562078cd9c646b2eeaea7d6cf722d5812bdffc86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variant0ce7d726a0e8a031aa78dfca562078cd9c646b2eeaea7d6cf722d5812bdffc86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualShiftedXiDerivativeAdapter` — import line 6; external provider; requires a separately pinned dependency.
- `SourceFullXiSignedPrimitiveCost` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiLogDensity](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogdensity.md) | 31 | `declaration-track:1261df7f305da345ee8dfc0a4f3a5915b49d71184f99d4c279e9142817aaabb2` |
| 2 | `def` | [actualXiLogPrimitive](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogprimitive.md) | 34 | `declaration-track:76b428d5c4fdc2b2772270dc3f6280485acfd0e8a1811ae0b307568211112c62` |
| 3 | `theorem` | [actualXiLogDensity_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogdensity-intervalintegrable.md) | 37 | `result-track:0a3e961217d15e77ef07dcc9fac785757af7fb9b87f0b6dc0b6f2e857c6c6a4d` |
| 4 | `theorem` | [actualXiLogPrimitive_at_anchor](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogprimitive-at-anchor.md) | 49 | `result-track:8668d56150f5df42a1e1fe2dab2ff6e29f9ab848655c51b836d27c568ae632da` |
| 5 | `theorem` | [actualXiLogPrimitive_absolutelyContinuous](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogprimitive-absolutelycontinuous.md) | 52 | `result-track:27a141c2092ac445f1d784a401521b03f95be89ec98ec1aa6befd6e06b556ef6` |
| 6 | `theorem` | [actualXiLogPrimitive_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actualxilogprimitive-ae-hasderivat.md) | 57 | `result-track:41a0674a2e9ba5f928b9ff388c220738be7a6d8cddae92a23f7f4faf1d8251ae` |
| 7 | `theorem` | [actual_logarithmic_substitution](../../../../MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt01Namespaced.lean/declarations/actual-logarithmic-substitution.md) | 65 | `result-track:52193b8039633995c14d6587d9dc45c7a4c4d6f84dc75be3002156c278b98544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=597995e7c3ea713cb3f46988c12d11f6211374cc8c1b6134fe02f8681c59071f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variant0ce7d726a0e8a031aa78dfca562078cd9c646b2eeaea7d6cf722d5812bdffc86.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt01/Variant0ce7d726a0e8a031aa78dfca562078cd9c646b2eeaea7d6cf722d5812bdffc86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
