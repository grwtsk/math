# Verification target: Attempt02 Actual F7 Normalized Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ab8d7c28baac45b2ae8994abfa84bcf7b055032",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ab8d7c28baac45b2ae8994abfa84bcf7b055032`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiPntAtOne` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualF7NormalizedKernel](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualf7normalizedkernel.md) | 20 | `declaration-track:f5697e991ad371b2c6ebdc364de49deb5c2587ce6f492a534c95ec027600cff9` |
| 2 | `theorem` | [actualF7NormalizedKernel_aestronglyMeasurable](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualf7normalizedkernel-aestronglymeasurable.md) | 25 | `result-track:391ab10cb2d5e49db6dbeeea182066e74303b8f5be319317faf8cde9eca16c94` |
| 3 | `theorem` | [actualF7NormalizedKernel_norm_le](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualf7normalizedkernel-norm-le.md) | 33 | `result-track:5db769b541e61c2df112870b75613290dcd09b47fe1ffa0b899f765980d467e9` |
| 4 | `theorem` | [actualF7NormalizedKernel_integrable](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualf7normalizedkernel-integrable.md) | 44 | `result-track:6d352cd73cfb24107fba99f44afc386654e88f8ec063978afd0d370eb879cf57` |
| 5 | `theorem` | [density_normalized](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/density-normalized.md) | 50 | `result-track:ec73f511e623fba969197c8afb4e0c49bf02d3b3dc1259b2efb3a3fd7650692d` |
| 6 | `theorem` | [actualF7NormalizedKernel_integral_eq_primitive](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualf7normalizedkernel-integral-eq-primitive.md) | 59 | `result-track:ddd337285fb2000b3ea563d684f042059661d730dd22d2dc9e710240c094bcaf` |
| 7 | `theorem` | [kernel_tendsto_zero](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/kernel-tendsto-zero.md) | 70 | `result-track:42c7a926e0c22b8f0350577000530a23d1242ded8d562fbb956f91479bd9bfcf` |
| 8 | `theorem` | [actualAnchoredXiTailPrimitive_normalized_tendsto_zero](../../../../MeasureAndIntegration/Attempt02ActualF7NormalizedKernel.lean/declarations/actualanchoredxitailprimitive-normalized-tendsto-zero.md) | 89 | `result-track:66059bcb1afcff79ef8f57e320467898950f4bc968bfe516863d1fd6d33b5907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ef14656fc8b0c8ca1cb5d360c33ed4ba37a39ed23138cad356bcfa1575417c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
