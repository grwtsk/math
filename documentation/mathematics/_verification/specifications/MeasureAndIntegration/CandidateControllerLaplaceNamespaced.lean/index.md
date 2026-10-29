# Verification target: Candidate Controller Laplace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bac26bf20978a861a2d08859f92827ad4f08bf5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bac26bf20978a861a2d08859f92827ad4f08bf5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.Inversion` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFrequency](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/angularfrequency.md) | 26 | `declaration-track:c5d5707d3f0d7805fd4a7913d5ecac360bb7d47e02c8a8eef716fbb20ebd7e8f` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/boundaryinverse-eq-fourierinv.md) | 30 | `result-track:4fa74a4235fc4ee87aade57b32411a00ee81fc003ab6e0d6fa3d4f74627154f7` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-frequency-admission.md) | 49 | `result-track:bbdf4182f63a335bffff0f70d5b78041340621c0302b22c174ebb16c1813d052` |
| 4 | `def` | [fullBoundaryVector](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/fullboundaryvector.md) | 72 | `declaration-track:b682cc42d477fcda82be5ea585c39d950b955f4f43e92d723b05007d5fa122b1` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/fullboundaryvector-ae.md) | 78 | `result-track:f05cd84b2005355195e9cdfc6c50bcc1d9a6dfa42fa63ffbf77a5ad7da33f661` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-memlp.md) | 89 | `result-track:ded925cec2c5e5d5031395b64fdd5b975e3fbfd5d2d79e0f3bfb335a53c24c64` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-continuous.md) | 95 | `result-track:76599dbb3c8dd1769ca78f25fe8e8b087fae5b9529306ef3d204830bfb2ca77c` |
| 8 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/norm-sq-tolp.md) | 103 | `result-track:d5aacef74f79dbe86aca833235c689f7fac9ec890a2b8b00fbd89608a5d7fb32` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/fullboundaryvector-norm-sq.md) | 114 | `result-track:74d864f56d26d7e9dffdd169a62af20e315b3dcbae3f5b5d84ff9b38d4bcff62` |
| 10 | `def` | [controller](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/controller.md) | 132 | `declaration-track:70e8079fa735d1acab6d5df7cfcc5c0f6dc3cd1fe4a2307e878a2a0a23866c5d` |
| 11 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/controller-ae.md) | 137 | `result-track:5f9ad5ba45322f11a5301cecb566f74df0adb2e16951068b7ac88843b4302e57` |
| 12 | `theorem` | [zeroExtension_controller](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/zeroextension-controller.md) | 144 | `result-track:ca70d8febc372ac8ebe3dfcd2078abbca1934a69dfad61a3f42081cbb9d16066` |
| 13 | `theorem` | [controller_norm_sq](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/controller-norm-sq.md) | 161 | `result-track:09cc595e7cc51b6f367dbd6ceeab6fa68de3819c6609d680b2b2931923b367de` |
| 14 | `theorem` | [boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/boundaryinverse-shift.md) | 180 | `result-track:c5c51a40c494cbccfdc95c29c26da67d8de79d73601638307928a7c88cd663b0` |
| 15 | `theorem` | [candidate_shift](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-shift.md) | 224 | `result-track:59d9126b5d534033e17e9c3a731b5a8d36372af6bb136f762a5b5b236626f099` |
| 16 | `theorem` | [candidate_boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-shift.md) | 230 | `result-track:8fc9d6b292a862a12b998dc10f5b7a07dfee4678ba6f92a94211f5c7d53ae01b` |
| 17 | `theorem` | [candidate_boundaryInverse_bounded](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-bounded.md) | 251 | `result-track:06daee3953d4b95169bd29505a7031359f803ac45677d9be47fb34037a9e41f0` |
| 18 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-half-shift.md) | 271 | `result-track:9973fb47c6cbc15a8e6812074196d3948d3b2bb8c080c8a38c582390c3fd503c` |
| 19 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-exp-bound.md) | 287 | `result-track:befea0ecf55e24a2a6b8a5dc97264e2a05feae1b630e3c219a38b1bd8a17eb1f` |
| 20 | `theorem` | [candidate_boundaryInverse_integrable](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-integrable.md) | 299 | `result-track:b6091c51872186db81eea4c51f3dd036c4b41f8276a3dc0a10551169e1e86fe3` |
| 21 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-laplace-integrable.md) | 318 | `result-track:6d690542afa60c4aa0e1f3bbfa1a671dff011d212c5f1c26e498bf91699ed616` |
| 22 | `theorem` | [candidate_boundaryInverse_fourier](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-fourier.md) | 350 | `result-track:0af0203f0cf7d77c6986350c79cb6e85fab5332499b80df2d76a54b601ac486e` |
| 23 | `theorem` | [candidate_boundaryInverse_tilt](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-tilt.md) | 386 | `result-track:c81a9f51aad392f9637f3593ab0147647e6cf001f650b8f242a895b9e6c4a0f6` |
| 24 | `theorem` | [candidate_boundaryInverse_laplace](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/candidate-boundaryinverse-laplace.md) | 399 | `result-track:ef6cf3fcb604545109ffc00309e93266cd36e6ed4ce1a6a022d7b32af05dc0e9` |
| 25 | `theorem` | [controller_laplace_integrable](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/controller-laplace-integrable.md) | 439 | `result-track:99abfa8494efa652a8a22ca369109a6ce36f8e7b7bcb5bc654ddf7c7d58ba190` |
| 26 | `theorem` | [controller_laplace](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/controller-laplace.md) | 448 | `result-track:02c232d2ce100057fb35523696a8e9527542bab4923ed5aa73a2cfd2089122e7` |
| 27 | `theorem` | [fullBoundaryVector_integrable](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/fullboundaryvector-integrable.md) | 458 | `result-track:75b29a39a7f2276a1eaba7b3de284b707559940fe8e74ff065b1dd9404791dff` |
| 28 | `theorem` | [fullBoundaryVector_fourier](../../../../MeasureAndIntegration/CandidateControllerLaplaceNamespaced.lean/declarations/fullboundaryvector-fourier.md) | 465 | `result-track:14da6b37f37e7623ae2e12ca7efe58d57ff0ad5a24587759fdf55e4d9a30e165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ced3d84c42ed1cd0c7cd8ef65d35f305891fa9e1780393a58aa5cd177befb8a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
