# Verification target: GRWTSK.Topology.GeneralTopology.Split.Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a14ef0e63282c67eb3a38b11d70565391baa01",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a14ef0e63282c67eb3a38b11d70565391baa01`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower--c38fba163d9c6667ecc171d7.md) | 55 | `declaration-track:c38fba163d9c6667ecc171d777e8a47636b4ff2852e2ffd7d721bd2dd883327b` |
| 2 | `theorem` | [coe_splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/coe-splitlower--086022c743295dc95240a9d8.md) | 59 | `result-track:086022c743295dc95240a9d8a77a128d9f1167343cf59ee3198fe0d4ed5f229e` |
| 3 | `theorem` | [splitLower_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower-le--f835e708315b6e08aa17bde5.md) | 66 | `result-track:f835e708315b6e08aa17bde5220bbdcf463683507035ff0643b1e97e916c0bfe` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower-eq-bot--9929a1403e0a7d89e7f85101.md) | 70 | `result-track:9929a1403e0a7d89e7f8510158f62551eb3dfcae410d14006672f4b343e1caf8` |
| 5 | `theorem` | [splitLower_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower-eq-self--14584da339e84a03eca0b8f4.md) | 76 | `result-track:14584da339e84a03eca0b8f46dee73487295210bd1466c515c43865c71f8aa32` |
| 6 | `theorem` | [splitLower_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower-def--b92d5bca4875f28f4e280633.md) | 79 | `result-track:b92d5bca4875f28f4e280633aaface9fc091fa5a4e24463913b5dffd68e13f03` |
| 7 | `def` | [splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitupper--7960f94b2408eac9d8ad39f2.md) | 92 | `declaration-track:7960f94b2408eac9d8ad39f20b7ce983911bd6e81d628b69ce470bfdde9f3430` |
| 8 | `theorem` | [coe_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/coe-splitupper--9c7cb4c6d2f78bc916e33c7c.md) | 96 | `result-track:9c7cb4c6d2f78bc916e33c7c4595480d209253faa205454f302dc7f93e638417` |
| 9 | `theorem` | [splitUpper_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitupper-le--2f4eeed43970de02420e16d2.md) | 105 | `result-track:2f4eeed43970de02420e16d2223c293933b15929ab46f57741d9c139530c244b` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitupper-eq-bot--d6cd42eabdfb39272cc49cf0.md) | 109 | `result-track:d6cd42eabdfb39272cc49cf08da404dbfa6a9d7ce452496db46bde2b0d1ec247` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitupper-eq-self--074650ce792302203b46cc32.md) | 115 | `result-track:074650ce792302203b46cc32ef8def78cf3ecf636c23e19bb44c67639853bde0` |
| 12 | `theorem` | [splitUpper_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitupper-def--5781fd4449f1d07acaa5c297.md) | 118 | `result-track:5781fd4449f1d07acaa5c297f062d42e03c04947d1fe37c39e97fa94deac05f7` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/disjoint-splitlower-splitupper--3a2e71debd7fb9f8a835280d.md) | 126 | `result-track:3a2e71debd7fb9f8a835280d43ac3c85b2408f22164fc3d42b8d6947656cb59b` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitlower-ne-splitupper--8b2d16e03826fde86f81bebd.md) | 133 | `result-track:8b2d16e03826fde86f81bebd422338ed8cc133612aa841e1797186e83ad0444b` |
| 15 | `def` | [split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/split--d11c7b4e7c3b3edaffbda67a.md) | 150 | `declaration-track:d11c7b4e7c3b3edaffbda67ab834bfa9fe3a4863a7f413e9ebf0bd0fdb8dfb05` |
| 16 | `theorem` | [mem_split_iff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/mem-split-iff--8f386b311df391c8c693afe6.md) | 163 | `result-track:8f386b311df391c8c693afe6d890bfa9c86ed358e71b371b18bb3ade16977ec0` |
| 17 | `theorem` | [mem_split_iff'](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/mem-split-iff--0464712e822f9557e8b30236.md) | 166 | `result-track:0464712e822f9557e8b3023639a1185703291d5337bba9b983abca8616e3b67b` |
| 18 | `theorem` | [iUnion_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/iunion-split--0d5743080603e4e8fcadada9.md) | 171 | `result-track:0d5743080603e4e8fcadada9b7c6560f8849e63e90f46c6014c283cc15f6edca` |
| 19 | `theorem` | [isPartitionSplit](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/ispartitionsplit--d01539a8d95c7111e53eaaa9.md) | 174 | `result-track:d01539a8d95c7111e53eaaa95f461cd832ca81e5da0502b8177d82b2c06d136a` |
| 20 | `theorem` | [sum_split_boxes](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/sum-split-boxes--1bbe9a7cc994944ce662f548.md) | 177 | `result-track:1bbe9a7cc994944ce662f548b38c8ad61603ce736ba955b34972e5dba1b30f66` |
| 21 | `theorem` | [split_of_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/split-of-notmem-ioo--3a854bea4f417ab9e07a441e.md) | 184 | `result-track:3a854bea4f417ab9e07a441e81328e3733b1bac4a12b380dd845de2c792debe6` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/coe-eq-of-mem-split-of-mem-le--48192a49203a6a5a3a20dd1c.md) | 195 | `result-track:48192a49203a6a5a3a20dd1c333db9ce790fd67008132ac853b1c20044da22f2` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/coe-eq-of-mem-split-of-lt-mem--aa51c8eff4a6a8f89537d7f6.md) | 201 | `result-track:aa51c8eff4a6a8f89537d7f64885b6d9147d573f4f66e6eb3c0490c654d41ced` |
| 24 | `theorem` | [restrict_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/restrict-split--edaca5968b50b0b232c0e095.md) | 208 | `result-track:edaca5968b50b0b232c0e09546900868ac34f5241c5f6e6f52305e832a03e5b8` |
| 25 | `theorem` | [inf_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/inf-split--bcf2119a551eed52b9fd3df0.md) | 215 | `result-track:bcf2119a551eed52b9fd3df061d3160726e186e14651e3ac9ff5c8e2b4351863` |
| 26 | `def` | [splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitmany--42637c893d8d82d3f6984793.md) | 221 | `declaration-track:42637c893d8d82d3f6984793b8ca252fb6b2be5181e0cfcfb53f164cda7d7c14` |
| 27 | `theorem` | [splitMany_empty](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitmany-empty--d98b9aeb9efac82cc553c6fe.md) | 225 | `result-track:d98b9aeb9efac82cc553c6fefba9df49e8fbc3ad7b28173144cabd5cfc65c096` |
| 28 | `theorem` | [splitMany_insert](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitmany-insert--e2b49e38ae418ad3dcafdf25.md) | 230 | `result-track:e2b49e38ae418ad3dcafdf2596cba84c57e13423d5ecab4501a1a943e6cd270d` |
| 29 | `theorem` | [splitMany_le_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/splitmany-le-split--0129679f19beeaf7d99b1b0b.md) | 234 | `result-track:0129679f19beeaf7d99b1b0b011f9e530be4b9e24a89ee57c5f4072f551ca5b5` |
| 30 | `theorem` | [isPartition_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/ispartition-splitmany--28976021098c1ee6e9166e6d.md) | 238 | `result-track:28976021098c1ee6e9166e6dc67226e22a3106de2ef36247268808abc5674293` |
| 31 | `theorem` | [iUnion_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/iunion-splitmany--fa4172251483ba7621f817db.md) | 244 | `result-track:fa4172251483ba7621f817db643bf48dfaad313c1bd0c2192de87b3202d2f959` |
| 32 | `theorem` | [inf_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/inf-splitmany--1891a8aeb316911714c983f1.md) | 247 | `result-track:1891a8aeb316911714c983f134acf016054317ee868388b0a1464d49a2be4948` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany--df73d19a444a0c928e0ff8e6.md) | 259 | `result-track:df73d19a444a0c928e0ff8e60a558ef7bc1442aa6233a71ce15e2c8f4ceb0f9d` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany--86796bb1f41383f903da7336.md) | 283 | `result-track:86796bb1f41383f903da73365a892c59beca1df7eecf1796c4912eabc5e84695` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/eventually-splitmany-inf-eq-filter--d664d744d16dc568781d5b1b.md) | 294 | `result-track:d664d744d16dc568781d5b1b5f00b0605b84b6243c73d3388771d4a1c7469c67` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/exists-splitmany-inf-eq-filter-of-finite--0d42d9f3dae02966f1b485c5.md) | 309 | `result-track:0d42d9f3dae02966f1b485c518d632aa7ecfa7dbdfe7c674e32312cc9348aece` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/ispartition-exists-splitmany-le--a7cfbf91d6459179fd3f469b.md) | 317 | `result-track:a7cfbf91d6459179fd3f469b9310be0965e89abff0cf679d68618ea60b28b41e` |
| 38 | `theorem` | [exists_iUnion_eq_diff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/exists-iunion-eq-diff--15c75f751c2be79a4511a1a6.md) | 325 | `result-track:15c75f751c2be79a4511a1a6a9b84f3466b609142aaeccbc7028942f393e68dc` |
| 39 | `def` | [compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/compl--150b0feff195787e414cb9ec.md) | 333 | `declaration-track:150b0feff195787e414cb9ec66dfb2601023af186d622034a9528a7435986867` |
| 40 | `theorem` | [iUnion_compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/iunion-compl--3b8ffa54d6c02a30d738a219.md) | 337 | `result-track:3b8ffa54d6c02a30d738a219b87f1c5668a057c0fc528ce6f74116059fd0c053` |
| 41 | `theorem` | [compl_congr](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/compl-congr--82784fae3b008386c86a1f74.md) | 342 | `result-track:82784fae3b008386c86a1f741776f6d15a47dca44eddc7442392c11800ff96e1` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/ispartition-compl-eq-bot--1b40a9a3f8fd752dd4f9faa3.md) | 347 | `result-track:1b40a9a3f8fd752dd4f9faa36af9cafe15656c9b1c2783df6d5dae10776c0114` |
| 43 | `theorem` | [compl_top](../../../../../mathematics/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/declarations/compl-top--51aa11c0c08c661838351acd.md) | 351 | `result-track:51aa11c0c08c661838351acd3227fefe55da78050168b79db561442b89ec0fc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
