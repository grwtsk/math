# Verification target: Source Critical Density Quadrature Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1316c9cf13d2bdef98600b9c180cf5716ef074f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1316c9cf13d2bdef98600b9c180cf5716ef074f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean.json)

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
| 1 | `def` | [criticalDensity](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity.md) | 27 | `declaration-track:e78bf90370a701e837d7168fc95ce775fb1be591c22bd681601fbe6dae72dfa3` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensityprefixdiscrepancy.md) | 30 | `declaration-track:0a19f75bfc20144d9387982e130a0fee01f94d6dc15cf82b63f783c6173ec443` |
| 3 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/decay-continuous.md) | 33 | `result-track:bdcf88d831902517243299f067dd92e047c0b565eb04b1b19aaf53c3331a36db` |
| 4 | `theorem` | [density_continuous](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/density-continuous.md) | 37 | `result-track:b40567167532b40612c068d3109a4c22c7d6af35f064d1a6b949282ceeccb0da` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/decay-hasderivat.md) | 40 | `result-track:1ed5ebb10530117409e8e618160fd5fae095fde66419c08ea0fce02b50e54b39` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-mem-icc.md) | 51 | `result-track:b8016a07998664084a0b7edd963ed3454467bce895ee13f328a84154fbe4e0eb` |
| 7 | `theorem` | [criticalDensity_integral](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-integral.md) | 62 | `result-track:c8bf7cb7e2db71f7ff1b66945a4688b834b746844c00bdcf86f82488d479ebb8` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensityprefixdiscrepancy-eq.md) | 74 | `result-track:afd36c95942908c974491e122e22729bf9c331d049a4e8bcb0b0f17a45bdc4b7` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-integral-pos.md) | 81 | `result-track:6f7e1d30ff16d9141b6ee462d42d58891dc9ba2d6b57e0225cfe82573f3c82d9` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-mass-lt-raw-length.md) | 94 | `result-track:310f7e6bd047dfb377c33ff7d70edbd43757398b6f70e0198c1bdfa0f7266323` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-weighted-pairedtailtest.md) | 104 | `result-track:39679b23be98531fcd31f207650c2b0853ccf5b94b2faf4e8fe40d03be567d2a` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticaldensity-quadrature-eq-full-drift.md) | 158 | `result-track:5ef2e659c8d2ea457089a1b6c2d9a766a32e1b0abef4757387532e00c4db0d83` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../MeasureAndIntegration/SourceCriticalDensityQuadratureEdition4.lean/declarations/criticalremovedpairedwork-eq-density-quadrature.md) | 179 | `result-track:ab5efa9ebd9c0acbd6c3cf0bdbbbfc34d362f92550070d3e8a504cd90e7abe79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b459f56c0366b77ec080ee40e4775483367e76656a7e925313e98fcb5b7d6c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
