# Verification target: Support Complete V2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e7f3cb8a290d3d59d8785cf78c8db6e6f55e1e7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SupportCompleteV2.lean/index.md) · [Full source](../../../../GeneralTopology/SupportCompleteV2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e7f3cb8a290d3d59d8785cf78c8db6e6f55e1e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/normalizationderivative.md) | 34 | `declaration-track:b6461380a6f48126a61ccd28157c742f4c07bf4a83d6a2933e148fb7300d36d6` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/sourcenormalization-hasderivat.md) | 38 | `result-track:a4a81c6c1915c0f97b50cab6288bc3d91c39d9a34ed4d5fd03101ea577bc5422` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/sourcenormalization-deriv.md) | 54 | `result-track:fc29fb8923e3e5619df329b50546547cfb490c70db9279a77531de8fac294e01` |
| 4 | `def` | [scaleAmplitude](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scaleamplitude.md) | 59 | `declaration-track:a746eb79f50cf963caa9a79164be0acef9f00969607a29904f2155961fab3cbd` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scaleamplitude-eq.md) | 62 | `result-track:306a9c96fbe51ea6c6c039eb5e4446f58b598a40c43786a9f7338c324ee9350a` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scaleprofile-eq-amplitude.md) | 67 | `result-track:0ac12c81303646fd448689580ff174d57d2973d2354e6df3c892778418703f82` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scaleamplitude-hasderivat.md) | 75 | `result-track:6ee1a71c9fa5ee029c3d2ecee8b173c7f75e6313d6144cf531dc4ccf2fb2d9ec` |
| 8 | `def` | [scaleDerivative](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative.md) | 90 | `declaration-track:2040c194113337e74175d960b6c77b6e5514b898fa6106152863f101a727847a` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-eq-actual.md) | 99 | `result-track:b1de7df45297c714073b4466f89f4d5d3585502b77443fb94fbf0a1edf5673c2` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scaleprofile-hasderivat.md) | 111 | `result-track:5caeb3739d1844257d1fea475f9f71956986d837f9c0f19d47e09c5c329a774e` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/normalizedsource-hasderivat.md) | 135 | `result-track:d74d36a980b65a993a7e67ba0051e047081388242c07ee6c3eb8f7db3ddb41f5` |
| 12 | `theorem` | [sourceBump_traces_zero_of_le_abs](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/sourcebump-traces-zero-of-le-abs.md) | 143 | `result-track:e5cf12fc46b1c1ad57e03b7b2e1e34e9205ebbeee2534c015f3de0183293b181` |
| 13 | `theorem` | [scaleDerivative_zero_of_le_abs](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-zero-of-le-abs.md) | 157 | `result-track:0a98d1f604f295f0a67db4e9a51d87eb661ff02037b53b3482fda1eae3ecbdc3` |
| 14 | `theorem` | [scaleDerivative_continuousAt_joint](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-continuousat-joint.md) | 168 | `result-track:d25558c10d7d4de3e50c0c99c5431926f557d6dce30689b8d64080ca91c1ee59` |
| 15 | `theorem` | [scaleDerivative_continuousOn_joint](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-continuouson-joint.md) | 181 | `result-track:040fea327bcb0c1b405301dcf7de70cb18a3bdaa4d195f8742bab5789360dc57` |
| 16 | `theorem` | [scaleDerivative_continuous](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-continuous.md) | 186 | `result-track:0370157dc60f8d9d6d291dba36a2e35f25c9875b7be12612ecd9bfe694bd07bf` |
| 17 | `theorem` | [scaleDerivative_hasCompactSupport](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-hascompactsupport.md) | 194 | `result-track:592ca49c717351e400002e87d57b45459314bffb4de5230c3b5224bc0da2ee7b` |
| 18 | `theorem` | [scaleDerivative_memLp](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivative-memlp.md) | 209 | `result-track:41d30ad4440fb653f1a6e77270acc1e39437399329869203c0119ce3755f3ac5` |
| 19 | `def` | [scaleDerivativeL2](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivativel2.md) | 215 | `declaration-track:c5a4b4f079e41a4bd807fd06b7a79c1ab81dee4e3db14a27b80f3d7b6ff2848d` |
| 20 | `theorem` | [scaleDerivativeL2_coe_ae](../../../../GeneralTopology/SupportCompleteV2.lean/declarations/scalederivativel2-coe-ae.md) | 219 | `result-track:3fef406033ff2c0947a542331c3f4dd9597a16dfac65e91a7b6ead0fccb5e40d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6c3d2be219fa2087f653861aac4b3131fb6fb7d09c396e7aa22b9ca2a0baf34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variantf89791fa33b3603d1498b7fc01120e1ea0cd699675d5b4a5c83eda6de99803a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
