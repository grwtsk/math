# Verification target: Source Critical Density Quadrature Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b017d6135f4eb70a876d611f90cfd294ab211f66",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantecacc9c979138fcb67bcf361ea96b968fae560e47827fa61792e060b50ead345.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b017d6135f4eb70a876d611f90cfd294ab211f66`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantecacc9c979138fcb67bcf361ea96b968fae560e47827fa61792e060b50ead345.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantecacc9c979138fcb67bcf361ea96b968fae560e47827fa61792e060b50ead345.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity.md) | 37 | `declaration-track:4b836f0b6c9b3ab434118f35bef112eae00dec76b560c50f210ef818e31a384b` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensityprefixdiscrepancy.md) | 40 | `declaration-track:d0a74943e0807af6ec819f567476c8884998fa9d3e256890561f32dd0d470187` |
| 3 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/decay-continuous.md) | 43 | `result-track:8bc975f657289b59268d2b3c066ef83f038aad4c99103ced6aaf41f522cdb30f` |
| 4 | `theorem` | [density_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/density-continuous.md) | 47 | `result-track:39eed62d7f98faf7e0826840d352eeb996b0a2ac312b4c9eeff23599a456ea04` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/decay-hasderivat.md) | 50 | `result-track:00911b43cb96830ca16f936bd0e7a1dfb9f03a7325f309a4d8f83e3b924255dd` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-mem-icc.md) | 61 | `result-track:8bb4edff23713e04d411463808cd7bdcbb3d87680b0b9f6f03741d215f212ad9` |
| 7 | `theorem` | [criticalDensity_integral](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-integral.md) | 72 | `result-track:b75f4ec711f26ab0f169ce7b6a683d337aa225d57fc8377c1330779d7f0d4b2c` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensityprefixdiscrepancy-eq.md) | 84 | `result-track:b7d0dba7ef431b61a98fbdca00bd790ff885f9280f7fc750da52aef25f350e85` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-integral-pos.md) | 91 | `result-track:4724f69722f6a56eb3c7b7777d147e0b5ae3660f562fbc10cee3e7babe41573b` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-mass-lt-raw-length.md) | 104 | `result-track:2f4cb35a4acefa9ee3850b4bf5b266a77242dd027dfb84a0b9bd9b724424da35` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-weighted-pairedtailtest.md) | 114 | `result-track:f957211e5b7cafa32a78b8866282e430c16a916207f025944fb7722ea2d8ab40` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticaldensity-quadrature-eq-full-drift.md) | 170 | `result-track:5bb4188cfe0fcc6a9f08df439028d67cc0c490baa3fead7f0887ac00376b4ef2` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureNamespacedEdition3.lean/declarations/criticalremovedpairedwork-eq-density-quadrature.md) | 191 | `result-track:a1e0ea8d4e4574c5526bea6d475c288eef2c212b92c6e1dd09bef30a59e592b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73d571e2b28d1dfbac44b86805183380b0ff50d1745152137e7ee92533cfb66b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantecacc9c979138fcb67bcf361ea96b968fae560e47827fa61792e060b50ead345.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variantecacc9c979138fcb67bcf361ea96b968fae560e47827fa61792e060b50ead345.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
