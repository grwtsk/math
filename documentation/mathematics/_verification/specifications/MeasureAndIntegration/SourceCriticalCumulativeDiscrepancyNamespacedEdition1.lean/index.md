# Verification target: Source Critical Cumulative Discrepancy Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d49f4db12e6332548c1c863319a29c4b29f123",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d49f4db12e6332548c1c863319a29c4b29f123`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean.json)

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
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticalcumulativediscrepancy.md) | 38 | `declaration-track:9b093bc37b0b227ea8def69db65457972b4b324417a9db44a15adb754816511e` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive.md) | 42 | `declaration-track:01fd261380dd2e7218dece5c56e228a74acda7a9d9524b06da5da80ebe214404` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge.md) | 46 | `declaration-track:85910426446dbfcd88e2759409500a7978d95a17cb7122c49b32fb3d29d8bb04` |
| 4 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/decay-continuous.md) | 50 | `result-track:ec92a4b5191c52fbdd74fef7b88ccf1396aa579ba6f891fa2bb5bf103217e032` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/decay-hasderivat.md) | 54 | `result-track:ba2588767efb829f28ea52350e2d938a649c7e1eb60417cc0c4716a97931775c` |
| 6 | `theorem` | [density_mass](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/density-mass.md) | 64 | `result-track:ce7864a7e5afebbb64f8bd0f039a42e749c363718220052f0db208008b8a2722` |
| 7 | `theorem` | [density_mass_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/density-mass-continuous.md) | 70 | `result-track:7bdd68d4eaadcd822ce299c4f5f8f9f7fcb47030e4da21f68ee59c3b81ccda57` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/prime-prefix-intervalintegrable.md) | 77 | `result-track:e14127b9fc675157cf81e058767dea32110f71ac51c92d08a51f9a6e2b6ac7e4` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticalcumulativediscrepancy-eq.md) | 90 | `result-track:202bb2e88e99cef31bd6ed7a1b5c4e363b1ed5cd22c36e3fd49ddc48be725577` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticalcumulativediscrepancy-at-upper.md) | 97 | `result-track:965816a82b212316035fcbcbb567b185ebcd9a5fbd19bccb8dd70f0de66a8a49` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticalcumulativediscrepancy-at-zero.md) | 101 | `result-track:3ae17d630113d1a1d07d8680d98928c4519cf8a5c45e514300876765b7883f6d` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticalcumulativediscrepancy-intervalintegrable.md) | 105 | `result-track:d0172526624034f7376cd694796ab2007d9ef13c01bc30372ea50b17828198a1` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-at-zero.md) | 111 | `result-track:870624551cf941f8a3e475d52c0e036266b180ce1964ab9e30aaeb609a65495e` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-continuous.md) | 115 | `result-track:1fe5b6f4113b5558dd869d162e62cdff98468e9732e06c84930f72e7d6099562` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous.md) | 119 | `result-track:e46066a7c1187d54aee09c0726725848fcdb1759d0b342487f75ef1c96253c8c` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat.md) | 125 | `result-track:512dafd2f2efa478cef5a3c4f68b1ee524430fc293810b65b1388b85cf90a73c` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-sub.md) | 134 | `result-track:fd88477c4de8eb73d9344fb8c09841cdbb00c1f1ecb0eeed321544dcd7a2da43` |
| 18 | `theorem` | [density_mass_integral](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/density-mass-integral.md) | 141 | `result-track:7c1760b8d6cf53246f2ebb340639441e8dda257a1ea88e17bac992c94b9c95d3` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum.md) | 162 | `result-track:6609c5008f3147bbdb3f007d28b5e87d87fb0131f50fb49b151d7fab7acdc21a` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge-at-zero.md) | 184 | `result-track:0d026ebc3e274e712f036844ac8eb0b78cf972f82d122463ac676fb02c6d99d1` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge-at-upper.md) | 189 | `result-track:2481511d9ce07ffa8b65fbae992d331b0cf709062b9b55b5cbf6ef7035d8c27f` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge-continuous.md) | 195 | `result-track:f2156d9ed949433aa188e68b4eeea864e401091b2c5b200c84755075d9e5cbe0` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous.md) | 201 | `result-track:c6f61aa17d7492f3aed7f6770d796fedbccde88ba79a6f2242422679590f2526` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition1.lean/declarations/criticaldiscrepancybridge-ae-hasderivat.md) | 209 | `result-track:ec948fa6bd129ef540f787674dce55ad9366ab6584c604ca4b026bf596119766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fef769f0e8c54346e393926cde2d6bfe559fd3119039987f5f8ae6562f13ccf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant2f0fee5678560d4bc9e0c7c7ca70effcfc4a638bf30fe547f0a54bcc1a6996f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
