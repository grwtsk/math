# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsLemma.Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4f1e4992149b89860d993d63593c9ef22f450b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4f1e4992149b89860d993d63593c9ef22f450b`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/cu--c9d45eda4d6b55d246996612.md) | 106 | `declaration-track:c9d45eda4d6b55d2469966120b907b9ab5e97d9f2808c389ba98d5e8b54d24f8` |
| 2 | `def` | [left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/left--f5e3a15097696032f1d333ac.md) | 127 | `declaration-track:f5e3a15097696032f1d333ac828276e9570efd472306865575ebe4b5d197974e` |
| 3 | `def` | [right](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/right--530b97d8706826558c2477d8.md) | 139 | `declaration-track:530b97d8706826558c2477d84e70de3c4d9f406b696607125201a078b69e1b52` |
| 4 | `theorem` | [left_U_subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/left-u-subset-right-c--237b1291fc6c2369b9609b22.md) | 148 | `result-track:237b1291fc6c2369b9609b223d5d66fa854856c32c0fc700229fdff802c35b98` |
| 5 | `theorem` | [left_U_subset](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/left-u-subset--45d0ff0af4a1626c192dad2d.md) | 151 | `result-track:45d0ff0af4a1626c192dad2d87e860fa5a79c9ff8b4886eb9fa84d9e1aec6ffb` |
| 6 | `theorem` | [subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/subset-right-c--58863b44b7712fb17c191fdb.md) | 154 | `result-track:58863b44b7712fb17c191fdbba625e3fea9adcede565fd3e938596883f752cbe` |
| 7 | `def` | [approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx--a18dd81ff0a1508a1fcde882.md) | 159 | `declaration-track:a18dd81ff0a1508a1fcde882d0910e84c76a51a14d3a5837592b7b52ada059e1` |
| 8 | `theorem` | [approx_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-of-mem-c--5aad7e8234d0ba2d79c0c131.md) | 163 | `result-track:5aad7e8234d0ba2d79c0c1316ee0566e08aff8e7bbdf1e547dcec85c2bf229d9` |
| 9 | `theorem` | [approx_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-of-notmem-u--08270cdcc46b65b7ce58d98d.md) | 171 | `result-track:08270cdcc46b65b7ce58d98d156b5fbafd19ffabeee6e2c7ab25d5ea1a61ff91` |
| 10 | `theorem` | [approx_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-nonneg--1ac7193c81f7d34699d9c68f.md) | 181 | `result-track:1ac7193c81f7d34699d9c68f73dadcea87fe486447c9e33df50ab35169ec1aaf` |
| 11 | `theorem` | [approx_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-le-one--c432b06bd56d94fff0d1b2b8.md) | 188 | `result-track:c432b06bd56d94fff0d1b2b8f1ae351af4764a0bbfa9111921b9cc756ecaccb0` |
| 12 | `theorem` | [bddAbove_range_approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/bddabove-range-approx--3d5b9f9d5c2383770770d81d.md) | 197 | `result-track:3d5b9f9d5c2383770770d81df44e4ded690703dc7a8bb0fbf98f5b44722f21f2` |
| 13 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-le-approx-of-u-sub-c--9702ce1a7165e14d9299a3f8.md) | 200 | `result-track:9702ce1a7165e14d9299a3f8c8c7b379911c3f25dcebb01d8b8eb7be14308b0c` |
| 14 | `theorem` | [approx_mem_Icc_right_left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-mem-icc-right-left--bf629d6de3a869f0f872c99a.md) | 210 | `result-track:bf629d6de3a869f0f872c99afd1646779dc0096a7d5a3c1e63ef6aaaf5260008` |
| 15 | `theorem` | [approx_le_succ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-le-succ--2676864c2f1b802f69aac7d3.md) | 224 | `result-track:2676864c2f1b802f69aac7d315bbe196b4ccb7f8deaf816afcccc9ef09ed8105` |
| 16 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-mono--b5cfca3a29cba58569d052ff.md) | 233 | `result-track:b5cfca3a29cba58569d052ff1895801587c02f6912d42a6af5499d485b511df4` |
| 17 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim--c0b0482dfe65201259bf82da.md) | 241 | `declaration-track:c0b0482dfe65201259bf82da34b5686f4f94be97c6cc90c2907411dbec58129c` |
| 18 | `theorem` | [tendsto_approx_atTop](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/tendsto-approx-attop--bda8ee807e682dcd79091fdc.md) | 244 | `result-track:bda8ee807e682dcd79091fdc88da2e8eb507416f36542c4bd20ecb2abcf44ad1` |
| 19 | `theorem` | [lim_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-of-mem-c--8fe58442f0a3486feffed7d3.md) | 248 | `result-track:8fe58442f0a3486feffed7d398d78e3c49376b7aa6d65e916bd10fe65f1d2a15` |
| 20 | `theorem` | [disjoint_C_support_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/disjoint-c-support-lim--77b63c0978eace3069359341.md) | 251 | `result-track:77b63c0978eace30693593413e6899c24f3511f68ccd1c141f896ca3c677ff55` |
| 21 | `theorem` | [lim_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-of-notmem-u--0d097e8b430bac3de79f31e5.md) | 254 | `result-track:0d097e8b430bac3de79f31e5a79afcb8e72423bbffdcf44bb1be223e0c570f9a` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-eq-midpoint--dbcb337c34e210f8d179d137.md) | 257 | `result-track:dbcb337c34e210f8d179d13749fd1da8d2ce2c2aea213be33e9652426a17bf36` |
| 23 | `theorem` | [approx_le_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/approx-le-lim--c654c55779e2a731c9e42b4a.md) | 263 | `result-track:c654c55779e2a731c9e42b4ad1cb68d41d55c5ffa758e61a23bcdcafb6b29a08` |
| 24 | `theorem` | [lim_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-nonneg--345aaa207dfbf4461fd3e921.md) | 266 | `result-track:345aaa207dfbf4461fd3e9218107adefe444715b8853f4e6588e1780071ea4ea` |
| 25 | `theorem` | [lim_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-le-one--5d37f22cb031c54700582fe9.md) | 269 | `result-track:5d37f22cb031c54700582fe99131ad7e4b48949e8c3a4a3a35fe368a9b55ed59` |
| 26 | `theorem` | [lim_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/lim-mem-icc--a5a3a463e54c7527c8512253.md) | 272 | `result-track:a5a3a463e54c7527c85122539f61deb220a8bdd3de0bb9d58f7925042e4b172f` |
| 27 | `theorem` | [continuous_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/continuous-lim--6b6ce2642d02635fc58c6aee.md) | 276 | `result-track:6b6ce2642d02635fc58c6aeeb952f7953c98b4e38cb6481f89e80a97793ee91a` |
| 28 | `theorem` | [exists_continuous_zero_one_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-zero-one-of-isclosed--8a5c7f5644a0fd1c32584ef5.md) | 323 | `result-track:8a5c7f5644a0fd1c32584ef524f09d6c5519b1f8026775b3bc7f91e97c4f288d` |
| 29 | `theorem` | [exists_continuous_zero_one_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-zero-one-of-iscompact--33b33f4c96e1fd50c6cb571b.md) | 350 | `result-track:33b33f4c96e1fd50c6cb571bd3c485b787666c557b31190d2c57f97b3799e39c` |
| 30 | `theorem` | [exists_continuous_zero_one_of_isCompact'](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-zero-one-of-iscompact--3065483b8ef17e6625822c11.md) | 381 | `result-track:3065483b8ef17e6625822c11f7759794e182df9bb91ad6bb6937f35f8785f91f` |
| 31 | `theorem` | [exists_continuous_one_zero_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-one-zero-of-iscompact--f6a11ac4a083d56cf0c9f47e.md) | 405 | `result-track:f6a11ac4a083d56cf0c9f47e1841597cadf7a265591492bfca2595e22a24e1ce` |
| 32 | `theorem` | [exists_continuous_one_zero_of_isCompact_of_isGδ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-one-zero-of-iscompact-of-isg--450d10fb590dbcd4e24b7288.md) | 434 | `result-track:450d10fb590dbcd4e24b7288da0f42193777a742b53227fe7f9393f21227f6c7` |
| 33 | `lemma` | [exists_tsupport_one_of_isOpen_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-tsupport-one-of-isopen-isclosed--e92f08110d04f56b37da18bb.md) | 482 | `result-track:e92f08110d04f56b37da18bb0912c5dfb67d2d7ec7910ba71fbb8edfa7a44772` |
| 34 | `lemma` | [exists_continuousMap_one_of_isCompact_subset_isOpen](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuousmap-one-of-iscompact-subset-isopen--6b0e0513a8290ff6b5c6e4d2.md) | 530 | `result-track:6b0e0513a8290ff6b5c6e4d2b0f36f19ce065f1c0f703b55e89ab55120771e68` |
| 35 | `theorem` | [exists_continuous_nonneg_pos](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/declarations/exists-continuous-nonneg-pos--93e3a7522ab48ae0011b5a50.md) | 541 | `result-track:93e3a7522ab48ae0011b5a50d67783db723bb2288f2f1fa89f28c095352bdd57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
