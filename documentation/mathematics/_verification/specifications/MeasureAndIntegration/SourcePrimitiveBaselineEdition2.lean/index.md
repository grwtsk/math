# Verification target: Source Primitive Baseline Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d1d9b1253f160455d10a3fc2b03cd59f98b3fb5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d1d9b1253f160455d10a3fc2b03cd59f98b3fb5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean.json)

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
| 1 | `theorem` | [primitive_zero_of_le_abs](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitive-zero-of-le-abs.md) | 31 | `result-track:2d31dddef06fdf94d6cced148f201e8bce46f8fec98c2d3884c6ce75ad57a997` |
| 2 | `theorem` | [primitiveCorrelationZero_zero](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivecorrelationzero-zero.md) | 43 | `result-track:84412b42e013f0d7b8501512ade9da81d6489253f18f619687fb96553048d312` |
| 3 | `theorem` | [primitiveCorrelationZero_even](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivecorrelationzero-even.md) | 57 | `result-track:1b5e306c59e3ca2882d38e972121f6444a7265b5be791deb823ffa82a7673731` |
| 4 | `theorem` | [primitiveCorrelationZero_integrable](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivecorrelationzero-integrable.md) | 65 | `result-track:d0044b822ae41a0e576f1caa7762a14ed260b6a8c678417c20726eb739e60511` |
| 5 | `theorem` | [primitiveCorrelationZero_half_integral](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivecorrelationzero-half-integral.md) | 75 | `result-track:fdcf66784e1e41f138f1739c7daa6d597fe49b8411a978de1b20f545d9a0d89d` |
| 6 | `theorem` | [primitive_zero_mode_main](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitive-zero-mode-main.md) | 106 | `result-track:8225c045586956ff62079ea409e77f5191395ab35f3bf2e1b2757a161bf09b91` |
| 7 | `def` | [primitivePrimeCombination](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitiveprimecombination.md) | 121 | `declaration-track:e4cfce77c8d24a1400baa4106633bfed86164f8b7b15b9983b37ab47275f29f7` |
| 8 | `theorem` | [primitivePrimeCombination_eq_firstPrimeMoment](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitiveprimecombination-eq-firstprimemoment.md) | 130 | `result-track:5a2db5db622b1f4833f6d2db072a90bd4f12a2b8e76f182f80f4001d80c8302f` |
| 9 | `def` | [primitivePairedRemainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivepairedremainder.md) | 135 | `declaration-track:3f46886922a51784c411d22877fe68eb64d8d954b7e7fab8250cae722821dc0f` |
| 10 | `theorem` | [squareRemovedPairedWork_eq_primitive_with_drift](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/squareremovedpairedwork-eq-primitive-with-drift.md) | 139 | `result-track:67abda4164c36e8aaeefd484d91cecf31a68b598c02d7d40bbd72d5f58a0e006` |
| 11 | `theorem` | [squareRemovedPairedWork_eq_primitive_remainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/squareremovedpairedwork-eq-primitive-remainder.md) | 151 | `result-track:2f0dfb3ab36ef1e04036f5a63e4a94595f4e16a1604351273fe325c1b85f227f` |
| 12 | `theorem` | [primitivePairedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitivepairedremainder-uniformly-bounded.md) | 158 | `result-track:833cf4e59e6a22a69342e6b3199965fc90f919a2164b84767213cd207f2e246a` |
| 13 | `theorem` | [primitivePrime_tail_iff_residual_tail](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition2.lean/declarations/primitiveprime-tail-iff-residual-tail.md) | 170 | `result-track:c8ca3d19a985910fc37fd58572ed3661ec905ed4c14f2aaa5445ea24f4e8c6c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12cd81c84b95f22c86739cfcfb5426d2a7fe55f5a22ed955b698063e85ad69e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
