# Verification target: GRWTSK.Topology.GeneralTopology.StoneCech.Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea428a12b0c1a513c2275631d0c002d000e39fd2",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea428a12b0c1a513c2275631d0c002d000e39fd2`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DenseEmbedding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ultrafilterBasis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilterbasis--ff02ca82ae9917ed4a4fa33d.md) | 58 | `declaration-track:ff02ca82ae9917ed4a4fa33dbb17976be17c73c574e27e40927f049dbbcbea0c` |
| 2 | `instance` | [Ultrafilter.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-topologicalspace--cd607c5bdaaebb356a6c7406.md) | 63 | `declaration-track:cd607c5bdaaebb356a6c7406cfaa9595bbba27234ca0d3168af89ee8e01fd8e3` |
| 3 | `theorem` | [ultrafilterBasis_is_basis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilterbasis-is-basis--8f725d5f5a58be693d77bd09.md) | 66 | `result-track:8f725d5f5a58be693d77bd0978ecc163edd9848e0b2fee026f15696da184deb1` |
| 4 | `theorem` | [ultrafilter_isOpen_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-isopen-basic--d9d8565e06d8ef2be43565be.md) | 75 | `result-track:d9d8565e06d8ef2be43565bec0ab5afa4f2427c63cca889d929e05b3b4479c99` |
| 5 | `theorem` | [ultrafilter_isClosed_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-isclosed-basic--4a1c68ba869c977441b7000b.md) | 79 | `result-track:4a1c68ba869c977441b7000bfc4b46f3987a649d40f4b169d030891effc84830` |
| 6 | `theorem` | [ultrafilter_converges_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-converges-iff--bf6cae462ce6172eb081dbc7.md) | 87 | `result-track:bf6cae462ce6172eb081dbc73ab5ec80c1c47edb98d95f3d33e9c637bda6ac99` |
| 7 | `instance` | [ultrafilter_compact](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-compact--a3d345d4d367b675df9fa556.md) | 99 | `declaration-track:a3d345d4d367b675df9fa5565691973e9f5c0883ad39de055c0ce0ad009b8a2e` |
| 8 | `instance` | [Ultrafilter.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-t2space--25d5e0b79f9e417526dbc616.md) | 103 | `declaration-track:25d5e0b79f9e417526dbc616edafd001df87f1af0258c887cc8975bd7a8dc4d2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--5cad600de589eef177c20b61.md) | 109 | `declaration-track:5cad600de589eef177c20b612e9792885ec36e1c454269c34db98867524058f0` |
| 10 | `theorem` | [Ultrafilter.tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-tendsto-pure-self--5e0800751600ec3b44b5157b.md) | 121 | `result-track:5e0800751600ec3b44b5157b4dd812f4d30124c1dfc5f2317f25a5ae400403e3` |
| 11 | `theorem` | [ultrafilter_comap_pure_nhds](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-comap-pure-nhds--65a3d4b2d56c0fff44eea408.md) | 127 | `result-track:65a3d4b2d56c0fff44eea40886fa221f9cc8c0b096398a607d70f5ece6371ab0` |
| 12 | `theorem` | [ultrafilter_pure_injective](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-pure-injective--9c00800799be2f36117401fa.md) | 138 | `result-track:9c00800799be2f36117401fa94887af32f7ea3df949c06e27c0ef5d13aaa19c9` |
| 13 | `theorem` | [denseRange_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/denserange-pure--6c18c179799284034859ce14.md) | 147 | `result-track:6c18c179799284034859ce1477d6a62086139bf5605d47beb6e7141ddee5de30` |
| 14 | `theorem` | [induced_topology_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/induced-topology-pure--ed3d1e740687f66a288076b2.md) | 152 | `result-track:ed3d1e740687f66a288076b2a126aa92edb9a58f88f6044720d47a57a3f39e47` |
| 15 | `theorem` | [isDenseInducing_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/isdenseinducing-pure--a97e4d93d355fd5d5af75aa7.md) | 160 | `result-track:a97e4d93d355fd5d5af75aa7869b192413fe0d30258f5ec36a1ce1e0b3478649` |
| 16 | `theorem` | [isDenseEmbedding_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/isdenseembedding-pure--4001d15b55863639abcdfb6b.md) | 166 | `result-track:4001d15b55863639abcdfb6bf7ef037f1548764fdd22d8c510301850bce428b4` |
| 17 | `def` | [Ultrafilter.extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-extend--c42a912ab11079bcc306917e.md) | 183 | `declaration-track:c42a912ab11079bcc306917e22e929df1855c44e80fb9d3b57bdd381de48bb9a` |
| 18 | `theorem` | [ultrafilter_extend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-extend-extends--7e13c593b35f735d3f2b337e.md) | 189 | `result-track:7e13c593b35f735d3f2b337e07b32a7aadc3627519d56deec243972423c7506f` |
| 19 | `theorem` | [continuous_ultrafilter_extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/continuous-ultrafilter-extend--d0a501c5cfb28dc0130e87bb.md) | 196 | `result-track:d0a501c5cfb28dc0130e87bb285787dea01be582512b19be886a6883ecf68fa6` |
| 20 | `theorem` | [ultrafilter_extend_eq_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/ultrafilter-extend-eq-iff--c49d1257ce8a87c0ce352985.md) | 207 | `result-track:c49d1257ce8a87c0ce352985d6b5a90e183f90e2d35cf19b39c98d237fdba948` |
| 21 | `def` | [PreStoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecech--9a9d1c87711aa365974d74a2.md) | 235 | `declaration-track:9a9d1c87711aa365974d74a226da6c1b7fc7282208027581f72429e6da74ec91` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--44686de5be374bd3928ddcc1.md) | 240 | `declaration-track:44686de5be374bd3928ddcc1eab79a3b5f75cc3453d8bd6254c4d2ae5dfb7c14` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--214794ed2c416c8503583551.md) | 243 | `declaration-track:214794ed2c416c8503583551f00fc93ddb2c7f57946dc984998b20b8842c7861` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--b85288e55f170e685bdc2cef.md) | 246 | `declaration-track:b85288e55f170e685bdc2cef4004703809a32223ea30929d42a4043fd255c0c6` |
| 25 | `def` | [preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecechunit--27f4e566487a04767ba2c787.md) | 250 | `declaration-track:27f4e566487a04767ba2c7878708feae2c82232773f5866c4703c8c8520f66cb` |
| 26 | `theorem` | [continuous_preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/continuous-prestonecechunit--8175bcf7f2350045116f511e.md) | 253 | `result-track:8175bcf7f2350045116f511e7797d542966ca50c8ffb8f5377f118f164100bf7` |
| 27 | `theorem` | [denseRange_preStoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/denserange-prestonecechunit--bf92d1b76fcab64cc51caec2.md) | 263 | `result-track:bf92d1b76fcab64cc51caec2db01d161abdbafcf994af95ace3c5c0eb9879eb2` |
| 28 | `theorem` | [preStoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecech-hom-ext--0c292b53eb6290d24e719d04.md) | 270 | `result-track:0c292b53eb6290d24e719d04c7c3cea99c5492dfdab310a10d5795c9a8c0f3f3` |
| 29 | `lemma` | [preStoneCechCompat](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecechcompat--2a981249ec9de134f3b38baa.md) | 280 | `result-track:2a981249ec9de134f3b38baa1e62d8cdc4ed219e09d90049980b0291fd95d2d7` |
| 30 | `def` | [preStoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecechextend--9b6cfdfb0eca2300fa98046a.md) | 289 | `declaration-track:9b6cfdfb0eca2300fa98046ab593a82620f37a9643fabfb163df474f94d42a85` |
| 31 | `theorem` | [preStoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/prestonecechextend-extends--651a82224a81d6a9c7642430.md) | 292 | `result-track:651a82224a81d6a9c76424306d911fea7bb620248101333dbe45d46c4897c0bd` |
| 32 | `lemma` | [eq_if_preStoneCechUnit_eq](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/eq-if-prestonecechunit-eq--00b014fe2cc381dcd0f7c917.md) | 295 | `result-track:00b014fe2cc381dcd0f7c91700e9e39f22184a8764992ffb16ae2eb69eeeba30` |
| 33 | `theorem` | [continuous_preStoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/continuous-prestonecechextend--c76789459994a9037d59dfa7.md) | 308 | `result-track:c76789459994a9037d59dfa712d8d04ff6ef3d899b28f0fce979255a97f47bac` |
| 34 | `def` | [StoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/stonecech--fcf42765605422017e51ae5e.md) | 320 | `declaration-track:fcf42765605422017e51ae5ee734d1d4cf80149aaeaa5b29e3f8765705d4a334` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--f4c90671f67e7af611a6e56f.md) | 325 | `declaration-track:f4c90671f67e7af611a6e56f80cf1bb0fa5c45eddd083291e79f1dc55f0665b9` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--a2689053f21a66520393b199.md) | 328 | `declaration-track:a2689053f21a66520393b199503f25b8bed0aee2e185cf82cd1dab8f5bbb079a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--9d85c4ca76227943fdd1415e.md) | 331 | `declaration-track:9d85c4ca76227943fdd1415ea776a909f825a78900571db3536804eb2df13967` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/instance--80714249bf43cf8957e6fac3.md) | 334 | `declaration-track:80714249bf43cf8957e6fac3e74dbf428df2a16e3b61f733c1dae535fb6d17ce` |
| 39 | `def` | [stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/stonecechunit--a29f5ec65c4375f1afb29a4b.md) | 338 | `declaration-track:a29f5ec65c4375f1afb29a4b8ee5ceeaa55b149fd2c7aa3329c0478c7270b4d1` |
| 40 | `theorem` | [continuous_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/continuous-stonecechunit--b9958048640f1eaa7f159d6b.md) | 341 | `result-track:b9958048640f1eaa7f159d6bd4231fc6339e06c0f4cc8187ae787d8e23b4641c` |
| 41 | `theorem` | [denseRange_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/denserange-stonecechunit--85b44d8eb8977abaa647a0c6.md) | 346 | `result-track:85b44d8eb8977abaa647a0c67698a849b46e86d1369bf6dbd01e69a5ab5ecf30` |
| 42 | `theorem` | [stoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/stonecech-hom-ext--925d075b840f82385a663ead.md) | 357 | `result-track:925d075b840f82385a663ead76c42a994e23197b74933eb1b0ca10746094958e` |
| 43 | `def` | [stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/stonecechextend--530296e5c62b53e855b9e440.md) | 368 | `declaration-track:530296e5c62b53e855b9e4409c53cfb3acff98b4f455452cfad2d68bc867ac15` |
| 44 | `theorem` | [stoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/stonecechextend-extends--2e26974bb896c287a167c73d.md) | 371 | `result-track:2e26974bb896c287a167c73d6544d97804d1fdd2722c086fdcd9ee3d9ad81e06` |
| 45 | `theorem` | [continuous_stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/continuous-stonecechextend--2ac30f370b90b6f0bc389b51.md) | 376 | `result-track:2ac30f370b90b6f0bc389b5138f2e012280fcc903ffb1b72f6b30488ab6335bb` |
| 46 | `lemma` | [eq_if_stoneCechUnit_eq](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/declarations/eq-if-stonecechunit-eq--fc9916c61487c6b295a23373.md) | 379 | `result-track:fc9916c61487c6b295a2337397ce99f9697a6dc7587438a009bd7e773fc853e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
