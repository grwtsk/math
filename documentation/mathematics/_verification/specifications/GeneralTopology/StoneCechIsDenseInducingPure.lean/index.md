# Verification target: Stone Cech Is Dense Inducing Pure

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

[Module and every result](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/index.md) · [Full source](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ultrafilterBasis](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilterbasis.md) | 50 | `declaration-track:16c27f8be92d7187c5ebd7f362f48e347f9d607f9744847f0cad20b3bbd6dc94` |
| 2 | `instance` | [Ultrafilter.topologicalSpace](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-topologicalspace.md) | 55 | `declaration-track:7a67639593bfedf9029b9d09b2cd4d11fbf81f3c50c0496df675384dcc51d9ee` |
| 3 | `theorem` | [ultrafilterBasis_is_basis](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilterbasis-is-basis.md) | 58 | `result-track:12eb5f2ea09020d9abcce20b8b76f98b83f134e09ec5f395f8fb01227680be54` |
| 4 | `theorem` | [ultrafilter_isOpen_basic](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-isopen-basic.md) | 67 | `result-track:0b3039cee6e756a4c309f968ebb8b8256d068bdf1a292f639ce7e1a8ea9fbb4b` |
| 5 | `theorem` | [ultrafilter_isClosed_basic](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-isclosed-basic.md) | 71 | `result-track:cb907a10b9013395e37f7fb9bfb15191121df9870f851e131ce2a03b4897c5d4` |
| 6 | `theorem` | [ultrafilter_converges_iff](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-converges-iff.md) | 79 | `result-track:5da66826bbe32ec4a620f0a524950d23c8ed4bb4c3159c692ef9c6c96c65fd3f` |
| 7 | `instance` | [ultrafilter_compact](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-compact.md) | 91 | `declaration-track:2d08cd685301a6fbc9f2bf4ef1eb775d893d4c3997188df422622f56f87b2863` |
| 8 | `instance` | [Ultrafilter.t2Space](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-t2space.md) | 95 | `declaration-track:a3b7be431a470276c9d716e06f85155e39d5739f800ba165182aada4bb743162` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-8.md) | 101 | `declaration-track:c963b80ebae4d200762681aad9bf8aa007c2c5ee076e28daba8a83b37a4a58f1` |
| 10 | `theorem` | [Ultrafilter.tendsto_pure_self](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-tendsto-pure-self.md) | 113 | `result-track:09e4b4207ab60bba7860793b75ae6f143a32f05b3b5e12f7ff69110d83ab1347` |
| 11 | `theorem` | [ultrafilter_comap_pure_nhds](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-comap-pure-nhds.md) | 119 | `result-track:469e7e6065c5dce7d87632a3f990a9b2106b0b3b82d70abeb8901101e7d7cb06` |
| 12 | `theorem` | [ultrafilter_pure_injective](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-pure-injective.md) | 130 | `result-track:38c4fd8cf222267306b94dcff65c5c2981f02ff23d1979f82edf6102d0700d1c` |
| 13 | `theorem` | [denseRange_pure](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/denserange-pure.md) | 139 | `result-track:f22b08090cc021d6e4043847213b7aca3f1d824039ff649021956d0bc5a8203b` |
| 14 | `theorem` | [induced_topology_pure](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/induced-topology-pure.md) | 144 | `result-track:494c5c003b70461d0438a6bdc7f54d6cb3668870db555d55410c948a0344dcfa` |
| 15 | `theorem` | [isDenseInducing_pure](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/isdenseinducing-pure.md) | 152 | `result-track:adb8c12d05ac35d08289c6e292788e17fb2a9d733e389bd0e348bf4c32045639` |
| 16 | `theorem` | [isDenseEmbedding_pure](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/isdenseembedding-pure.md) | 158 | `result-track:e577d0f992ac2eb0dce91c2f254bd9d2b24e755b4fe532ab7b3d4e961f1612a8` |
| 17 | `def` | [Ultrafilter.extend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-extend.md) | 175 | `declaration-track:b3f0227c3f3c12883aa3d7e2415eefcfdb83b977b20e9f3f0a3b907bd5e7eef8` |
| 18 | `theorem` | [ultrafilter_extend_extends](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-extend-extends.md) | 181 | `result-track:c9655460250c2422b39dc46680472904c468504d45a583df75acf863525d0607` |
| 19 | `theorem` | [continuous_ultrafilter_extend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/continuous-ultrafilter-extend.md) | 188 | `result-track:5f24cf19811d18778160811718af9d7b40bbd8c714e28371b66f1b5419ab619c` |
| 20 | `theorem` | [ultrafilter_extend_eq_iff](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/ultrafilter-extend-eq-iff.md) | 199 | `result-track:5e364ccc1e8a5cb03b1abb337342f6bae57c0bac31ddfb1e93f0cc9a380b390f` |
| 21 | `def` | [PreStoneCech](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecech.md) | 227 | `declaration-track:010f60b05695723c2d6881d1fa2ef9766ecd17adde642484cc1064f95fbddf1c` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-4.md) | 232 | `declaration-track:7b263bcb80883fb9afd0febe93c7f7c8b15dca630bcc4d5f8cd508193813f612` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-6.md) | 235 | `declaration-track:91ac7390c99e3b72b22f66a42a6735d43e15a5151aab7c3bdc97dc3de23766c7` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance.md) | 238 | `declaration-track:00ecb1c116ba8cfd6476e130143d053955efd93370b034ba73d99720ae16d278` |
| 25 | `def` | [preStoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecechunit.md) | 242 | `declaration-track:0870fef7eb6d002da60d9d810d0164a9192e7e2d1c4369ffcd2a93d583c4f550` |
| 26 | `theorem` | [continuous_preStoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/continuous-prestonecechunit.md) | 245 | `result-track:b7fc5cf121304b7c53fc008b3a662fdd96d2f6011620b5066ac489bd24369b54` |
| 27 | `theorem` | [denseRange_preStoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/denserange-prestonecechunit.md) | 255 | `result-track:55bb3ced1715a303d8f12faf6f22e9396e673077245f098cc09a0ae4d6fedf6a` |
| 28 | `theorem` | [preStoneCech_hom_ext](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecech-hom-ext.md) | 262 | `result-track:5ec68aca7a3a608e898a09182e2d4d9d3ad5fe988601bb7aff34905e3c89f81d` |
| 29 | `lemma` | [preStoneCechCompat](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecechcompat.md) | 272 | `result-track:ed9e8e1c883a92e5ea90c410527364dd12b8b58b9a6416e8a29285ef33849dce` |
| 30 | `def` | [preStoneCechExtend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecechextend.md) | 281 | `declaration-track:bad2bb8b3d6f92823c640b727eb8a6808d3db93ffc221bc41fd86452de44f4e3` |
| 31 | `theorem` | [preStoneCechExtend_extends](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/prestonecechextend-extends.md) | 284 | `result-track:ffacef10d2b485208d13ac07dd75d049bbcead9f7848aee54c11b875e632cf20` |
| 32 | `lemma` | [eq_if_preStoneCechUnit_eq](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/eq-if-prestonecechunit-eq.md) | 287 | `result-track:4adb484241a4a57da23e79ecde47a897b09ffb9867b16b44e54e3405d711ad7f` |
| 33 | `theorem` | [continuous_preStoneCechExtend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/continuous-prestonecechextend.md) | 300 | `result-track:b0fd8c189cc9c5a31c045a3721fa8f4641827de17fc263ea92023dc2ea73516d` |
| 34 | `def` | [StoneCech](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/stonecech.md) | 312 | `declaration-track:60f28c7fcf1e8241f5b7e670c7bb886ec396cdc35272ddae13062a0c25c9ee47` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-7.md) | 317 | `declaration-track:c548da2f21da39e0c53ed2e2196c38dc92bb5138b6211838988e39998f36ffff` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-3.md) | 320 | `declaration-track:497edd52481d6903a8c8dbaae483e544e3ca24c46db8593053692443d0f4daf4` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-5.md) | 323 | `declaration-track:7b267abc084b55e672644a2df2c7c4c361cf658e0a794b95751de5a8923a0049` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/instance-source-edition-2.md) | 326 | `declaration-track:303743fe15a826d3ab2b3ad64324ae6b3804a068598279df345f0350d95bb1e2` |
| 39 | `def` | [stoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/stonecechunit.md) | 330 | `declaration-track:7c1d0fbb1f4cb6069e20e56ca4fcf03d6da16602954315b4ce5cc649a2b9b245` |
| 40 | `theorem` | [continuous_stoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/continuous-stonecechunit.md) | 333 | `result-track:545398f22bf4b8f7befda5730d4bdef6554f3e8666e766e56add47aab12ab9e8` |
| 41 | `theorem` | [denseRange_stoneCechUnit](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/denserange-stonecechunit.md) | 338 | `result-track:44ac1990cd5db93deb43ef4631d0ffa32b2224b2e7c0c183b6c2d53484ad9a9f` |
| 42 | `theorem` | [stoneCech_hom_ext](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/stonecech-hom-ext.md) | 349 | `result-track:b911eb2142904f9eaee1c56b431c3d0c2ceca5a0d3632d0a84876e1f4d92418d` |
| 43 | `def` | [stoneCechExtend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/stonecechextend.md) | 360 | `declaration-track:a7b248ca809a94e376da8a38841759d97acf7e039489c53f503835837ff39881` |
| 44 | `theorem` | [stoneCechExtend_extends](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/stonecechextend-extends.md) | 363 | `result-track:93dd7c75966713f7b929cf50c842429c4aa9c94451f06c8816f4fb3a84f75118` |
| 45 | `theorem` | [continuous_stoneCechExtend](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/continuous-stonecechextend.md) | 368 | `result-track:08ccc260f0a8d16a0f833b378ea3eb8e5c167100ed620192633b22fa27de46e4` |
| 46 | `lemma` | [eq_if_stoneCechUnit_eq](../../../../GeneralTopology/StoneCechIsDenseInducingPure.lean/declarations/eq-if-stonecechunit-eq.md) | 371 | `result-track:df775f55ef50ef5a6ed4e8eeb1c799395607373d398d604df0e87c5271d02b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d6c6f27e9300cc2d29d77d1fdcb311df7cbf43965ea23582ca89c5801a15f4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
