# Verification target: Source Primitive Baseline Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65b823213878c3836d26585d16ab19ca9f784379",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65b823213878c3836d26585d16ab19ca9f784379`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primitive_zero_of_le_abs](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitive-zero-of-le-abs.md) | 29 | `result-track:0751bd386ee6c6ec8b7498c4ce2bf7fc9fa9b660dd569795043494d77cc3b1f2` |
| 2 | `theorem` | [primitiveCorrelationZero_zero](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivecorrelationzero-zero.md) | 41 | `result-track:28534c592368012caf35ce41dd088c2e85a178b6ece195497688f15d2262d1fd` |
| 3 | `theorem` | [primitiveCorrelationZero_even](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivecorrelationzero-even.md) | 55 | `result-track:01d6218ab57ad051e2c4c82841ba955384e7b63042a44fe251e0a9d866940449` |
| 4 | `theorem` | [primitiveCorrelationZero_integrable](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivecorrelationzero-integrable.md) | 63 | `result-track:e8939f3eff70b01b588cb1881361e189d308670d6fda36cf1fc2cba486d80d2e` |
| 5 | `theorem` | [primitiveCorrelationZero_half_integral](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivecorrelationzero-half-integral.md) | 71 | `result-track:c66d5fd231a4ba787bd63eb6e911fe801c8e07aa75ecd220f2728930fe99479e` |
| 6 | `theorem` | [primitive_zero_mode_main](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitive-zero-mode-main.md) | 102 | `result-track:9ece8d97f5d52420f723d51b6c7699a660b5a484cbd42383d87b07890a1a42af` |
| 7 | `def` | [primitivePrimeCombination](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitiveprimecombination.md) | 117 | `declaration-track:f2ef32fe15ab59ac53ceaa5b18d6b4a653c2975065f8cadac75e3532451c3ed7` |
| 8 | `theorem` | [primitivePrimeCombination_eq_firstPrimeMoment](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitiveprimecombination-eq-firstprimemoment.md) | 126 | `result-track:9821277f8cc06455da21a436eb73b2d503e354b64c7fb621ed48c9762b05ace5` |
| 9 | `def` | [primitivePairedRemainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivepairedremainder.md) | 131 | `declaration-track:8ab741c0d6e10b6f4604b7677d780c23372e4466c92ec05d8b9a9c4fcfac832b` |
| 10 | `theorem` | [squareRemovedPairedWork_eq_primitive_with_drift](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/squareremovedpairedwork-eq-primitive-with-drift.md) | 135 | `result-track:af58f01ad3919869ae9b5096e5e2bec1a11b8013a1de06e022ac68f287352df4` |
| 11 | `theorem` | [squareRemovedPairedWork_eq_primitive_remainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/squareremovedpairedwork-eq-primitive-remainder.md) | 147 | `result-track:ffe10149d12c31b0795cf15fa9a9bc9f7f2c103ce2718b87ad2adadcb903191b` |
| 12 | `theorem` | [primitivePairedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitivepairedremainder-uniformly-bounded.md) | 154 | `result-track:ba3acfb55a8ecea49789f535760015db5c3bdaec3f4f9f4921a1e2f8a808faa4` |
| 13 | `theorem` | [primitivePrime_tail_iff_residual_tail](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition1.lean/declarations/primitiveprime-tail-iff-residual-tail.md) | 166 | `result-track:97bab30906a21827c8986c24f737f054b68625dc6bc41e9a475e057e350d48b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af4c50d57fbc2eb946058a3e02d02e30e20434f68e89a70e38bc96a052bbd00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
