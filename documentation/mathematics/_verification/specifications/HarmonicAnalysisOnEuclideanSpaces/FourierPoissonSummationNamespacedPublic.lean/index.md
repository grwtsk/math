# Verification target: Fourier Poisson Summation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddecdc618b3674f6ec090fb2651623eddf8ee6b2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant7caf724391a1d7b9e00587338070afa7a82a6c8221d13c561723e86b18f6cce7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddecdc618b3674f6ec090fb2651623eddf8ee6b2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant7caf724391a1d7b9e00587338070afa7a82a6c8221d13c561723e86b18f6cce7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variant7caf724391a1d7b9e00587338070afa7a82a6c8221d13c561723e86b18f6cce7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/real-fouriercoeff-tsum-comp-add.md) | 59 | `result-track:eb190a318c3f96cad6541940fe7293ea5ae75038129d2a3c380ca7b46a47bf87` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/real-tsum-eq-tsum-fourier.md) | 110 | `result-track:9ec7de51cb27ef505aa9dc0721fd52628fc937e11eabcf7d2e033c3ae940541e` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/isbigo-norm-icc-restrict-attop.md) | 132 | `result-track:32c873f5bfb73a393d94cb6a5e8fbc993665a2dc38500728b7f0b1a837b7a52d` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/isbigo-norm-icc-restrict-atbot.md) | 160 | `result-track:08313e5f34bb457bc270c4e566bdba0bdb6f11a829132ce5576deaee670bf26e` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/isbigo-norm-restrict-cocompact.md) | 180 | `result-track:03eb22d7f9a0db75e2e1e166da092d62d451e72aeeab1b7efa5e5d325a4586b0` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourier_of_rpow_decay_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/real-tsum-eq-tsum-fourier-of-rpow-decay-of-summable.md) | 202 | `result-track:2d7fdd0c3050184e2129ac874f4ad5b8709cd5ac1f9c51a7bdde19a770a3e914` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourier_of_rpow_decay](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/real-tsum-eq-tsum-fourier-of-rpow-decay.md) | 213 | `result-track:de8835d967537019ef2637bf2c30935dadd2eb230674fc09fa457351bdcc393f` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationNamespacedPublic.lean/declarations/schwartzmap-tsum-eq-tsum-fourier.md) | 227 | `result-track:a9ce3fccc715d8d5f42d0de57ef06de72021d08d3007520eb060658984db26b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ecaf69e0257b40fdb7371d59669f7b32d3c6f02b18b1884ea64f32807ab6ae6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant7caf724391a1d7b9e00587338070afa7a82a6c8221d13c561723e86b18f6cce7.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PoissonSummation/Variant7caf724391a1d7b9e00587338070afa7a82a6c8221d13c561723e86b18f6cce7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
