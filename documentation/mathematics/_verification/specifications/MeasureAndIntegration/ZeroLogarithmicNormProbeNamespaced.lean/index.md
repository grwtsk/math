# Verification target: Zero Logarithmic Norm Probe Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e204f3d58a9b16d81f155a0119594b7ccd8a30b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e204f3d58a9b16d81f155a0119594b7ccd8a30b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/logarithmicweight.md) | 31 | `declaration-track:e52d35329feeb18ec2d8a1b5e79b6dc27359b2014dfea752b83a76f589ebb63c` |
| 2 | `def` | [rawLogarithmicEnergy](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/rawlogarithmicenergy.md) | 34 | `declaration-track:38042037f9839351cf1d5a58fe58188c57759fcda9b19c2fe67f80d1a8f0b92a` |
| 3 | `def` | [sourceLogarithmicEnergy](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/sourcelogarithmicenergy.md) | 38 | `declaration-track:7837276e227ffbc61d54c401021a65bac10db08e8ee53561c6481dba29e292d1` |
| 4 | `theorem` | [logarithmicWeight_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/logarithmicweight-nonneg.md) | 42 | `result-track:f0419affcb1b8aa534bca099a9772895293f9102f2fdb48e9de2e20d6b2cb8c3` |
| 5 | `theorem` | [logarithmic_integrand_integrable](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/logarithmic-integrand-integrable.md) | 49 | `result-track:424bd30beb16882d5c4b2cf42fdb8e80196312092bad6720fe0b2614fd99eb9c` |
| 6 | `theorem` | [sourceLogarithmic_integrand_integrable](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/sourcelogarithmic-integrand-integrable.md) | 61 | `result-track:0ae8c2b005e115bcffd379c74082787db9638a789c0b0570fda52952d35176fc` |
| 7 | `theorem` | [sourceLogarithmicEnergy_eq_integral](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/sourcelogarithmicenergy-eq-integral.md) | 69 | `result-track:0fb91cb45991e54865be27378b73c2824a6405abd73cca400e14ab7324285949` |
| 8 | `theorem` | [rawLogarithmicEnergy_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/rawlogarithmicenergy-nonneg.md) | 75 | `result-track:b56025a6fed5bd54aa22f8ce17543633075cc223638d9890b378ad3a531d7eb8` |
| 9 | `theorem` | [sourceLogarithmicEnergy_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/sourcelogarithmicenergy-nonneg.md) | 79 | `result-track:080ac6e801d4b79a31e27eb0021519bcb051c2fef8109784c06e56ac46c4f951` |
| 10 | `theorem` | [archimedean_integrable_of_c1](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbeNamespaced.lean/declarations/archimedean-integrable-of-c1.md) | 84 | `result-track:629484c25f4f27388c225166d5cb15eb05c8969d7c06139db7bf7399d08eb629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c25ef1afc9d9eee097879211b2e7d61c943dafdcbfdf607a978fc2295384471a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
