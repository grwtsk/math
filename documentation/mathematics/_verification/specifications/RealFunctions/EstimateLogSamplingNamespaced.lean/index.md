# Verification target: Estimate Log Sampling Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d0901a4ca5d2c71f69f5af2b302a63e28afceb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d0901a4ca5d2c71f69f5af2b302a63e28afceb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSamplingTerm](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingterm.md) | 40 | `declaration-track:c5e07fdba1c8838c74b395591fdd737626c529ff441f0b811b765a63296e6bef` |
| 2 | `def` | [logSamplingDerivative](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingderivative.md) | 45 | `declaration-track:0abf6ad96618a2b94d6ed87df19d0b9ba01f4153669ae7b9cc4cefa91f55bd5c` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingterm-contdiffon-pos.md) | 52 | `result-track:6119dd071eb1d4d24251b5b1b4c6013063ccfd116db9927d73efcb61952bc835` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingterm-hasderivat.md) | 82 | `result-track:8e066c3039ab15a383215ae942019622006160a73ff8a846978117afb55baa7f` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/deriv-logsamplingterm.md) | 123 | `result-track:8bae1df4ad6d4f72236a4cd7e3ea2ce1e8ab088e378ba0402e6edb68724fb3e2` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingterm-source-eq.md) | 132 | `result-track:075ba25f0c16ad77344c6e2dd4e5f296765356c32dd0a23da1f8a12eaebae3aa` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/leftsamplesum-source-eq.md) | 145 | `result-track:a8d17ab8373fd72fc615b43347f456468a1276a741d9a4e0b502f34d786a5dc6` |
| 8 | `def` | [ProfileSupBounds](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/profilesupbounds.md) | 161 | `declaration-track:3ccda74aa9fd7e9705158de1218524d43beb654d2b3e0d35966069fc425be124` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingderivativemajorant.md) | 167 | `declaration-track:e6be761016818b04eef6f2322574a0ef08667a9be4dec18e14a0112d238d0713` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/abs-logsamplingderivative-le.md) | 175 | `result-track:17a6c42e742a19ffe2c114e812138096bd4dc881d85fd0974703e37f42d6f191` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/logsamplingcheckpoint.md) | 241 | `declaration-track:8811af3f080134a0e8582d7e582eec8496ac8077d765b1bf8e0c91335e60a307` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../RealFunctions/EstimateLogSamplingNamespaced.lean/declarations/log-sampling-checkpoint.md) | 255 | `result-track:4fe3b4b8a80e91218e4482b3f5ac127f4063284e6be1277df1059b02b30cbf41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ab3e1d81105def4e46916d8edca91a1b60f2bc25d5018f787db865dc17e1a34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantdb3d3dc215ab8d65fa036eaf7b43050436623a148a4288f257fc648df67a598e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
