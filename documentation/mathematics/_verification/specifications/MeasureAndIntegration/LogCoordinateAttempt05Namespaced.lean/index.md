# Verification target: Log Coordinate Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8da60053094c92dabcf8edb267e1c1f595369c78",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variant9b0fd8f14c99dce0ecdefed2c3968213d342542da5b0be033ad382318deba67b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8da60053094c92dabcf8edb267e1c1f595369c78`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variant9b0fd8f14c99dce0ecdefed2c3968213d342542da5b0be033ad382318deba67b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variant9b0fd8f14c99dce0ecdefed2c3968213d342542da5b0be033ad382318deba67b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logl2.md) | 23 | `declaration-track:d08ed17977357978d43a3776954c22de8f88c000a50a14bd6c3d34b182d3f36c` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/integral-exp-jacobian.md) | 25 | `result-track:9801610b3f1acd8db92fd11d8476e12f4b21e362fa470df924cb4dcc1bddbe2e` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/integrable-exp-jacobian.md) | 34 | `result-track:b1962319dd0192c50df978316a8b00afe5baf7a3477aebb3f3630fb41740c922` |
| 4 | `theorem` | [exp_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/exp-quasi.md) | 43 | `result-track:f97b561c6f52b9ff4f6d87b9c5194ff59f84961d1dd2cd84291832397f393a1a` |
| 5 | `theorem` | [log_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/log-quasi.md) | 65 | `result-track:c098850657308aa72f9f3ba8415523efd7369f3af5d4038a5207d05ba28e6c78` |
| 6 | `def` | [logFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logfunc.md) | 84 | `declaration-track:0c84efbe6e968d87e0209420525c7622a66e70223ba5e038a46d60da5ff75ab7` |
| 7 | `def` | [positiveFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/positivefunc.md) | 85 | `declaration-track:3d53ead186c9a80cb6c88a33ed4060c981ac7c312fca19b691f4f199a1d8bbf7` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logfunc-norm-sq.md) | 88 | `result-track:4cc1f8197f0fe5014ef46d927c57ee6db06e8a03e01756bccd31e10f53834b07` |
| 9 | `theorem` | [logFunc_memLp](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logfunc-memlp.md) | 96 | `result-track:5e385f8c4d9b3684154f672deb310f4a82c854e13533fed3019cbdca7db1692d` |
| 10 | `theorem` | [positiveFunc_norm_sq_exp](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/positivefunc-norm-sq-exp.md) | 106 | `result-track:d869b8fff8b8109dbecd106621be7f523843a8a25f22e0f5071f8847b363edf0` |
| 11 | `theorem` | [positiveFunc_memLp](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/positivefunc-memlp.md) | 116 | `result-track:9708a3f5b8bbb675c11767fe4a4de23a2eb6e0738fd655312b255bdae61cf8a1` |
| 12 | `def` | [logMap](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap.md) | 127 | `declaration-track:8a7c5d24b532be6e750a4c751aaad0e5dde961fa8ebfee740cd0d3328bad64e1` |
| 13 | `def` | [positiveMap](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/positivemap.md) | 129 | `declaration-track:bbcbc30c3d96fe4461a20338dbdb8cb7439b6637a1a9ac4f073b633b59b4b65f` |
| 14 | `theorem` | [logMap_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-ae.md) | 132 | `result-track:69ecd02b567a6750e88cf746cf7724c184ac5af504aa60fd654ce8171190af1f` |
| 15 | `theorem` | [positiveMap_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/positivemap-ae.md) | 134 | `result-track:99be279bf8c11fb7c89f8bf9da14d4f55706e6b631380b3e8560bb4dba9df262` |
| 16 | `theorem` | [logMap_leftInverse](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-leftinverse.md) | 137 | `result-track:ed91f3a4801dcfd80559bba9c1020cdfcc05a7512b6be69aa8c0ffc68971c075` |
| 17 | `theorem` | [logMap_rightInverse](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-rightinverse.md) | 147 | `result-track:c7c19a1907a8d913eb509d24f2843be6fa2dbbd8ee7710fc5d5f0cb24647c6eb` |
| 18 | `theorem` | [logL2_norm_sq_integral](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logl2-norm-sq-integral.md) | 157 | `result-track:e1f6bc2db9aadc7aa04aa60edd31431b37b626cceb057f10a3b0a6cf6d08ba72` |
| 19 | `theorem` | [logMap_norm](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-norm.md) | 172 | `result-track:32e1f85846482f6b4b6ac86d14b69e9e2fb3ac19057e68a7f878b95fbd5d5580` |
| 20 | `theorem` | [logMap_add](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-add.md) | 183 | `result-track:765aba468aa6f6cc3335577a06d0267c7736a0cd6cb11ef0551c54c03715deb6` |
| 21 | `theorem` | [logMap_smul](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-smul.md) | 192 | `result-track:f3df39e9a86d451bd1db1fb5943af5a59b8655f5ba0cc153136d6903d63a32e9` |
| 22 | `def` | [logIsometry](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logisometry.md) | 201 | `declaration-track:d846da9ee4a815b620d676a2f7f75d7bc07636e4f88a93c1559597fb0f91fc3a` |
| 23 | `def` | [logEquiv](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logequiv.md) | 207 | `declaration-track:92d3bf3f2fed72e4c25db7135b324bd3ffdb0c97aa23810b79cf46ac56479b26` |
| 24 | `def` | [translate](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/translate.md) | 214 | `declaration-track:818c4a85f85b1ab574d8aeccebb5a7a2ea97d41fb6245c97ea1d4dd4fe33cc06` |
| 25 | `theorem` | [translate_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/translate-ae.md) | 217 | `result-track:def4d9d1f49cd51cb22d811282b5481cc479368b6ca8d74d975d2e4929affa3c` |
| 26 | `theorem` | [logMap_dilate](../../../../MeasureAndIntegration/LogCoordinateAttempt05Namespaced.lean/declarations/logmap-dilate.md) | 221 | `result-track:e87257e72ef1677028c5bd5dac3379bb171b7a07578b6c7dfb5777e0904a80ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8d08208e9e19419e4c972cf998df5ef75a5bd96580832b46d750ac5c859a24f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variant9b0fd8f14c99dce0ecdefed2c3968213d342542da5b0be033ad382318deba67b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variant9b0fd8f14c99dce0ecdefed2c3968213d342542da5b0be033ad382318deba67b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
