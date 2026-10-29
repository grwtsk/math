# Verification target: Quartic Bump Energy Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2afcf579e00ef6e0e2e2c25d86e32620a5853add",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantd9fb76556fbaf3f46a1d8bcfed3f0a83f00360f8178fd1b0c09d3a912c072db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2afcf579e00ef6e0e2e2c25d86e32620a5853add`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantd9fb76556fbaf3f46a1d8bcfed3f0a83f00360f8178fd1b0c09d3a912c072db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantd9fb76556fbaf3f46a1d8bcfed3f0a83f00360f8178fd1b0c09d3a912c072db8.lean.json)

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
| 1 | `def` | [rayValue](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayvalue.md) | 11 | `declaration-track:07826804bc20bc4cd462881327cf93b44a92f4f8186355a1b252ae2c8dd3dc04` |
| 2 | `def` | [raySlope](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayslope.md) | 12 | `declaration-track:0d1058c4ebabaf27c7041a1dcf14f4363263736a76df25591e56d2bc0b140ec3` |
| 3 | `def` | [weightedMass](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/weightedmass.md) | 13 | `declaration-track:24ee0de43e8da2864617172084b20c33f4e85732aa69db46ae47a6bd837ddd8b` |
| 4 | `def` | [weightedEnergy](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/weightedenergy.md) | 14 | `declaration-track:cab2be3294d6c9bb8a7a8210e72c43c6de8f8284cd89756842a8106fd81e2841` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayvalue-hasderivat.md) | 16 | `result-track:24624107e6cfb2ff726cd2c123d23eba9c27b764b88847ecbd06df2bb66274cb` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayslope-hasderivat.md) | 22 | `result-track:c16ab869acfcc4a26ee0d584640de500aee8afefbad9622a1816354813520025` |
| 7 | `theorem` | [rayValue_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayvalue-continuous.md) | 30 | `result-track:e7380ecc25117f724e92c35f92821f866652b4098d7db4317de9f83509c7c00c` |
| 8 | `theorem` | [raySlope_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayslope-continuous.md) | 33 | `result-track:384feb060805d1c22a894a7b59fe2c64e0998b67d26ff81e6c50484d1b842e98` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/weightedray-hasderivat.md) | 36 | `result-track:e9642f5e99496388f70edc00e829b36febbd27c8ca9ec9778d70fdac69ddeec9` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/conjugateray-hasderivat.md) | 48 | `result-track:b3e75d4bae1c06d30f2bea2f1a8d4414cbed7ba65f858e6593452604e9e16f0f` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/mass-integrand-continuous.md) | 52 | `result-track:138873906c5d8d169657a66200db861fbd3f73b27c45deb42ddc06f352acbaec` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/energy-integrand-continuous.md) | 56 | `result-track:2fc98e2a12c902e23182dc705b282ae2b49e3d2fb4427f4b3e6c33e147acacc1` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/weightedenergy-nonneg.md) | 60 | `result-track:d7edfc4eb2a19a27f5dafeab9ab107e125adaebc37d0c0ed29d06244f1adf636` |
| 14 | `theorem` | [rayValue_zero](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/rayvalue-zero.md) | 64 | `result-track:d8e476f8ae158d29aaa245438db16f504a82ada44e4aa99141144260e0986a61` |
| 15 | `theorem` | [weightedMass_pos](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt01.lean/declarations/weightedmass-pos.md) | 67 | `result-track:4d84b366fa0e27f05854aac8b6f15f804a8a2b39a739e728bd2727c6ca5b69d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d8ef4723f09ee0c1160c5607d9a8a08ed1bdcb19115891658022d4e84621e3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantd9fb76556fbaf3f46a1d8bcfed3f0a83f00360f8178fd1b0c09d3a912c072db8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantd9fb76556fbaf3f46a1d8bcfed3f0a83f00360f8178fd1b0c09d3a912c072db8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
