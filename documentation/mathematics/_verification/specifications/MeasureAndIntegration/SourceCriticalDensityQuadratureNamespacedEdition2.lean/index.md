# Verification target: Source Critical Density Quadrature Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4968baea57173e2848b77736111e16f07843b550",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4968baea57173e2848b77736111e16f07843b550`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity.md) | 34 | `declaration-track:e46fbc2a2195c90db33af77672d6262123485e094a3b9062f414b134c7487dcd` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensityprefixdiscrepancy.md) | 37 | `declaration-track:1431223a1f07dff0a724ceff19d7c4d8683f7c159fac7357d92faddda6299cc9` |
| 3 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/decay-continuous.md) | 40 | `result-track:4461df1547877ec9638e6874d327439ecc4dccf33e619b4b990e7983ce6d0519` |
| 4 | `theorem` | [density_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/density-continuous.md) | 44 | `result-track:6da273b3d84554da5a4d5e8b2240be0894b237b4111299c83c3514c26cf86452` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/decay-hasderivat.md) | 47 | `result-track:87cf80935df5e237b67a86f8af5b6b867f8993e32865db4988cbfc177faf7688` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-mem-icc.md) | 58 | `result-track:09ab7bd4544ab4704a495ddebce11521be1c36a368a44cc47f06be48c1a688c0` |
| 7 | `theorem` | [criticalDensity_integral](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-integral.md) | 69 | `result-track:537aadac090340da4dd440e1e8f2065babdf26cd57a386479da8886b62ebc1cc` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensityprefixdiscrepancy-eq.md) | 80 | `result-track:057c63e09391da2b8600672c6f6b9cfb3a40df7113800eb2615b297d6119deb0` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-integral-pos.md) | 87 | `result-track:621d61a4bb2935940618d09ba43562f05e83a14fdba16e579928f33de72c03d8` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-mass-lt-raw-length.md) | 100 | `result-track:25069d79ffc71aa55dbb4409c8549ce05c19f1d19f6c83350f2b7ac54c34ab32` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-weighted-pairedtailtest.md) | 110 | `result-track:1cb54c4df24eba31632c5154d64a315ece16f7c6bca640bf074bf88164c6f7bd` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticaldensity-quadrature-eq-full-drift.md) | 160 | `result-track:4ece072179e0a4bc9fa9565a3fbfce1b20d06d334309815349c99cb1c4cb1973` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition2.lean/declarations/criticalremovedpairedwork-eq-density-quadrature.md) | 178 | `result-track:635b0b205398ead39384794f3d9631aa926c50b9a604f0936112973d455a8cd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a48af143911cacb048b001d75feec80e00e73bea03a5834a1226ee025e5ce45a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
