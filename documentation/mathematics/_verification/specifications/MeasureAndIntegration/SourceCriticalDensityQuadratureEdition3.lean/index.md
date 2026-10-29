# Verification target: Source Critical Density Quadrature Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd20640a7d0d0913e055dcbd7aa2d3a7c1afc9d3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd20640a7d0d0913e055dcbd7aa2d3a7c1afc9d3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity.md) | 26 | `declaration-track:ca7792f6d8e67d0122ea8aeb146b17d732346e3571b47112f5c49f4bae1cfb1d` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensityprefixdiscrepancy.md) | 29 | `declaration-track:52abed83c4e247e3fc97d05a7c168760841eea2e28fb40a1422303e9dc19d69a` |
| 3 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/decay-continuous.md) | 32 | `result-track:647ee11f7072a31ef9a1a716d09e66a16640041d85c39ed0e39f8ed27b326828` |
| 4 | `theorem` | [density_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/density-continuous.md) | 36 | `result-track:800b70d52f787bde82a90a5154760bd95af67829ba8587995fe15a11c245d17c` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/decay-hasderivat.md) | 39 | `result-track:635a8cac6a8adff424977c92ac6e7529fa3b34233610e244ab946ed7581673db` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-mem-icc.md) | 50 | `result-track:91163e6825417b8662b0f2bb1b65d2100dc1eddbd09b8627fd1a7b7c797336d7` |
| 7 | `theorem` | [criticalDensity_integral](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-integral.md) | 61 | `result-track:3b3c3220c845ab49d2928254e3c18adbf35c113cba7f97ef77a632ddea95cc9f` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensityprefixdiscrepancy-eq.md) | 73 | `result-track:4103ab122fd5768f05825dcca8e56a36dc6fcb5fea6dfc5a2133651f3d0dd6ec` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-integral-pos.md) | 80 | `result-track:457395b6f3839b20729d18d052c50d0038d21a1e00a8700086844c5f88409d5d` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-mass-lt-raw-length.md) | 93 | `result-track:17e43cc2fdde29ea9d427eaa1befeda8cf4ea88766b647548930c9d5ea7ccef0` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-weighted-pairedtailtest.md) | 103 | `result-track:1d942cf8a0b31c55464e339de32930ec4166ac512c31bf0e0e1ef9d36669fcfb` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticaldensity-quadrature-eq-full-drift.md) | 157 | `result-track:5e7a3fca320fb30e13161fc621b5070dd27d0ebaa35e4d94f422b03e65b2ad2f` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition3.lean/declarations/criticalremovedpairedwork-eq-density-quadrature.md) | 178 | `result-track:a44619a9e0766b2eee05b8c02fcc84af51b877135bba1fc0090143e104de7938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee6e0badccd0cfffc1a69dadb3fbad0eed9dbfa3ad563c053982ecd82a2f0c87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant78a3bad80e9866a45626e9e8f31b07d6a2abf1ae13e6600ffb82a17124e5c750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
