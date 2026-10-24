# Verification target: GRWTSK.Topology.GeneralTopology.StoneCech.Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `490dc97ef1d481089e0c432496b0b30d41fc9c03`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DenseEmbedding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ultrafilterBasis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilterbasis--16c27f8be92d7187c5ebd7f3.md) | 50 | `declaration-track:16c27f8be92d7187c5ebd7f362f48e347f9d607f9744847f0cad20b3bbd6dc94` |
| 2 | `instance` | [Ultrafilter.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-topologicalspace--7a67639593bfedf9029b9d09.md) | 55 | `declaration-track:7a67639593bfedf9029b9d09b2cd4d11fbf81f3c50c0496df675384dcc51d9ee` |
| 3 | `theorem` | [ultrafilterBasis_is_basis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilterbasis-is-basis--12eb5f2ea09020d9abcce20b.md) | 58 | `result-track:12eb5f2ea09020d9abcce20b8b76f98b83f134e09ec5f395f8fb01227680be54` |
| 4 | `theorem` | [ultrafilter_isOpen_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-isopen-basic--0b3039cee6e756a4c309f968.md) | 67 | `result-track:0b3039cee6e756a4c309f968ebb8b8256d068bdf1a292f639ce7e1a8ea9fbb4b` |
| 5 | `theorem` | [ultrafilter_isClosed_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-isclosed-basic--cb907a10b9013395e37f7fb9.md) | 71 | `result-track:cb907a10b9013395e37f7fb9bfb15191121df9870f851e131ce2a03b4897c5d4` |
| 6 | `theorem` | [ultrafilter_converges_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-converges-iff--5da66826bbe32ec4a620f0a5.md) | 79 | `result-track:5da66826bbe32ec4a620f0a524950d23c8ed4bb4c3159c692ef9c6c96c65fd3f` |
| 7 | `instance` | [ultrafilter_compact](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-compact--2d08cd685301a6fbc9f2bf4e.md) | 91 | `declaration-track:2d08cd685301a6fbc9f2bf4ef1eb775d893d4c3997188df422622f56f87b2863` |
| 8 | `instance` | [Ultrafilter.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-t2space--a3b7be431a470276c9d716e0.md) | 95 | `declaration-track:a3b7be431a470276c9d716e06f85155e39d5739f800ba165182aada4bb743162` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--c963b80ebae4d200762681aa.md) | 101 | `declaration-track:c963b80ebae4d200762681aad9bf8aa007c2c5ee076e28daba8a83b37a4a58f1` |
| 10 | `theorem` | [Ultrafilter.tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-tendsto-pure-self--09e4b4207ab60bba7860793b.md) | 113 | `result-track:09e4b4207ab60bba7860793b75ae6f143a32f05b3b5e12f7ff69110d83ab1347` |
| 11 | `theorem` | [ultrafilter_comap_pure_nhds](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-comap-pure-nhds--469e7e6065c5dce7d87632a3.md) | 119 | `result-track:469e7e6065c5dce7d87632a3f990a9b2106b0b3b82d70abeb8901101e7d7cb06` |
| 12 | `theorem` | [ultrafilter_pure_injective](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-pure-injective--38c4fd8cf222267306b94dcf.md) | 130 | `result-track:38c4fd8cf222267306b94dcff65c5c2981f02ff23d1979f82edf6102d0700d1c` |
| 13 | `theorem` | [denseRange_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/denserange-pure--f22b08090cc021d6e4043847.md) | 139 | `result-track:f22b08090cc021d6e4043847213b7aca3f1d824039ff649021956d0bc5a8203b` |
| 14 | `theorem` | [induced_topology_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/induced-topology-pure--494c5c003b70461d0438a6bd.md) | 144 | `result-track:494c5c003b70461d0438a6bdc7f54d6cb3668870db555d55410c948a0344dcfa` |
| 15 | `theorem` | [isDenseInducing_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/isdenseinducing-pure--adb8c12d05ac35d08289c6e2.md) | 152 | `result-track:adb8c12d05ac35d08289c6e292788e17fb2a9d733e389bd0e348bf4c32045639` |
| 16 | `theorem` | [isDenseEmbedding_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/isdenseembedding-pure--e577d0f992ac2eb0dce91c2f.md) | 158 | `result-track:e577d0f992ac2eb0dce91c2f254bd9d2b24e755b4fe532ab7b3d4e961f1612a8` |
| 17 | `def` | [Ultrafilter.extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-extend--b3f0227c3f3c12883aa3d7e2.md) | 175 | `declaration-track:b3f0227c3f3c12883aa3d7e2415eefcfdb83b977b20e9f3f0a3b907bd5e7eef8` |
| 18 | `theorem` | [ultrafilter_extend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-extend-extends--c9655460250c2422b39dc466.md) | 181 | `result-track:c9655460250c2422b39dc46680472904c468504d45a583df75acf863525d0607` |
| 19 | `theorem` | [continuous_ultrafilter_extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/continuous-ultrafilter-extend--5f24cf19811d187781608117.md) | 188 | `result-track:5f24cf19811d18778160811718af9d7b40bbd8c714e28371b66f1b5419ab619c` |
| 20 | `theorem` | [ultrafilter_extend_eq_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/ultrafilter-extend-eq-iff--5e364ccc1e8a5cb03b1abb33.md) | 199 | `result-track:5e364ccc1e8a5cb03b1abb337342f6bae57c0bac31ddfb1e93f0cc9a380b390f` |
| 21 | `def` | [PreStoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecech--010f60b05695723c2d6881d1.md) | 227 | `declaration-track:010f60b05695723c2d6881d1fa2ef9766ecd17adde642484cc1064f95fbddf1c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--7b263bcb80883fb9afd0febe.md) | 232 | `declaration-track:7b263bcb80883fb9afd0febe93c7f7c8b15dca630bcc4d5f8cd508193813f612` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--91ac7390c99e3b72b22f66a4.md) | 235 | `declaration-track:91ac7390c99e3b72b22f66a42a6735d43e15a5151aab7c3bdc97dc3de23766c7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--00ecb1c116ba8cfd6476e130.md) | 238 | `declaration-track:00ecb1c116ba8cfd6476e130143d053955efd93370b034ba73d99720ae16d278` |
| 25 | `def` | [preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecechunit--0870fef7eb6d002da60d9d81.md) | 242 | `declaration-track:0870fef7eb6d002da60d9d810d0164a9192e7e2d1c4369ffcd2a93d583c4f550` |
| 26 | `theorem` | [continuous_preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/continuous-prestonecechunit--b7fc5cf121304b7c53fc008b.md) | 245 | `result-track:b7fc5cf121304b7c53fc008b3a662fdd96d2f6011620b5066ac489bd24369b54` |
| 27 | `theorem` | [denseRange_preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/denserange-prestonecechunit--55bb3ced1715a303d8f12faf.md) | 255 | `result-track:55bb3ced1715a303d8f12faf6f22e9396e673077245f098cc09a0ae4d6fedf6a` |
| 28 | `theorem` | [preStoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecech-hom-ext--5ec68aca7a3a608e898a0918.md) | 262 | `result-track:5ec68aca7a3a608e898a09182e2d4d9d3ad5fe988601bb7aff34905e3c89f81d` |
| 29 | `lemma` | [preStoneCechCompat](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecechcompat--ed9e8e1c883a92e5ea90c410.md) | 272 | `result-track:ed9e8e1c883a92e5ea90c410527364dd12b8b58b9a6416e8a29285ef33849dce` |
| 30 | `def` | [preStoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecechextend--bad2bb8b3d6f92823c640b72.md) | 281 | `declaration-track:bad2bb8b3d6f92823c640b727eb8a6808d3db93ffc221bc41fd86452de44f4e3` |
| 31 | `theorem` | [preStoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/prestonecechextend-extends--ffacef10d2b485208d13ac07.md) | 284 | `result-track:ffacef10d2b485208d13ac07dd75d049bbcead9f7848aee54c11b875e632cf20` |
| 32 | `lemma` | [eq_if_preStoneCechUnit_eq](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/eq-if-prestonecechunit-eq--4adb484241a4a57da23e79ec.md) | 287 | `result-track:4adb484241a4a57da23e79ecde47a897b09ffb9867b16b44e54e3405d711ad7f` |
| 33 | `theorem` | [continuous_preStoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/continuous-prestonecechextend--b0fd8c189cc9c5a31c045a37.md) | 300 | `result-track:b0fd8c189cc9c5a31c045a3721fa8f4641827de17fc263ea92023dc2ea73516d` |
| 34 | `def` | [StoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/stonecech--60f28c7fcf1e8241f5b7e670.md) | 312 | `declaration-track:60f28c7fcf1e8241f5b7e670c7bb886ec396cdc35272ddae13062a0c25c9ee47` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--c548da2f21da39e0c53ed2e2.md) | 317 | `declaration-track:c548da2f21da39e0c53ed2e2196c38dc92bb5138b6211838988e39998f36ffff` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--497edd52481d6903a8c8dbaa.md) | 320 | `declaration-track:497edd52481d6903a8c8dbaae483e544e3ca24c46db8593053692443d0f4daf4` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--7b267abc084b55e672644a2d.md) | 323 | `declaration-track:7b267abc084b55e672644a2df2c7c4c361cf658e0a794b95751de5a8923a0049` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/instance--303743fe15a826d3ab2b3ad6.md) | 326 | `declaration-track:303743fe15a826d3ab2b3ad64324ae6b3804a068598279df345f0350d95bb1e2` |
| 39 | `def` | [stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/stonecechunit--7c1d0fbb1f4cb6069e20e56c.md) | 330 | `declaration-track:7c1d0fbb1f4cb6069e20e56ca4fcf03d6da16602954315b4ce5cc649a2b9b245` |
| 40 | `theorem` | [continuous_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/continuous-stonecechunit--545398f22bf4b8f7befda573.md) | 333 | `result-track:545398f22bf4b8f7befda5730d4bdef6554f3e8666e766e56add47aab12ab9e8` |
| 41 | `theorem` | [denseRange_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/denserange-stonecechunit--44ac1990cd5db93deb43ef46.md) | 338 | `result-track:44ac1990cd5db93deb43ef4631d0ffa32b2224b2e7c0c183b6c2d53484ad9a9f` |
| 42 | `theorem` | [stoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/stonecech-hom-ext--b911eb2142904f9eaee1c56b.md) | 349 | `result-track:b911eb2142904f9eaee1c56b431c3d0c2ceca5a0d3632d0a84876e1f4d92418d` |
| 43 | `def` | [stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/stonecechextend--a7b248ca809a94e376da8a38.md) | 360 | `declaration-track:a7b248ca809a94e376da8a38841759d97acf7e039489c53f503835837ff39881` |
| 44 | `theorem` | [stoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/stonecechextend-extends--93dd7c75966713f7b929cf50.md) | 363 | `result-track:93dd7c75966713f7b929cf50c842429c4aa9c94451f06c8816f4fb3a84f75118` |
| 45 | `theorem` | [continuous_stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/continuous-stonecechextend--08ccc260f0a8d16a0f833b37.md) | 368 | `result-track:08ccc260f0a8d16a0f833b378ea3eb8e5c167100ed620192633b22fa27de46e4` |
| 46 | `lemma` | [eq_if_stoneCechUnit_eq](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/declarations/eq-if-stonecechunit-eq--df775f55ef50ef5a6ed4e8ee.md) | 371 | `result-track:df775f55ef50ef5a6ed4e8eeb1c799395607373d398d604df0e87c5271d02b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
