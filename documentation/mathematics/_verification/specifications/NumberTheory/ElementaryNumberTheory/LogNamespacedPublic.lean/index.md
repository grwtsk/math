# Verification target: Log Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46cbe77479d5efcb4a6ae69354c2897ae7c5b50b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant68b090ea72250d4ccff3f79394802c118ae8842407bd2472f4bb186709798444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46cbe77479d5efcb4a6ae69354c2897ae7c5b50b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant68b090ea72250d4ccff3f79394802c118ae8842407bd2472f4bb186709798444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant68b090ea72250d4ccff3f79394802c118ae8842407bd2472f4bb186709798444.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log.md) | 69 | `declaration-track:df152a1ae011f2c05a0fa720845fb51047d99f0abec2b2e8153a4eb14fa3e842` |
| 2 | `theorem` | [log_of_one_le_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-of-one-le-right.md) | 73 | `result-track:59961bc6db298e836475cca4f197c1b3f7e0f2367fe219110d3071c45a926fc2` |
| 3 | `theorem` | [log_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-of-right-le-one.md) | 76 | `result-track:c1b4039cb644586ae9c3b211ad259b7d9076a7e98147bcb3f83cd2f1d777ccca` |
| 4 | `theorem` | [log_natCast](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-natcast.md) | 83 | `result-track:71aa38a7d358ccee1bf9992380d759c251f68be2fa816595e9b4390959ca85c8` |
| 5 | `theorem` | [log_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-ofnat.md) | 90 | `result-track:398883d5fd77f29b4618b231a8c13431216c034f4031e740ee18a4b1ae6a8561` |
| 6 | `theorem` | [log_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-of-left-le-one.md) | 94 | `result-track:9e26489334d9f3baa1092422ba5f0f2ebb327becd5c9b1dd168364cece953443` |
| 7 | `theorem` | [log_of_right_le_zero](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-of-right-le-zero.md) | 99 | `result-track:9ce89eef95c990f04e767133cdfaf00a452b12c2d90b40b2c63bc218aa55dec0` |
| 8 | `theorem` | [zpow_log_le_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/zpow-log-le-self.md) | 104 | `result-track:4b5562b9fe5ec930e3ddd7d9155d310a4b97e73e4a3b94554409d19331e7ea23` |
| 9 | `theorem` | [lt_zpow_succ_log_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/lt-zpow-succ-log-self.md) | 112 | `result-track:6bc7d5efdbccbd05432fb98494ae9d2586b7356c46a9b9684fa8decae2d7cb18` |
| 10 | `theorem` | [log_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-zero-right.md) | 129 | `result-track:8e8cc7ab89533526a6328efa8405275ebbc41adce85ab0d2c3329d233dff4a39` |
| 11 | `theorem` | [log_one_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-one-right.md) | 133 | `result-track:314f56c8a10916afb62a9499dcbac1bbd13f055664afa19758847530d3f78017` |
| 12 | `theorem` | [log_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-zero-left.md) | 138 | `result-track:c5ba9d08e3fe282e99adc86c41c113e18b89ebcd98a78355df15608f23cf3f9f` |
| 13 | `theorem` | [log_one_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-one-left.md) | 143 | `result-track:3fcf39b8d4f0166f27f9296dfe3d2fe4e39d22647157c5765fa64375e98152ad` |
| 14 | `theorem` | [log_zpow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-zpow.md) | 148 | `result-track:9686c7efd4ef8b7075d9e3e526fe72fb976ce751311340233802ca36d23bb22e` |
| 15 | `theorem` | [log_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-mono-right.md) | 157 | `result-track:e1d381bf75a75fbff3421fd3ccbfd8abdf891c1cf632b519e68fa098fe062cc8` |
| 16 | `def` | [zpowLogGi](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/zpowloggi.md) | 171 | `declaration-track:02b0997f50539bc83db4966e969bde0da01b770dcb3f29f8fe630d2feaf64031` |
| 17 | `theorem` | [lt_zpow_iff_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/lt-zpow-iff-log-lt.md) | 181 | `result-track:5ef48fd2202e71ba4d53c965aa3b6b3e16a52144382fab1c3737779b22d5447c` |
| 18 | `theorem` | [zpow_le_iff_le_log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/zpow-le-iff-le-log.md) | 186 | `result-track:755957e9097ddb5e55fa02906a7ceda6504f96d2f1ad0d2e5eb61d8502a02bd0` |
| 19 | `def` | [clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog.md) | 191 | `declaration-track:0c164ed3dd5a09b45741cf40dc908c4892192dddc2f461e766f4f58fa06e8107` |
| 20 | `theorem` | [clog_of_one_le_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-of-one-le-right.md) | 195 | `result-track:85fff522fc84b279d6ff592013d24b7de1281c9d9398718613a21b39dd6499e9` |
| 21 | `theorem` | [clog_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-of-right-le-one.md) | 198 | `result-track:dbdd8cdac7a3b8deb3403b37f194f2b4fcecd8fb65ef261a2b1acb14c44194b5` |
| 22 | `theorem` | [clog_of_right_le_zero](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-of-right-le-zero.md) | 204 | `result-track:1bc244702c44c9e4c7643a499e9d9dd8e33132b30f23b31f0c8c5890d02c1bde` |
| 23 | `theorem` | [clog_inv](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-inv.md) | 213 | `result-track:704737bf6ca3dafa6cc1a65d597cba917f052df552829b06764d584e6fcfb072` |
| 24 | `theorem` | [log_inv](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/log-inv.md) | 221 | `result-track:ed2f6c51b226260f6954db6064fcea7c800e574de0e6e390899344c65e0a5c66` |
| 25 | `theorem` | [neg_log_inv_eq_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/neg-log-inv-eq-clog.md) | 225 | `result-track:f834db6fcec9323c2989724cb187f0f0e0efb2bf89446ead024380c785f65412` |
| 26 | `theorem` | [neg_clog_inv_eq_log](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/neg-clog-inv-eq-log.md) | 227 | `result-track:3eea27b446439b42545cca2a7d280d5c3b49c036691cdae80ea627750fafd0ad` |
| 27 | `theorem` | [clog_natCast](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-natcast.md) | 230 | `result-track:8a91d0b056635422884425247aa64c515dc88da1d0ad4b94e0a30e82000e4e34` |
| 28 | `theorem` | [clog_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-ofnat.md) | 236 | `result-track:4a8824687ba4312fc50fae3233751d70d5d554860015fc1da6792d299ffcd9ee` |
| 29 | `theorem` | [clog_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-of-left-le-one.md) | 240 | `result-track:114542891637c693d5febf265f46798c0429d2c53514e8e1b1b98baa2c63e1e3` |
| 30 | `theorem` | [self_le_zpow_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/self-le-zpow-clog.md) | 243 | `result-track:55cd519a2ade4410da21d6f41805d8ad8597721109782253cf748c5576204b41` |
| 31 | `theorem` | [zpow_pred_clog_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/zpow-pred-clog-lt-self.md) | 251 | `result-track:6b1dba47394e1ca3044b9d9932eaba20d8e33b64b6b1cd8eb31961763bbf1785` |
| 32 | `theorem` | [clog_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-zero-right.md) | 258 | `result-track:fef681ff2b48e5a18199fc3c491fc4f6c04ddcbe7b30f13c7e97e54d0414ce27` |
| 33 | `theorem` | [clog_one_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-one-right.md) | 262 | `result-track:34711672850e10def69b2c3ad4d5402952aae203792344b18cb6669331fbc9b4` |
| 34 | `theorem` | [clog_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-zero-left.md) | 267 | `result-track:cb5c7fc3d35b5404ec40a8b99a77222ea890e3493d3f6669ecd570df368fb6a3` |
| 35 | `theorem` | [clog_one_left](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-one-left.md) | 274 | `result-track:86c67755b3f572691cf0afc94c38264abc3b2d928752a88c6d58e85f47ec0740` |
| 36 | `theorem` | [clog_zpow](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-zpow.md) | 277 | `result-track:a9ec1e2fd147a839bc0b576ed9cf69fc2c41ed4bb29397c672a1e2f9ae280aff` |
| 37 | `theorem` | [clog_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clog-mono-right.md) | 281 | `result-track:dcccb4e459f926d891e679e354429c80f969d3eeb0e31d2e8e6cd03555d68a6c` |
| 38 | `def` | [clogZPowGi](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/clogzpowgi.md) | 289 | `declaration-track:f16548fde3363de58aa315574bc175a8dc921a13b68c99d4b36ac6ca40b9b4a6` |
| 39 | `theorem` | [zpow_lt_iff_lt_clog](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/zpow-lt-iff-lt-clog.md) | 298 | `result-track:f410a51a545012ea703bad3a6692a2b1bd0b8c8acaab3f115e6f7393e10ff67d` |
| 40 | `theorem` | [le_zpow_iff_clog_le](../../../../../NumberTheory/ElementaryNumberTheory/LogNamespacedPublic.lean/declarations/le-zpow-iff-clog-le.md) | 303 | `result-track:24e46d52f1817618515119ff2a9ba8915cfb779cbff66a8a6152631f0c72ea51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=708e6d4c258dbec84c2ab4c83b22bf03ce527a4a65664298dd54409828b96a82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant68b090ea72250d4ccff3f79394802c118ae8842407bd2472f4bb186709798444.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variant68b090ea72250d4ccff3f79394802c118ae8842407bd2472f4bb186709798444.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
