# Verification target: Int Log Log Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7e688bb31e3dd0e61a59e81d1316858649eeade",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant96c0f3c187fb51935df566b9dc6e6d9aa5078257a4e77bef8c370ff4477e9488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7e688bb31e3dd0e61a59e81d1316858649eeade`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant96c0f3c187fb51935df566b9dc6e6d9aa5078257a4e77bef8c370ff4477e9488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant96c0f3c187fb51935df566b9dc6e6d9aa5078257a4e77bef8c370ff4477e9488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log.md) | 56 | `declaration-track:c2137181e40b5dcc034f62dc28cba6bd305b819baf0ebbb486fe01817e4a7fc2` |
| 2 | `theorem` | [log_of_one_le_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-of-one-le-right.md) | 60 | `result-track:7cdea62579f3bf51c1419829e5c1152b5c9aea8919f7db99734fdde636f4bb42` |
| 3 | `theorem` | [log_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-of-right-le-one.md) | 63 | `result-track:5c120ba04fbee936f9eedd387a5021da4f8ce714404379d87dae29f33c7c6441` |
| 4 | `theorem` | [log_natCast](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-natcast.md) | 70 | `result-track:ac833fd45d28ae56c6f01e0bc25c9c23a13ba3c3e055b88a8a1f8421202b54d7` |
| 5 | `theorem` | [log_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-ofnat.md) | 77 | `result-track:89946e2a211a7dc2c8f60a92c00e106f3d2ba8f0cf127843bd0e0f28a7e7d5e6` |
| 6 | `theorem` | [log_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-of-left-le-one.md) | 81 | `result-track:5ebea9605621d09996208d1bf3d75b9b37f0cfa8e94aba8f071c9160da140f8f` |
| 7 | `theorem` | [log_of_right_le_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-of-right-le-zero.md) | 86 | `result-track:64ffbec3f7c590740e5bca048078bc0f6d8273cf67c2dadce9a6937e1d1ffe38` |
| 8 | `theorem` | [zpow_log_le_self](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/zpow-log-le-self.md) | 91 | `result-track:387a3f7ce0ba5f4fababd1e493f525d844c3a06f38473e1b541ae4de75be0f76` |
| 9 | `theorem` | [lt_zpow_succ_log_self](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/lt-zpow-succ-log-self.md) | 99 | `result-track:395368a8826c960272be326c89cf13d740cf7052cec7a7ca830f7c538c163cec` |
| 10 | `theorem` | [log_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-zero-right.md) | 118 | `result-track:43e28cc967020a3e4b939ccc2163177dffc8f106b24a339382a8e374c6df15e4` |
| 11 | `theorem` | [log_one_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-one-right.md) | 122 | `result-track:0cefe1929615e9d0e11cc64cb986e0d830e5a714e2ff9ee0bb0b8a0d4b697520` |
| 12 | `theorem` | [log_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-zero-left.md) | 127 | `result-track:5946283dd8bfda3dd5fef92691aba898e7f1e68583e4ef02f047fe0c9d790407` |
| 13 | `theorem` | [log_one_left](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-one-left.md) | 132 | `result-track:c319a9f31fd6f187a09f6e8019890b179e44d53647c51f412bff09733b2871eb` |
| 14 | `theorem` | [log_zpow](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-zpow.md) | 137 | `result-track:13ebf3e6a0ceb07ec86cd8b78bf64aa69723db4342863d6ef6936be9ea321931` |
| 15 | `theorem` | [log_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-mono-right.md) | 146 | `result-track:95ab202c57bf7f1ebae7e53dcc089064f24576a8f8cae42aa2eb77d2b56d1fe0` |
| 16 | `def` | [zpowLogGi](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/zpowloggi.md) | 159 | `declaration-track:31dc18e82e2a00e117d0d206befc8181f101ba61e5d03dac8ca0a4fb8dc1cdd5` |
| 17 | `theorem` | [lt_zpow_iff_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/lt-zpow-iff-log-lt.md) | 169 | `result-track:3e4d1f7e2af1bbd775db4e687071e95dab8fd3b9363619f3aca1fb3485aeeea4` |
| 18 | `theorem` | [zpow_le_iff_le_log](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/zpow-le-iff-le-log.md) | 174 | `result-track:ed88cf533c50168080dde1875ad025a6bfa955be02063764ded5c845647bafd4` |
| 19 | `def` | [clog](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog.md) | 179 | `declaration-track:0b5a8a1524832345db01ba1f57325577893dc969b50ec23f52285b0f474f19f6` |
| 20 | `theorem` | [clog_of_one_le_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-of-one-le-right.md) | 183 | `result-track:2b044e403073cff6411714b6d8866e8699d7b7cc564a1ebfd44359587f1277f7` |
| 21 | `theorem` | [clog_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-of-right-le-one.md) | 186 | `result-track:702bcc83224f6d086a08fa4eab131939a42e8c62bb14a67dcef047ca34ee2e0a` |
| 22 | `theorem` | [clog_of_right_le_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-of-right-le-zero.md) | 192 | `result-track:b5ca800abbbe6d5b2faa38e582f06b1064d4e1b04f1bed58ff79f2cb2ceeac8a` |
| 23 | `theorem` | [clog_inv](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-inv.md) | 201 | `result-track:711abe89017355a8dd9a44e66a066c20e0c56d7580a26fb8b06058744b6f8130` |
| 24 | `theorem` | [log_inv](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/log-inv.md) | 209 | `result-track:ef53d6807c6d2e899ededf7560e3c8b13f93501411623768741bf9974ee634a0` |
| 25 | `theorem` | [neg_log_inv_eq_clog](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/neg-log-inv-eq-clog.md) | 213 | `result-track:6d6e38ba2a31f8f1580a067e07e3af0f347b6a0677fd886bca372b527636e691` |
| 26 | `theorem` | [neg_clog_inv_eq_log](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/neg-clog-inv-eq-log.md) | 215 | `result-track:e966e1eeaec13afdc50b5ce4e96847b414fcf7364f6c31a41499485e567a9fa8` |
| 27 | `theorem` | [clog_natCast](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-natcast.md) | 218 | `result-track:130eb2fc7e433a6665ddd20fcf3feb9b16f5744fc5caecc10f1197cf052db83c` |
| 28 | `theorem` | [clog_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-ofnat.md) | 224 | `result-track:107219e69bcfd984fda376bb09aef5ec9ff1f0c3e8500aa2ccd640949c1733c5` |
| 29 | `theorem` | [clog_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-of-left-le-one.md) | 228 | `result-track:092bbeca9c8bc70db62387b19f7c1aba72a5e32e2cd70c9e37410a510c4da4ee` |
| 30 | `theorem` | [self_le_zpow_clog](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/self-le-zpow-clog.md) | 231 | `result-track:be9ef6b0d9beccddcd1000df6c9bafb1d632ebf248fccc3880af33f34557bc99` |
| 31 | `theorem` | [zpow_pred_clog_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/zpow-pred-clog-lt-self.md) | 239 | `result-track:86359725b87177b1efb4bd730ab75742efa540fdd4d9a8cfd1935cfb77d9aa68` |
| 32 | `theorem` | [clog_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-zero-right.md) | 246 | `result-track:92cb60147dfbaa8fa934288f7c5f9f1fd60246a07988873ef3dd3a91ea95d8b4` |
| 33 | `theorem` | [clog_one_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-one-right.md) | 250 | `result-track:9887ef6bc07a875fdb09d13604060d17824a758b63b6241556ab9d4b612ab2f9` |
| 34 | `theorem` | [clog_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-zero-left.md) | 255 | `result-track:8e6bd4d669bbfea04a409d79fd81ef58b771791a91cb412bee9f6e164aa7cb1c` |
| 35 | `theorem` | [clog_one_left](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-one-left.md) | 262 | `result-track:5ebba89d810d9a0c43aeea04d4164b5f9afe562e56282f884f819075234cf6ce` |
| 36 | `theorem` | [clog_zpow](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-zpow.md) | 265 | `result-track:a15b1689255830bbc35049f8c030290b51d5b5908339374de2a4c1c374b2b68d` |
| 37 | `theorem` | [clog_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clog-mono-right.md) | 269 | `result-track:a310e5d065e6e59d18802af8ab354d09326b627a4ecb8bde4b266920c7252bea` |
| 38 | `def` | [clogZPowGi](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/clogzpowgi.md) | 276 | `declaration-track:e9506aa4a181e4fbcbd7fe5e7e7ac0076f19d247168acddc1b29dbb44f07c578` |
| 39 | `theorem` | [zpow_lt_iff_lt_clog](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/zpow-lt-iff-lt-clog.md) | 285 | `result-track:f650a4d962ee8092af8713d66f1dec955c1546e2b52846cdbbd19426bf18552b` |
| 40 | `theorem` | [le_zpow_iff_clog_le](../../../../../NumberTheory/ElementaryNumberTheory/IntLogLogSourceEdition2.lean/declarations/le-zpow-iff-clog-le.md) | 290 | `result-track:e65c0a2963231f221103e8a2be7bde0042d80b349d670201b8c8f4a3511d3a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c02bfe395312b8a9a20ed2f8a9fbc57c979d279ac2ef18c550266bdbb29971cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant96c0f3c187fb51935df566b9dc6e6d9aa5078257a4e77bef8c370ff4477e9488.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant96c0f3c187fb51935df566b9dc6e6d9aa5078257a4e77bef8c370ff4477e9488.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
