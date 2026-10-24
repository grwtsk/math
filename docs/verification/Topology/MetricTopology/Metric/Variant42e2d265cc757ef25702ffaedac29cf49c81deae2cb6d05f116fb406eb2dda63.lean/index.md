# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c48525b1b35d4a8a65e7d33b978fe5892fd00f38",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c48525b1b35d4a8a65e7d33b978fe5892fd00f38`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist--0af168023f3f61cc8552e228.md) | 49 | `declaration-track:0af168023f3f61cc8552e228f69dafdc718965b05faec54fbd07465258db52f2` |
| 2 | `theorem` | [edist_eq_sInf](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-eq-sinf--943e409bb13de661b03814a3.md) | 54 | `result-track:943e409bb13de661b03814a3e5aeaf133288599a3e27eaa2b4bf30bbf36b5782` |
| 3 | `theorem` | [Reachable.exists_walk_length_eq_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-exists-walk-length-eq-edist--7a4083f17b013037586bb34b.md) | 56 | `result-track:7a4083f17b013037586bb34be8511aad32036cdbb0e706e27d020b963567a11d` |
| 4 | `theorem` | [Connected.exists_walk_length_eq_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-exists-walk-length-eq-edist--195a2b268f3288e9e1d34d85.md) | 60 | `result-track:195a2b268f3288e9e1d34d85e675bad50688ed70e5067fdbeb4761085548567a` |
| 5 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-le--0073110fe2cfc078dfedb85e.md) | 64 | `result-track:0073110fe2cfc078dfedb85e1411896af1101bb17a93b1e3b63eae65c70425fd` |
| 6 | `theorem` | [edist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-eq-zero-iff--c3a770d3b331470c5c95241b.md) | 70 | `result-track:c3a770d3b331470c5c95241bb0a3316a454a729436be10f73e2827c35ab21cea` |
| 7 | `theorem` | [edist_self](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-self--d303ed305c577cdea4a168ec.md) | 75 | `result-track:d303ed305c577cdea4a168ece9e7ba0bbb1f5f266a61d88c7cb2e5c9f6c2d023` |
| 8 | `theorem` | [edist_pos_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-pos-of-ne--d5378fac4b54223b9ddd274d.md) | 78 | `result-track:d5378fac4b54223b9ddd274dc0f6827ed4e12393f8c892dad2f29d7756de1f93` |
| 9 | `lemma` | [edist_eq_top_of_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-eq-top-of-not-reachable--eec600cee62ffb8f00d20c6d.md) | 82 | `result-track:eec600cee62ffb8f00d20c6db03bca211fa1f41b6e6491e670c72293076030cc` |
| 10 | `theorem` | [reachable_of_edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-of-edist-ne-top--462d3f7a12f6a6ce28a461c4.md) | 86 | `result-track:462d3f7a12f6a6ce28a461c4312921f0def9b92111be70e4dbcc46e4554f5a40` |
| 11 | `lemma` | [exists_walk_of_edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/exists-walk-of-edist-ne-top--599a04de9d8737e19c65d8a2.md) | 90 | `result-track:599a04de9d8737e19c65d8a22d0f3dd6b8918157e655d55d2de74703d3358d47` |
| 12 | `theorem` | [edist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-triangle--472334e4aac6138b96369fde.md) | 94 | `result-track:472334e4aac6138b96369fdefd522925f386dc0d5e3e829faba544d463a034f3` |
| 13 | `theorem` | [edist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-comm--c44e4a9463575ce82d21370d.md) | 106 | `result-track:c44e4a9463575ce82d21370d7fd1af470d93a61ef5fdaefd87aef09f62e0f108` |
| 14 | `lemma` | [exists_walk_of_edist_eq_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/exists-walk-of-edist-eq-coe--ba820dab73d5d2465d0937ef.md) | 111 | `result-track:ba820dab73d5d2465d0937ef98126b842272ed5bdf5b75135b7ea1b8b32e92f5` |
| 15 | `lemma` | [edist_ne_top_iff_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-ne-top-iff-reachable--4740fa012774633f3956955e.md) | 117 | `result-track:4740fa012774633f3956955e68b4f1b38c24c45b69181b3fa8332ba41c7efe70` |
| 16 | `theorem` | [edist_eq_one_iff_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-eq-one-iff-adj--a3b445af20081cd4bd8e3b12.md) | 127 | `result-track:a3b445af20081cd4bd8e3b12850213bc3b2ba424b89e2103b6b1ab2cfa14f34b` |
| 17 | `lemma` | [edist_bot_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-bot-of-ne--4c3bab1c783193a83ea88c48.md) | 133 | `result-track:4c3bab1c783193a83ea88c48cbf1d0fea94820b4bdfdc1f970023eedffa87362` |
| 18 | `lemma` | [edist_bot](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-bot--5997c3dbe728f4e72e932632.md) | 136 | `result-track:5997c3dbe728f4e72e9326327de9ff4e6202f1ec38cce53ff3e6d097c07dc10c` |
| 19 | `lemma` | [edist_top_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-top-of-ne--b0afc76e039bdd756f98fc50.md) | 139 | `result-track:b0afc76e039bdd756f98fc50609cd58bd158edb317178c1de9bde27cb6468ed5` |
| 20 | `lemma` | [edist_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-top--eedf303cf68db118cdc4395c.md) | 142 | `result-track:eedf303cf68db118cdc4395cad02e5f5c256ad2419f6684635201091c23c4eba` |
| 21 | `theorem` | [edist_anti](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/edist-anti--92ebd7a0c795b7d8db4ff935.md) | 147 | `result-track:92ebd7a0c795b7d8db4ff935a3b73cea7381774ad538e8cd9b12411279003124` |
| 22 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist--a429d66ffa17ca5e002b5d3b.md) | 163 | `declaration-track:a429d66ffa17ca5e002b5d3b9f05df828763728550cbf62d3cddd8893beeceeb` |
| 23 | `theorem` | [dist_eq_sInf](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-eq-sinf--78f4a9572657122b53d11763.md) | 168 | `result-track:78f4a9572657122b53d1176344fc29dbe4b56c5b2c13cc258a7871675bb9c6ed` |
| 24 | `theorem` | [Reachable.exists_walk_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-exists-walk-length-eq-dist--93999c1e77414d6a8a559efb.md) | 171 | `result-track:93999c1e77414d6a8a559efb06aa9215d070d30be7c246ecb01d93a87bb6bf69` |
| 25 | `theorem` | [Connected.exists_walk_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-exists-walk-length-eq-dist--0d129a86a8141ea61e1aa847.md) | 175 | `result-track:0d129a86a8141ea61e1aa847d0919c7e5901243ed2acd1bb2bdbd1d161573c4b` |
| 26 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-le--837ee32c430988b081acaa77.md) | 179 | `result-track:837ee32c430988b081acaa77641730a64bdcabf6483f7d9c999920b81d2366ce` |
| 27 | `theorem` | [dist_eq_zero_iff_eq_or_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-eq-zero-iff-eq-or-not-reachable--362f7f782f4f5edd78074c5b.md) | 183 | `result-track:362f7f782f4f5edd78074c5be4d1bcc8d23fb25d0cc2955dac748f3dc7b26dec` |
| 28 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-self--a87d946209aff7a4d69a79be.md) | 186 | `result-track:a87d946209aff7a4d69a79be27b6b373ea58bf6cd5caf48b27b0bfff15ed2424` |
| 29 | `theorem` | [Reachable.dist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-dist-eq-zero-iff--8d528550330f615fe19827a9.md) | 188 | `result-track:8d528550330f615fe19827a9c05ba6ffd409d3909e5270e573d5817b7466a113` |
| 30 | `theorem` | [Reachable.pos_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-pos-dist-of-ne--2d09e9baab0f095a51f15c51.md) | 191 | `result-track:2d09e9baab0f095a51f15c514c1af3cd623905ef3b6060fe83df25590332f97a` |
| 31 | `theorem` | [Reachable.one_lt_dist_of_ne_of_not_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-one-lt-dist-of-ne-of-not-adj--e48ed4e2b3dc505d7a4545ee.md) | 195 | `result-track:e48ed4e2b3dc505d7a4545eec145d81309f6d301829c6f7712777b6687233ba3` |
| 32 | `theorem` | [Connected.dist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-dist-eq-zero-iff--2c94161a3c34b839defec704.md) | 202 | `result-track:2c94161a3c34b839defec70490c20889cf33bbf51fb400974b9afef4cba1d737` |
| 33 | `theorem` | [Connected.pos_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-pos-dist-of-ne--b57ecdf9e8401477db718b80.md) | 205 | `result-track:b57ecdf9e8401477db718b8040f8d36b6f419c25bc90036c7497e7eb2d2e7809` |
| 34 | `theorem` | [Connected.one_lt_dist_of_ne_of_not_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-one-lt-dist-of-ne-of-not-adj--0b0a4ecbded19d2428996cde.md) | 209 | `result-track:0b0a4ecbded19d2428996cde40ee53ac23da4fbc84bbf37b48b1d315922a10d5` |
| 35 | `theorem` | [dist_eq_zero_of_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-eq-zero-of-not-reachable--b52f7268bb8459c3b16b1a32.md) | 213 | `result-track:b52f7268bb8459c3b16b1a320cdd20b5752e691d62293b23340f1476bcc71416` |
| 36 | `theorem` | [nonempty_of_pos_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/nonempty-of-pos-dist--c8c0ea461c4ef86b4e67aac4.md) | 216 | `result-track:c8c0ea461c4ef86b4e67aac4490bda3a8c1906388b58b833f44fd28dda999d68` |
| 37 | `theorem` | [Connected.dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-dist-triangle--a15095d462d23018c8788520.md) | 222 | `result-track:a15095d462d23018c87885205900134b4b7cc4e336b80f2bf0ca695c8589c029` |
| 38 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-comm--5fc41f703305b7908e8fe5c5.md) | 229 | `result-track:5fc41f703305b7908e8fe5c5366c77510dd8e4b320ab703e7bf529f4a8a61c33` |
| 39 | `lemma` | [dist_ne_zero_iff_ne_and_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-ne-zero-iff-ne-and-reachable--c3fb4eb373b6ac865c0cb255.md) | 232 | `result-track:c3fb4eb373b6ac865c0cb255357878bfbdcc581f41f77f1efdbb6cb2bd7a050f` |
| 40 | `lemma` | [Reachable.of_dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-of-dist-ne-zero--122e4ad740541a658339fe5d.md) | 236 | `result-track:122e4ad740541a658339fe5d810579f2e53d3a3b4ac1c82af364f52cba9f6ba4` |
| 41 | `lemma` | [exists_walk_of_dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/exists-walk-of-dist-ne-zero--e97832c78207ef660dbd49ea.md) | 239 | `result-track:e97832c78207ef660dbd49ea6dce6a46c9adc4734e325e05df77ca2cedd8b86f` |
| 42 | `theorem` | [dist_eq_one_iff_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-eq-one-iff-adj--907695040e9041c96697023b.md) | 247 | `result-track:907695040e9041c96697023b873df0b968efc3c7f4307d86ede5aedbd005059a` |
| 43 | `theorem` | [Walk.isPath_of_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/walk-ispath-of-length-eq-dist--c686e0335f2cd3229e0845e8.md) | 251 | `result-track:c686e0335f2cd3229e0845e855ccabb63878451e724e8aa3c69bea30b5a7852e` |
| 44 | `lemma` | [Reachable.exists_path_of_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-exists-path-of-dist--10507d4135a6ec90b627a562.md) | 262 | `result-track:10507d4135a6ec90b627a562632c42d05268b1612a5e1dd5594554c130b93237` |
| 45 | `lemma` | [Connected.exists_path_of_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/connected-exists-path-of-dist--04c699aaf927c82338bc99c5.md) | 267 | `result-track:04c699aaf927c82338bc99c52c71d4ae306f7f8f63de1d4ba71d756accfebb5c` |
| 46 | `lemma` | [dist_bot](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-bot--771deb9b31df0159ac759716.md) | 273 | `result-track:771deb9b31df0159ac7597163ae54acbd19e167c3a982315a7f9f3b9e521d99d` |
| 47 | `lemma` | [dist_top_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-top-of-ne--1c3566dd6887e72df6b82016.md) | 276 | `result-track:1c3566dd6887e72df6b8201670d156e5d8de4d208de9c7fb823655ae0c0c2df8` |
| 48 | `lemma` | [dist_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/dist-top--cb8d2e1a022a037dc98bb7e7.md) | 279 | `result-track:cb8d2e1a022a037dc98bb7e72c44ed4fb44502f00f0a962c7aee11abc11ed295` |
| 49 | `theorem` | [Reachable.dist_anti](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/reachable-dist-anti--bcf6911d4e8bcda35f46a0fd.md) | 284 | `result-track:bcf6911d4e8bcda35f46a0fdeadbc0956449e5bbf103c89dbb5ac33f5eaab315` |
| 50 | `lemma` | [Walk.exists_adj_adj_not_adj_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/declarations/walk-exists-adj-adj-not-adj-ne--c71f4db4a77da7052e0a2446.md) | 292 | `result-track:c71f4db4a77da7052e0a2446ba9d4ca9a6a47dc8ba3eb4f204e203586d3c8152` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
