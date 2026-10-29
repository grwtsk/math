# Verification target: Exp Log

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3007830800df12213da9d50ddf6c0af3a1716968",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ExpLog.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ExpLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3007830800df12213da9d50ddf6c0af3a1716968`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expTaylorPoly](../../../../CommutativeAlgebra/ExpLog.lean/declarations/exptaylorpoly.md) | 35 | `declaration-track:966363519f275c79809d82ba9c6e0d4bcaffcd19a642d85401974a267ab07fb9` |
| 2 | `def` | [expRemainderBound](../../../../CommutativeAlgebra/ExpLog.lean/declarations/expremainderbound.md) | 42 | `declaration-track:97fac8479a9c250536d02ddb9cd328eb3650e5f0d33e4cfe3495fc0f3c75a5f3` |
| 3 | `theorem` | [expRemainderBound_nonneg](../../../../CommutativeAlgebra/ExpLog.lean/declarations/expremainderbound-nonneg.md) | 50 | `result-track:d89357f6016f805609a70f691fa1f6cebb21ecf3a26f3328f6e04749d53d045e` |
| 4 | `def` | [tmExp](../../../../CommutativeAlgebra/ExpLog.lean/declarations/tmexp.md) | 63 | `declaration-track:44a6f8c455cd3be654c7fd8e22cce4e54ef915c325c23427283fdc894cfa8be2` |
| 5 | `def` | [logTaylorCoeffs](../../../../CommutativeAlgebra/ExpLog.lean/declarations/logtaylorcoeffs.md) | 87 | `declaration-track:6b96e345d0a630a60ba25c5b2fab5593ed43db2482221411dbe5f13cdfe28445` |
| 6 | `def` | [logTaylorPolyAtCenter](../../../../CommutativeAlgebra/ExpLog.lean/declarations/logtaylorpolyatcenter.md) | 95 | `declaration-track:b7f636a27705dc3630ca2a407ca8f97d5582d26bbdd1299bae78682bacd2f506` |
| 7 | `def` | [logLagrangeRemainder](../../../../CommutativeAlgebra/ExpLog.lean/declarations/loglagrangeremainder.md) | 102 | `declaration-track:458868b4a5d815bfd75b826eed50e403c842bfd63d15b44de46d1d6c5f1fcf18` |
| 8 | `def` | [logRemainderBound](../../../../CommutativeAlgebra/ExpLog.lean/declarations/logremainderbound.md) | 114 | `declaration-track:0a22e7f611b3b9cc89fce830a3077790bd5cb30fc98ca4b5061080b990f9dd38` |
| 9 | `theorem` | [logRemainderBound_nonneg](../../../../CommutativeAlgebra/ExpLog.lean/declarations/logremainderbound-nonneg.md) | 119 | `result-track:7f6d6af46618c4fb11546c006b81f4d329bd3fe27283de81386035b83e45608e` |
| 10 | `def` | [tmLog](../../../../CommutativeAlgebra/ExpLog.lean/declarations/tmlog.md) | 142 | `declaration-track:098ffb3ffd72304950712b395fa0907ec05080129be784bcdfcc31b9e49ab64c` |
| 11 | `theorem` | [abs_le_interval_radius](../../../../CommutativeAlgebra/ExpLog.lean/declarations/abs-le-interval-radius.md) | 184 | `result-track:d12527840bf1af6bd15c5277794d68052cf5bbc43f21e59ce4c8ad641643a9a4` |
| 12 | `theorem` | [mem_Icc_of_mem_interval](../../../../CommutativeAlgebra/ExpLog.lean/declarations/mem-icc-of-mem-interval.md) | 198 | `result-track:973c6b9fe130bdba081bc31acf95610aed93953f60d5df5e68be92d4543b7dc6` |
| 13 | `theorem` | [expTaylorPoly_aeval_eq](../../../../CommutativeAlgebra/ExpLog.lean/declarations/exptaylorpoly-aeval-eq.md) | 207 | `result-track:6f3bcd2adc73d82a82d05480d8f98eb5fc965b11ee089c01eae26b211db6229d` |
| 14 | `theorem` | [tmExp_correct](../../../../CommutativeAlgebra/ExpLog.lean/declarations/tmexp-correct.md) | 225 | `result-track:b8d22618ba38271063a63675ab765d2a73d68131ebb884ba9b185ca9038a0586` |
| 15 | `theorem` | [log_approx_error_bound](../../../../CommutativeAlgebra/ExpLog.lean/declarations/log-approx-error-bound.md) | 318 | `result-track:1a64820437168a9001d38b48f995dcaa21edc43903f4293d2367c06bc382eb0b` |
| 16 | `theorem` | [log_taylor_remainder_bound'](../../../../CommutativeAlgebra/ExpLog.lean/declarations/log-taylor-remainder-bound.md) | 343 | `result-track:6b9e8af1f1f58d15c10f7dc74f205485500cc3d4090311605a22d847f7f64129` |
| 17 | `theorem` | [tmLog_correct](../../../../CommutativeAlgebra/ExpLog.lean/declarations/tmlog-correct.md) | 488 | `result-track:db62e76c42494756f6267e9dc8144207dfdb32949a57b136b7c348c6e06386ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b8c06de0efd3281a83631816e8246100c85b37c9f3281d6a488608b77df9dc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
