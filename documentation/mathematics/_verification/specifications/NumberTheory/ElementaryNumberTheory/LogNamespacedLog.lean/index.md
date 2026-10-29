# Verification target: Log Namespaced Log

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f2fcd5d8652da3549135bf42084766253efaaa3",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f2fcd5d8652da3549135bf42084766253efaaa3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log.md) | 38 | `declaration-track:54f3f1d110564e52afd30424cc2c82dcd90a18a3a6b13080389374516e0b1e31` |
| 2 | `theorem` | [log_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-eq-zero-iff.md) | 47 | `result-track:a806cb3448dd88d0cc8cfaed76ad003fc2cb56c0f5de7081818cdf8e9fec226d` |
| 3 | `theorem` | [log_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-of-lt.md) | 52 | `result-track:c37f6929369d1f268563946cacee9da8426d9f1dcca6285393c96bce749c20cf` |
| 4 | `theorem` | [log_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-of-left-le-one.md) | 56 | `result-track:7b1a7fb4f5a8518943d9873d1b0160da5995e640d6021d2b4237d71653c149d8` |
| 5 | `theorem` | [log_pos_iff](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-pos-iff.md) | 61 | `result-track:5168b8923b3a557bbffbc0391b333b628337eefcc2044e812175088ec1bed09e` |
| 6 | `theorem` | [log_pos](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-pos.md) | 65 | `result-track:fa5c98cdbd67e76de0c51536c83b3dbdc25580d59ff4f76ff5260427b724605a` |
| 7 | `theorem` | [log_of_one_lt_of_le](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-of-one-lt-of-le.md) | 69 | `result-track:76392437869c0a7a8f0831906b1fcb278a7d6b486f8eec3babac228dc629b2bf` |
| 8 | `theorem` | [log_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-zero-left.md) | 75 | `result-track:7b912cb8af4bb2f46174241c9c392da39e9bf843a8ccafd713ef79e7f7b59898` |
| 9 | `theorem` | [log_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-zero-right.md) | 80 | `result-track:118754a482ba7f8eac5c6b28e851ae2d2b24b85741d3f5d6ddfd6ceccb5f03a1` |
| 10 | `theorem` | [log_one_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-one-left.md) | 85 | `result-track:74d772c8f3cd84420b42bfc07b81bff0c37bff7201da0d54be215f9dc2fcf85c` |
| 11 | `theorem` | [log_one_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-one-right.md) | 90 | `result-track:f9a99b922b0526fda77b28e60a0a82418edef4e7274fe865945e0b31e30df5b2` |
| 12 | `theorem` | [pow_le_iff_le_log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-le-iff-le-log.md) | 96 | `result-track:cc7c42a28a53701fc80685e4af5ec1d78ac9b98f4f0c5cce64b6b0939f31a853` |
| 13 | `theorem` | [lt_pow_iff_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/lt-pow-iff-log-lt.md) | 111 | `result-track:ee146a109ab0f38ea5aac7019e25f73f8ac710da27e8e49a02d92a15f3c5437a` |
| 14 | `theorem` | [pow_le_of_le_log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-le-of-le-log.md) | 115 | `result-track:42d6e344bf722b82d74c41c49541e291969033146c01e71f2483f902693a3c93` |
| 15 | `theorem` | [le_log_of_pow_le](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/le-log-of-pow-le.md) | 121 | `result-track:da19db49df551410ae8a3a6532eb155ad7bf2992b9f9fc11fd242071147c59f3` |
| 16 | `theorem` | [pow_log_le_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-log-le-self.md) | 126 | `result-track:e5d8b08102e4cb5904fbfff2b8175e08959b92faf2d658543d8e587612696b38` |
| 17 | `theorem` | [log_lt_of_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-lt-of-lt-pow.md) | 130 | `result-track:7a4ccf6be257dbe16a47e6f16ef55127ad48c77f36629ef8aac9df7d1a5d5310` |
| 18 | `theorem` | [lt_pow_of_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/lt-pow-of-log-lt.md) | 134 | `result-track:5ae83ee8febbfe4d0176cf6b245359563668dfca6af2e9fd8a0b9f75c8c7cbd8` |
| 19 | `theorem` | [lt_pow_succ_log_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/lt-pow-succ-log-self.md) | 138 | `result-track:483b8f1d330dbada85af4c0cc28c58357de0aba5f66c264659c33d4b923d0fc5` |
| 20 | `theorem` | [log_eq_iff](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-eq-iff.md) | 142 | `result-track:1a22e25c7c1ae3aac428e2d1ac63d680c7a97b5aabccdd600cdc3da0cba387c8` |
| 21 | `theorem` | [log_eq_of_pow_le_of_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-eq-of-pow-le-of-lt-pow.md) | 156 | `result-track:02c8328e6aaa0519e6d1213fca6a2aa1eb4f5dff1ccbcc819909fe1273677317` |
| 22 | `theorem` | [log_pow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-pow.md) | 164 | `result-track:890097b98ba4da01545ea5a0c035d8fa8b2cb3987b5226186e5604b993cd91a6` |
| 23 | `theorem` | [log_eq_one_iff'](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-eq-one-iff-source-edition-2.md) | 168 | `result-track:a341dfb084c574a4b0f097a8669569d1051a3597f58379814bbf26c70efb516c` |
| 24 | `theorem` | [log_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-eq-one-iff.md) | 172 | `result-track:6c9e733517d28b70c9fb71a6ece6a5d892198f18d4adce33f6181c337a483668` |
| 25 | `theorem` | [log_mul_base](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-mul-base.md) | 177 | `result-track:aefc658d6cc14a0702bf764c511c0363709b450cab7daff76be4464bccca9c6d` |
| 26 | `theorem` | [pow_log_le_add_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-log-le-add-one.md) | 183 | `result-track:87b2898d5a14e5fac5d81d011760c40e33e55ed5d72ffd7b596496a73fdd9347` |
| 27 | `theorem` | [log_monotone](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-monotone.md) | 188 | `result-track:aad48380a9d9af4cf4118f69b1c0f5f7e4a8808a4413aec6681cd9e0b26d837b` |
| 28 | `theorem` | [log_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-mono-right.md) | 197 | `result-track:5a949419b3c2773a8c5ec83d95ac7b0ac00dcccf9e604b687e0c5ddfdda89b1f` |
| 29 | `theorem` | [log_anti_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-anti-left.md) | 202 | `result-track:3479fa2cda833f5e77cb76d17a7fa569327a6a5eb74f4ed095a37f2fe9d8186b` |
| 30 | `theorem` | [log_antitone_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-antitone-left.md) | 210 | `result-track:4b1bf598cb809e8d74daacc35ab55ca6ea4a392c97376311868878e99214f221` |
| 31 | `theorem` | [log_div_base](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-div-base.md) | 215 | `result-track:44f21e002144ff5706790018e8833ddc20879a8a1089a4276243833e7c063f21` |
| 32 | `theorem` | [log_div_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-div-mul-self.md) | 224 | `result-track:3cae03e221bb3fb7ed8108265cee348ceac228a0897828e899db490a56dfaaa1` |
| 33 | `theorem` | [add_pred_div_lt](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/add-pred-div-lt.md) | 233 | `result-track:2d807e15f4229cce5144e0a24cdf8c0910da9d82d8efe9d924e1dbac361018e2` |
| 34 | `def` | [clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog.md) | 246 | `declaration-track:778dfb7af483fa5e69e0fb4edcfeb4e27dc703631eedea683df6527a72658dc1` |
| 35 | `theorem` | [clog_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-of-left-le-one.md) | 254 | `result-track:a401035f14c1b49137b0ea97ea0672cdfa629a2762dc9205f540633610caf5bf` |
| 36 | `theorem` | [clog_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-of-right-le-one.md) | 258 | `result-track:34a29a6da583bb51b47948942f1fb505870a8a3f70d04533ff6a64e7947e7f81` |
| 37 | `theorem` | [clog_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-zero-left.md) | 263 | `result-track:2380c84f3cb98b743ea30b1393be68b218f3aff43833c37caa48289c79b8e67d` |
| 38 | `theorem` | [clog_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-zero-right.md) | 268 | `result-track:6339a1dbdbf3e825dc41cce057ceca1beb8c1ae39224bbb8793098e4790a2ef2` |
| 39 | `theorem` | [clog_one_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-one-left.md) | 273 | `result-track:6213e273405f2c5f9805d531994d994c2bc3a6b8adfac64588d1074a44db08f2` |
| 40 | `theorem` | [clog_one_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-one-right.md) | 278 | `result-track:f03826066a73d02eefac5bdd27705aaec5efd432299232ef16bd794fa78d79b8` |
| 41 | `theorem` | [clog_of_two_le](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-of-two-le.md) | 282 | `result-track:45e8cf064c2b0e5216374693b9f66fb53302534a1fb00a06e00a75a9b5be5ab4` |
| 42 | `theorem` | [clog_pos](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-pos.md) | 286 | `result-track:b8f6a7ba30b43c219587896bad9bafe4ec3aba9e54d72133309ebafa28df47d8` |
| 43 | `theorem` | [clog_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-eq-one.md) | 291 | `result-track:9f7d3780f3ab33b05e8f6d925cf1d58fc1fb7afd4e56e776825bd65d762e998a` |
| 44 | `theorem` | [le_pow_iff_clog_le](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/le-pow-iff-clog-le.md) | 300 | `result-track:7b70168b5f1d7177d4454a660f756f146c93cdd2efdecf70353efad9144089cc` |
| 45 | `theorem` | [pow_lt_iff_lt_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-lt-iff-lt-clog.md) | 317 | `result-track:2175074834b9559510eb566f90e985788275804374b8dd3a6761de92cbc54c90` |
| 46 | `theorem` | [clog_pow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-pow.md) | 321 | `result-track:4b0761cff19862ecb02f6aa18b55240c1a2b5ba8e7e7071a6b69a2cf7f2ac5a4` |
| 47 | `theorem` | [pow_pred_clog_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/pow-pred-clog-lt-self.md) | 327 | `result-track:187245a859268e4e4c9795ae28d067d5131c92f196d4bf5edf0a2ac2b0bf5557` |
| 48 | `theorem` | [le_pow_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/le-pow-clog.md) | 333 | `result-track:9b7ab4f4cfb0193777dce9cfc9b14765f92fd018fd833ec0ac11322add427a26` |
| 49 | `theorem` | [clog_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-mono-right.md) | 338 | `result-track:caa2bd985b9118dd750e50923f38c93d98e39e1fe1aea843cccce659c65c915e` |
| 50 | `theorem` | [clog_anti_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-anti-left.md) | 347 | `result-track:aab320652b6cd4868fd7ff062dfb5f22dedfafcf36fe960ac5a9f928ed8af3ad` |
| 51 | `theorem` | [clog_monotone](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-monotone.md) | 354 | `result-track:7b078dba94cf51e70fd08c30d8bcfd37077d52c8cb658cb5cbbecb8249d06651` |
| 52 | `theorem` | [clog_antitone_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/clog-antitone-left.md) | 357 | `result-track:c947d0c44244543c402f67f6d9e94b3a17190e6c3cd68def98d2c3f3404ffa6b` |
| 53 | `theorem` | [log_le_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedLog.lean/declarations/log-le-clog.md) | 361 | `result-track:99fc4d3e7143e48c890dba2f0812bb6418ef6ebb46cab784dc8399df4614e69f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bd0bc32ca1afbcb306e0ca081107118f2da4b3ef83b061bc9a53fd01e375c8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
