# Verification target: Quartic Bump Energy Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf8c15b6d09c3d34a2ab386cd1037a0aef0b31a3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant562d9d4fa41740414d8435d0dd891ef5dbec56c047c931d6437453a1de5bfb2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf8c15b6d09c3d34a2ab386cd1037a0aef0b31a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant562d9d4fa41740414d8435d0dd891ef5dbec56c047c931d6437453a1de5bfb2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant562d9d4fa41740414d8435d0dd891ef5dbec56c047c931d6437453a1de5bfb2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayvalue.md) | 12 | `declaration-track:b2232293855213b486c1f6337affffc915bfc3218bb985bc07d177ffd6a95ee6` |
| 2 | `def` | [raySlope](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayslope.md) | 13 | `declaration-track:8440eebb99cc95a7bc5e677664e95ff7477a153360391f5aaece9f5aa35f5c5e` |
| 3 | `def` | [weightedMass](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/weightedmass.md) | 14 | `declaration-track:68c61ca8e3e9cc7c7917d394e7d76c8378aa3acd3a7bcfde01bd615fcbe52478` |
| 4 | `def` | [weightedEnergy](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/weightedenergy.md) | 15 | `declaration-track:576812e87b296c44f19d11f3b6f2fe97e57cc6fd104307216bfa79a7fa089dd0` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayvalue-hasderivat.md) | 17 | `result-track:779b3163d10b444a1cff0581e08c022c2a5c2d971ae362a1589c0fd897dc968b` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayslope-hasderivat.md) | 25 | `result-track:dc92c5cdadf03c55c30f14d6f8e663fe037b0a371012d254bb240d3957bfc3ab` |
| 7 | `theorem` | [rayValue_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayvalue-continuous.md) | 33 | `result-track:7b8c12b2d7df2d563ab5571518e92e336fa13753e63b332428a7ab1cb183f7b5` |
| 8 | `theorem` | [raySlope_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayslope-continuous.md) | 36 | `result-track:50b429736d582fc94938189ad34ca7df21966e14137877050a1f294ec342c67e` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/weightedray-hasderivat.md) | 39 | `result-track:dc0ae70296feb2afce68981e8e8b19e2c2bfeb05ccc5111bc10a40d60a74e883` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/conjugateray-hasderivat.md) | 51 | `result-track:d90115e7fd98cf6c762f63e7ab0b48237fa3f9213aec4a68e8bd49c624139300` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/mass-integrand-continuous.md) | 55 | `result-track:8d00deec8e21ff212439dae8b012e34105a3e79306d463cea27296dabb9144db` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/energy-integrand-continuous.md) | 59 | `result-track:740a41da355b52c72fdb0ed22049279e90d817c94cf10b6799eb508387a5dd96` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/weightedenergy-nonneg.md) | 63 | `result-track:e0efa2835387a27021f6eda178d7cd2cfd1f17287cba7e910f20f2e873ab4111` |
| 14 | `theorem` | [rayValue_zero](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/rayvalue-zero.md) | 67 | `result-track:616ecd0955ef0ebc62f82a94851db04725ee5f5947fffe35579b7fe14e32fb63` |
| 15 | `theorem` | [weightedMass_pos](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt03.lean/declarations/weightedmass-pos.md) | 70 | `result-track:67d6c25e9b7b454144aa139569190fd39772407c8e0bb7c010d736744f44f94f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94cf62362bf6300c22bd8c0cd81d73b79ae75ffedde8c24262abb51e411db6c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant562d9d4fa41740414d8435d0dd891ef5dbec56c047c931d6437453a1de5bfb2f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt03/Variant562d9d4fa41740414d8435d0dd891ef5dbec56c047c931d6437453a1de5bfb2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
