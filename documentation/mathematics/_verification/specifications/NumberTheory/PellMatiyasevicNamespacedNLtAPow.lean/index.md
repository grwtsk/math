# Verification target: Pell Matiyasevic Namespaced NLt APow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7813d6e6a7d7267649a4a4f69801bfc5fea99d2c",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/index.md) · [Full source](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7813d6e6a7d7267649a4a4f69801bfc5fea99d2c`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Unitary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPell](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell.md) | 73 | `declaration-track:68eefb4de105650f0f8c9b95e2ffb51f873b369e99dae3a3fa32717d7c206c8d` |
| 2 | `theorem` | [isPell_norm](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-norm.md) | 77 | `result-track:8e2cab93fc5c98fc3b9009bd39bc729851255df600ff0b08075615391c2d518e` |
| 3 | `theorem` | [isPell_iff_mem_unitary](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-iff-mem-unitary.md) | 81 | `result-track:c0274e92c545c19e75c4ebdbe281346958e9ade7901527e6541664075a906854` |
| 4 | `theorem` | [isPell_mul](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-mul.md) | 85 | `result-track:db3292d97e23e9f427edc9c6e828990a3647a68cb2ab8ac3cc8c7055acc63f37` |
| 5 | `theorem` | [isPell_star](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-star.md) | 90 | `result-track:97ae75d86efe52f91f0b25515b55b6484a4f506a6c8ee881f8b78ae25e788048` |
| 6 | `def` | [d](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/d.md) | 101 | `declaration-track:0435f154e3d107a47b8bbd6fb1dfa2d9e35c7650b7c9a8c5c84671821a7249a2` |
| 7 | `theorem` | [d_pos](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/d-pos.md) | 105 | `result-track:ae533ce143eb76ff3b6387d552ad0b795da15e31721b1457a303c184a07954fa` |
| 8 | `def` | [pell](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pell.md) | 113 | `declaration-track:8b09719b6046212b549bf09069b60392f7cfadb1ce3dc7401378e9ddb2033cca` |
| 9 | `def` | [xn](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn.md) | 120 | `declaration-track:474c3e99380e62953c5905b5195995ba045c0d34619d862cd8f47b0275c98a3f` |
| 10 | `def` | [yn](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn.md) | 125 | `declaration-track:5369ab9cf92ecfd82020ceea1d6a9545e1b7a44f0d0cf0f7b7116a98e5d4ae2b` |
| 11 | `theorem` | [pell_val](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pell-val.md) | 130 | `result-track:b917abbeb1f2a99645cd809b605d7be55f0d3f428251468a7446c449cebe9df3` |
| 12 | `theorem` | [xn_zero](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-zero.md) | 137 | `result-track:61bc51731dcede2334cc3a263475e87b5ba52bc25e0cf92a99e08fba69bef1c9` |
| 13 | `theorem` | [yn_zero](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-zero.md) | 142 | `result-track:52dbb219ce056c74f25f2ce235df18497ecd20e77d5ea10ac90f86db29aa556b` |
| 14 | `theorem` | [xn_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-succ.md) | 147 | `result-track:7fda4db53914928389cf983438d5564fbfbf0798348d8c4188b7f7d9d700f1e2` |
| 15 | `theorem` | [yn_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-succ.md) | 152 | `result-track:af12fcc4bfd0bb87eb9afd5b8bc91729a96569e435ef4ddb713ece6c709875d1` |
| 16 | `theorem` | [xn_one](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-one.md) | 157 | `result-track:ed171935537b3a798a7fbd1dad85fd7daeff280c364aefe6401997c0cd92fe92` |
| 17 | `theorem` | [yn_one](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-one.md) | 161 | `result-track:7b8aa643d0f5edd9582867f0f49148a24fe68bc3897c2917fd47c2b54af96432` |
| 18 | `def` | [xz](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xz.md) | 165 | `declaration-track:0e67cb180aa65fff5e8356343e8ed08482e34301c54a383a56e503d2197ce4d7` |
| 19 | `def` | [yz](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yz.md) | 170 | `declaration-track:f9ac3bc0186dd1c2740c3aedc43a6e83809c3eddab28fc4a3ef9b2951dfba752` |
| 20 | `def` | [az](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/az.md) | 177 | `declaration-track:fcf3fe6ae1d035bf371f013f676f88235d45c482d3561844d9ee438e5ec0f064` |
| 21 | `theorem` | [asq_pos](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/asq-pos.md) | 183 | `result-track:d3eabd33cf433b2c427c4d157a23da2fef4a9bb9227c7c404f7524ca2e6a4a05` |
| 22 | `theorem` | [dz_val](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/dz-val.md) | 188 | `result-track:b9279221832313c634122da2e47e647888c536bf2e1d311d21c7337e6f555eaf` |
| 23 | `theorem` | [xz_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xz-succ.md) | 194 | `result-track:97f3fda93f47a7dd73c5030022e359c23c17e4009f2282fd20904713b71bf300` |
| 24 | `theorem` | [yz_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yz-succ.md) | 199 | `result-track:92799e39691503d91e0c20deaea02aec4819cb61a95959c66dac07c4f7be194a` |
| 25 | `def` | [pellZd](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd.md) | 204 | `declaration-track:82b4b087a9eb363701e47594751c304fe62319a67200919ea6172260b48b4cec` |
| 26 | `theorem` | [pellZd_re](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-re.md) | 209 | `result-track:faeb0627b3cef60e38f300e45c18bcb004e930f3eb590102bf20770c142c16c1` |
| 27 | `theorem` | [pellZd_im](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-im.md) | 214 | `result-track:acc8d8fd8f2fc3fe7f63c66e9cb98d23be3c30ea917614354bfbb7a3824bcfa1` |
| 28 | `theorem` | [isPell_nat](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-nat.md) | 218 | `result-track:1dbe787ceb6592f615e8af0b2219d2ba1158331197818a03b8e5f0442d7e6e77` |
| 29 | `theorem` | [pellZd_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-succ.md) | 228 | `result-track:e5439cce98e102bbda26cb3ad51174b27ed915aa4f39afcc2ca4339ba5228a7f` |
| 30 | `theorem` | [isPell_one](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-one.md) | 231 | `result-track:57750fb80e34d4ae62883cc186f3ed4d025e2c093e50acf72b26739fafbfc80a` |
| 31 | `theorem` | [isPell_pellZd](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ispell-pellzd.md) | 235 | `result-track:038d6f98bbd622cf4b6632296c8a13cf56e08fe3f5496b2f8ffbd87f43de06ab` |
| 32 | `theorem` | [pell_eqz](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pell-eqz.md) | 243 | `result-track:766f7d809f9b3708c4a108a12e2a869339b1801ac2940ad5267c8e2c0a3b3367` |
| 33 | `theorem` | [pell_eq](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pell-eq.md) | 248 | `result-track:3d06b355f05053c7403b5e938ba555028ec4b57d95ff9a508742ab7dbd554522` |
| 34 | `instance` | [dnsq](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/dnsq.md) | 257 | `declaration-track:41f550f0152161be6e2121c27a3033132583981d18562035df4affb211200fb9` |
| 35 | `theorem` | [xn_ge_a_pow](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-ge-a-pow.md) | 268 | `result-track:ba4cc711dcacc6875adc46b760c75586ba6930f7a99bf727431a40339abccaac` |
| 36 | `theorem` | [n_lt_a_pow](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/n-lt-a-pow.md) | 275 | `result-track:071d27f8914594124af4fa96752d678007da64b0c054ef210b389c43ba86fda5` |
| 37 | `theorem` | [n_lt_xn](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/n-lt-xn.md) | 287 | `result-track:ac3bac8771a4e751ee20909695dae85cc08094cbc72dddd34a4a02d251faed3b` |
| 38 | `theorem` | [x_pos](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/x-pos.md) | 291 | `result-track:d76bd8c3f73a894b48cc9f7b7caa4ef0101981fe036ee008f7019e08ad3e95f3` |
| 39 | `theorem` | [eq_pell_lem](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-pell-lem.md) | 295 | `result-track:5b68b4d195a7b510ad77062fe95e2ee6613352754e4cdffec82a92d484f5a2fd` |
| 40 | `theorem` | [eq_pellZd](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-pellzd.md) | 342 | `result-track:addf5551d430509dce8bd889ddc8024cf25d93ad3ac5d9d744b7e8b644fcc36a` |
| 41 | `theorem` | [eq_pell](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-pell.md) | 354 | `result-track:945d2aef73efcd79d69aaa8de6ceffe5928d21b491e83ec8398b9180f6f802bf` |
| 42 | `theorem` | [pellZd_add](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-add.md) | 366 | `result-track:11709b70d678c53ea89bcfa846fb32aa4d6de562b9b3345ef516cd6dad83d728` |
| 43 | `theorem` | [xn_add](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-add.md) | 371 | `result-track:c0b74298e7619abb671382d57499a9c8badecd8b88efe3a232caecbee6fa2096` |
| 44 | `theorem` | [yn_add](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-add.md) | 378 | `result-track:5b2d5bb9de10611c33c4c7127d2e423ddfa1dda346a02ee7a014d20853f381d2` |
| 45 | `theorem` | [pellZd_sub](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-sub.md) | 385 | `result-track:3ef51cce003521cf315bf87e989ba373f1710a585f9ce7adaf962c430944a8da` |
| 46 | `theorem` | [xz_sub](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xz-sub.md) | 391 | `result-track:0c8acac7874b06efe7f8706a2b94469017922ea44a06c522b272007ca3a8d6e6` |
| 47 | `theorem` | [yz_sub](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yz-sub.md) | 397 | `result-track:d27305f77ef374ccf3922cf46bb5a7085251d45544935980c1a9307c3710b659` |
| 48 | `theorem` | [xy_coprime](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xy-coprime.md) | 402 | `result-track:814743e750e3e906041a2fe1784568ec5c3d2bfabd1ee5109ad3edd8964cd12f` |
| 49 | `theorem` | [strictMono_y](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/strictmono-y.md) | 409 | `result-track:0997a5b0481db024274996dad05641d41b3f772dae0a7b17f7672402da2d0119` |
| 50 | `theorem` | [strictMono_x](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/strictmono-x.md) | 420 | `result-track:2ba5d5e8aea5078dce09dcbe01a2d24bb1fdd51a7022de0fb8f8e57f40dc924e` |
| 51 | `theorem` | [yn_ge_n](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-ge-n.md) | 431 | `result-track:30377e91091412f06b61a6d110eb8b0bcc3158195e4c797a756d7e2f9d345a6f` |
| 52 | `theorem` | [y_mul_dvd](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/y-mul-dvd.md) | 437 | `result-track:bf3843903f07ba1fa8d077caa789ee3f1fa30845ed58bdf7454b51d94eae808b` |
| 53 | `theorem` | [y_dvd_iff](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/y-dvd-iff.md) | 443 | `result-track:651df5decd2f88feacfd8ba1bfdb7ab9404031c618ee5d1da9e826af56d7effc` |
| 54 | `theorem` | [xy_modEq_yn](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xy-modeq-yn.md) | 462 | `result-track:7b2ba0c7ee0255bb5f4ab60ffe22cec167c74b88a08076bb2e482906353ec365` |
| 55 | `theorem` | [ysq_dvd_yy](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/ysq-dvd-yy.md) | 495 | `result-track:a195fd5fbc9ec94ac65183fa04b5c04f68e1105690433cdd47d71c12f05691e8` |
| 56 | `theorem` | [dvd_of_ysq_dvd](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/dvd-of-ysq-dvd.md) | 501 | `result-track:03443a4e8c24cd13f2a0e9113e99208dd6fabeb83f88afa3b74b39aaa1801be0` |
| 57 | `theorem` | [pellZd_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/pellzd-succ-succ.md) | 514 | `result-track:6a67133287ec4ee01dd155265a654496b1796f340b558cb35c851d6a1dcb5b08` |
| 58 | `theorem` | [xy_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xy-succ-succ.md) | 527 | `result-track:a5cdc62d07b6b368c05195dbb685d53ca9d7ddcc43ac5c2525faf576ba0d0a31` |
| 59 | `theorem` | [xn_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-succ-succ.md) | 536 | `result-track:0e21e85456eeb18907222e908f9281601483920d6b314c3de8ebb3c63cccc30a` |
| 60 | `theorem` | [yn_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-succ-succ.md) | 540 | `result-track:0463fe6545be0b2b58bb0c26d9d7bebcb1203e888cd402a8fd0215c6e3bd8faa` |
| 61 | `theorem` | [xz_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xz-succ-succ.md) | 544 | `result-track:fd1f66425f038cf1740b236ab18c26e0936cce6a4bfff26d9f18c2b677c8ebc7` |
| 62 | `theorem` | [yz_succ_succ](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yz-succ-succ.md) | 548 | `result-track:76b1174bf6b16273f43c1d55451747bd276d76e38e151e1e29217721184d7f14` |
| 63 | `theorem` | [yn_modEq_a_sub_one](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-modeq-a-sub-one.md) | 552 | `result-track:c59fe9bbd7c08a9b73e10fd0ed6623a00e7a86ebc10b6a5d69d1cef3e3f6001e` |
| 64 | `theorem` | [yn_modEq_two](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/yn-modeq-two.md) | 561 | `result-track:a48ae419b4ddbbd96e494f8b640c46c822c50ccddd5302c4aeaea91376a1bebc` |
| 65 | `theorem` | [x_sub_y_dvd_pow_lem](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/x-sub-y-dvd-pow-lem.md) | 572 | `result-track:8691132ae5ef5f3a4a4f9826236c6c7ed6bba86ca1b44a80a2c4fee42fcf2b08` |
| 66 | `theorem` | [x_sub_y_dvd_pow](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/x-sub-y-dvd-pow.md) | 580 | `result-track:87c698907097370bb7233ecefd77fe6ff9e037be934b299352cbf2f9014d2982` |
| 67 | `theorem` | [xn_modEq_x2n_add_lem](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x2n-add-lem.md) | 595 | `result-track:801600c3a82b4fc72abf49dbaa7dd74f49482b2edd750da5622510c2481834a0` |
| 68 | `theorem` | [xn_modEq_x2n_add](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x2n-add.md) | 605 | `result-track:86f442d3680e7f44cead392c783300c25e2698a6cabbbb670e37f598fb6f29d5` |
| 69 | `theorem` | [xn_modEq_x2n_sub_lem](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x2n-sub-lem.md) | 613 | `result-track:4babba11f96fae1809123b49d703793c9fa87a8740924cd29f60fa1e7228ac31` |
| 70 | `theorem` | [xn_modEq_x2n_sub](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x2n-sub.md) | 629 | `result-track:b4646d4b3491356772fe70a4efff5a0fac1751493de69b2b99eafb84ff5a787c` |
| 71 | `theorem` | [xn_modEq_x4n_add](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x4n-add.md) | 637 | `result-track:2cd223c7bc02065a66573038a22acd529075e8335079528df68f7f31af12adff` |
| 72 | `theorem` | [xn_modEq_x4n_sub](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xn-modeq-x4n-sub.md) | 644 | `result-track:65167c504c882792a1dc0d683050ee64a7c92ca07eba248d7634824c6d8ae834` |
| 73 | `theorem` | [eq_of_xn_modEq_lem1](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq-lem1.md) | 652 | `result-track:df13797faeb525d0969202e326d1ddcc333da225fdfe8ce19dc5ab8903e75ca6` |
| 74 | `theorem` | [eq_of_xn_modEq_lem2](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq-lem2.md) | 664 | `result-track:d25f3bd104bc481ab7b1a5b71edf2165a6571b3f31401175e330e55f1d7d05b4` |
| 75 | `theorem` | [eq_of_xn_modEq_lem3](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq-lem3.md) | 675 | `result-track:24446d498f63ba87b26490283ced9d4a2364670a82cb1a82bba9c6a441958f41` |
| 76 | `theorem` | [eq_of_xn_modEq_le](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq-le.md) | 752 | `result-track:73dcd246b802fd71e02b9c3b79bf8dd73132a200422d6e79292a52beb61451a2` |
| 77 | `theorem` | [eq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq.md) | 775 | `result-track:3d8ff2ec60608480428770d085f4a01e0e231122baaad23ba4916fb4eaa34ad5` |
| 78 | `theorem` | [eq_of_xn_modEq'](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-of-xn-modeq-source-edition-2.md) | 784 | `result-track:882647e9659d7a65e66fc484e455d614449dc55f163b578b1d8276b3cc3aa243` |
| 79 | `theorem` | [modEq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/modeq-of-xn-modeq.md) | 808 | `result-track:25b51ff92b6faaf8028f6feeb306300a2331a4fa2b2e16fe7fea3193d2589939` |
| 80 | `theorem` | [xy_modEq_of_modEq](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/xy-modeq-of-modeq.md) | 833 | `result-track:440d22c97bd5270e9b92f99e9ae120c1ec5ce095eddd179f16d6877eaa19cda1` |
| 81 | `theorem` | [matiyasevic](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/matiyasevic.md) | 846 | `result-track:b2f415f7c5836c9b61c19d34356e1a06cd3d2532c680b8b60ed0df214ecf98fb` |
| 82 | `theorem` | [eq_pow_of_pell_lem](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-pow-of-pell-lem.md) | 934 | `result-track:ce658bdde38fb9cf30042e8b5011f84e7442b89393fdb855e261421ad71a0614` |
| 83 | `theorem` | [eq_pow_of_pell](../../../../NumberTheory/PellMatiyasevicNamespacedNLtAPow.lean/declarations/eq-pow-of-pell.md) | 950 | `result-track:0ff08b10692b6ffd3854707a38d109a6f06b22dc0de868dae0ef4c37051c9db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=748984695ea02afafd52c41f3381df417687106644a6a191846eb6c6c19518b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean","GRWTSK/_verification/specifications/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
