# Verification target: Candidate Laplace Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7476eaaf4da6841163e4b09249ca9c4384323ac",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7476eaaf4da6841163e4b09249ca9c4384323ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean.json)

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
| 1 | `def` | [angularFrequency](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/angularfrequency.md) | 26 | `declaration-track:802e4f1ceb609c582c483db01aae5ba6d8eabc46602ad1cdc91ff764c5019e7b` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/boundaryinverse-eq-fourierinv.md) | 30 | `result-track:58bfa5ae5eb34150cbcf33eb71944b3bb479c6c212041ce74712da2b27a6f63b` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-frequency-admission.md) | 49 | `result-track:f58f93d95f5e85b2580815d9b76f4a3cf5f0cf8b793cb5c5ec62346779839bcd` |
| 4 | `def` | [fullBoundaryVector](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/fullboundaryvector.md) | 72 | `declaration-track:6edc4759344f4ee310eb0b5c5540b6a6ef268a114d20b2f664de7500b1b9e9fa` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/fullboundaryvector-ae.md) | 78 | `result-track:0cc4c817e1447833d44bc1a88aecb7d375c9982f3e3c200195768205e26ef0d7` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-memlp.md) | 89 | `result-track:b95c1bc6d6954133f790c5089c489b2f18dd193a2466268639b0b005ac7d2db1` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-continuous.md) | 95 | `result-track:46dbf59587ed518cedb954c8a6c32bb922bb49dd7f473b861b81f75a2f2f3ec5` |
| 8 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/norm-sq-tolp.md) | 103 | `result-track:f15cccb970b2f5e4ec7e37f0b81a78b4204df1c8a2609a9896c93b4cb18fa28e` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/fullboundaryvector-norm-sq.md) | 114 | `result-track:659467a6a7d436e07caf608b45184a19ebb226ba23828b67e7c400c1c545eae1` |
| 10 | `def` | [controller](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/controller.md) | 132 | `declaration-track:b47ef587d8a43ad64c17930a21ab2c82a8ae638fd66889743a59b61a674a047a` |
| 11 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/controller-ae.md) | 137 | `result-track:1f5cf371b4bec75dd7750f2ec242b3af5cf29b75f680e2553e30b5aed43a4b71` |
| 12 | `theorem` | [zeroExtension_controller](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/zeroextension-controller.md) | 144 | `result-track:66376125e43a09b727e360065eb3ef7d7d08391374129ab9a4d4ac27ca90809f` |
| 13 | `theorem` | [controller_norm_sq](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/controller-norm-sq.md) | 161 | `result-track:a5f50d3106afe526f249c53416d74c96f599960294cd565e3bec0ba6a1550ff7` |
| 14 | `theorem` | [boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/boundaryinverse-shift.md) | 180 | `result-track:372bf8a4ad01a31d4be8f675a4fc27f8048e4fba0bd9345daa961fd61a2a09b9` |
| 15 | `theorem` | [candidate_shift](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-shift.md) | 224 | `result-track:312c72beee8932be398259afe9eb2503d0eb8b6978df8b5a1dae9f585f28e8c0` |
| 16 | `theorem` | [candidate_boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-shift.md) | 230 | `result-track:ee941a1e7c9642dd20c37989ee687fb56242ae5bbd726881ac556fc21699cccc` |
| 17 | `theorem` | [candidate_boundaryInverse_bounded](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-bounded.md) | 251 | `result-track:95603144d7cbeeff7e2c4ad9f4038c6eb0e14c0aa19ba1f1a44fabc6d57192c1` |
| 18 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-half-shift.md) | 271 | `result-track:e1fc0e23384ae321141e360c9de9fb8cd38dd80d690ee1db8e820da8ea92e13e` |
| 19 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-exp-bound.md) | 287 | `result-track:0c6d659e39f42c9a67094d418a145d7de0ca0a9c29635be1e273659e6290aaec` |
| 20 | `theorem` | [candidate_boundaryInverse_integrable](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-integrable.md) | 299 | `result-track:5458375a9699987e1e5b3c187a4fd527636b4658b3dbf28a575d39114ea59ee3` |
| 21 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-laplace-integrable.md) | 318 | `result-track:79d1888ee00114a18fc21c80667025b44e1dccccd80a93906088ba89c45a66a4` |
| 22 | `theorem` | [candidate_boundaryInverse_fourier](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-fourier.md) | 350 | `result-track:ef98a4839f7d4eaa8f971d07e289454d4ab3523edda846acc62df643c4fbc94a` |
| 23 | `theorem` | [candidate_boundaryInverse_tilt](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-tilt.md) | 386 | `result-track:0d9b2f8bbe9250125f06c63d17e4a25b538389be65800a77856bc944bc21f277` |
| 24 | `theorem` | [candidate_boundaryInverse_laplace](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/candidate-boundaryinverse-laplace.md) | 399 | `result-track:cb1c4f2d35d7ba67f7e1858741bbd1ebd1fb0a4c87a55eabfc0fb86cf6c2753a` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/example.md) | 432 | `declaration-track:1bb0265018a7cb51093bb8ab97232438abbc893c6c11affe63b8c6be6992e59a` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 437 | `declaration-track:41a4983d70be4ea246f4a389f47b31e9ebd81d37f77be4c50cb871dec2fcbd27` |
| 27 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 442 | `declaration-track:a96ba79a45c0af5d61cd3a142cf910d7503158024b1c1cbbe6c73924d428e003` |
| 28 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 447 | `declaration-track:ea8ac468507cf75924286378bb9e2e88eb08fe4bd59236a8ca45fd9c991322f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc0c7ff30d7cd3041c7e73f6a6d4df5354c173e6889edb0ce1f5e3e635bf199f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
