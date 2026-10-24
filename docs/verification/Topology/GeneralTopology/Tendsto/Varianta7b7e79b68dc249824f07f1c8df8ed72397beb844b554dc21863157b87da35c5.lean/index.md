# Verification target: GRWTSK.Topology.GeneralTopology.Tendsto.Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda3854d6a154b6568024ed5da75cf3763753cb6`.

Source path: `GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_def](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-def--5f21f3eba84306f5de75893f.md) | 27 | `result-track:5f21f3eba84306f5de75893fa6488f8dc44728f35e0a6aa0a86e16201c3789d6` |
| 2 | `theorem` | [tendsto_iff_eventually](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iff-eventually--010211ee43a047d671f79ea9.md) | 31 | `result-track:010211ee43a047d671f79ea9c8c1d50bb37f46e077d8773f1c923ae1c71d754f` |
| 3 | `theorem` | [tendsto_iff_forall_eventually_mem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iff-forall-eventually-mem--6739f6b79ef692e8fbdaf3eb.md) | 35 | `result-track:6739f6b79ef692e8fbdaf3ebccf90863700a76ddf3357e4449797491bad14a3e` |
| 4 | `lemma` | [Tendsto.eventually_mem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-eventually-mem--4b5f73a038a97b00b6083a5f.md) | 39 | `result-track:4b5f73a038a97b00b6083a5f77552e81a1051f3182aaaa1f7681c7f575305ee5` |
| 5 | `theorem` | [Tendsto.eventually](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-eventually--c5dc21715332265598acde58.md) | 43 | `result-track:c5dc21715332265598acde5811812c3075c229cc4df80a97b065bbbf868dc650` |
| 6 | `theorem` | [not_tendsto_iff_exists_frequently_notMem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/not-tendsto-iff-exists-frequently-notmem--ac97e37da1ac623fe7c34e63.md) | 47 | `result-track:ac97e37da1ac623fe7c34e63074a97c9d392e431bca04376288582473f6d6de5` |
| 7 | `theorem` | [Tendsto.frequently](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-frequently--faae810988cff6520042b90a.md) | 54 | `result-track:faae810988cff6520042b90ab0494f4000a7a0f5648487173fa4fce8f80e59d5` |
| 8 | `theorem` | [Tendsto.frequently_map](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-frequently-map--2b76814db355e69d50f10538.md) | 58 | `result-track:2b76814db355e69d50f105383641558b1aeb077fb9a065565b7bc54899d32b1d` |
| 9 | `theorem` | [tendsto_bot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-bot--504ecdc9f5c907c441afd598.md) | 64 | `result-track:504ecdc9f5c907c441afd598ff8ae2118ae24968b4ca2f5a44d4551cd50f9899` |
| 10 | `theorem` | [Tendsto.of_neBot_imp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-of-nebot-imp--e9389311176fa87fd8c86a01.md) | 66 | `result-track:e9389311176fa87fd8c86a01bea88cb18895ad2ef413e0c0769905a0e8e34f46` |
| 11 | `theorem` | [tendsto_top](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-top--107755761e36471aa9df7ad8.md) | 72 | `result-track:107755761e36471aa9df7ad8f4ca60f8bed15cbbf4f851ebe9e9f25652eb0faf` |
| 12 | `theorem` | [le_map_of_right_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/le-map-of-right-inverse--a02c9f6326bcbb37615049a5.md) | 74 | `result-track:a02c9f6326bcbb37615049a5fd04942317b4e55ec2f265eeb5f798668d1d800c` |
| 13 | `theorem` | [tendsto_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-of-isempty--4d48c099d3b9119f3429b148.md) | 79 | `result-track:4d48c099d3b9119f3429b148ff71452c7ab1cefe87c7d719b1b187791ed42325` |
| 14 | `theorem` | [eventuallyEq_of_left_inv_of_right_inv](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/eventuallyeq-of-left-inv-of-right-inv--69066c075436c4511f6b7d88.md) | 82 | `result-track:69066c075436c4511f6b7d88b12e3b8626695e097b9550651e5c89872a847c98` |
| 15 | `theorem` | [tendsto_iff_comap](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iff-comap--6db6b3ce214f2f8613a68a2b.md) | 87 | `result-track:6db6b3ce214f2f8613a68a2b880055e2231dbbad54970bd6597ff8b5a77e1390` |
| 16 | `theorem` | [Tendsto.disjoint](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-disjoint--ec578ddb64bcae189ef8337d.md) | 93 | `result-track:ec578ddb64bcae189ef8337d5d12b2d7a610223ed662a5843312b7bd56594353` |
| 17 | `theorem` | [tendsto_congr'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-congr--822296ba9e541ceceea39ab5.md) | 97 | `result-track:822296ba9e541ceceea39ab54713a9b4d4246dc8de410a634e00bece018d89f8` |
| 18 | `theorem` | [Tendsto.congr'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-congr--1af193be7f1ce6c8f64c3bbe.md) | 100 | `result-track:1af193be7f1ce6c8f64c3bbe6893f15bb14d1243f167d5ba0ddc1aaad155a18b` |
| 19 | `theorem` | [tendsto_congr](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-congr--dbceb6d9599752942053526f.md) | 104 | `result-track:dbceb6d9599752942053526f0c63b852fd73fa6ba976d7832236aa8db8a3209b` |
| 20 | `theorem` | [Tendsto.congr](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-congr--478ac74e091844869fddd4ce.md) | 108 | `result-track:478ac74e091844869fddd4ce614e8672e5bf7f22bf9e5f84bc868b246ff916f8` |
| 21 | `theorem` | [tendsto_id'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-id--c67ebfe64655a062b8e96d06.md) | 112 | `result-track:c67ebfe64655a062b8e96d0611207bb90f8b3f5fb5936ed210aea09577ae6395` |
| 22 | `theorem` | [tendsto_id](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-id--83c5be0de3fa366ce87a695c.md) | 115 | `result-track:83c5be0de3fa366ce87a695c1425f28a92f0199e80dfe3f09ea60e336c2a1650` |
| 23 | `theorem` | [Tendsto.comp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-comp--207f900946e2fdde2ee63ce8.md) | 118 | `result-track:207f900946e2fdde2ee63ce8e9b23c0c8a1de4b4edaf1caf457e3e2beb4d0691` |
| 24 | `theorem` | [Tendsto.iterate](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iterate--9b870a1c40c9e217d166d430.md) | 121 | `result-track:9b870a1c40c9e217d166d430924bad624f3c17fe81faf73c67d6ac909a36701a` |
| 25 | `theorem` | [Tendsto.mono_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-mono-left--dee180bae13530b8927d34bd.md) | 126 | `result-track:dee180bae13530b8927d34bdd43b75a5a4cab24a1ab14ba5516bbddd23ed4a43` |
| 26 | `theorem` | [Tendsto.mono_right](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-mono-right--64a05defc54e9cdb27ac684f.md) | 130 | `result-track:64a05defc54e9cdb27ac684f9d5cfe6dc522df6447203f7063ba5f29a0ead1a1` |
| 27 | `theorem` | [Tendsto.neBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-nebot--e66680c91632f8e0c72baa70.md) | 134 | `result-track:e66680c91632f8e0c72baa707bc056c24d0f0e58600e6c5d987b88ef27cbb356` |
| 28 | `theorem` | [tendsto_map](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-map--b47b0cb087efe74e57d409c1.md) | 138 | `result-track:b47b0cb087efe74e57d409c14ef2d2435089de995af18161c847eac20d3dbf2c` |
| 29 | `theorem` | [tendsto_map'_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-map-iff--32b489ee34ad402dac5f12f9.md) | 142 | `result-track:32b489ee34ad402dac5f12f9aca7147feb06fc4e3daabd7ecc3b265005e20026` |
| 30 | `theorem` | [tendsto_comap](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-comap--270c9866a341ef8f0f2efbd2.md) | 148 | `result-track:270c9866a341ef8f0f2efbd2ffee8e9dedebdfe9760615eca2a91d4b13c62f3a` |
| 31 | `theorem` | [tendsto_comap_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-comap-iff--f625e4f87d3e905134ab3ecc.md) | 152 | `result-track:f625e4f87d3e905134ab3eccb782a760dc1685e39f43c0b2d33c718680a57126` |
| 32 | `theorem` | [tendsto_comap'_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-comap-iff--81e587093e0c8bcef32dd389.md) | 156 | `result-track:81e587093e0c8bcef32dd3890d23df47dfa726d87f175930951ffabdde27b1a7` |
| 33 | `theorem` | [Tendsto.of_tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-of-tendsto-comp--81940419cfceef5294a7835c.md) | 161 | `result-track:81940419cfceef5294a7835c6f7c822cdee40a3470f6d40d17a6a68311190cd9` |
| 34 | `theorem` | [comap_eq_of_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/comap-eq-of-inverse--ba149ea40ca55eb55780cc25.md) | 168 | `result-track:ba149ea40ca55eb55780cc25aeaf5985b040d331879a4bdfb6164cdfc49239ce` |
| 35 | `theorem` | [map_eq_of_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/map-eq-of-inverse--6d3a5abd2741e5797be7532a.md) | 173 | `result-track:6d3a5abd2741e5797be7532a235e760370e2f1cf00360391e2b8defa4b6d5a99` |
| 36 | `theorem` | [tendsto_inf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-inf--eeb4a32de42abe985de76d73.md) | 178 | `result-track:eeb4a32de42abe985de76d73ef5fd012230b4bb8585efd6c3aa542345fa048ec` |
| 37 | `theorem` | [tendsto_inf_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-inf-left--3de09039327e640399acabda.md) | 182 | `result-track:3de09039327e640399acabdac9dde42f59cdeda225454b4e859ca0fa8afbfe8e` |
| 38 | `theorem` | [tendsto_inf_right](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-inf-right--35734aafaf9f2d8c1491c0ef.md) | 186 | `result-track:35734aafaf9f2d8c1491c0efe567ef385fa2c22827fa2f56c244b030a77a33d9` |
| 39 | `theorem` | [Tendsto.inf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-inf--9156aa98ae047dd3c70a305e.md) | 190 | `result-track:9156aa98ae047dd3c70a305e81dafa0f4b231e43829ede62fb3197241595dc45` |
| 40 | `theorem` | [tendsto_iInf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iinf--290d0eff8cf4a6bd3822f188.md) | 195 | `result-track:290d0eff8cf4a6bd3822f18835fb6c299e44f33f3d9ade9b8f2cd589d6b7c780` |
| 41 | `theorem` | [tendsto_iInf'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iinf--7f3f465e10d29b1fc3720cb5.md) | 199 | `result-track:7f3f465e10d29b1fc3720cb504c6f31c7dc56179d156399af708ed2b25967718` |
| 42 | `theorem` | [tendsto_iInf_iInf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-iinf-iinf--54ae2a0c3f0a9fe8c730cf26.md) | 203 | `result-track:54ae2a0c3f0a9fe8c730cf26944bf35f0d8ec6c83391669d54cf83d05125bd46` |
| 43 | `theorem` | [tendsto_sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-sup--6cd4e12ddc919bba2395da39.md) | 208 | `result-track:6cd4e12ddc919bba2395da395a0f3c978177fe25bd0aeaee30e40a86c0efe9b4` |
| 44 | `theorem` | [Tendsto.sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-sup--5c7e4c188f28288d024468c5.md) | 212 | `result-track:5c7e4c188f28288d024468c585e60b5d3c19bfdcdcb8927cdfc9b8eacaf69476` |
| 45 | `theorem` | [Tendsto.sup_sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-sup-sup--a9c62232f5dbfb399257e791.md) | 215 | `result-track:a9c62232f5dbfb399257e79139661f4768466b5d75c4613a72cdf606a6ad10d5` |
| 46 | `theorem` | [tendsto_iSup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-isup--bfba0085f56021e049001e2a.md) | 220 | `result-track:bfba0085f56021e049001e2ae1a3bf3c051eaafb2ef6257f8ee9193daaf6fb7a` |
| 47 | `theorem` | [tendsto_iSup_iSup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-isup-isup--ee812645342c3d280011041b.md) | 223 | `result-track:ee812645342c3d280011041bbfc13036738e4143b139bc2a626034181af1baca` |
| 48 | `theorem` | [tendsto_principal](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-principal--54d70289888004c3153ef960.md) | 227 | `result-track:54d70289888004c3153ef960045d980e62a5d55d901cd5236e0195b6b95d4358` |
| 49 | `theorem` | [tendsto_principal_principal](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-principal-principal--fdb9636d2bf7f866d18c806a.md) | 231 | `result-track:fdb9636d2bf7f866d18c806a223a9f5548e23d2551cb631dc09f952692d50b35` |
| 50 | `theorem` | [tendsto_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-pure--c91ac3110ae214bec8398c1b.md) | 235 | `result-track:c91ac3110ae214bec8398c1b0d5035f515fd5665086f3cc44ecc49f6071e8136` |
| 51 | `theorem` | [tendsto_pure_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-pure-pure--48b7c705202f45eb573fde8e.md) | 239 | `result-track:48b7c705202f45eb573fde8e6b2494abd7c860c98bcd1af68898b0a96b28b873` |
| 52 | `theorem` | [tendsto_const_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-const-pure--25517cb6e40797f546ecb2d4.md) | 242 | `result-track:25517cb6e40797f546ecb2d4c0d0bc7e8baccbf74b3eaaede69b3f98a5f9a711` |
| 53 | `theorem` | [pure_le_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/pure-le-iff--74bb6c3c45d38155878ce63c.md) | 245 | `result-track:74bb6c3c45d38155878ce63ce2e53c7e8f6a8253c1acbfd593dcc153bbf3b7bd` |
| 54 | `theorem` | [tendsto_pure_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-pure-left--f664c803fe4022abc95b07ca.md) | 248 | `result-track:f664c803fe4022abc95b07cafa8eaadde01a8da4fc839a77314db979dac43ba0` |
| 55 | `theorem` | [map_inf_principal_preimage](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/map-inf-principal-preimage--345aa190cccff5cbad03f125.md) | 253 | `result-track:345aa190cccff5cbad03f125bea2a004034b80e2f26f3b7df966e92fb93c5c43` |
| 56 | `theorem` | [Tendsto.not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-not-tendsto--cfa4a41a8350f50926e203f5.md) | 259 | `result-track:cfa4a41a8350f50926e203f53d454f0b83b3934448dfe9924b974ff4c7a9159d` |
| 57 | `theorem` | [Tendsto.if](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-if--a2c88b17afa74fc362816ebb.md) | 263 | `result-track:a2c88b17afa74fc362816ebbbc04150e814d69a3970a5a0b388e7ab40066e341` |
| 58 | `theorem` | [Tendsto.if'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-if--1a4eb0e33769a66a223c00ac.md) | 274 | `result-track:1a4eb0e33769a66a223c00ac29ec190e7d60738b67a31b802a64e42d21bafc5d` |
| 59 | `theorem` | [Tendsto.piecewise](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/tendsto-piecewise--1cafd2f23519b9450d06d0e5.md) | 279 | `result-track:1cafd2f23519b9450d06d0e54c76aea8b4076bdfdff10d4c755220ecc052e871` |
| 60 | `theorem` | [Set.MapsTo.tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/set-mapsto-tendsto--2c0d23ba25de3e07055a2946.md) | 286 | `result-track:2c0d23ba25de3e07055a29461026d69746d551a67f2186f9297f54cae644eccf` |
| 61 | `theorem` | [Filter.EventuallyEq.comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/filter-eventuallyeq-comp-tendsto--3f334d93cc18eb81a23c7da6.md) | 290 | `result-track:3f334d93cc18eb81a23c7da62346e9e5058fcdb3da6587d2659b0c807a7f3f1d` |
| 62 | `theorem` | [Filter.map_mapsTo_Iic_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/filter-map-mapsto-iic-iff-tendsto--469844fab72e4776105850bb.md) | 297 | `result-track:469844fab72e4776105850bba7b7d58108d17cf8e96a5980474d85f5373875fc` |
| 63 | `theorem` | [Filter.map_mapsTo_Iic_iff_mapsTo](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/declarations/filter-map-mapsto-iic-iff-mapsto--cac5dd64a46c0e7bf660916a.md) | 303 | `result-track:cac5dd64a46c0e7bf660916a8b89c7f0748cf70b767fb7fe0a7527b2e19766d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
