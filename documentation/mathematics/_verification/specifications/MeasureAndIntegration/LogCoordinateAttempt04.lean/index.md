# Verification target: Log Coordinate Attempt04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c951d16274751012895bc95bf3cd58c7633ef9d9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c951d16274751012895bc95bf3cd58c7633ef9d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logl2.md) | 15 | `declaration-track:735165679f78a725867c4b761249a4f8eb39dc05484a9410168041e6fca8075b` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/integral-exp-jacobian.md) | 17 | `result-track:4e78ddb63315f1d250bccf0d1a4202435f631a76554bd3be4110b626d78f7dfa` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/integrable-exp-jacobian.md) | 26 | `result-track:7bebf13be60bae860465398483df80c76338df14af0fd40e037ecd385442c697` |
| 4 | `theorem` | [exp_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/exp-quasi.md) | 35 | `result-track:6f864515db2f202404d35be911aa2cd6021286b2cea18dfdd17a4b09305ee7e5` |
| 5 | `theorem` | [log_quasi](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/log-quasi.md) | 57 | `result-track:5618552679dce82456b40be8d68994e0a8647bb98662f0cbb39ebec0925ea9df` |
| 6 | `def` | [logFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logfunc.md) | 76 | `declaration-track:d63e7b876be396b3c70e3ab4e64eea39e47597818b9057007f04a8eecb62f8be` |
| 7 | `def` | [positiveFunc](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/positivefunc.md) | 77 | `declaration-track:587877c68c64880abf2faf347155a58a2b98ef85f45c4c32e5582d6166570e73` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logfunc-norm-sq.md) | 80 | `result-track:529ee1dd76afde77de097d5e37168211d3f0ef5a31b4350d68213e4c3fef5e03` |
| 9 | `theorem` | [logFunc_memLp](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logfunc-memlp.md) | 88 | `result-track:bacfb4b56da78a68517db2dafad33f3b6db9f9bdaaaecc0dbe3e56b1c31e5308` |
| 10 | `theorem` | [positiveFunc_norm_sq_exp](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/positivefunc-norm-sq-exp.md) | 98 | `result-track:197d09df37bbd6f316d907283d17f35776e16b7c77f738227ef4b3be44366c17` |
| 11 | `theorem` | [positiveFunc_memLp](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/positivefunc-memlp.md) | 107 | `result-track:6a6112f0b59f2fb710a285002d441192de3b984b9d02626efa396fdbe81b18f6` |
| 12 | `def` | [logMap](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap.md) | 118 | `declaration-track:d2b2cd3c95834de2314c5e036a6c9fb00a72255a1ce0ae2ec5b3df885a1f7ae2` |
| 13 | `def` | [positiveMap](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/positivemap.md) | 120 | `declaration-track:38db792fbc8b7d5a9bf8ea1fb624c572623c770da3a705eb8cb91ec94014eeba` |
| 14 | `theorem` | [logMap_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-ae.md) | 123 | `result-track:6c3fcd04681fd530d7aaf7f21dc26ddf78056bdaf4010663c7971d29aac68d76` |
| 15 | `theorem` | [positiveMap_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/positivemap-ae.md) | 125 | `result-track:0a0b6a2cfdf78c23712e42113974b710016467196e2715aed1a1039978a6435a` |
| 16 | `theorem` | [logMap_leftInverse](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-leftinverse.md) | 128 | `result-track:c4a0d36310e4394d8c296288e523ac382e34d798853c74b23bcbcfb88a844ea5` |
| 17 | `theorem` | [logMap_rightInverse](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-rightinverse.md) | 138 | `result-track:154ae452b1d157f93e8dc59fbc2d5d6c037e9babdd617d7e62a1038d86b9d94e` |
| 18 | `theorem` | [logL2_norm_sq_integral](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logl2-norm-sq-integral.md) | 148 | `result-track:92c2db8aba27b07ad8731279b577ef92591e428825df5ae049e4d140a7675c46` |
| 19 | `theorem` | [logMap_norm](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-norm.md) | 163 | `result-track:94e473cabacb75f8ccb9b50afa05a6ed1b8291206d72dc5ca2fb15d1c57c4342` |
| 20 | `theorem` | [logMap_add](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-add.md) | 174 | `result-track:9375134ed1537e87da48c2051990ff2f99967391b1c8c7e820a08188ea7f946f` |
| 21 | `theorem` | [logMap_smul](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-smul.md) | 183 | `result-track:7d4e6d99a7144cc6b6b5ccf3c2c111f6898a65b5f6c3c38ca5f145f0de503a95` |
| 22 | `def` | [logIsometry](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logisometry.md) | 192 | `declaration-track:85449c64fed31338cd72bdecd3bdeaea816c96b4328dd6af971a58b0e5d7ecd9` |
| 23 | `def` | [logEquiv](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logequiv.md) | 198 | `declaration-track:862286e3db16b65cfb4a1f392e69ab6096b5cbb4907fe7dc0869d0ff6dcb1c85` |
| 24 | `def` | [translate](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/translate.md) | 205 | `declaration-track:9a7b8b5c38e73cf918836e0bee7b97bbd6ffcfe1b6ca427ba137c010e9cebe32` |
| 25 | `theorem` | [translate_ae](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/translate-ae.md) | 208 | `result-track:cb12afdd784161e12a8469531952650edf16aed8ecc74c3ba77a0d4f616b9a80` |
| 26 | `theorem` | [logMap_dilate](../../../../MeasureAndIntegration/LogCoordinateAttempt04.lean/declarations/logmap-dilate.md) | 212 | `result-track:e77dac73beecdb97a8a966d7658b2903e83f2b524fb4446c3bbeb2ce4fa80cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fa6801fd599c3f6e17c75c58af150681f695684a2c5c5573a887eb51239bdaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogCoordinateAttempt04/Variantba9c18d4d0238d38a709e241dabea9e51a94ea702c06c5cd134717fafc2748db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
