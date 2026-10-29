# Verification target: Nat Log Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94be3f2415c7bbf188d444fbcc2c63d9d66e5002",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94be3f2415c7bbf188d444fbcc2c63d9d66e5002`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log.md) | 41 | `declaration-track:2ca61d662c80ce9e9ef834ebce9b8f8de76fc99c524bb8d8e77caf49da7444c8` |
| 2 | `theorem` | [log_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-zero-iff.md) | 50 | `result-track:6b2944c303438ec57afa7d11484466cadade6a9acc57b6957537c58a3d70b9e7` |
| 3 | `theorem` | [log_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-of-lt.md) | 54 | `result-track:c50cae20430d65d50ab0c7272daa4c916702a8fb4d2ecb234fc96bcbda6c2cf0` |
| 4 | `theorem` | [log_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-of-left-le-one.md) | 57 | `result-track:0bab1781aac176c686a70500c1b3ed109f63241582da04d9377afd5207e6efe8` |
| 5 | `theorem` | [log_pos_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-pos-iff.md) | 61 | `result-track:fc99b3291c163f82c091952b61d830743f704ae1b50ba66be0ad2e28408019d9` |
| 6 | `theorem` | [log_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-pos.md) | 65 | `result-track:19e5877a77693bfc271258ec8f04f55a47b232b63978340c7b0995223f87bf44` |
| 7 | `theorem` | [log_of_one_lt_of_le](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-of-one-lt-of-le.md) | 68 | `result-track:6cb1e74d32f625c36871de470351b43e4b0aacf3509bea8c461a7d1cf0d43195` |
| 8 | `lemma` | [log_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-zero-left.md) | 72 | `result-track:340087a184fb083fd1f20cff6fbfa1f24d7d45751810c935e90c2af4ff4fc07f` |
| 9 | `theorem` | [log_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-zero-right.md) | 75 | `result-track:5707c09af3105c0788c92b5cbac0bcc169125857af713625256563f32a580043` |
| 10 | `theorem` | [log_one_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-one-left.md) | 79 | `result-track:56db2114cc996cb67de158144d489ebe957c22798c0b4fff495bf571295804cf` |
| 11 | `theorem` | [log_one_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-one-right.md) | 83 | `result-track:c59ce95f9666f5a2c8a9e0641d3d00482aa424c680b605538c29aca6f1060577` |
| 12 | `theorem` | [pow_le_iff_le_log](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-le-iff-le-log.md) | 88 | `result-track:ff0b6f0171f230c75c6549a0063b3afdafa430844fe4bd17d2d56304e1905d42` |
| 13 | `theorem` | [lt_pow_iff_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/lt-pow-iff-log-lt.md) | 102 | `result-track:35c2e71b202d57c9413667565fa714ad0c9fdeec70cb37cf0937d3d452386e57` |
| 14 | `theorem` | [pow_le_of_le_log](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-le-of-le-log.md) | 105 | `result-track:d8885c9e6135fc166a85eb7b7f145eb25da10b0029938459778b8ab7d49ae63f` |
| 15 | `theorem` | [le_log_of_pow_le](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/le-log-of-pow-le.md) | 110 | `result-track:88ef5e1cd11771caf645c071be61808cedde4fdf8877779327403ada8becee27` |
| 16 | `theorem` | [pow_log_le_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-log-le-self.md) | 114 | `result-track:c8f95d6ba746d50032ea0f18d73e57a08799459bf413dabeb4a9676d3728146c` |
| 17 | `theorem` | [log_lt_of_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-lt-of-lt-pow.md) | 117 | `result-track:e5531a420d83ae9f8fd5445a1c8c37178dae99529f16f8e6623872800aecf59e` |
| 18 | `theorem` | [lt_pow_of_log_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/lt-pow-of-log-lt.md) | 120 | `result-track:932f76d50eb72c8ede3baa8ab8de0b28ca77393d24dbe58def412c4433a2aebb` |
| 19 | `lemma` | [log_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-lt-self.md) | 123 | `result-track:f2e0b90bafbbf1d8f6b254bdd11f791150ac4e870c8d933081276d2b85db1e2f` |
| 20 | `lemma` | [log_le_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-le-self.md) | 128 | `result-track:3b183e242eada635f881aec0299c63b0a47c391df9bd7fb53a615052fc7f4748` |
| 21 | `theorem` | [lt_pow_succ_log_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/lt-pow-succ-log-self.md) | 132 | `result-track:0cbe5d88e2e7f557bd006932488542390acdb9fab66428ca359b8c23711c94dd` |
| 22 | `theorem` | [log_eq_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-iff.md) | 135 | `result-track:266725c7f8df94dee62dfe7250329a14c2b121340838e088d72d59b5767a34f6` |
| 23 | `theorem` | [log_eq_of_pow_le_of_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-of-pow-le-of-lt-pow.md) | 150 | `result-track:903c170b07e504c34ba8dce9b9a356c6988fda5ef91ce5e35803cb567fb7f641` |
| 24 | `theorem` | [log_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-pow.md) | 157 | `result-track:a5d2b8321fa5f486f6fe631ad0e4bec3dd5b054c9c7827efc8b53c90436650ed` |
| 25 | `theorem` | [log_eq_one_iff'](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-one-iff-source-edition-2.md) | 160 | `result-track:5156c4e34e0ff68f094946a182d719f7d14ab73afe29788e60996da729d85e10` |
| 26 | `theorem` | [log_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-one-iff.md) | 163 | `result-track:0e93573a18944edd970cd00d4622d80ece0c6a906f94047654092d3e5d94bb61` |
| 27 | `theorem` | [log_mul_base](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-mul-base.md) | 167 | `result-track:6d67c9c4bcba22344f089921c5fd14a9b3503af7647fb256ecb3e66976646d71` |
| 28 | `theorem` | [pow_log_le_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-log-le-add-one.md) | 172 | `result-track:d0d8db79e8c07756d668ada03761709ec687db1aec199a6871a25e0f47ef4bc8` |
| 29 | `theorem` | [log_monotone](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-monotone.md) | 176 | `result-track:906a922b8b6707e4fb846f2064490f1414b9343eccd1ce305a52b178c0b21eca` |
| 30 | `theorem` | [log_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-mono-right.md) | 184 | `result-track:f20115216116cd46cf1538efbb70d09f6615a71040eaa21c7f0bef853daac2b4` |
| 31 | `theorem` | [log_anti_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-anti-left.md) | 188 | `result-track:47771698a460d9857aca3b460c1a4e03c4d9ee2db7ad5c7165a11d99e30f71a9` |
| 32 | `theorem` | [log_antitone_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-antitone-left.md) | 195 | `result-track:796968644a20a04bd1406380d3946866e6713238cb50a11ed95e18653c03077e` |
| 33 | `theorem` | [log_div_base](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-div-base.md) | 199 | `result-track:f0cbe9879eb97fecef8bc4f6d98e537309c722131cfbcd92e530bb953406ff9c` |
| 34 | `theorem` | [log_div_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-div-mul-self.md) | 207 | `result-track:353c7e9f529e236d059f6b519e0b9ae3a135dd372d5986db7c8b9cf27ccdf11e` |
| 35 | `theorem` | [add_pred_div_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/add-pred-div-lt.md) | 215 | `result-track:21ae22b6847613572ba541d3e0a61bea05f43ae7f4edcadecf1cbb9c3a030bf4` |
| 36 | `lemma` | [log2_eq_log_two](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log2-eq-log-two.md) | 220 | `result-track:82b7f6b861d1b6b1d51842a10ab3560db51b1462fe9eca6a1a30dee185a4754c` |
| 37 | `def` | [clog](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog.md) | 233 | `declaration-track:08a601a75bbf798e1b38378d3a6f8d0541592c5742ab59d6760d57505a46d6c9` |
| 38 | `theorem` | [clog_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-of-left-le-one.md) | 241 | `result-track:246932b048ba99230557661bd0fa50ab8f1fef11809285adf12f949dcdcba9ed` |
| 39 | `theorem` | [clog_of_right_le_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-of-right-le-one.md) | 244 | `result-track:a636fd01b8efce2488511b7019603a900bd7575ab2e18eeb71b2b49efc7427f4` |
| 40 | `lemma` | [clog_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-zero-left.md) | 247 | `result-track:820cc3b0fa75ec6574af5d2481f6115b0137cf63bc4f0722768aa160e2d9c885` |
| 41 | `lemma` | [clog_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-zero-right.md) | 249 | `result-track:58095149eadde3d049c7b5d5bbccdf76d0d62c41a4c58caca7954af96ee8ed9f` |
| 42 | `theorem` | [clog_one_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-one-left.md) | 252 | `result-track:0c2400ff51a25ce4c2325a64b7ed3b6f70cbeb6060789a5a547da4993d612a35` |
| 43 | `theorem` | [clog_one_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-one-right.md) | 256 | `result-track:50945ded5eb481af6f821d4872e954c58cb46f5671476e06beaedbbcaa3846cf` |
| 44 | `theorem` | [clog_of_two_le](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-of-two-le.md) | 259 | `result-track:69d7cc1ef1924c1ee9578c5d5e22f3d4a7a8f86952fc6fcf0ebe566a608ecd3c` |
| 45 | `theorem` | [clog_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-pos.md) | 262 | `result-track:3e494ad029cf4ebadbc474b663f18ca8041602e85f9587764ea06b277730c4e4` |
| 46 | `theorem` | [clog_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-eq-one.md) | 266 | `result-track:7c2141051b882b78c68b5197bde2c5961431bdac7d62c49d35e307eea549aad7` |
| 47 | `theorem` | [le_pow_iff_clog_le](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/le-pow-iff-clog-le.md) | 271 | `result-track:28067515d3656e5c697b14aaf89b5f142298bd74788b787b92eab8aac16b2f9a` |
| 48 | `theorem` | [pow_lt_iff_lt_clog](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-lt-iff-lt-clog.md) | 287 | `result-track:4dcf54ca40562fa04f1ad9529e6ef49dd79ffe5f1f2c29f2cc43da97bfe9b5da` |
| 49 | `theorem` | [clog_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-pow.md) | 290 | `result-track:eabb54978af3f5e111337539ce23f4192f5a8ba961332e6ca4710889aa0ff28c` |
| 50 | `theorem` | [pow_pred_clog_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/pow-pred-clog-lt-self.md) | 293 | `result-track:3a1d2f383e9e93c2a4b247a31405a41ed082e59918e8bc2fdd6f42c1d790018c` |
| 51 | `theorem` | [le_pow_clog](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/le-pow-clog.md) | 298 | `result-track:71cfd0882fb2daf6f528a0ed6cac07610d677f61bd259e858624ab4befb7b86c` |
| 52 | `theorem` | [clog_mono_right](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-mono-right.md) | 302 | `result-track:4e63b735f79236d569be82281851e51a73889b3c1d9c72e2ff5cfcce7840e6da` |
| 53 | `theorem` | [clog_anti_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-anti-left.md) | 310 | `result-track:8c39c14d5dfc86e57cc39678e6e58abe67366c5f3963b657306fcf1a373f6034` |
| 54 | `theorem` | [clog_monotone](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-monotone.md) | 316 | `result-track:351273abdde99202f6705444f877f21cee1e34599bd333bb0c1923290a00e51d` |
| 55 | `theorem` | [clog_antitone_left](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/clog-antitone-left.md) | 318 | `result-track:81203eb4e8fe524c97e850b42a85021b40695896b4efd811e43d4956c473026b` |
| 56 | `theorem` | [log_le_clog](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-le-clog.md) | 321 | `result-track:2a95b004c185f79b4ab87759565d3a21f1ea7cf8c7b257c5875b865b96549df7` |
| 57 | `lemma` | [logC_aux](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc-aux.md) | 336 | `result-track:a28e90e960cad3862f3af69ea87101ae66ade0910239849cb9e9c26c59b8dece` |
| 58 | `def` | [logC](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc.md) | 368 | `declaration-track:c544b956c53830bf7f9276c1b542fbff6ab21a3ca32475866c91fc8f1807a89e` |
| 59 | `lemma` | [logC_step](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc-step.md) | 385 | `result-track:54573fcfe3a68d3090ed94e11da442d0673f45551bbfb89cbab1f598d472bac2` |
| 60 | `lemma` | [logC_spec](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc-spec.md) | 406 | `result-track:f89ecbcfca9a66891c4dff1913011ad6928db628c06e18645c5e80c0cce8f4dd` |
| 61 | `lemma` | [logC_of_left_le_one](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc-of-left-le-one.md) | 414 | `result-track:46911cecd60db762640ba21726a54e5210dc898bb0ce06bdfba8a231959b71aa` |
| 62 | `lemma` | [logC_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/logc-zero.md) | 417 | `result-track:5058c6febf5b0017f6e245f17376d97b0731dcc98817608cb0c1407b61372554` |
| 63 | `theorem` | [log_eq_logC](../../../../../NumberTheory/ElementaryNumberTheory/NatLogNamespaced.lean/declarations/log-eq-logc.md) | 433 | `result-track:ae9622c7733e7b5cc1df098fa44e7e8a43fe67f94e6d01cd28344e7ef8082075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30a4ab24cfa051e492c946341f59989815ce4d90b65b8c0d62bbe5e39f36e0f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
