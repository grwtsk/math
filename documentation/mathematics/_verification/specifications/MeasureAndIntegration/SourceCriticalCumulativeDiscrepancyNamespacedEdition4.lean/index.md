# Verification target: Source Critical Cumulative Discrepancy Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80ce55de1c441d92963b35fac984b2ab5f818496",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80ce55de1c441d92963b35fac984b2ab5f818496`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticalcumulativediscrepancy.md) | 39 | `declaration-track:c6be4342d62086e743a5ce7fc45f080beaf0f715c734f329df2d105272d36d9e` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive.md) | 43 | `declaration-track:b699a0aeb6bfe3678bc94e250b212a9af3f3bb66cc2bacd9b3b001f1433d11b2` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge.md) | 47 | `declaration-track:fb2b696d98ef185c9a46239bdc7a3fe68a4066ea56854f1749ca0eeff91b4935` |
| 4 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/decay-continuous.md) | 51 | `result-track:02f915c9d2c00859a568db0de7a45db2f55b5dfd5866972e12cdf9cd4140ec5e` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/decay-hasderivat.md) | 55 | `result-track:9dde2ae5be4f9ccbcbcfd2a9b535d367366609c5ded0a0373cea65edd669a48d` |
| 6 | `theorem` | [density_mass](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/density-mass.md) | 65 | `result-track:1d4b2d65875ed06fbe67b534dc148b0fdc9269c18d46d4a6bef439f63e038787` |
| 7 | `theorem` | [density_mass_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/density-mass-continuous.md) | 71 | `result-track:caeb0f1b442736ef93f2f62a508678760e6788213268a17ab87a2193c67964b9` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/prime-prefix-intervalintegrable.md) | 78 | `result-track:de764d9b1b6f23b5ebe334b4c4c511156c4c882f18e4b6e5c4c29ef6f4b4ad8f` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticalcumulativediscrepancy-eq.md) | 91 | `result-track:bf1ddc1b56556aa0761310d51ef8e359fe3512afcbdff278a06d1ed9108b2be7` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticalcumulativediscrepancy-at-upper.md) | 98 | `result-track:9aebe7c2b6f08c36db76afaa9cf41e00a7dc9d62a04e29500df34bc1752ad50b` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticalcumulativediscrepancy-at-zero.md) | 102 | `result-track:4f8c7c8a5cf34b8a9d369184beb36f19e14840ed4e2f63469310940dc500915a` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticalcumulativediscrepancy-intervalintegrable.md) | 106 | `result-track:094793d0ba95e1bddedac2299f46e377b16fd1940194c1b8ba5d2ef09959035a` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-at-zero.md) | 112 | `result-track:a000aadc08498cce721de8214f41bf5c2f8823e01b3e9395dcdbcf8024032d98` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-continuous.md) | 116 | `result-track:5f20c0da3a624b1300063886974cacac9afd78f6a85ce45a2dee821c000b343f` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous.md) | 120 | `result-track:ebbc9b101ba972167e51699ff0677aca9036375bb300241e9f476a9a39e540c1` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat.md) | 126 | `result-track:953e58817cab33781428ed06b32f40978df72e9d39a6bf2de030e9685f2952e0` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-sub.md) | 135 | `result-track:ac58fcf6a8197122db4e6a674d5a786161d6e4ae631bf5c150d701a88c0c6295` |
| 18 | `theorem` | [density_mass_integral](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/density-mass-integral.md) | 142 | `result-track:3b14ea663af51d5505c166b010b6a5db98aeb986adb8758aa29803358f88c1c7` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum.md) | 163 | `result-track:cecf87bbc8bde2277ad4eb6c5cadb64a411819ac76ab673083d95959664638f9` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge-at-zero.md) | 185 | `result-track:5e807669ec35292bf1b9761dde2fc6a211f14ca642f87c4fb1b8e74b868149bb` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge-at-upper.md) | 190 | `result-track:3e7e61cc3f78ab483056c735fa3999b269140daa4005df8df9d921fbd2dafee4` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge-continuous.md) | 196 | `result-track:39605157b81b6fa492b565c0d7f92865a7eab84a07890c175c0a7659351a0846` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous.md) | 202 | `result-track:e134a505a2ecd5add78ec6d8bdf82a28578e06e0aaebb3c4c71ed94e81bd3f62` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition4.lean/declarations/criticaldiscrepancybridge-ae-hasderivat.md) | 210 | `result-track:40c9ec73dd78dc3c71ed481a3b6dcb8403b5390ec147783c7ee7820566316431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eeceab583af92983641c72169f088d6a6871201a0b7ecc5b1c55edf400fe19c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant45fb936d9b082f383bb952fcd00a86d10e0676ef29049633586750a65b8c19cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
