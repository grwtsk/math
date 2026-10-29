# Verification target: Marked Readouts And Finite Trace Form Hostile Controls Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df216355671d314050c630711aeb435900b12659",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedReadout/Variant013e0c62bf342a72b7c7514e2779cdf40a5f8bb1f51f86fce49fd21567b6c16e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df216355671d314050c630711aeb435900b12659`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedReadout/Variant013e0c62bf342a72b7c7514e2779cdf40a5f8bb1f51f86fce49fd21567b6c16e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedReadout/Variant013e0c62bf342a72b7c7514e2779cdf40a5f8bb1f51f86fce49fd21567b6c16e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [markedLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/markedleft.md) | 29 | `declaration-track:f9e801e1b03ee7b51b6c1dafecca0d0e739cb29fbb74b69bdf1632618102b6cd` |
| 2 | `def` | [markedRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/markedright.md) | 35 | `declaration-track:0e5bfb64523ca3f02e159612f467c86b752d659dd4235fb6fb94964f82d941f3` |
| 3 | `theorem` | [marked_pair_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/marked-pair-eq.md) | 40 | `result-track:aca35b25ea4a990ccf1b2921c4925ba366a3553742df28652c8aebc894721bdd` |
| 4 | `theorem` | [markedLeft_centered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/markedleft-centered.md) | 49 | `result-track:5a4197bb69764015421a0456acd8e4440b9036c0a7d314fb490b946aca9a8791` |
| 5 | `theorem` | [markedRight_centered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/markedright-centered.md) | 54 | `result-track:42208a69d0d5223c59b9219d2d726c1f6c2d081e798ce6b583cff456c1ea1844` |
| 6 | `theorem` | [scalar_reynolds_readout](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/scalar-reynolds-readout.md) | 61 | `result-track:858d1b3b6f4230243962ed9b0e69050b881e5a79a9e3992f4a74a9d6229d8fa0` |
| 7 | `theorem` | [scalar_trace_readout](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/scalar-trace-readout.md) | 64 | `result-track:25a64241bb93b8fad7940adc4e72cda7ae059cc533d1fc38d909f6c72a8a0d78` |
| 8 | `theorem` | [two_root_channels](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/two-root-channels.md) | 66 | `result-track:90fed6f47b065eb6e63df21b34737c3f0adf33cb0e67d56b12a2c39c275ab5a0` |
| 9 | `def` | [traceCompanion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/tracecompanion.md) | 69 | `declaration-track:e55bd8b9fb8e5b4b864af755df3eaebbf24309b27625753c7635446c94559b6b` |
| 10 | `theorem` | [companion_trace_moments](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/companion-trace-moments.md) | 77 | `result-track:72731fe905eebefef42b8efd1ddf348609e35613bc71b95794efe4f6d712596f` |
| 11 | `def` | [traceQuadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/tracequadratic.md) | 91 | `declaration-track:8b999f792a18cf76ca796433d6dccd650aa77a5bfa0438e92c27c02b9d5596e2` |
| 12 | `theorem` | [trace_positive_witness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/trace-positive-witness.md) | 95 | `result-track:9e70d4958b0b6a2e7efb643afacb5c5feced4c965d9f4ca297f03118da4e037b` |
| 13 | `theorem` | [trace_negative_centered_witness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/trace-negative-centered-witness.md) | 98 | `result-track:084d375bc6d2b3844d49af823ce8596459db2e970c36288c871092b2c7aa05a2` |
| 14 | `theorem` | [trace_form_not_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/trace-form-not-nonnegative.md) | 104 | `result-track:f4ba53662aa0fe9d089a6fa972e534edbb71707379766d15f3bf01a7d84b5a7f` |
| 15 | `theorem` | [trace_zero_square_nonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/trace-zero-square-nonzero.md) | 111 | `result-track:922fcf0fa54b06fc7629411a4d03db4c00a0a9d5360fea1f0dd103f72cfb91d2` |
| 16 | `theorem` | [fixed_channel_ne_trace_six](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MarkedReadoutsAndFiniteTraceFormHostileControlsEdition1.lean/declarations/fixed-channel-ne-trace-six.md) | 116 | `result-track:9b502e197b9f4017062e5215704ac7d47f1b1e72d53f8715cb06d041c89dfece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c71c41b86f1317291e0e58f90ad393162b763abd7c87a4829c648491536c908 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedReadout/Variant013e0c62bf342a72b7c7514e2779cdf40a5f8bb1f51f86fce49fd21567b6c16e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedReadout/Variant013e0c62bf342a72b7c7514e2779cdf40a5f8bb1f51f86fce49fd21567b6c16e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
