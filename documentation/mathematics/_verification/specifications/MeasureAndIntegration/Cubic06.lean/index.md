# Verification target: Cubic06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a35087321e0d4d34d071cf12b15f1eca834e3cf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Cubic06.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Cubic06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a35087321e0d4d34d071cf12b15f1eca834e3cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryTransform` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitivePoleMoment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/primitivepolemoment.md) | 25 | `declaration-track:33ee0e1fea362d4faf8c007ed5b122ddb86fd6ff38c76c2fd8610b8b994adafa` |
| 2 | `def` | [unnormalizedPrimitivePoleMoment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/unnormalizedprimitivepolemoment.md) | 29 | `declaration-track:f26cc8d35abe811690fe917088518dc05e9ae4b2cf54280f899fd2abe80981db` |
| 3 | `theorem` | [weighted_derivative](../../../../MeasureAndIntegration/Cubic06.lean/declarations/weighted-derivative.md) | 32 | `result-track:7611ef3356a5189d49e30d210fc0e28b86565984cd1be7a162321727cc65be58` |
| 4 | `theorem` | [first_weighted_derivative](../../../../MeasureAndIntegration/Cubic06.lean/declarations/first-weighted-derivative.md) | 52 | `result-track:4c6afb7d17a02c02a05029a924836830a1dc7f3dd4808fbe054ca0f27947210b` |
| 5 | `theorem` | [actual_first_source_pole_moment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/actual-first-source-pole-moment.md) | 83 | `result-track:3bcb334fa6f7bd72c0bb8e663d9600414048e9af2b7305f9cc7e616ce93e0baf` |
| 6 | `theorem` | [second_convolution_moment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/second-convolution-moment.md) | 116 | `result-track:0e6a50b4f01bd364f04ad8fdc3fad5b064f57f13e8b1fdda6eff7cc9a9c119dd` |
| 7 | `theorem` | [actual_second_correlation_pole_moment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/actual-second-correlation-pole-moment.md) | 167 | `result-track:f1401329ab772b5208bf062a23a6dac45793b87bead938bbe23b803854d12606` |
| 8 | `theorem` | [reflected_cubic_derivative_integral](../../../../MeasureAndIntegration/Cubic06.lean/declarations/reflected-cubic-derivative-integral.md) | 205 | `result-track:ba0b208784486e6911e5348b8ec863761a13a561b6b1abbc20046090c83736f8` |
| 9 | `theorem` | [boundary_cubic_moment](../../../../MeasureAndIntegration/Cubic06.lean/declarations/boundary-cubic-moment.md) | 240 | `result-track:b02e64b33b5ace7ff732afeaceaece55308839db5a2411bffa11c9e31e7551fc` |
| 10 | `theorem` | [primitive_pole_normalization](../../../../MeasureAndIntegration/Cubic06.lean/declarations/primitive-pole-normalization.md) | 281 | `result-track:01ee9a621663eeba876d0a367b674da231120af97e90b80789a8e5d95fc07813` |
| 11 | `theorem` | [boundary_cubic_moment_unnormalized](../../../../MeasureAndIntegration/Cubic06.lean/declarations/boundary-cubic-moment-unnormalized.md) | 288 | `result-track:03db87fb6dde0e58a81e7ef23e0465a7b3de6af5d703b37ae0eb6bdc102faa6f` |
| 12 | `theorem` | [primitive_pole_moment_pos](../../../../MeasureAndIntegration/Cubic06.lean/declarations/primitive-pole-moment-pos.md) | 295 | `result-track:0b4ed046289fc842c6cfbc154445058a21d6af2a12573bd38d5804ba869a725b` |
| 13 | `theorem` | [boundary_cubic_moment_pos](../../../../MeasureAndIntegration/Cubic06.lean/declarations/boundary-cubic-moment-pos.md) | 319 | `result-track:cb7cec7ef936ef5b9b4b1d35365b62165dadb9b7b45c814bcb4d1e329a2182d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=635e721f660c98711218f39f1c907da2cb7520a2363560fb4f97491ea5c4e152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
