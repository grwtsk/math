# Verification target: Probability Mass Function Constructions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64f8f98e2222d70056642f7e02ae9f7002359740",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantf213744a1562b78242a74d51529129259516ed45efc330e5ba617caa67b68ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64f8f98e2222d70056642f7e02ae9f7002359740`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantf213744a1562b78242a74d51529129259516ed45efc330e5ba617caa67b68ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantf213744a1562b78242a74d51529129259516ed45efc330e5ba617caa67b68ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Monad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map.md) | 40 | `declaration-track:51f265bba82cd34ed73688205dd85a116a941f924d7d38f273c5328e1bf766fc` |
| 2 | `theorem` | [monad_map_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/monad-map-eq-map.md) | 45 | `result-track:404505c9cb9e0e8b9532bc554a39457d472e983e5773e64dab083efde2f0319c` |
| 3 | `theorem` | [map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-apply.md) | 49 | `result-track:6d76a7689d0368af03b3e238707ffbd357f89407dd50f90e457cdc2b84f971db` |
| 4 | `theorem` | [support_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-map.md) | 52 | `result-track:bdede94cfa95b0174880e1c188fc1c314f48486e81301d6965cd4a1d955509c1` |
| 5 | `theorem` | [mem_support_map_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-map-iff.md) | 55 | `result-track:092e43bcebd0d7a34849617cc606cc9357857f99e026b3f3432e16fc1283e23a` |
| 6 | `theorem` | [bind_pure_comp](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/bind-pure-comp.md) | 57 | `result-track:e9a211da2a2c03b00e9bfeff7b3933ebebc7772d4c35942be91140d0a6f7ab41` |
| 7 | `theorem` | [map_id](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-id.md) | 59 | `result-track:415bc160a2162df9fabd2413db7e938b9711297064fecb4d94a2b9b3dde4a833` |
| 8 | `theorem` | [map_comp](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-comp.md) | 62 | `result-track:190f98d6516a7619b37a0ec5c706b12f244449f45f4437e4f8fe98070a2b9033` |
| 9 | `theorem` | [pure_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/pure-map.md) | 64 | `result-track:03023e29d4df35485e1a51c34ee434c23434472550114ba5a4947b4b468d12d4` |
| 10 | `theorem` | [map_bind](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-bind.md) | 67 | `result-track:cf479212c88f1648f463b82afe2934957418f541e966958baa9e2fd4f3dfc744` |
| 11 | `theorem` | [bind_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/bind-map.md) | 71 | `result-track:b90dae8f50f90c74a0a9da85042fc48b8ebf514a6d27d50ccd0c62558636b581` |
| 12 | `theorem` | [map_const](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-const.md) | 75 | `result-track:beecd55de058b3163291ca5e52867e7f7e7e74dd15ee882d6df665daee6f2f29` |
| 13 | `theorem` | [toOuterMeasure_map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tooutermeasure-map-apply.md) | 83 | `result-track:c6fc5ebb4c985485bb13d9eb2ca1fe04a63c5e0e8e34a50a4d3a526f1c0e3009` |
| 14 | `theorem` | [toMeasure_map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tomeasure-map-apply.md) | 90 | `result-track:4fb52669f540776454bd6562df42a1765dd5056493ad4d022cc2e6f2fa97ef52` |
| 15 | `lemma` | [toMeasure_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tomeasure-map.md) | 97 | `result-track:0927165e976136b0589ffc308be2b3d20ca250fe67df3671abfba0735d179a91` |
| 16 | `def` | [seq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/seq.md) | 107 | `declaration-track:234cb36e76079a2cea7260ee0fb0d983632c6284942fe803164d1c0fbd357508` |
| 17 | `theorem` | [monad_seq_eq_seq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/monad-seq-eq-seq.md) | 112 | `result-track:272489757c8025b6a078e1757d459346612de42b05f89aba1ab3d650b3ad4832` |
| 18 | `theorem` | [seq_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/seq-apply.md) | 116 | `result-track:9cee9b80c74a2957976e0387e062b98a3cd68142aff3b764097e53b6b1fc7382` |
| 19 | `theorem` | [support_seq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-seq.md) | 122 | `result-track:9f694ac1dd8d528125db36d8d1b81be115d6b3f824baaa99109378f4c26b2939` |
| 20 | `theorem` | [mem_support_seq_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-seq-iff.md) | 125 | `result-track:c48c6eae4ccd6469b3b7384bbae40dc148f83f8a0cf8e20174683ba56c2dd21a` |
| 21 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/instance-source-edition-3.md) | 129 | `declaration-track:7e54b8aead32cd2cb56df0918ab9b83aac29344ecb2bd74fd65a66022b1851bf` |
| 22 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:453c5ce302eb7e57bf87283eb9294cc9579c8eb0c8223ab1d691ef84cd19b5d3` |
| 23 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/instance.md) | 149 | `declaration-track:13e2fde8eca1b2ba5e539064e7784acc9f0b3752cff7c8abfa0f7eaf1c3af866` |
| 24 | `def` | [ofFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/offinset.md) | 159 | `declaration-track:c89d7152522a849fbe3a1aaa8fb5cb614fc8c350da7978370008b23df88be56b` |
| 25 | `theorem` | [ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/offinset-apply.md) | 166 | `result-track:37220d038f016ccdd194325e3b2061daa545d405611e92c3f000ea77861b2b89` |
| 26 | `theorem` | [support_ofFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-offinset.md) | 169 | `result-track:e79b99eacf8060282eb4113f69652a1b6480910765a5dac1528b45453ad8e358` |
| 27 | `theorem` | [mem_support_ofFinset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-offinset-iff.md) | 172 | `result-track:8a06882ab2c674f487cf2d6aaee95b99be79be1f9dc20f3713d06a2e0310d73f` |
| 28 | `theorem` | [ofFinset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/offinset-apply-of-notmem.md) | 175 | `result-track:36c19adcc048e562be32904d778909d7bb1493112ff4392bf97ff219bd6efc3e` |
| 29 | `theorem` | [toOuterMeasure_ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tooutermeasure-offinset-apply.md) | 185 | `result-track:6e89fd2e5a81e880b9bef5d30c903ae5880e9789f029466dae8e3bdb541638a6` |
| 30 | `theorem` | [toMeasure_ofFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tomeasure-offinset-apply.md) | 190 | `result-track:759f9f9895d9e6b82dead11572965445d58f6afc0a8ba03a132d12efd2554100` |
| 31 | `def` | [ofFintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/offintype.md) | 201 | `declaration-track:d4d34e8db40e25463e6640a29763df1edbbd39fcf09c156b0758aa0280ee4c23` |
| 32 | `theorem` | [ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/offintype-apply.md) | 207 | `result-track:ce9a4091b1ba10cbaa2490db907ea53db98d2c1f68354ad834384552b4616375` |
| 33 | `theorem` | [support_ofFintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-offintype.md) | 210 | `result-track:47f9e7d513a25a34295d4312feadfdbbf15d1620fd887f044cfb3eb2d0b0ef5a` |
| 34 | `theorem` | [mem_support_ofFintype_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-offintype-iff.md) | 212 | `result-track:5d4901a5af7443dd81376622aea539b458b92d82cea5d5fe8be6f178062f6dfb` |
| 35 | `lemma` | [map_ofFintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/map-offintype.md) | 216 | `result-track:0f137d9abc8f9f9cac759876d1665e209bceb69c4f95851967513cbbc6912d78` |
| 36 | `theorem` | [toOuterMeasure_ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tooutermeasure-offintype-apply.md) | 228 | `result-track:90ef58ffd2e00e9868ea00d7c592eb675da1a86065f1f66c8467800b78eb8f71` |
| 37 | `theorem` | [toMeasure_ofFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/tomeasure-offintype-apply.md) | 232 | `result-track:6c956d2739fa543e6ce74e52c4645cd5dd6c7fac0973494792845c1bc38e1310` |
| 38 | `def` | [normalize](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/normalize.md) | 244 | `declaration-track:e875f04b0c76343b227faee440f1003a4a17660504ee872ba8db0b1c5e32397d` |
| 39 | `theorem` | [normalize_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/normalize-apply.md) | 251 | `result-track:1f73b2c262a81f46b35bad141aaea99047ad7177fe7a8abc91a44542547f89df` |
| 40 | `theorem` | [support_normalize](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-normalize.md) | 254 | `result-track:03f756cff00887ae1e8d484e398a48722131b39019093e956df065eb9a92dcfb` |
| 41 | `theorem` | [mem_support_normalize_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-normalize-iff.md) | 257 | `result-track:35077f4e29714e6ccb5c6b0daac1c37dcbd1c624374880c7448b0ea4b77fe67e` |
| 42 | `def` | [filter](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/filter.md) | 264 | `declaration-track:32d2203d9785fa4e730e0fe958bfbc619bd6a2c51219c9a9cdf3e99059e63cff` |
| 43 | `theorem` | [filter_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/filter-apply.md) | 270 | `result-track:33b390d84fca0f125831ecc433c2e294e2fcd14d2e9138dd54e501075945acd3` |
| 44 | `theorem` | [filter_apply_eq_zero_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/filter-apply-eq-zero-of-notmem.md) | 274 | `result-track:9614efd8fb3e8021fdb438dde37f2d37fb5e8c9b58a4037cd2361b9497ca0900` |
| 45 | `theorem` | [mem_support_filter_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-filter-iff.md) | 280 | `result-track:a92814753961826a6704b08ada30035cec9fb51a2974fce19159dcbc4d29273a` |
| 46 | `theorem` | [support_filter](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-filter.md) | 284 | `result-track:a2cfbc88cf2d8d313e3765eb215fdc2defbbdda436ba59dcb7edd63fc740da98` |
| 47 | `theorem` | [filter_apply_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/filter-apply-eq-zero-iff.md) | 287 | `result-track:fc61baba42675e2e3d8aab1e931c1f3024860295f186db05cf63549038676562` |
| 48 | `theorem` | [filter_apply_ne_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/filter-apply-ne-zero-iff.md) | 290 | `result-track:8c56bc3781c68399279ce82c604529b600e23bacbbf6802762271aa53b91f6b0` |
| 49 | `def` | [bernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/bernoulli.md) | 298 | `declaration-track:88fee36d8aa393197d7ce6a9fab99b1d05c6b9f860f26144098f9c8aeac255c5` |
| 50 | `theorem` | [bernoulli_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/bernoulli-apply.md) | 304 | `result-track:a3008519e037b2ee50c4913b62f735e5d378a80dd53b6a93743086989d863df2` |
| 51 | `theorem` | [support_bernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/support-bernoulli.md) | 307 | `result-track:556b36779ca4514b5dca920d05a3b0395d6fd6b9a5d123ced4304b90b1b2b4ef` |
| 52 | `theorem` | [mem_support_bernoulli_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionConstructions.lean/declarations/mem-support-bernoulli-iff.md) | 314 | `result-track:a0812e938de575c1799daee0e8c78e01a2e5bcbc4289e4d548030c0515fa47ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75673ca7b6c086f87330a61db1bf07e89df306df77dd6245f505246370a14bc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructions/Variantf213744a1562b78242a74d51529129259516ed45efc330e5ba617caa67b68ca5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructions/Variantf213744a1562b78242a74d51529129259516ed45efc330e5ba617caa67b68ca5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
