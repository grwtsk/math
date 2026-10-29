# Verification target: Source Scale Variation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ada6a590fa1cc6613cfc89f012e58341678ed816",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variantee8ec9ec744ad5775b7a0b690051b03bd920e4e54b288a58256eb998c1077216.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ada6a590fa1cc6613cfc89f012e58341678ed816`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variantee8ec9ec744ad5775b7a0b690051b03bd920e4e54b288a58256eb998c1077216.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variantee8ec9ec744ad5775b7a0b690051b03bd920e4e54b288a58256eb998c1077216.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDerivativeEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/scaleprofile.md) | 32 | `declaration-track:090010a930b41f509389c4c3a66f3ca846f725a27654be86e9aa02efcb286924` |
| 2 | `theorem` | [scaleProfile_eq_source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/scaleprofile-eq-source.md) | 37 | `result-track:ac883bf21fefb98903c92870842be5f4efe11df34257d11ea473d09e6be7ea8b` |
| 3 | `theorem` | [sourceNormalization_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/sourcenormalization-pos.md) | 46 | `result-track:80334aac8a673ec59e0ad5754e2b2c1c1dc1e0976cbfca26cb659a1c0ae63fc4` |
| 4 | `theorem` | [scaleProfile_contDiffAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/scaleprofile-contdiffat.md) | 52 | `result-track:d543b4e9a9f3fd34546e25c89f77656ce2365205cb957c7657357e2d35a04d4b` |
| 5 | `theorem` | [source_contDiffAt_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/source-contdiffat-scale.md) | 62 | `result-track:ac4d6cf5603a05e5f3b03edabae5bb0a2b208c3fb7143f586eb170df296e06b7` |
| 6 | `theorem` | [source_contDiffOn_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/source-contdiffon-scale.md) | 69 | `result-track:f906194929251a0c9aeb4605c2e929c905cf3b5c8ae89ed46377c23debc26cbb` |
| 7 | `theorem` | [forwardProfile_contDiffAt_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/forwardprofile-contdiffat-scale.md) | 74 | `result-track:1ecf49edfe43fcf046727e86aea9763fa0bb3601df6c99bbfd6d62c30ee3c957` |
| 8 | `theorem` | [reflectedProfile_contDiffAt_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/reflectedprofile-contdiffat-scale.md) | 83 | `result-track:8f81c0fbcf70eec0a38dd611c0060135d70f54638cec05a90a01cb200cb3b5e3` |
| 9 | `theorem` | [profileProduct_contDiffAt_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScaleVariationNamespaced.lean/declarations/profileproduct-contdiffat-scale.md) | 92 | `result-track:1ae8d5819cf17efa2b830bdc6c834807712a10c39d26ce4e69e05a93f6bb123d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93c4a2e028c0e24b762ac743cde603e58a2bf620d34d85e845e8075e3def48f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variantee8ec9ec744ad5775b7a0b690051b03bd920e4e54b288a58256eb998c1077216.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variantee8ec9ec744ad5775b7a0b690051b03bd920e4e54b288a58256eb998c1077216.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
