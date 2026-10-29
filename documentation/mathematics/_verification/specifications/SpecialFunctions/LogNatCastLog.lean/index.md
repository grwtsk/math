# Verification target: Log Nat Cast Log

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "897991b81612fe5160e77ada50437b1ce9cf6309",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogNatCastLog.lean/index.md) · [Full source](../../../../SpecialFunctions/LogNatCastLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `897991b81612fe5160e77ada50437b1ce9cf6309`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log.md) | 26 | `declaration-track:54b31220b0725a67e96496decfadb6f3c99a7881528bda1c4744bebc8a4db21d` |
| 2 | `theorem` | [log_re](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-re.md) | 29 | `result-track:e991e7e63dfec4d1592deb0673c66b98bd06579d93307896319e43157317bd6e` |
| 3 | `theorem` | [log_im](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-im.md) | 31 | `result-track:dd8a59b9ef1189d1eb69635939748fb058c230e90069e2f9b60aa53fe1c8b2c4` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/neg-pi-lt-log-im.md) | 33 | `result-track:919557ac3163b6808494c28a27b43599ccbf77dfc37f40e6dbdf1e9fde416f6c` |
| 5 | `theorem` | [log_im_le_pi](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-im-le-pi.md) | 35 | `result-track:60429156c348b9124bdf209b60bcf11738185748e2bddc0e4f04515a6e51794e` |
| 6 | `theorem` | [exp_log](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/exp-log.md) | 37 | `result-track:04baf6da9035ddc7d89f4304ddc8e2c5ee4cf486559e09e5f66bf7d43dc890fb` |
| 7 | `theorem` | [range_exp](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/range-exp.md) | 44 | `result-track:6cff6c4287f96aedd65b0f5facf8974406bad629367c2dcd8c1a3e55600601c1` |
| 8 | `theorem` | [log_exp](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-exp.md) | 50 | `result-track:418d9e8103b1f79a989ebbb6455baa018bcd6e6ae1980b4b863571aa556c3acb` |
| 9 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi.md) | 54 | `result-track:85b98ae75b58498e0495541c8ec48aaad981b95c97bfa21a3b5224d98a140c0c` |
| 10 | `theorem` | [ofReal_log](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/ofreal-log.md) | 58 | `result-track:1a3789c6e967dc7637676762d50d6015d30c62e53dfa26ad69a68d9e9d5cd13c` |
| 11 | `lemma` | [natCast_log](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/natcast-log.md) | 63 | `result-track:141f77d92e176d1e1e0b44de1dee948eee1d6b1e9357e675c1da7bb3fd43a0b3` |
| 12 | `lemma` | [ofNat_log](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/ofnat-log.md) | 66 | `result-track:63aba42f728a2f1135408d9d5a8e95fcd36663166961426d6cf6e98b0a96b695` |
| 13 | `theorem` | [log_ofReal_re](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-ofreal-re.md) | 70 | `result-track:cdf1a909b9ae0829fa4e3a60c419642907c656d54caa95a09ca447190c5eb4fa` |
| 14 | `theorem` | [log_ofReal_mul](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-ofreal-mul.md) | 72 | `result-track:bf2b2ae4ca91488fc3680319a6d34d87cdefc99c476671c901a7a235a439e40b` |
| 15 | `theorem` | [log_mul_ofReal](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-mul-ofreal.md) | 78 | `result-track:86a1f953544a8b1b6035766f8b76e7221d786fe3cfa7e19a3b8680b006301cd9` |
| 16 | `lemma` | [log_mul_eq_add_log_iff](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-mul-eq-add-log-iff.md) | 81 | `result-track:3d1142ca88e7217e7fd8d808eb8f3b3019fd7ef88b0c16ffad55e5a3c7c02d5c` |
| 17 | `theorem` | [log_zero](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-zero.md) | 90 | `result-track:1f3a39c717837f4cc6f1aedec1f53b047f471bd43621f2b50efb07cb34118234` |
| 18 | `theorem` | [log_one](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-one.md) | 93 | `result-track:b7cb4ef7231a77338addc6c1241846507b579a2cbfc8e54fdef7f831df0c992c` |
| 19 | `lemma` | [log_div_self](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-div-self.md) | 96 | `result-track:7ca0f15305e165b7e6da55988521c49ad3f943692381755545de5ae58ff45bd2` |
| 20 | `theorem` | [log_neg_one](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-neg-one.md) | 98 | `result-track:963566b5a7450aefd007fa8021305a2502a31a08b50500430be9f8249ca31cd1` |
| 21 | `theorem` | [log_I](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-i.md) | 100 | `result-track:0677f1748a505b441b2ad01891b536ed64dcb559b6fc7bee868d3b8ab2c82a13` |
| 22 | `theorem` | [log_neg_I](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-neg-i.md) | 102 | `result-track:c3fb9ded9a9a9b1b637fa30f7b6a29299685667c68434c83e9245b115de89a0c` |
| 23 | `theorem` | [log_conj_eq_ite](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-conj-eq-ite.md) | 104 | `result-track:946cd04d6db09dc48614610ce3290f519e2d59cb1a94e0c10c530d570073fcc5` |
| 24 | `theorem` | [log_conj](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-conj.md) | 110 | `result-track:aaac066182af79d562cb82c5ed2121445fcf902aca8d58737a85979d28ba0421` |
| 25 | `theorem` | [log_inv_eq_ite](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-inv-eq-ite.md) | 113 | `result-track:38ed9c9dde59ab18378729fd363a2cb415d5472d4209df628717fa95718a4608` |
| 26 | `theorem` | [log_inv](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-inv.md) | 126 | `result-track:3c11a0af45348016b0cb56ffaeb7c218fcaa2753b36c70401ae491949e0a7218` |
| 27 | `theorem` | [two_pi_I_ne_zero](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/two-pi-i-ne-zero.md) | 128 | `result-track:02c0fe996ceed5a5856671362745bb4c2d68ad40c12acd5c1788c286b3f0ca63` |
| 28 | `theorem` | [exp_eq_one_iff](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/exp-eq-one-iff.md) | 130 | `result-track:0ab2f7e9458612ba67126885c0ef5dab8c593f903a95c44d101a50fac7e74f7a` |
| 29 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one.md) | 141 | `result-track:55eeca33ee1bbb73463d4ffcc8bd259ec605c8ac754e66e03290558d51ebdc67` |
| 30 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/exp-eq-exp-iff-exists-int.md) | 144 | `result-track:5508f90f725caf662c8f98694df943c580d0087bbd363109a13c68fc5f309a76` |
| 31 | `theorem` | [log_exp_exists](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/log-exp-exists.md) | 147 | `result-track:916eadc0ba04974af02087dec4ced6b034205e048bbee64cf04516be138b91a8` |
| 32 | `theorem` | [countable_preimage_exp](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/countable-preimage-exp.md) | 153 | `result-track:3d563b7761f2593e8ddbe92e1aa3af30733b08844cdbf346605da5917e705227` |
| 33 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero.md) | 169 | `result-track:c80436dc89995428fa725f89f353f368ca566860b778dd1f38daae0c6e89ae4b` |
| 34 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero.md) | 181 | `result-track:fcd56f178f0229729b1b4de1508d4422c67ec5a2076ed9e8abab94b368e40123` |
| 35 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero.md) | 192 | `result-track:ad2545050539d1342eb99cca401fd6980bc6cefa2d9e31a4299ca2bf1e82666c` |
| 36 | `theorem` | [map_exp_comap_re_atBot](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/map-exp-comap-re-atbot.md) | 198 | `result-track:5cfc16f10c91207aaf8986eac62795104837f0c2288bc286b734fc0f1df9e845` |
| 37 | `theorem` | [map_exp_comap_re_atTop](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/map-exp-comap-re-attop.md) | 202 | `result-track:c1913735fdc1aa83f53f17ac914268d147356d0d9321b3af4eb5cee11be3ba75` |
| 38 | `theorem` | [continuousAt_clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/continuousat-clog.md) | 216 | `result-track:afd9032f8ce7cd1179c773396438649130adff1ee2b39ecd50201cbdd4de6004` |
| 39 | `theorem` | [_root_.Filter.Tendsto.clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/root-filter-tendsto-clog.md) | 225 | `result-track:d168a84282d299898dbe78e6ead499f0718a65e3d05ef11de243379405033170` |
| 40 | `theorem` | [_root_.ContinuousAt.clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/root-continuousat-clog.md) | 232 | `result-track:5d1a6b6038d74781bf9bb5a6e4a142837022c0bc9cae87f9ede23cb4112b2db6` |
| 41 | `theorem` | [_root_.ContinuousWithinAt.clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/root-continuouswithinat-clog.md) | 237 | `result-track:081ebf7db1cd0666e32d42e609fa95ecda11511246f372912e8cf2a855d829cd` |
| 42 | `theorem` | [_root_.ContinuousOn.clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/root-continuouson-clog.md) | 243 | `result-track:2ba5cd404fff368fdd6f722dfb4c42fbe25308381857e923c097a1c2f6b59345` |
| 43 | `theorem` | [_root_.Continuous.clog](../../../../SpecialFunctions/LogNatCastLog.lean/declarations/root-continuous-clog.md) | 248 | `result-track:c51f4c4c05f9fab77c158f4ff663f2f03ab0f93f1829afa118a6e86132f34fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88d8655514a68b5fec6783a1cd4aa5aefaafb280401d1d46ea68a790cbe623df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
