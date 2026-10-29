# Verification target: Finite Geometric Cell Transport For The Actual Source Correlation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b14b1dbad950d54decd71b6c46e2313d7acb5e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b14b1dbad950d54decd71b6c46e2313d7acb5e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellcorrection.md) | 32 | `declaration-track:5d0b4cd6bf13979199c11260b3f7990360b77fdfb8d173bbc36a6aca4765d327` |
| 2 | `def` | [cellMajorant](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellmajorant.md) | 38 | `declaration-track:a22dcdbaeb5902767ef3797ca79667bfbcd1bcb61b0672c607b97a8ec9333d94` |
| 3 | `def` | [majorantPrimitive](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/majorantprimitive.md) | 41 | `declaration-track:73813981420d631606c7975e328b814419a4508fd93e63210b02a1198f91ecac` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/majorantprimitive-hasderivat.md) | 43 | `result-track:411f2be399124815c83ce8d2b81896ba68d88a0d534a727b08fa569037df8480` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellmajorant-continuouson.md) | 53 | `result-track:fd7a01b0f276757248e5b5b1f29376cc5163f62a47e5dcab7d0e8a0526d6acb6` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellmajorant-intervalintegrable.md) | 59 | `result-track:31664a293d19c6d8cb6829cbf46c26045ee24739c135be8724b522c26f3d3ad2` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellmajorant-integral-eq.md) | 64 | `result-track:065fd3644253c524ab70838d9dbc2b0b6f3dcf24682f8c45bc4615c1a39e19ab` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellmajorant-integral-le-four.md) | 74 | `result-track:a53c41d08d1c7156bb7c99d07d28ae1371bfc155089f5af1e3e4b07650464d33` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/sourcecorrelation-log-increment-bound.md) | 81 | `result-track:ba927dae9902787d74c9231de6c2f142805043ac7d2ffca145d05a3b76f131e5` |
| 10 | `theorem` | [log_cell_increment_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/log-cell-increment-le.md) | 106 | `result-track:8493a0cfd5cf71c3bed6e5734cff40ee3f33f346c1516ea27584cdfafae8f6e5` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cell-integrand-abs-le.md) | 119 | `result-track:cec3ca1629fec8be826009ae359ded6a19e9b5f2459b28275d7ce0c7a332864b` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/div-sqrt-continuouson.md) | 140 | `result-track:512067f8ece3debf84b0d558ce42e38abc0915d906a5a4751c24e98192cea35b` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellintegrand-intervalintegrable.md) | 147 | `result-track:397b4e27cd659e032ef05eb4adf0068a39696140cd047a86cfff5d48a9c2c0b3` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellcorrection-abs-le-majorant.md) | 161 | `result-track:0f47ed9a766ea1e083d1a77cd09beec7d72c387c503e5f6f4931aeab46c25657` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/sum-cellmajorant-integrals.md) | 180 | `result-track:95be859afe4462979631a0fa5c019e9c466071444885987ca46a1ba58992b269` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/sum-cellcorrection-abs-le.md) | 193 | `result-track:f38a78f9f15eb9758db1f0d774617560342c8585cb128270a52f6ab88ad97ba1` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/sum-sourcecorrelation-cell-transport-le.md) | 212 | `result-track:58ca34af237ed538dea4e7cc0af9ce421823b06732a3b24f8dc8551080ccf259` |
| 18 | `theorem` | [constant_cell_transport_zero](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/constant-cell-transport-zero.md) | 221 | `result-track:7b354f3f5109a64c9aabbabc57068b9c50099f3a799703f5f6aac872d5b68234` |
| 19 | `def` | [cellFirstMoment](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellfirstmoment.md) | 225 | `declaration-track:5d98459cce8f2be863bea869d542908a9c3cf35ddfaf63c800e371dc8576193f` |
| 20 | `def` | [cellSecondMoment](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellsecondmoment.md) | 229 | `declaration-track:f27fb846834dd7d312210a4c5dcea3f4ffd3f64336d1765cf42eb777dd51f8c4` |
| 21 | `def` | [cellTaylorRemainder](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/celltaylorremainder.md) | 233 | `declaration-track:9333690ccdf4daf6b90f23699b3a1fcb71b61f49822f4e2295344f82c32758ab` |
| 22 | `theorem` | [cellFirstMoment_integrand_intervalIntegrable](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellfirstmoment-integrand-intervalintegrable.md) | 240 | `result-track:bc76c55ee93f8340df46c2f753c6a17aaa2d48377a53ee12aa6533133d286e7c` |
| 23 | `theorem` | [cellSecondMoment_integrand_intervalIntegrable](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellsecondmoment-integrand-intervalintegrable.md) | 249 | `result-track:894113837ba5e38a2c7ba7c46d82c5a05d1d5161c5aeed742e30b5028ef96d59` |
| 24 | `theorem` | [cellFirstMoment_nonneg](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellfirstmoment-nonneg.md) | 258 | `result-track:301736a4be822c65e95f7d7fb5ebe0f00117a878db60302f30d63fe98a6e3ec6` |
| 25 | `theorem` | [remainder_integrand_eq](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/remainder-integrand-eq.md) | 264 | `result-track:c4a6fa53af9a1e2d956c110ea0000ca98d62ba764bbbf416c8d2ff9c9657b57a` |
| 26 | `theorem` | [cellTaylorRemainder_eq](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/celltaylorremainder-eq.md) | 276 | `result-track:394606a7b9f176424dd4d0e6959b74dd69cbda26840baec280e9125743ca1a9f` |
| 27 | `theorem` | [cellCorrection_eq_firstMoment_add_remainder](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/cellcorrection-eq-firstmoment-add-remainder.md) | 288 | `result-track:c113ded6763b2db175925b02961f204b587cb2db040067c50e49466055836d6f` |
| 28 | `theorem` | [remainder_integrand_abs_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/remainder-integrand-abs-le.md) | 296 | `result-track:c540f54b61e7565d853e974110089b1b315b9d83114be872fb89458870dece91` |
| 29 | `theorem` | [cellTaylorRemainder_abs_le](../../../../MeasureAndIntegration/FiniteGeometricCellTransportForTheActualSourceCorrelation.lean/declarations/celltaylorremainder-abs-le.md) | 323 | `result-track:dc9356ebdda623e9ccbc0fe91f02059ed7c5f992d5b4737310d3bd428179f0aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7d2a4a9eb5051c4b789fd5dea2b03228ffeb0f84374d10a5d911d1c820d02f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
