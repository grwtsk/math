# Verification target: Riemann Hypothesis Estimate Converse Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7f1521dbb4b96ab1a08e7acd3dfc51b8160c274",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7f1521dbb4b96ab1a08e7acd3dfc51b8160c274`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.Assembly` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Bridge` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_transform_conjugate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/actual-transform-conjugate.md) | 38 | `result-track:f8a28c8a6bc55980d5c56cf079b6db1624eda85823951ed62d518f727eff52de` |
| 2 | `theorem` | [actual_transform_even](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/actual-transform-even.md) | 47 | `result-track:3a5f78e4ab184ce3cc3681be34917f2d8dee7c010913bc16c2628a8b66acdfa8` |
| 3 | `theorem` | [actual_transform_im_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/actual-transform-im-zero.md) | 58 | `result-track:94f55a9ff4a7396f7d0fa221ef7acfd7dd204be6a46e6588790250fd30dfbb4a` |
| 4 | `theorem` | [shifted_value_re_zero_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/shifted-value-re-zero-of-rh.md) | 67 | `result-track:e3b0348ae1850f8fbed9c24b81357de8a6cc3a5eb070435dbffd33cb88427862` |
| 5 | `theorem` | [source_quadratic_nonneg_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/source-quadratic-nonneg-of-rh.md) | 74 | `result-track:dfbbf11a2942c4a750282bcb6a7ec683da9bd6b6f12b78f409f23379d179bca5` |
| 6 | `theorem` | [estimate_of_riemann_hypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/estimate-of-riemann-hypothesis.md) | 92 | `result-track:3ba5d5d604568b45c5cd6d9684c3d37585d916a9dae0e05e0676cf8b215b658e` |
| 7 | `theorem` | [estimate_iff_riemann_hypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/estimate-iff-riemann-hypothesis.md) | 97 | `result-track:51f8eea0a3a3e82e47fcaf9ad598147b1dc280584859ddd2569f20dafd7410cc` |
| 8 | `theorem` | [prime_square_compensation_iff_riemann_hypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/prime-square-compensation-iff-riemann-hypothesis.md) | 102 | `result-track:c66a6eea471f7dd62102828a1a48ec817e52fbfbb2c95b8df186710aa5831f84` |
| 9 | `theorem` | [boundary_rate_iff_riemann_hypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/boundary-rate-iff-riemann-hypothesis.md) | 108 | `result-track:d534df08105ec4c4d5461c28ab47c7b9aa378ff9089db7b013b17ab87958bf65` |
| 10 | `theorem` | [estimate_iff_source_quadratic_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannHypothesisEstimateConverseNamespaced.lean/declarations/estimate-iff-source-quadratic-nonneg.md) | 113 | `result-track:ea32eebf116007baca155a0b881bbae8cf314e8c3585c6d15b56b4eff1d96ea8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab01a721f59f77d6b24f43f9a83b6fe924832f4c84da96dfec14b9af451c19ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
