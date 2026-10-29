# Verification target: Real Tail Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealTailKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealTailKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailKernel](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel.md) | 27 | `declaration-track:7d103a77410ec981de6944dc22bbc6006a3dd18ba134519c3329cd8cc398ef63` |
| 2 | `def` | [tailFormula](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailformula.md) | 32 | `declaration-track:1f303b5a076ebe804d30cfaf0ba82187620f9ba1bc0e4d1f1e467d20f33d9b7d` |
| 3 | `theorem` | [actual_tail_integrable](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-tail-integrable.md) | 38 | `result-track:047c1f99f39fff98e10b0cf985dd51a094ea93c6dc233863d444a3e4ee9879f6` |
| 4 | `theorem` | [kernelIntegrand_scale](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/kernelintegrand-scale.md) | 43 | `result-track:976f7f11345105f4fc38db4ec9af54a75ba64d716dac627f65a487477df73bda` |
| 5 | `theorem` | [tailKernel_eq_scaled](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-eq-scaled.md) | 51 | `result-track:17b09f613ab627e46662fdec71227358948fcd8a00aa8d6654811f1365958cf4` |
| 6 | `theorem` | [actual_tail_integral](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-tail-integral.md) | 61 | `result-track:43ef614e374d46ee5b28c9ecef6e4b913b9b967428094f4fc004a70dd39aeb7e` |
| 7 | `theorem` | [tailKernel_eq_formula](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-eq-formula.md) | 75 | `result-track:53dacc0dffd4661a9ad94095f6fe795af94e96b73354fb93635c47f1ed768ddb` |
| 8 | `theorem` | [actual_tail_formula](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-tail-formula.md) | 95 | `result-track:8d13ff0ffef37aae9de50df97a15b6abe93edbac42084381a5b56a3fc0f84fc9` |
| 9 | `theorem` | [tailKernel_cleared](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-cleared.md) | 103 | `result-track:4b20e1f14eebee7f0ad1fb6a12eeafad7cc19998a43b4f840bf7ad26011a262d` |
| 10 | `theorem` | [tailKernel_cleared_tendsto](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-cleared-tendsto.md) | 112 | `result-track:8f5ae870379cfaa822e1ffded662c5589197b5de8595dc35ae9a1b5b13e7f806` |
| 11 | `theorem` | [tailKernel_analytic](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-analytic.md) | 131 | `result-track:75acdfd2b4712a80bec4b125d82f82dbe0b1dbe0b36e6c6f88fe4efaaaa2e0a8` |
| 12 | `def` | [polynomialTailKernel](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/polynomialtailkernel.md) | 139 | `declaration-track:8a2119d97737e18919a5063de1d2084b09744fb0922b5589042ef0cdd6d73bb8` |
| 13 | `def` | [sourceTailKernel](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/sourcetailkernel.md) | 142 | `declaration-track:f3df1a2b5b29b588141eef4af5cb63581dec3d4af37bfd40f94b29d2de9c84ee` |
| 14 | `theorem` | [weightedPolynomial_tail_integrable](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/weightedpolynomial-tail-integrable.md) | 148 | `result-track:77dbdef4438dc8103574d4aed9eed7cd68df3fc0bd05b48f1c0b591ec9d4d858` |
| 15 | `theorem` | [integral_weightedPolynomial_tail](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/integral-weightedpolynomial-tail.md) | 154 | `result-track:dfc0554d7a02aa5af0d1c73a41f6fca83fec2a1f5fffabca845cdba646f34cf4` |
| 16 | `theorem` | [actual_occurrence_tail_integrable](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-occurrence-tail-integrable.md) | 167 | `result-track:7aceb350a69d9bbe28dab92773cf3adaa97a166ef437223d2fbe9e3cd7b08188` |
| 17 | `theorem` | [actual_occurrence_tail_integral](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-occurrence-tail-integral.md) | 175 | `result-track:04676d13da83da470e630ff2ffacae58df9d93f15532d3b1aa8c5a95858b4d81` |
| 18 | `theorem` | [tailKernel_lower_cleared_tendsto](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/tailkernel-lower-cleared-tendsto.md) | 209 | `result-track:fd1f0e27d4be879ef06915d7a7a6f9e8134b7b3feac50c01fe0e5c8ecb5c434a` |
| 19 | `theorem` | [polynomialTailKernel_cleared_tendsto](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/polynomialtailkernel-cleared-tendsto.md) | 224 | `result-track:daf2580d0d7b4e5960377f56eb33b2dd5a4333794caacd53f8bb96c6b9d7e835` |
| 20 | `theorem` | [polynomialTailKernel_analytic](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/polynomialtailkernel-analytic.md) | 247 | `result-track:b8c44d66e8d6b567a00351b2ad5fa7b3087e2b9d6c497af621e09933320905ec` |
| 21 | `theorem` | [sourceTailKernel_neg](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/sourcetailkernel-neg.md) | 252 | `result-track:a40c4a01bec9fb049a3ccf4bf6342ad7612403d9fc0fc8659d21f5549e972ebb` |
| 22 | `theorem` | [sourceTailKernel_local_cleared_tendsto](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/sourcetailkernel-local-cleared-tendsto.md) | 258 | `result-track:55e92c91f34eacaa88cbccab4704d5979baef056f66c408cdcbf8b41ec324594` |
| 23 | `theorem` | [reflected_multiplicity_tail_coefficient](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/reflected-multiplicity-tail-coefficient.md) | 288 | `result-track:40c8ad31300708a36e6023cbea5feeebf0940792e496f6f3e249676c38337ced` |
| 24 | `theorem` | [actual_reflected_point_tail_coefficient](../../../../MeasureAndIntegration/RealTailKernel.lean/declarations/actual-reflected-point-tail-coefficient.md) | 304 | `result-track:b329391051241ff37f2e824c1ff09c1ff681dacd80a4304bc1f2818c7707aabf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d39e4bc79345182e25038403d15eec3ee2764aafec82320278a5493324e5b9b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
