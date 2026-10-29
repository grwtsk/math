# Verification target: GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d4136567b6c9410e2e895e1d82017cec294e4c8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileHigherDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d4136567b6c9410e2e895e1d82017cec294e4c8`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileHigherDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileHigherDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula`](../../../../MeasureAndIntegration/CompactProfileExplicitFormula.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives`](../../../../MeasureAndIntegration/PolynomialBumpHigherDerivatives.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_source_eq_native](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/normalized-source-eq-native.md) | 27 | `result-track:88ca78dd89d084ef582b58797c37e5e5a2a49afd97b9db97ed7facbe24e84320` |
| 2 | `theorem` | [correlation_eq_native](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-eq-native.md) | 32 | `result-track:454788bbed86ff6dbacdab97ac242772a193740409dd5a7e04a2b8111525a44d` |
| 3 | `theorem` | [correlation_contDiff_four](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-contdiff-four.md) | 38 | `result-track:249368793931c83b20f2328ad1990ac96aeff42dbd56f65c124882483b9c2dbe` |
| 4 | `theorem` | [correlation_first_contDiff_three](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-first-contdiff-three.md) | 43 | `result-track:957abb06a567b901471c453f45d881317524e22847f6bdd0bc39f63da265d1ce` |
| 5 | `theorem` | [correlation_second_contDiff_two](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-second-contdiff-two.md) | 46 | `result-track:6ef8b33cb7a09e1ac6ddfe1db3b89b74ab75bd30ff9b3d50079262d3dbdfee74` |
| 6 | `theorem` | [correlation_third_contDiff_one](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-third-contdiff-one.md) | 50 | `result-track:10300673aa0af65eb2edb945ae6df46f098d21e10f27972326b6252a329e3717` |
| 7 | `theorem` | [correlation_third_deriv_eq_integral](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-third-deriv-eq-integral.md) | 54 | `result-track:805f56fa654f3de15a4b33a6fc9564bd5b18d205ab7d1aa8209fb17de440d8cc` |
| 8 | `theorem` | [correlation_fourth_deriv_eq_integral](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-fourth-deriv-eq-integral.md) | 61 | `result-track:0a76c20909d867e33f2c7f638f60a6ca9bae06df95e38f4cea140a0aeed40f43` |
| 9 | `theorem` | [correlation_third_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-third-deriv-integrable.md) | 68 | `result-track:e75fc12f90961011010cc79ef3f465c86fd9b9287761c5ce6db56582ba14420a` |
| 10 | `theorem` | [correlation_fourth_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-fourth-deriv-integrable.md) | 73 | `result-track:d8123946bedfb4f82954fd63c63a1badbfbe626f937f07fc889615b2069ef07b` |
| 11 | `theorem` | [correlation_third_deriv_abs_le](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-third-deriv-abs-le.md) | 78 | `result-track:8a6a608ea7d729fb91ef60040e89f28c95690537718d99486aea5c76e16dbce7` |
| 12 | `theorem` | [correlation_fourth_deriv_abs_le](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/correlation-fourth-deriv-abs-le.md) | 83 | `result-track:dc8f028aec4c9ee724012d3acc13abcb7cbcd297a9a5456b8a8963228f2c214b` |
| 13 | `theorem` | [normalized_source_first_lipschitz](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/normalized-source-first-lipschitz.md) | 88 | `result-track:10de079e43f6e6210dce6941a8d6c936a6fc99df677f98b839450ed44a4fcbec` |
| 14 | `theorem` | [normalized_source_first_absolutelyContinuous](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/normalized-source-first-absolutelycontinuous.md) | 93 | `result-track:a333c236fae39f53c95c34ba67534670f85e12a08f336b691c2b174d97e21250` |
| 15 | `theorem` | [polarity_kernel_contDiff_two](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/polarity-kernel-contdiff-two.md) | 98 | `result-track:2ca848f053fb1dc4f4ee6fead3827f4c9fafff374792dfd66a4ddba2bb4136fd` |
| 16 | `theorem` | [polarity_kernel_hasCompactSupport](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/polarity-kernel-hascompactsupport.md) | 106 | `result-track:ff25d4c55dd58c2897ceff5b3d2d1c9197087226e29eaadfe7bcc6abcb12975f` |
| 17 | `theorem` | [polarity_kernel_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/polarity-kernel-deriv-integrable.md) | 131 | `result-track:fcae121c5b5fdf543458b7f02e19f3290994e5dc490f214e36538b7456ec7a78` |
| 18 | `theorem` | [polarity_kernel_second_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/declarations/polarity-kernel-second-deriv-integrable.md) | 138 | `result-track:87c6b3ab1f1cd2fe6079de44c24878a2790d587ee0ecbef44fb6af66829ea9b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f216bacc9c14a0819f471dae374acdc5e84ff134daa6ccb2c8fc249ce1407ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Convolution/CompactProfileHigherDerivatives.lean","GRWTSK/_verification/specifications/Analysis/Convolution/CompactProfileHigherDerivatives.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
