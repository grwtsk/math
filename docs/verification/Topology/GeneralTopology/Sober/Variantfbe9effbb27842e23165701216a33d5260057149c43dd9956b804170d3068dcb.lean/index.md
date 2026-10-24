# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee857204b492f7584f2a6a84a41d5a01e710c665",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee857204b492f7584f2a6a84a41d5a01e710c665`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint--4b8927804ff365aa456c2423.md) | 43 | `declaration-track:4b8927804ff365aa456c24238f771626d594443f7868cbc793ab271e6275d5d9` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-def--b47a9182cededaed3efc7f47.md) | 46 | `result-track:b47a9182cededaed3efc7f471bb98f157591ba7ac303e9ba6a40a51cf89108de` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-def--6df21c5a159242e9c49e6ed5.md) | 49 | `result-track:6df21c5a159242e9c49e6ed50718bb15ca44e85be213a7beb80ebe8a89426a1d` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-closure--b22519d0114546f8aeb72954.md) | 53 | `result-track:b22519d0114546f8aeb72954d4afbe324fe1ae8adfe573530555254e88a47e67` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-iff-specializes--d275a97ce044803ee8d146b3.md) | 58 | `result-track:d275a97ce044803ee8d146b3d0e94e148089bc7672aff6839a50e5fb17d56cfa` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/specializes-iff-mem--eed68568a5e8c70bc040497e.md) | 63 | `result-track:eed68568a5e8c70bc040497e382943e334eafaabbf4bac5fc2c0502fc924aaff` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/specializes--0e3740bb3a0c73260e368cc1.md) | 66 | `result-track:0e3740bb3a0c73260e368cc12cea14cf4ba2a8ce77c42d6cc09cffa0da3c1d2b` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/mem--a1e6da5b7a22254861234329.md) | 69 | `result-track:a1e6da5b7a222548612343296a3615d570e44799a250619315ba243c33ad7b85` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isclosed--24014157078172e42983f383.md) | 72 | `result-track:24014157078172e42983f3836cdd3d44d180d0fe4f663f4076a41f849e13da81` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible--f3ed738502d679c3fa5e60cd.md) | 75 | `result-track:f3ed738502d679c3fa5e60cd4dbb8ec954b61249140142151ef81a7711141f06` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/inseparable--b6d45c0c3a3f911e5806c82f.md) | 78 | `result-track:b6d45c0c3a3f911e5806c82f2c2654846670d663b8df318f878596cfe17a02be` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/eq--29921cd89741c142e0d2052d.md) | 83 | `result-track:29921cd89741c142e0d2052d74166627291d52df29037e6c65bb1f26347f4806` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/mem-open-set-iff--2ae5b5d5d14cda945151859f.md) | 86 | `result-track:2ae5b5d5d14cda945151859f7ef62a2470484ddf096053c1cb88e7b09391c887` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/disjoint-iff--d63e7cbc15fe0329901fb389.md) | 89 | `result-track:d63e7cbc15fe0329901fb3890da615d663cad15d99b031a15c973c18970210c2` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/mem-closed-set-iff--ca7c1846a63aecb29b8af951.md) | 92 | `result-track:ca7c1846a63aecb29b8af9511bbfcbe974cdd16bedf90f8e62403db3da9727b7` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/image--3613e879c99d93c472f58f1c.md) | 95 | `result-track:3613e879c99d93c472f58f1cfbfffafafad83d7b8b2335ae3ec8586062561e12` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-iff-forall-closed--912361486a05306f998a432d.md) | 101 | `result-track:912361486a05306f998a432d2e1addefa972fdf8cfca67f9bc8a7fc5fd9100a1` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/quasisober--633e99af4a99734f20e94a34.md) | 113 | `declaration-track:633e99af4a99734f20e94a3431ff538d89d12db191ad0e947925b560bb60fab8` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible-genericpoint--72a7ba0dcea595a24cff1eb2.md) | 117 | `declaration-track:72a7ba0dcea595a24cff1eb2466956ffa803d565de02cddf3e6ceea15e271095` |
| 20 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible-isgenericpoint-genericpoint-closure--49e12267ee7cdf67fbdee28c.md) | 121 | `result-track:49e12267ee7cdf67fbdee28c088104c00890d33fbf2a6c056c4768b616c5f4e9` |
| 21 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible-isgenericpoint-genericpoint--783f1deb88a05155981ccc55.md) | 126 | `result-track:783f1deb88a05155981ccc55d0856db2f871ee777c44e706975fa1ccb093500c` |
| 22 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible-genericpoint-closure-eq--13d383e19810db869f1c59ab.md) | 132 | `result-track:13d383e19810db869f1c59abef9fd697acbdb288aade13e30f5b3ec87142f0dd` |
| 23 | `theorem` | [IsIrreducible.closure_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isirreducible-closure-genericpoint--c732971920282a95117f2a7b.md) | 136 | `result-track:c732971920282a95117f2a7b61f9b42bac277290532c4b0b25d9587d075b9425` |
| 24 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoint--b8f3e168d05c3423cf721809.md) | 144 | `declaration-track:b8f3e168d05c3423cf7218096852a321733b1097d6bc34954dc31d60765aed4a` |
| 25 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoint-spec--74139152ec40bc62cab93093.md) | 147 | `result-track:74139152ec40bc62cab93093566617c44d090b09cb85aff8979151f210204f8f` |
| 26 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoint-closure--d674d40e05d4ea8094fadc64.md) | 152 | `result-track:d674d40e05d4ea8094fadc64810f10dd34d959b9a6a2494b4f7bc71904a1355a` |
| 27 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoint-specializes--3e4823f4743a5a34499d1700.md) | 158 | `result-track:3e4823f4743a5a34499d1700ec8bf6e16e1b3e4d873d7421e4465fc0fb61908c` |
| 28 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/irreduciblesetequivpoints--14ae3c4bf3d5e7eda685cf6e.md) | 164 | `declaration-track:14ae3c4bf3d5e7eda685cf6e389167bde9bbbd0e1603d632d96527adf3d81f67` |
| 29 | `lemma` | [Topology.IsClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/topology-isclosedembedding-quasisober--0895e0908ca180476f66e7c2.md) | 181 | `result-track:0895e0908ca180476f66e7c2dc98f54c8d01fe14bde80e288b85e03e49acbbbd` |
| 30 | `theorem` | [Topology.IsOpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/topology-isopenembedding-quasisober--700d819a4cef24a885f63bac.md) | 191 | `result-track:700d819a4cef24a885f63bacfe8c618ec53f164efffd01fb9196ae2203db6e50` |
| 31 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/topologicalspace-isopencover-quasisober-iff-forall--a0cbfdf4b3054f299a024dac.md) | 214 | `result-track:a0cbfdf4b3054f299a024dacbe00880fba3a553947e98548c357d4e7654e767c` |
| 32 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/topologicalspace-isopencover-quasisober--7888c45084140c521d0ce7f7.md) | 231 | `result-track:7888c45084140c521d0ce7f7980e30a68b89478482acda361736c24ea4fbf5c1` |
| 33 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/quasisober-of-open-cover--61f134c5f2b4266cb6927248.md) | 236 | `result-track:61f134c5f2b4266cb6927248cf47a596b31147afddf9543b80d4e22e30a5c101` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/instance--5d9db7acd46f8145fb7cc440.md) | 242 | `declaration-track:5d9db7acd46f8145fb7cc44035c5e10b5e9456884b560b6b0a7c22c1cdcabb70` |
| 35 | `def` | [genericPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoints--82d1d9393a5cbadb1d109300.md) | 253 | `declaration-track:82d1d9393a5cbadb1d1093006545b971be008fc6fd49c6401857a8cde2f90120` |
| 36 | `def` | [component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/component--f746891cb8e7a14d70ff5d18.md) | 258 | `declaration-track:f746891cb8e7a14d70ff5d1861f1d8c9ed304d96c240f79e3c8332d89a254598` |
| 37 | `lemma` | [isGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint--30a08314830c40519b468904.md) | 261 | `result-track:30a08314830c40519b468904a5a09bd8704c6222c5aa0e83e56fc392dec8ecd4` |
| 38 | `lemma` | [component_injective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/component-injective--e1d8aa84dcc9a5177598db80.md) | 263 | `result-track:e1d8aa84dcc9a5177598db807b1bc2692d441921dcc122c9b5fc9fc15b4ed308` |
| 39 | `def` | [ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/ofcomponent--37f1e0065a2edd032235a99d.md) | 268 | `declaration-track:37f1e0065a2edd032235a99d1284e8b87727aa25143dd1cae6d7378f930a293d` |
| 40 | `lemma` | [isGenericPoint_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/isgenericpoint-ofcomponent--d78531bdee0e641c90e9bb20.md) | 272 | `result-track:d78531bdee0e641c90e9bb207fad72097d4de90cf5ceb2691237580389a4f03f` |
| 41 | `lemma` | [component_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/component-ofcomponent--54a9452eb42484e21b207f4a.md) | 277 | `result-track:54a9452eb42484e21b207f4a558aa0f634dc291269bf6bc9156c00b81898c512` |
| 42 | `lemma` | [ofComponent_component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/ofcomponent-component--8b1095a7343c72b147fe09ae.md) | 282 | `result-track:8b1095a7343c72b147fe09ae098493661ebb4c55c101824bf2f5ecbd23ea79fd` |
| 43 | `lemma` | [component_surjective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/component-surjective--9836ecb11091dc4ec9fe4861.md) | 286 | `result-track:9836ecb11091dc4ec9fe48616aa0b0cf70d4722704d71c89660f7cfbb23fdc6d` |
| 44 | `lemma` | [finite](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/finite--e68acb61002519f62044c321.md) | 289 | `result-track:e68acb61002519f62044c3215bee88d8ba501b70b94dd434bee84bf00575df19` |
| 45 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/equiv--c4240d707da7e9f2d70e525a.md) | 295 | `declaration-track:c4240d707da7e9f2d70e525ae5e67450d2b8cf0f900d1ec030124f12b552a0d0` |
| 46 | `lemma` | [closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/closure--9b7fa77d074226d6570a39e1.md) | 298 | `result-track:9b7fa77d074226d6570a39e1853b29f9711b9f90dbf6d2a4217ef65736fa1a15` |
| 47 | `lemma` | [genericPoints_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/declarations/genericpoints-eq-singleton--878f2b9ac11d81a13f43a21f.md) | 306 | `result-track:878f2b9ac11d81a13f43a21f430f8759fab821b30a9cdc8704388283d309d21e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
