# Verification target: Source Actual Pole Moment Annihilation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba5bf6ebaeb3c7ff9b7c9f5f914a8ad5d9ac32e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba5bf6ebaeb3c7ff9b7c9f5f914a8ad5d9ac32e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPsiContinuousFrontier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [plainMomentPrimitive](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/plainmomentprimitive.md) | 33 | `declaration-track:0acf23c65662e02799ec8af78bd966d4580004e5e50810f2561f659ec2f06576` |
| 2 | `def` | [logMomentPrimitive](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/logmomentprimitive.md) | 34 | `declaration-track:6d44f2e2d6f0ac25b4d2c6d056c8b4003291c080203e3f8735438227762f87c8` |
| 3 | `theorem` | [plainMoment_contDiff](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/plainmoment-contdiff.md) | 36 | `result-track:5b48136abe2156db50ba8a0563d4417bc5d351063f66af3c8dc8fee85a3902a8` |
| 4 | `theorem` | [logMoment_contDiff](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/logmoment-contdiff.md) | 39 | `result-track:6bdcf14ec7c5f56f4bf4fb62e0aaa176a50154dc47f2cc9a5920633653eb2a21` |
| 5 | `theorem` | [plainMoment_compact](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/plainmoment-compact.md) | 42 | `result-track:6a5e74a467b356670d4c5a705d938d827940a4877765523b864ca1b0b8eb515f` |
| 6 | `theorem` | [logMoment_compact](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/logmoment-compact.md) | 45 | `result-track:8cbfa0cb1cd61093e4116023a4464dfd05e90f5949a9c52ba23889f23a77b3be` |
| 7 | `theorem` | [plainMoment_deriv_eq](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/plainmoment-deriv-eq.md) | 48 | `result-track:d3744da66c3aff356d6ee8a13b5e91393e081d836d88e8b5b459ed4c0e3ecf78` |
| 8 | `theorem` | [logMoment_deriv_eq](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/logmoment-deriv-eq.md) | 55 | `result-track:27a4a203d923c1a0437f3fc161924474fa9806be75930576533e67496e32ef99` |
| 9 | `theorem` | [actual_plain_pole_derivative_integrable](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-plain-pole-derivative-integrable.md) | 71 | `result-track:cacec09c54e67cbddab879967950f816d41a86d3e3eec5ba424b8905844f8ccc` |
| 10 | `theorem` | [actual_plain_pole_derivative_integral_zero](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-plain-pole-derivative-integral-zero.md) | 83 | `result-track:556fd6f5861097695d27c2547057affb5f8bed9fcb8bf40207195df759c92ed0` |
| 11 | `theorem` | [actual_log_pole_derivative_integrable](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-log-pole-derivative-integrable.md) | 96 | `result-track:35780a4382e7b94916102ff0408a22b03b8b0418f2bdff71a1182f3ba485f60e` |
| 12 | `theorem` | [actual_log_pole_derivative_integral_zero](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-log-pole-derivative-integral-zero.md) | 109 | `result-track:0bdcdf84d69b3af547151f31b07b2862917709cc69e1e531057b636032cf121f` |
| 13 | `theorem` | [actual_mellin_pole_derivative_integrable](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-mellin-pole-derivative-integrable.md) | 128 | `result-track:d75e6b107891a92ddd6908db4ca83031c8356c273f6c4a25410f2aa5f4d37a48` |
| 14 | `theorem` | [actual_mellin_pole_derivative_integral_zero](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-mellin-pole-derivative-integral-zero.md) | 138 | `result-track:def43eb5f0f31d6719940c8517912a253528e492c077c8d0c73b83a3fb1feb29` |
| 15 | `def` | [actualPsiFloorDensity](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actualpsifloordensity.md) | 149 | `declaration-track:0177ffcb19b3fd622c77d54cf368332ffdb171b545608ff72b4263f49139fc9a` |
| 16 | `def` | [actualPsiFloorPairing](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actualpsifloorpairing.md) | 152 | `declaration-track:3645a7b9d5f9d9e55acff8994fd468c66d85e890b7368f78b501adf9bbc2f731` |
| 17 | `theorem` | [actualPsiFloorDensity_integrable](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actualpsifloordensity-integrable.md) | 155 | `result-track:4bfe79fcb63269c348d700aa1b8403fe500ee3d943a12a8341e28bb41a65a407` |
| 18 | `theorem` | [actualPsiContinuousPairing_eq_psi_floor](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actualpsicontinuouspairing-eq-psi-floor.md) | 168 | `result-track:1ba316b104c0391a802a2694bfdcb736b9d14d6c8ff531c07950bc82d78c6c61` |
| 19 | `theorem` | [actual_leading_full_complement_sub_psi_floor_abs_le](../../../../MeasureAndIntegration/SourceActualPoleMomentAnnihilationNamespaced.lean/declarations/actual-leading-full-complement-sub-psi-floor-abs-le.md) | 194 | `result-track:c23207f7f3d961c172557823a6570533013d98bd5d2d1397f2353cc7aba5884c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b67fb6ffaa9918f68bda8afc098aa829d753cc7dd4965bb3511ee7035fb7098 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variant7fb719ce2460b68254395e5a0910910a8082a0cad2bbfb16d4ec63c3d58e3d3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
