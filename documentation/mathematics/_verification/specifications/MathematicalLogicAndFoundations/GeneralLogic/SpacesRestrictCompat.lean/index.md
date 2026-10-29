# Verification target: Spaces Restrict Compat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "312c27b8eb7e97a47c96e192e8d0eddcf4cb1a5c",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant3ed1b663f73407b2807f430afdb0fc0944443832325ae4bbfc0425ed81cf6025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `312c27b8eb7e97a47c96e192e8d0eddcf4cb1a5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant3ed1b663f73407b2807f430afdb0fc0944443832325ae4bbfc0425ed81cf6025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant3ed1b663f73407b2807f430afdb0fc0944443832325ae4bbfc0425ed81cf6025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Payload](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/payload.md) | 29 | `declaration-track:bac06dc72d5d4fdb77344610b4e587fb6c14f4ea313f0377d66d9b96aee02231` |
| 2 | `abbrev` | [Frame](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/frame.md) | 35 | `declaration-track:c885101fa7ccee43996a21ac370dbd1f722d8888cb94b2800c9ccc0d4c9861db` |
| 3 | `abbrev` | [ContinueStack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/continuestack.md) | 37 | `declaration-track:7ff6e577de8235123cf52780367b46446959d7d132e7cfdddaa2f6d0a54ff30d` |
| 4 | `abbrev` | [ExitStack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exitstack.md) | 39 | `declaration-track:b772788f612a5b4da7ac0b16f12924f911547bfb839bd6691c33e8602a9b969d` |
| 5 | `structure` | [Table](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/table.md) | 42 | `declaration-track:24f335fbad9a151c56fca9b92cea2cb5f90fba6db0fcc3d74874553f6f828e59` |
| 6 | `def` | [map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/map.md) | 53 | `declaration-track:2682c2b0e5e50d0429ec41b5106d04f5a5236aa77dccd8cef6c3f17867374df0` |
| 7 | `theorem` | [map_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/map-id.md) | 58 | `result-track:3cf2128c7f8302f10353632b887014801eb14f74dd972a0e74468de6650a8456` |
| 8 | `theorem` | [map_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/map-comp.md) | 59 | `result-track:3f363d90836a8a5b6b8ade8eef135a7b8ce86eb997080f314a53715bf91d2c26` |
| 9 | `theorem` | [map_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/map-injective.md) | 62 | `result-track:44ad3f416cf016bba0583683bbdf29f2089b3b7e1ad8088a50afa55922c2ae68` |
| 10 | `theorem` | [map_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/map-surjective.md) | 67 | `result-track:06f44ed376b348f6a7f44544a73d2437df25faf4c164d03d85e9e01035c103f3` |
| 11 | `def` | [mapFrame](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapframe.md) | 80 | `declaration-track:4274b127a230e5cc8799326f5d5665ad650ac0e1034dd3a34bada25f5df17976` |
| 12 | `def` | [mapContinue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapcontinue.md) | 84 | `declaration-track:f05255d52694bab314208d3f1c398bc9354cd852360c56ee06ba87cd64dfcca9` |
| 13 | `def` | [mapExit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapexit.md) | 88 | `declaration-track:2380ecfa25043e2bd8e97e895b3f7b95cf986250a498ca1af5a07ed61d404dcc` |
| 14 | `theorem` | [mapFrame_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapframe-id.md) | 91 | `result-track:a8b08248c7dd64058da77817d80719df0a7323e74abb320032d3078951db63b2` |
| 15 | `theorem` | [mapFrame_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapframe-comp.md) | 94 | `result-track:092f9c2ffa7543cca5ae91e39e2ad4b9090bec3fcec51465cb3e7aff4fb196e6` |
| 16 | `theorem` | [mapContinue_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapcontinue-id.md) | 98 | `result-track:3447cf15d1762e96a31fd78ddd6a2153855acb899cebf3172d35362012ba8139` |
| 17 | `theorem` | [mapContinue_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapcontinue-comp.md) | 104 | `result-track:a1d7dbd24c4a85d8292ef8a418f9e8d9ac50cf58b70be890a25218eb5e2da4c1` |
| 18 | `theorem` | [mapExit_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapexit-id.md) | 111 | `result-track:db415313dd9785fee3a18167153d30d81f93d77e26b97c25cb6cba01439572d2` |
| 19 | `theorem` | [mapExit_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapexit-comp.md) | 114 | `result-track:1bb7303ada26be23cd1b24769d052d798aec492d8dafa961bd37bb887f85dcf8` |
| 20 | `theorem` | [mapFrame_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapframe-injective.md) | 118 | `result-track:d4e570cd1ee49b8316e64550518955bdbc9e1d4823080cc638112e9e81e0d02b` |
| 21 | `theorem` | [mapFrame_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapframe-surjective.md) | 125 | `result-track:8189c979786538a68d3a10d7dc54e6e3bea5570be58e3146040ac2a421c100c5` |
| 22 | `theorem` | [mapContinue_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapcontinue-injective.md) | 131 | `result-track:668c2f24b3cbd5203e3ceccaddc4a0c7a2c92b8253762be6865fcb2ae68595cf` |
| 23 | `theorem` | [mapContinue_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapcontinue-surjective.md) | 135 | `result-track:ed2a9bcecf72e859b32e2ecde30771f5d7ab26a75f93377be160c8991f928793` |
| 24 | `theorem` | [mapExit_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapexit-injective.md) | 139 | `result-track:71267df354752567c1ecc9c04f95b7a1028b605d5bb0eecc0763241aa74ade53` |
| 25 | `theorem` | [mapExit_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mapexit-surjective.md) | 145 | `result-track:5a61826e5665102bfc8571d48cf2eb84bc857ed364872c0824af27e16b383bbf` |
| 26 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel.md) | 155 | `declaration-track:8e0d6bdc46126e74afb41b6aa4b942e0d673e3eb1738fd66041c4ad20d36610d` |
| 27 | `theorem` | [relabel_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-id.md) | 159 | `result-track:16261a3026605b606c90502321bbd3097276d4a411c6c3bd1d5920f52ff6b8e3` |
| 28 | `theorem` | [relabel_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-comp.md) | 162 | `result-track:62c008c1c3bd0fddf6ac1389e913e63a4f00248ef016d296a99b2fa99b89543b` |
| 29 | `def` | [default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/default.md) | 167 | `declaration-track:8582f8df06d177cf88642b867ff2a212601c39c801c3678b4ef73d38043b2683` |
| 30 | `theorem` | [relabel_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-default.md) | 171 | `result-track:df509e038498cd3334716e2225d47efc6af463d73c93f0f79fd3c28b7d306776` |
| 31 | `theorem` | [relabel_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-injective.md) | 174 | `result-track:af1420a4aba4eb891650bdfc6a32cab8bf7a73f5f38227aab3e71f45098b0232` |
| 32 | `theorem` | [relabel_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-surjective.md) | 185 | `result-track:f539ee7d1aabe02559b276a7e4efe6eae966608b8dc87f3706361cb50a2c5639` |
| 33 | `theorem` | [relabel_range_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/relabel-range-iff.md) | 194 | `result-track:94ccb2bffd37ce207d725a04678a573a7fec4cbd44a18189021cf929f647fd11` |
| 34 | `def` | [slice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/slice-source-edition-2.md) | 216 | `declaration-track:b79522ce42d5ae8e4ea07c58325f2a4f89e62b710d22bc36253679c8a3512ed5` |
| 35 | `theorem` | [slice_relabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/slice-relabel.md) | 220 | `result-track:f03198ea41c2aade10017755416bfc68a0f6fbcfb699994286befc2ab1b5dbe6` |
| 36 | `def` | [Stage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stage.md) | 227 | `declaration-track:ae1498ad6ad4aab1d8cc0a2ba4e31a29fc3ff2d725b3268af4ab9595fc358c39` |
| 37 | `def` | [step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/step.md) | 233 | `declaration-track:833f2dc5825642fe502fe1a7b68a0b6f6bd671bfab57deea417aae035b230e75` |
| 38 | `theorem` | [step_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/step-injective.md) | 240 | `result-track:214f0b8574fb6f95967e1082ae78e6c88abd902c572c5c12878e17ffff9f0c04` |
| 39 | `def` | [inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/inclusion.md) | 247 | `declaration-track:7e203832f0ec39257174432ec3792f8246108c4d201c1ee49b8d54df1e46456d` |
| 40 | `theorem` | [inclusion_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/inclusion-self.md) | 250 | `result-track:31da31461529df81fdb3b06f397a1e2dde8958d191c47c2f5f96bf06f6d207b7` |
| 41 | `theorem` | [inclusion_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/inclusion-succ.md) | 253 | `result-track:bfba4b33e288a25faee8535da3bbffa8237b077a6fc0b13e5883f350ed0b5d44` |
| 42 | `theorem` | [inclusion_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/inclusion-trans.md) | 257 | `result-track:5cc60c72d2a1f3847b52295aef1e26879ac6a22487e4e690ac341ce6b7567254` |
| 43 | `instance` | [stageDirectedSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagedirectedsystem.md) | 261 | `declaration-track:38b8817f3f765c3a5f1eb5fa51265998ac495c220d529dc36991436347bf3afb` |
| 44 | `theorem` | [inclusion_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/inclusion-injective.md) | 266 | `result-track:b6e50aaaf3f75492816fcd67e431b14aeaaf8883aca263a7a984ebf4f468952a` |
| 45 | `instance` | [functionFunLike](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/functionfunlike.md) | 276 | `declaration-track:f38ac0ff097520c2d67dbdd29dd908fd6f7ff78d7d9cb84749a781e4fb5dd13f` |
| 46 | `instance` | [stageCoeDirectedSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagecoedirectedsystem.md) | 280 | `declaration-track:8b065c103c1b13578b4b9569fa475d0974fc827c876a53383a5c4724722292dc` |
| 47 | `abbrev` | [Minus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/minus.md) | 286 | `declaration-track:fcfa9a6978dc6311d13f7e0f5eadc503f2c8301f5fac11e2c1967dfc2e1e99c4` |
| 48 | `abbrev` | [Plus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/plus.md) | 289 | `declaration-track:6b835099190fa124553cb2c8e0e12ac1291bf3ffaa0f010f7bb054d723599a0a` |
| 49 | `def` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed.md) | 293 | `declaration-track:178f12b43331d335363f444e9e597a3f54f307e7571ed4cfa257d84661e88eaf` |
| 50 | `theorem` | [embed_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed-injective.md) | 296 | `result-track:35cf8523b193e0d7adbeb202999fc65569a12701b28a27d17e3c3a8e3e8d4b86` |
| 51 | `theorem` | [embed_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed-inclusion.md) | 299 | `result-track:6ff57fab941f05014e07720687a6da3bbf7c80378cafc20dd79f31a237ff67e2` |
| 52 | `theorem` | [embed_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed-step.md) | 303 | `result-track:1f6283890e369c69b8e77ebcfd1530d2f62c39f516287ac44573bc589183c592` |
| 53 | `theorem` | [exists_embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-embed.md) | 307 | `result-track:4353fc7e7ff83f944faa3edacace4357761c72f23cb0b48636de1da6d6ff33de` |
| 54 | `theorem` | [exists_embed_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-embed-succ.md) | 311 | `result-track:3fd7fff15b04f91261bb5874b7acc9d40d58667c78b447034765fba62370887b` |
| 55 | `def` | [restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/restrict.md) | 317 | `declaration-track:b0574f2db0791288d5e163cd445fcb598b7fc819205fcad0f7efa5b38c1f6020` |
| 56 | `theorem` | [restrict_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/restrict-surjective.md) | 321 | `result-track:21cc25c573c1e76bac134b39eff7d9e983b74756af083b871c90510e117d0eb9` |
| 57 | `theorem` | [restrict_compat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/restrict-compat.md) | 324 | `result-track:99695cf685360150119404bc3c1ceaf5124a5e7d13df207041ea97d45e37ff2e` |
| 58 | `theorem` | [restrict_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/restrict-inclusion.md) | 331 | `result-track:5f84eb0693eee28a715be520089a4a381c58cc90d14cd73bf3c6655baca20828` |
| 59 | `def` | [stageBehavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagebehavior.md) | 340 | `declaration-track:875a35c2235e12335a4fdeb3cce957d58fe0e5f321471013005441177819aeed` |
| 60 | `theorem` | [stageBehavior_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagebehavior-injective.md) | 345 | `result-track:7739b984e0e0ab232b962d4f48f0933345822d96f8f2900b9f5f15419285e1ab` |
| 61 | `theorem` | [stageBehavior_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagebehavior-step.md) | 350 | `result-track:b283e7addfb265ce85156add4183aefc1c6d8ba68fa4a28df6e7c0505d713e32` |
| 62 | `theorem` | [stageBehavior_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/stagebehavior-inclusion.md) | 361 | `result-track:3ded534d609a4a61953acf3acaa70b9f47dee7d04e06ab0b581ac4417389cefd` |
| 63 | `def` | [behavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior.md) | 371 | `declaration-track:17992fa96e33bfd6ae0e1fa7b9557f6aa1d410a7d885693b239ba88a3f76b3fc` |
| 64 | `theorem` | [behavior_embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior-embed.md) | 375 | `result-track:eb8fe2994dfb6683474da730fe9cf7e862d4db8a777924c2c6222f07eec838ca` |
| 65 | `theorem` | [behavior_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior-injective.md) | 379 | `result-track:9cf5a7a1e5294b484e906823776831ba290e436c7fba5b9ac08ae95dc0a9730c` |
| 66 | `def` | [plusDefault](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/plusdefault.md) | 384 | `declaration-track:71051b4f2716d5f44b4fcf0904a89cfcc989567aa18e68a69a028e97234226bc` |
| 67 | `def` | [minusDefault](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/minusdefault.md) | 387 | `declaration-track:4f56028dfed481fd7bc71f43e56f16adf06b29143a7b9b9954b4face368ee0ab` |
| 68 | `theorem` | [behavior_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior-default.md) | 390 | `result-track:a214f2d8b98d165a4b04e2bd201070e7d71c831f1e3ac57558423b044596ff07` |
| 69 | `theorem` | [behavior_range_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior-range-iff.md) | 395 | `result-track:3a5e8904d2d9fb96a07796cc17d5cd787c7c4a35f4f1920cdabddc4fce052ed1` |
| 70 | `theorem` | [slice_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/slice-range.md) | 410 | `result-track:fc513cff62a30649a2e96c329271e549fc64fd84722609b708b40f78b89ef7ad` |
| 71 | `def` | [minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/minusslice.md) | 417 | `declaration-track:1db67b4230c877e1ad6c67b5e1decc8800725b86353dbe007b3c80edb936061a` |
| 72 | `theorem` | [behavior_minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/behavior-minusslice.md) | 420 | `result-track:3e08af4306e9ce2e289c5c9fece8a4cc5c92cdfc911701ffe9df5b6429780b91` |
| 73 | `structure` | [Schema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/schema.md) | 438 | `declaration-track:7aefe92598e344582959360313b11a1910414d3e353c0235e387689668fa604b` |
| 74 | `inductive` | [Path](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/path.md) | 450 | `declaration-track:ae68de5fdb850fcd469d22ba2e21914490c426b3635848b674a517dd78991ab0` |
| 75 | `inductive` | [Slot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/slot.md) | 456 | `declaration-track:8385cc40db5f7478a138ceacbceaa3069d14b7f2c61bcba2f1fa11cb6cfd5b66` |
| 76 | `inductive` | [Dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/dependency.md) | 463 | `declaration-track:0b0dfe2ea3829c9b43a7414cc1cf6cb20c1fcd584041cb6df4a91311e6bbc025` |
| 77 | `theorem` | [dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/dependency-source-edition-2.md) | 469 | `result-track:9a06ca54e47bb5154b1c797a86ae8e29faa331810bf5d2ea36fb58446684b677` |
| 78 | `abbrev` | [Parameters](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/parameters.md) | 476 | `declaration-track:771a150833f68f4f4d661d0cb69dbb86be787ad7abb108abde57310708c7e140` |
| 79 | `abbrev` | [FrameParameters](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/frameparameters.md) | 480 | `declaration-track:da77de5978aa23778ca991ff121b885e36e22f31fc68dde9647324906ac1e60b` |
| 80 | `abbrev` | [Table](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/table-source-edition-2.md) | 484 | `declaration-track:8d94ad96ee3662534f398310fae8721b0cd2c5ca9711cd290431db7a9877107d` |
| 81 | `def` | [Space](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/space.md) | 488 | `declaration-track:772727916afd9999b440b34bb3c302c9572ee932c9f97847e5411aeb0b357ce5` |
| 82 | `theorem` | [space_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/space-eq.md) | 491 | `result-track:566463a7267a836b26095965d38a127b50e38e0c999ed56db0f2ad4c8e7a850f` |
| 83 | `def` | [unfold](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/unfold.md) | 496 | `declaration-track:9bb75984510d652bbd71c2c4fc1f961d64c320a85de09b4bdf861ebcd756a22f` |
| 84 | `def` | [nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/nil.md) | 503 | `declaration-track:1c0e277d14374e32d34b44e550438aa26ec54cc434e3cee10ab2baedbe7e820b` |
| 85 | `def` | [head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/head.md) | 506 | `declaration-track:814ce97b1cdab3e3808c2a5d41d3b9f287ba3685e54ceb268f31affea45aa0d2` |
| 86 | `def` | [tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/tail.md) | 511 | `declaration-track:200c4678895be9de9d4922a7139c4d0a15b5b0d62de89a55365273382bb0b2e0` |
| 87 | `def` | [cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/cons-source-edition-2.md) | 516 | `declaration-track:ee41f8d7a7f48f7ea7d2f98a71f52d749fc00f89ad13cabc735c6b9aef910899` |
| 88 | `theorem` | [head_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/head-cons.md) | 521 | `result-track:1d6b94e28e7d4f9fc6536544e7bdbaa637c219e74b1f673510b049ce77c1d780` |
| 89 | `theorem` | [tail_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/tail-cons.md) | 523 | `result-track:dad1b2c52b6aac91c22946c152f69e50b74212fc298815a95632aeea504d6df1` |
| 90 | `theorem` | [cons_head_tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/cons-head-tail.md) | 525 | `result-track:e8d8c43b0ba63bf79e938f423a1c3fa8b64e49fae55b78b368fe3551806e0062` |
| 91 | `theorem` | [nil_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/nil-unique.md) | 530 | `result-track:96aa6a9badbc64f01dbaf5a0dc6a34c001fffb93ed5473004e52afafa36a0b16` |
| 92 | `def` | [prefixEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/prefixequiv.md) | 536 | `declaration-track:674620650b7d0a026511f8e5eb7f593917a227092e6020d67a77fce1739d10aa` |
| 93 | `def` | [distinguished](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/distinguished.md) | 564 | `declaration-track:1a335c29f18494fd238b5925879a3dc793b0460460de9141906589972d9c9e2b` |
| 94 | `theorem` | [distinguished_base](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/distinguished-base.md) | 567 | `result-track:f7d36848d43abaa995fea4e0baed3e33a7679bcacadb1643a3887f75274eb4ad` |
| 95 | `theorem` | [distinguished_next](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/distinguished-next.md) | 571 | `result-track:2ea1c01d4cefe37d3a60b7c518bb339620f23fe54e21625102025eb2bfc5a77b` |
| 96 | `def` | [InStage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/instage.md) | 585 | `declaration-track:7cc53d0618b44bd87fb98e2a75a3c229cbdc06d3a6cf36fd09391919b3e4efcf` |
| 97 | `def` | [Agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/agree.md) | 589 | `declaration-track:94f11fcbb06114bd76211e5d7aed8250a1017f9da000aefa905c73e282e06055` |
| 98 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mono.md) | 594 | `result-track:b662dc52873af8f4dc906f3b5f1bd8fa918f17fb2e1a1d154b2bcaf90a9c6a7c` |
| 99 | `theorem` | [not_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/not-zero.md) | 599 | `result-track:279aac8955841c53c535e44fc71a0bdf21a826cdf9042bd40103c00690aeba24` |
| 100 | `theorem` | [exists_stage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-stage.md) | 603 | `result-track:cce40452bd43ab2edb6297e7a46097e17c37b0148c3bf829ee58fbbef281b9d7` |
| 101 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mono-source-edition-3.md) | 610 | `result-track:cc22d9519d9db20043e7477f0881c64d9786dc72ec54875e6e6825b38e24bf21` |
| 102 | `theorem` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/refl.md) | 615 | `result-track:d7718bf2584ed4721a3d69bdc79e9b5a397ecee33a8f67420d985db8a3d8e4cb` |
| 103 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/symm.md) | 617 | `result-track:2430cfc1947d72e2c4ed2a6fae67269d49aef3a85ec5e7c914eb415c558e6b70` |
| 104 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/trans.md) | 619 | `result-track:3dc36f01d46e5e595b2714541bc7564941d3e80dc9e1e5f43c3c85b88deec815` |
| 105 | `theorem` | [inStage_succ_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/instage-succ-iff.md) | 626 | `result-track:3c7a16f240d565a35e0cca51d5f6e41a72512f59d21855056224bd153e8d87db` |
| 106 | `theorem` | [exists_inStage_behavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-instage-behavior.md) | 641 | `result-track:adcf7e1587b05aa03efbd8ad32be900f5061ca5488b059e7ecbd3eac9dd96187` |
| 107 | `theorem` | [inStage_minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/instage-minusslice.md) | 652 | `result-track:a3e5f948705e27d92f00ec51fdaa28bf221aebc6d4cd18f3c1bef99d34aac6f2` |
| 108 | `def` | [lambdaTable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/lambdatable.md) | 666 | `declaration-track:deb412019a463f29acdad4fe771c053a3a089713b9ed7c31d777483e9195cac3` |
| 109 | `theorem` | [lambdaTable_representable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/lambdatable-representable.md) | 678 | `result-track:34a22f261f05fc40f907c1908e6d69c8e0d1b440830fecd974250f6b349a32b7` |
| 110 | `def` | [FrameBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/framebound.md) | 722 | `declaration-track:36357da98f9a04a3b59d42bf5b56ebd10f9037608493542366990b984e49d065` |
| 111 | `def` | [ContinueBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/continuebound.md) | 726 | `declaration-track:1b31d48dabe7f378143516079d15244b0713bac7a6525f8db1e5ad84553e10fc` |
| 112 | `def` | [ExitBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exitbound.md) | 730 | `declaration-track:16b6993dd0e89d25890e7b93c7f2b3105ae1e7e9ad8284968e48c62387267b10` |
| 113 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mono-source-edition-2.md) | 735 | `result-track:cb476fea4634f0aace6a9044d1bf6e499b4c6cce7f1ee40e478f28ff18276dd2` |
| 114 | `theorem` | [exists_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-preimage-source-edition-2.md) | 738 | `result-track:abd66f0f7e7f3d872f8cddf075c9df7e7a0adc751a2d2ffdf5ac8578bcc363c0` |
| 115 | `theorem` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed-source-edition-2.md) | 748 | `result-track:6036d35a4f950783021aebd71292a1d6284266a531eb5ea40b16d59bf7884847` |
| 116 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/mono-source-edition-4.md) | 762 | `result-track:dd7731e6571b440c07c30c4b18468eb9b7e36e2e1c0ce39197fa6f0e91376cbc` |
| 117 | `theorem` | [exists_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exists-preimage.md) | 765 | `result-track:08443e4e5b73924a7f62c9da62831334b90a683ac7fee8e51d3162b2a247d2de` |
| 118 | `theorem` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/embed-source-edition-3.md) | 774 | `result-track:aec966f35b922422bbed360723bd9e75d394a3a521a44b089632fbcda436ebfd` |
| 119 | `theorem` | [cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/cons.md) | 780 | `result-track:0f442fc41e81961cdacf40d2b19b60a4ea13327081597bdf996d89e3d36330fe` |
| 120 | `theorem` | [continuing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/continuing.md) | 790 | `result-track:507218da49ccb9b25384ccdc33e4388a0a6393bad44093e163681c500c039379` |
| 121 | `theorem` | [exiting](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/exiting.md) | 795 | `result-track:cf0b5fa9e6f92c6d2a1a6578fb085d182bb9bfd2b018410acdecd5f16d47f67f` |
| 122 | `theorem` | [of_observations](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/of-observations.md) | 804 | `result-track:d670fd2b6007e762463df7fc048cfd67b7a54cc1ad138e7fde175b59e668fcd2` |
| 123 | `theorem` | [slice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/slice.md) | 813 | `result-track:adc9732044cef099e12d3b62eeb189fa6dc4b25b037ad378065f360cef1758e3` |
| 124 | `theorem` | [all_levels_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/all-levels-eq.md) | 821 | `result-track:f61ed0f71eafd3c138da0f93f7b096f740ceb649eb81cbb7d0220bf84d5b2bd5` |
| 125 | `theorem` | [minusSlice_eq_of_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/minusslice-eq-of-restrict.md) | 851 | `result-track:4cf660b317a3c1f8b0b58cc50e87ef1a62a00d4675bfe824ce2c44b5466223b1` |
| 126 | `theorem` | [minusExit_eq_of_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/minusexit-eq-of-restrict.md) | 865 | `result-track:31b2da58b3070a79b71384b8e7bba4ad0d6fb6b82f99fef863b2fe000650cd0b` |
| 127 | `def` | [plusLambdaTable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/pluslambdatable.md) | 875 | `declaration-track:f8be95220678c9dfcde865a9b4a38d6a687d400fb2a42f39dddfdc0c102b85bd` |
| 128 | `theorem` | [plusLambdaTable_agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpacesRestrictCompat.lean/declarations/pluslambdatable-agree.md) | 884 | `result-track:fdc4670c05fa14b2515487367b6f738c4cd9cf46c39874945b430511520a3576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3293b3033a2d674c5d2eb7755a49ef858fcf45286959e9e8d33ee23dc5b3cc8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant3ed1b663f73407b2807f430afdb0fc0944443832325ae4bbfc0425ed81cf6025.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant3ed1b663f73407b2807f430afdb0fc0944443832325ae4bbfc0425ed81cf6025.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
