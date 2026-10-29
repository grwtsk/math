# Verification target: Source Correlation Cell Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed16a1782e4b66694f779075012ba2ef09bec5ca",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed16a1782e4b66694f779075012ba2ef09bec5ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellcorrection.md) | 40 | `declaration-track:80a9b62664fb9ce866ac1a56dbb5b00a983f62ba7e01355cc5b022e821a1d5a9` |
| 2 | `def` | [cellMajorant](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellmajorant.md) | 46 | `declaration-track:13429983a626636c502d609cc626d89a12d53e3986a34630dcad43f204a92f65` |
| 3 | `def` | [majorantPrimitive](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/majorantprimitive.md) | 49 | `declaration-track:3b31541b78eee8d67f86f939e974c0cb7a17414d07049ff0aeba193685c74e1f` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/majorantprimitive-hasderivat.md) | 51 | `result-track:c6eb3bd34e071cba15a151ffc44b11d01964e02be1e7f66d64473dd66f6c06ab` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellmajorant-continuouson.md) | 61 | `result-track:2631fb3bc15a268531f55bb0b0724af25c398fcf1ba8d474ab44fc8a03af803c` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellmajorant-intervalintegrable.md) | 67 | `result-track:89c11895a4b606a5f94b321013a5473468045cab7e6e28771e2ddd0aee3ba05b` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellmajorant-integral-eq.md) | 72 | `result-track:fa3607d6d9860d0add6cbca0764a1c07dbc77d61bf085f2a245f7daede11cdcf` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellmajorant-integral-le-four.md) | 82 | `result-track:59c4926a2d4a9bb66555a0c589e98f1de824c53089fb5d4c33d59c0e618b7b9b` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/sourcecorrelation-log-increment-bound.md) | 89 | `result-track:530f66788549f3ca91905c8939168a8f8c670d0348682e701a95ec77269536be` |
| 10 | `theorem` | [log_cell_increment_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/log-cell-increment-le.md) | 114 | `result-track:33eeb49a8fb2c496adb52d16d1dda61cdc37e6ef9b41a2c62ddacdec2f48dfad` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cell-integrand-abs-le.md) | 127 | `result-track:d50294ae1227dcdf4ff9826110819bdf5b619598614025d9201cd117cbbcee4f` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/div-sqrt-continuouson.md) | 148 | `result-track:189664cc755bd2a3de4f590544acb556bce0651fa7f01441146cf11f7b43272c` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellintegrand-intervalintegrable.md) | 155 | `result-track:08153daec8da5d1d4416192f377b4aff41b1024e281d868b07d2d2d24432c467` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellcorrection-abs-le-majorant.md) | 169 | `result-track:baa49f3304f3a2e8f7adbb3f14a4e1905e38f05451331ae7de5e20d2791a0d30` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/sum-cellmajorant-integrals.md) | 188 | `result-track:8443697a1c4bb13d06e951ce7a316822a974ec9ce62770e9bdd5174b8253aa5d` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/sum-cellcorrection-abs-le.md) | 201 | `result-track:65c345948ff23aff04b1e0151fe6f6ba381a4edec3b7c1bb8e012ad0b2d10cca` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/sum-sourcecorrelation-cell-transport-le.md) | 220 | `result-track:f9d71f7a47ede617c45f11e7aa7b5b131056730fb86abeb72adba800172d13f1` |
| 18 | `theorem` | [constant_cell_transport_zero](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/constant-cell-transport-zero.md) | 229 | `result-track:b4ae056fe607853e1ac0cd5c5b40cb79f616c6a0e0b24a0045e24f8b536e2e4f` |
| 19 | `def` | [cellFirstMoment](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellfirstmoment.md) | 233 | `declaration-track:13b623eaaf370de0daaccea7dbdd68777fa3613419252c73703595734d805f84` |
| 20 | `def` | [cellSecondMoment](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellsecondmoment.md) | 237 | `declaration-track:1d1d1cf888b75e3226a8b24e9be072c5c5d0551a89a662d063e5f84a2d2e6282` |
| 21 | `def` | [cellTaylorRemainder](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/celltaylorremainder.md) | 241 | `declaration-track:b353d43f1f978c2520c5cb301493e15e1662148ea645634dfd962f2a2ab8d628` |
| 22 | `theorem` | [cellFirstMoment_integrand_intervalIntegrable](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellfirstmoment-integrand-intervalintegrable.md) | 248 | `result-track:e4479bba484b32667e62eb18cf23d23828112ebf40680668fc7263f9ddee6d9c` |
| 23 | `theorem` | [cellSecondMoment_integrand_intervalIntegrable](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellsecondmoment-integrand-intervalintegrable.md) | 257 | `result-track:7d8d95c8effcfec2983ea3de94be755e553adcd63c79f49a0ed3dfd17606c98f` |
| 24 | `theorem` | [cellFirstMoment_nonneg](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellfirstmoment-nonneg.md) | 266 | `result-track:24b9a878559e92abd8cbc12489e4cdd1b5745b5b5d23eb6a9eeb346d474bf99f` |
| 25 | `theorem` | [remainder_integrand_eq](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/remainder-integrand-eq.md) | 272 | `result-track:6c89a648a2b00d6113a25cc24b140f9e48892bb6d97d3a0082f6b1950242f44f` |
| 26 | `theorem` | [cellTaylorRemainder_eq](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/celltaylorremainder-eq.md) | 284 | `result-track:a6ff762b7b4f33a3e4bfa259df9d78b34bcc5a95f97b2f1c6f14b70e0df2e382` |
| 27 | `theorem` | [cellCorrection_eq_firstMoment_add_remainder](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/cellcorrection-eq-firstmoment-add-remainder.md) | 296 | `result-track:4ef93315bc1bead07aff837fcfa68cf275fb19773683701df30bb95dc2ad007a` |
| 28 | `theorem` | [remainder_integrand_abs_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/remainder-integrand-abs-le.md) | 304 | `result-track:c196d35b54bd4db93dc138cabc0d782c0028e81966cedb85976a1e94794f9cce` |
| 29 | `theorem` | [cellTaylorRemainder_abs_le](../../../../MeasureAndIntegration/SourceCorrelationCellTransport.lean/declarations/celltaylorremainder-abs-le.md) | 331 | `result-track:126990b42dff86747bb268004fbeb299f435c3e64b3e60752f4856f237f1ca1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a710c6606a1b5596fa8b0b20bf9bd382c605b2a3159fd278505900629ba71f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
