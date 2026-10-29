# Verification target: Finset Filter Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a06e3060103e858fdd34a61021255b49605c3b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a06e3060103e858fdd34a61021255b49605c3b`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean.json)

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
| 1 | `def` | [filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter.md) | 52 | `declaration-track:52d819a96ae632ef39d2380513681bc2aacd4a3b7ba10191697ebfc13b9f6bd4` |
| 2 | `def` | [knownToBeFinsetNotSet](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/knowntobefinsetnotset.md) | 62 | `declaration-track:5f7ff1d681fa0824765b7be48cfffe92bdf3b846630d65073487a337dd6c144d` |
| 3 | `def` | [elabFinsetBuilderSep](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/elabfinsetbuildersep.md) | 95 | `declaration-track:df33007493422c14440b4ba212eab191d96a40c6510bde8c7dc630829beac85c` |
| 4 | `theorem` | [filter_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-val.md) | 117 | `result-track:e8297a12fc15e92e43e820c3608acb987d8051c869c3925918322d864074a6d0` |
| 5 | `theorem` | [filter_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-subset.md) | 121 | `result-track:e3c3a8195453edf403bba0434ec45dfa9417b4e8625b66ff1d3f1ca9846722c4` |
| 6 | `theorem` | [mem_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/mem-filter.md) | 127 | `result-track:6b973b0cb383cf8ebae8419c8842a878e35d7e80e701d6b8faa80ab885116dde` |
| 7 | `theorem` | [mem_of_mem_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/mem-of-mem-filter.md) | 130 | `result-track:9aedfabaccbbe460a519fdd97fcb482f4f700f9bdfd93dd13f696ff7ccebb0e5` |
| 8 | `theorem` | [filter_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-ssubset.md) | 133 | `result-track:993a624f6855c546feeefefc7301815de4a00861310c5b0cee4680cf667bd54d` |
| 9 | `theorem` | [filter_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-filter.md) | 137 | `result-track:fdb896b292d064f0708e9fbd708c52c45bdac5f80351e4234df107d29cf1f2db` |
| 10 | `theorem` | [filter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-comm.md) | 140 | `result-track:b06a246c9aecb509ece8c83db34fc36c16722998d991456b32ed7b5c9239eea0` |
| 11 | `theorem` | [filter_congr_decidable](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-congr-decidable.md) | 144 | `result-track:5b77b09ee18e2067db94ca2e56a562f5842510a25aeb9b6fbc30510896b52390` |
| 12 | `theorem` | [filter_true](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-true.md) | 148 | `result-track:1d58f2e2ccc5179da75ddff5fd527d95dca47e9a0ba71471cc6ec225e9ad5bc2` |
| 13 | `theorem` | [filter_false](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-false.md) | 151 | `result-track:550e03aefcd2c15954ffd4775f36ad6b961736dc55b16b43080fb9245c319b64` |
| 14 | `lemma` | [filter_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-eq-self.md) | 156 | `result-track:4e69dd5bf00db75a1c0b392e992a4f1a3d91af422778e668ee204833b6722c4e` |
| 15 | `theorem` | [filter_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-eq-empty-iff.md) | 159 | `result-track:9f1e3e9d2665ec6ec1129102b815a5c4d58b8a0e9bbc769a493d835c9c2c63dc` |
| 16 | `theorem` | [filter_nonempty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-nonempty-iff.md) | 161 | `result-track:442e826ff6e0fee64b50971c4afb4e0946ad1d39d106c1978d69d1b3f397f008` |
| 17 | `theorem` | [filter_true_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-true-of-mem.md) | 166 | `result-track:5f8839becdc07debdb3c265b28d6d06f99467c6bfebe8d2f535b42e26390320f` |
| 18 | `theorem` | [filter_false_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-false-of-mem.md) | 169 | `result-track:5fd5ce197f89689173d8a4c29682d2d9e842cb7d018727cadfeec81b74fccd8c` |
| 19 | `theorem` | [filter_const](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-const.md) | 172 | `result-track:2086cc8c1144a0c5df1a755c5a03789745bf66715d35dd0ce6123acdc8e3568c` |
| 20 | `theorem` | [filter_congr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-congr.md) | 176 | `result-track:78182041d9de284bdecb6c85289bec3fd4eedead8396005b13b9656530a11a0b` |
| 21 | `theorem` | [filter_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-empty.md) | 182 | `result-track:810771b0a67b912f312d98e32d72951d519c92148ddc973fe6afc392c495a5d9` |
| 22 | `theorem` | [filter_subset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-subset-filter.md) | 186 | `result-track:a76a44508e1fe0161fe440c3814e084350e8353973c7e03092042cf052b55b51` |
| 23 | `theorem` | [monotone_filter_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/monotone-filter-left.md) | 189 | `result-track:840daa995c1067e52d427ed4ff1c5e4e04db571dcbaab28426932fef08f400f5` |
| 24 | `theorem` | [monotone_filter_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/monotone-filter-right.md) | 192 | `result-track:b0fe1ae1a3992eda6ad23f203dc5332990a1fea351358802292422acbf6c4238` |
| 25 | `theorem` | [coe_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/coe-filter.md) | 196 | `result-track:180ae678176da9933763cd2b69ba44cdcf76ddb38236dc976e2ba81ead47dae8` |
| 26 | `theorem` | [subset_coe_filter_of_subset_forall](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/subset-coe-filter-of-subset-forall.md) | 199 | `result-track:b5d3fd471c0a6cd11300b9d7f35f3c4f75e0fa4cc08b71983e859cae2022a1a3` |
| 27 | `theorem` | [disjoint_filter_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/disjoint-filter-filter.md) | 202 | `result-track:bd5a7bfa6d23f6514ade827eb32406acf95c921e49f778428eb675fafbc735a5` |
| 28 | `lemma` | [_root_.Set.pairwiseDisjoint_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/root-set-pairwisedisjoint-filter.md) | 207 | `result-track:e315d39e2465cbc5aed155c99758464478e2e5b1bf94979c290c888642479f38` |
| 29 | `theorem` | [disjoint_filter_and_not_filter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/disjoint-filter-and-not-filter.md) | 214 | `result-track:d3b38c984c5229a3b2acc588436c670db2ba835c1ae738c46d565b27806a19a5` |
| 30 | `lemma` | [filter_inj](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-inj.md) | 223 | `result-track:565e7b6ee6f8b506432ad45c5e0b4a36a824740681cb9f3ef9f3e1a15d79328f` |
| 31 | `lemma` | [filter_inj'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-inj-source-edition-2.md) | 226 | `result-track:cca15f50a2a7265922e1f8a501029b396e71c559dd4a38e97c53d5b694857783` |
| 32 | `lemma` | [filter_mem_eq_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/declarations/filter-mem-eq-of-subset.md) | 230 | `result-track:1a59b233ad03e5c89d5f67f5e3d9340d06ac1bef150bd0432e51b765aea2ac5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c717d316bb84f9331c55b482dd49749c9173e2170e95374b621ca76c698369a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
