# Verification target: Rel Iso Basic Coe Fn Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16705504814b27c00d3d95601e8d2a79da09cc62",
  "lexical_observation_count": 155,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0ec3949b5d89fdb1e27b0efc1aa8c4062b8decbc9cae794b7ad544bdea89ec98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16705504814b27c00d3d95601e8d2a79da09cc62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0ec3949b5d89fdb1e27b0efc1aa8c4062b8decbc9cae794b7ad544bdea89ec98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0ec3949b5d89fdb1e27b0efc1aa8c4062b8decbc9cae794b7ad544bdea89ec98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relhom.md) | 43 | `declaration-track:2c877ed86d023c633bcee2f281838fa83e82c9ce9f3b4c094d7a3a9f674a8a6a` |
| 2 | `class` | [RelHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relhomclass.md) | 61 | `declaration-track:6388af1ecbb0d56ea81ed6382fe4804451e08b7f96efd87b80a46bbbf4942abc` |
| 3 | `theorem` | [isIrrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isirrefl-source-edition-2.md) | 74 | `result-track:37d044733883a0e8109152f94504c5973279401367ae2e757b09858c9ed8afc3` |
| 4 | `theorem` | [isAsymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isasymm.md) | 77 | `result-track:0493f3c2bb5341c73acf11f5f825812fdb291ca7d012cf125c743bc15bbc2d2e` |
| 5 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/acc-source-edition-2.md) | 80 | `result-track:d9b787031e264a84218cca155de30e2760b30d06317996e1ebe53cb73918c436` |
| 6 | `theorem` | [wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/wellfounded-source-edition-2.md) | 87 | `result-track:a129bac1fdaa1615de0b5caba3f173e7e9763ef57a220728eb2d252aa1625368` |
| 7 | `theorem` | [isWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/iswellfounded-source-edition-2.md) | 90 | `result-track:9758a0f65cad9838263536a47bda08e2b72120e11f2097c6ce0af7cda02fb283` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-10.md) | 98 | `declaration-track:b78f1e04a04f6a8448ac67277a1bf14976aed710fe92555f6d0b4d92b067bc4f` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-9.md) | 105 | `declaration-track:b1b3738119544da51be9814f68dde7ef5ad70863bcc56822b0a75df11d612f9c` |
| 10 | `theorem` | [map_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/map-rel.md) | 110 | `result-track:82334b69121c2d11c56736bbe2b51f379db690fe1471fd5bb69e026aa8a07e94` |
| 11 | `theorem` | [coe_fn_toFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-tofun.md) | 114 | `result-track:4fe4cdfcb20ccb4d4cfa1392d355b07f468d3a11daa27cdcff3072bd011e5cfb` |
| 12 | `theorem` | [coeFn_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coefn-mk.md) | 118 | `result-track:eceb125ba0f210afac3a64d3e94d585c35a73e1ec2886e242c15d584db0e668e` |
| 13 | `theorem` | [coe_fn_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-injective-source-edition-3.md) | 123 | `result-track:ed85dc58f9c7844c71594c3e70a1f82c98b8d15aa865334a67fc678d77e569dd` |
| 14 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ext-source-edition-3.md) | 127 | `result-track:a4dc0f0f3d56f478bb7482de29c2759874866b36638b845b36b56a252d9458d3` |
| 15 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/id.md) | 132 | `declaration-track:c9649cf8d7cbbe12f4f24838c67bbc7b324f2a5c826807134e67814ae7fa7983` |
| 16 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/comp.md) | 137 | `declaration-track:3d12ca46a6b0baaed08891079178b77b3c5c4366f6ac0729f6f5553be1dc3be6` |
| 17 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/swap-source-edition-2.md) | 142 | `declaration-track:6bd655a37be235341d867ecea97ca8dd16ddd8ba512615acc08959e9102708a0` |
| 18 | `def` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-source-edition-2.md) | 147 | `declaration-track:2a834d78e3900b64fc21fd9b7fda2a4aef78fab7c880f079b58912d47f9bfe74` |
| 19 | `theorem` | [injective_of_increasing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/injective-of-increasing.md) | 153 | `result-track:1be78ad4cf6678b29b62a13bbf860395e1d6b74d2ee261cbd23a9d3974b8d879` |
| 20 | `theorem` | [RelHom.injective_of_increasing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relhom-injective-of-increasing.md) | 168 | `result-track:d3d07f0a767c319699de6fb4f8e8f4526d51d6925a0bdf4ff1a1e1a5f9b6f520` |
| 21 | `theorem` | [Function.Surjective.wellFounded_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/function-surjective-wellfounded-iff.md) | 172 | `result-track:a7768a4ad959d1f76bdd69a36590c47bf6fab04b0cde0ec364a518e758b3686f` |
| 22 | `structure` | [RelEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relembedding.md) | 182 | `declaration-track:78830c403d86b8437bbec11552bfe6e00dd28d749c68eb03594d748b37cf17c4` |
| 23 | `theorem` | [preimage_equivalence](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-equivalence.md) | 190 | `result-track:096b2e37689cccef3864b6b2266f7c02d305ca12b9a3c20be6c89883ab1ea908` |
| 24 | `def` | [toRelHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/torelhom.md) | 197 | `declaration-track:26730aba2fc8a30da0d8ec1546c36593062fa39b6a4afa185b8fa71027a0a426` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:256987386a18def297237ba98e6f2640e2732602de46afd59e543bd0762f253c` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:28f34f803e95618f24d2224afeb872113cf7592cd38cddf04cce9f943fef6ed3` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-7.md) | 213 | `declaration-track:92107248fcfa4ec6367ab32cee859771bbfef683a232807f37313108ddd88692` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-11.md) | 218 | `declaration-track:e51cf8b5d53231ecc5ff5d5f360302d6814022b964933768dea13fd344faaa7e` |
| 29 | `theorem` | [coe_toEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-toembedding-source-edition-2.md) | 222 | `result-track:dc2acc02dc9aa508f918c9d6c17d9092b4a225e5179ec2b9ce41664472f2afb6` |
| 30 | `theorem` | [coe_toRelHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-torelhom.md) | 226 | `result-track:1c4679a721fe257a8842fb9bb5976355bfcc5568e6d5675a15b6bd8708914459` |
| 31 | `theorem` | [toEmbedding_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/toembedding-injective.md) | 229 | `result-track:6c91075da654a87de6a8199abe690d4a0ed81b0fd1ba94834ef595d965f52742` |
| 32 | `theorem` | [toEmbedding_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/toembedding-inj.md) | 233 | `result-track:71c306a192799d608a576e7168f18911610c4e54ae17f21d7e80c3177e2c5793` |
| 33 | `theorem` | [injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/injective.md) | 236 | `result-track:f923353012b93f90e0575913f69c4cdbe04e15370e22a7a0777edde9301dfc99` |
| 34 | `theorem` | [inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/inj.md) | 239 | `result-track:42e320649dc1bce44de06413959b1fb3518eee34bcc8a3e0968b912c9a925e7e` |
| 35 | `theorem` | [map_rel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/map-rel-iff-source-edition-2.md) | 241 | `result-track:ac370e7e5e2d6e3760f4f97cf00bd1ee2eb9af62439762f19d4e3c05989ff18e` |
| 36 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-mk.md) | 245 | `result-track:d477a83706864fffbf7e466a1c8523c925c938a22fe710f8644301b1db8b8bc7` |
| 37 | `theorem` | [coe_fn_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-injective-source-edition-2.md) | 249 | `result-track:457735d4771547b3ba0feb9028de3a0154b5fdc2f94ace985964be88aa3ebcc6` |
| 38 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ext.md) | 253 | `result-track:458730f6ba8983dd03220c71506f0ee20e3c42110e5d8a6907ebd19cfd1a6de8` |
| 39 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/refl-source-edition-2.md) | 258 | `declaration-track:33d7ab798b4bfff61b1bd90b1ebdbffdc33331e69a1d1f9d77baa568d0c413f6` |
| 40 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/trans.md) | 262 | `declaration-track:73d687e150343fe7b4928e181ec79e8b90492d1a904ff90111690d5d06eb9c63` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-5.md) | 265 | `declaration-track:34a3ffd95eff75fc85e214fa89d24252e7d4f0ce0c38db97e3acdd3b53e717a8` |
| 42 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/trans-apply.md) | 268 | `result-track:bca64b4c3b6e848775c29e3daa7882dbfc312adc5a00120c4ce103d99e8109a8` |
| 43 | `theorem` | [coe_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-trans.md) | 272 | `result-track:adc4d3a03d9c7f4bd5caa09ac6849e3d28e94eebba64dad44b63c2a2e902e65f` |
| 44 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/swap-source-edition-3.md) | 276 | `declaration-track:ce4a29735421895d9070155300883dbd2710e337d78158c8b92fa947450001b2` |
| 45 | `theorem` | [swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/swap-apply.md) | 280 | `result-track:71751c4027b8d7543c5fcabedecb99614664a2683960df050c0bc7ed9f424195` |
| 46 | `def` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage.md) | 284 | `declaration-track:15a9187776e51ae4e36bbb36ca9d12645f1864ed44e634ba9b155083aacbbaff` |
| 47 | `theorem` | [preimage_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-apply-source-edition-2.md) | 288 | `result-track:e057bcee46ff5b65ffc7c6520e2be7295c30e5fddc3d7e768319a193999cf033` |
| 48 | `theorem` | [eq_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/eq-preimage.md) | 290 | `result-track:101d929f2eb265afe5148547270aa5a53cd82109d06b82804f50521aefd213fe` |
| 49 | `theorem` | [isIrrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isirrefl.md) | 294 | `result-track:1e4c4d7f98bb56cb3ea16d346d181571348e813e9d6aad165cc861c8ec438ada` |
| 50 | `theorem` | [isRefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isrefl.md) | 297 | `result-track:5ca779e5f427b32187f26365496f14b9e7ca69eaadef39e6adf47d6d68e43508` |
| 51 | `theorem` | [isSymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/issymm.md) | 300 | `result-track:d3a33c0ea860e5aa380664234d86ffefb65d3419dea671bfe2078d5dc039050b` |
| 52 | `theorem` | [isAsymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isasymm-source-edition-2.md) | 303 | `result-track:f13d226ca56d814e53af059d91e6f0b62d0c1c98e03cbde88dbbed3f90ee4c94` |
| 53 | `theorem` | [isAntisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isantisymm.md) | 306 | `result-track:a73e25dc8e2be2fbe4cf19a369e9c139b7feb3edd37cd255fe57e154085a2d32` |
| 54 | `theorem` | [isTrans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/istrans.md) | 309 | `result-track:e819e718f47aba9068b831991a3ae331e69854ddc16d3cbca7c1d07b71a594fa` |
| 55 | `theorem` | [isTotal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/istotal.md) | 312 | `result-track:b4217f9aba2b3433eb83cca7e9573e11e40da57255629bee00a411aa7fa685c9` |
| 56 | `theorem` | [isPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ispreorder.md) | 315 | `result-track:a159d306bd246702df304a6cde53219b1984046626f44cf5861176f703118d1a` |
| 57 | `theorem` | [isPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ispartialorder.md) | 318 | `result-track:9e7cfb1afd0c6fd8bf400219ea29b0e01cea8133a1fab43de1958d05903fa6da` |
| 58 | `theorem` | [isLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/islinearorder.md) | 321 | `result-track:d0abc5918b498396d0f4823164143e5743ece81fc78c6a3f6d099bd5dc915889` |
| 59 | `theorem` | [isStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isstrictorder.md) | 324 | `result-track:cf1a93858ddd7cef250017a806021a3597498a6bf1b08bae8a50a86fea83ea8f` |
| 60 | `theorem` | [isTrichotomous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/istrichotomous.md) | 327 | `result-track:75f939d6a46f16899c73d102206132830ac34957d9a8a757e7d1d0ddbd78a79d` |
| 61 | `theorem` | [isStrictTotalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/isstricttotalorder.md) | 330 | `result-track:25530f36776d7b5622799abd18a93ae228b6fc3c69574a267b8292e233cce29c` |
| 62 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/acc.md) | 334 | `result-track:35805ce3b70432137c2b6c4b919a18e7dde9e498f07a93c75981db716515e2d7` |
| 63 | `theorem` | [wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/wellfounded.md) | 341 | `result-track:36ad8597fbf83e3fc7d804332a8dd718a0e1ca0bdde7e14182ae1e6f3e21ef4c` |
| 64 | `theorem` | [isWellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/iswellfounded.md) | 344 | `result-track:314c377dc3b82c53ab070276f158df5347ec758eba24a1d7056fbb035cbfd606` |
| 65 | `theorem` | [isWellOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/iswellorder.md) | 347 | `result-track:fb1e38baece385fca2e35ad8af67a1bf2040698a24e7667f933c089ec76222f4` |
| 66 | `def` | [Subtype.relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/subtype-relembedding.md) | 354 | `declaration-track:671b897007ddb36cf4cc60ecc3454c2d2d9a7e505c336cfbb6fc4b0bbdea234a` |
| 67 | `instance` | [Subtype.wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/subtype-wellfoundedlt.md) | 358 | `declaration-track:57973fdec6518c8abc38f17e54f2c70beada96f8c9e09ed2c4fee92dd2f3bd82` |
| 68 | `instance` | [Subtype.wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/subtype-wellfoundedgt.md) | 362 | `declaration-track:45eb8df5927746d10e42fd54c518aa677367984248e05297af18133071a52072` |
| 69 | `def` | [Quotient.mkRelHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/quotient-mkrelhom.md) | 368 | `declaration-track:52ddf380cf8edd6c78976d5a7c75d0b2750718234bcc7ced80f3c7d8db40b3db` |
| 70 | `def` | [Quotient.outRelEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/quotient-outrelembedding.md) | 374 | `declaration-track:7ad51cff25d1162300661e92a17a4ce7c1ac201f49993c0c744ce480e9ab150b` |
| 71 | `theorem` | [acc_lift₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/acc-lift-iff.md) | 381 | `result-track:69cad79d6784d7c917fd5c10543b88e5d64c320d347490924386a12b0f41825d` |
| 72 | `theorem` | [acc_liftOn₂'_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/acc-lifton-iff.md) | 393 | `result-track:5ea7af38f7695860602c777258cf96235fd261a95bdb95293395a1b0859e620e` |
| 73 | `theorem` | [wellFounded_lift₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/wellfounded-lift-iff.md) | 399 | `result-track:20d78336eb837c52635a0ea67e97c0743154adf5e54389893bf96862d7e150ae` |
| 74 | `theorem` | [wellFounded_liftOn₂'_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/wellfounded-lifton-iff.md) | 411 | `result-track:c670af1f601cec4fa6ae7022dff520b8929a43f8da6c3163dbbe7463af7c82fc` |
| 75 | `def` | [ofMapRelIff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofmapreliff.md) | 422 | `declaration-track:0bd221d1a3e6169e794983dc86cf8608d925dfbe9b46184c40218f16ed38ae02` |
| 76 | `theorem` | [ofMapRelIff_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofmapreliff-coe.md) | 429 | `result-track:b57e9705017ad33e76d444f0b279e5a02894c0df588589e155050c2eeb1fa5ff` |
| 77 | `def` | [ofMonotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofmonotone.md) | 436 | `declaration-track:deb5f7b65a344efe9786d4beec7bbfd08511ef777d170713eca1fb1832cff686` |
| 78 | `theorem` | [ofMonotone_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofmonotone-coe.md) | 449 | `result-track:764eb96b10d1e298cff4c8348d31f7a6affc54be26ee4ce6f60a810aa367add9` |
| 79 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofisempty.md) | 454 | `declaration-track:6691be240b9895b5592e24739440d0f30951c7bb259579b5f49cc6d0d289e687` |
| 80 | `def` | [sumLiftRelInl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumliftrelinl.md) | 459 | `declaration-track:9fab860eff09706de69d864137403bf8e32584de255721031aa1b7571d481ded` |
| 81 | `def` | [sumLiftRelInr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumliftrelinr.md) | 466 | `declaration-track:c1ea691ba7a2b7c0a9661212962331a2b9b4abdb0feeebfbe7f179af949a526d` |
| 82 | `def` | [sumLiftRelMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumliftrelmap.md) | 473 | `declaration-track:8ff47ac563cdfd6e4436f0aad8904a388f0463455c70a0a8c3caa946229d1d19` |
| 83 | `def` | [sumLexInl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumlexinl.md) | 480 | `declaration-track:05f69a1e47963bea63bfa8e2e59a15f5028bea031c9803e7e30e952b3ecc02ee` |
| 84 | `def` | [sumLexInr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumlexinr.md) | 487 | `declaration-track:0f855f0baadde46db31d5cba98e737f48ca4cdb18de4b0428ce22c397db879e3` |
| 85 | `def` | [sumLexMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumlexmap.md) | 494 | `declaration-track:9ef97290b839500958ffd31e82bcb1629a6bec88507e2121e1fd91619ec0beb9` |
| 86 | `def` | [prodLexMkLeft](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/prodlexmkleft.md) | 501 | `declaration-track:0b3bfa1998e11d5337d8dc079dbc99c33c4dda0863f282b3f45096132552d87d` |
| 87 | `def` | [prodLexMkRight](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/prodlexmkright.md) | 508 | `declaration-track:1ad25373ecd1a95d5204157c564668bf7e72d45ca02bf52519998d47dc5adae2` |
| 88 | `def` | [prodLexMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/prodlexmap.md) | 515 | `declaration-track:19bb08aff5d5e136ca0c56627f3451ddde7ec5861ae927da09473ec64d0e6de4` |
| 89 | `structure` | [RelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/reliso.md) | 523 | `declaration-track:4c6690cf41fb0b453dbb5965d9abd1bd31d996272e95dc6a05d390ce3289d35a` |
| 90 | `def` | [toRelEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/torelembedding.md) | 535 | `declaration-track:015990a17e32040bb71a69b3aab6d7a8beb9d483a81f37b4ca902750631ca27f` |
| 91 | `theorem` | [toEquiv_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/toequiv-injective.md) | 538 | `result-track:b5d5c47e3613212483d2001bf72bbe842d0f5fd12f892fe55ed03fdcc8037d81` |
| 92 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-8.md) | 541 | `declaration-track:ad26d2da8680b3a7424b2053d959ad636efeda4d85788d5d107f3b70b3f1f086` |
| 93 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-12.md) | 545 | `declaration-track:fee1787e7dad5ffe9077b70b544085ea0e2b5fd3c65d35a72516c74572579cad` |
| 94 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-3.md) | 550 | `declaration-track:289ca1578061b9b9fbaedd9f40b4af24cba758627adfe8e525c4b1c9dcac7259` |
| 95 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance.md) | 553 | `declaration-track:128bd9fdea214137d0219e11b05ecf9eddcfbb308adfa2c0747d983781e5245d` |
| 96 | `theorem` | [coe_toRelEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-torelembedding.md) | 561 | `result-track:ba00820292752cf91102f21b38fd452a4191be4528184c0794767921bc125fbc` |
| 97 | `theorem` | [coe_toEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-toembedding.md) | 565 | `result-track:619c404a3032a7ebf6595c1bbc8921b94b158f2a4ba24a7cb00c699f095db20a` |
| 98 | `theorem` | [map_rel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/map-rel-iff.md) | 568 | `result-track:2979ea2c66ce0f61a7e4ff8fc62bd19e30e6e9b8b600f2d1aa0a3242aa489f73` |
| 99 | `theorem` | [coe_fn_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-mk.md) | 572 | `result-track:ff641e561dc964b67f6cc7d1489cc3f6190efbae8823e6a927b5de8762526c35` |
| 100 | `theorem` | [coe_fn_toEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-toequiv.md) | 577 | `result-track:f1898a8904441be6c5f883c2a282d63254923bd904534716860e6c9849b47ad6` |
| 101 | `theorem` | [coe_fn_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-injective.md) | 581 | `result-track:0d2a2f97e52f1fe39212ab3c2e1619e5099a7ea47f559fcb07d624f41960a752` |
| 102 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ext-source-edition-2.md) | 585 | `result-track:70c962f1b237b46bc3669e7d4ef81c7867a751b6f834c5f62d53bbd74a50ffe8` |
| 103 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm.md) | 589 | `declaration-track:67ca28c400f3775f4065bf3dcb0d61802ea8538c3aa213b25bd576da397971ca` |
| 104 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/simps-apply.md) | 594 | `declaration-track:c3685dfb7b068e153c046cbe6fa6dcde4210e4c057d896988fbcf648e5501eea` |
| 105 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/simps-symm-apply.md) | 598 | `declaration-track:950ae26a157362db15a3c6c413f75903c9949714b8d4efdf2f2576d7589b64df` |
| 106 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/refl.md) | 605 | `declaration-track:08e6c8f151814fd0b3309f327e9c53368a8b14eff35f87d612840260b7018396` |
| 107 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/trans-source-edition-2.md) | 610 | `declaration-track:e21a84253cfe148d40d1c54340c3175ae0c931c68db133fdb96fab30d3159dfb` |
| 108 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/instance-source-edition-6.md) | 613 | `declaration-track:72acf016276261fdcc37b9327fc641add67f02a2f2ef3298806249489d6c6ed3` |
| 109 | `theorem` | [default_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/default-def.md) | 617 | `result-track:a30577a760524d0c3603b56bb5ca7d3a800eef389618f1d9e57e60b1c0abef42` |
| 110 | `lemma` | [apply_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/apply-symm-apply.md) | 620 | `result-track:b845a530ef45129fad0b140960300646f737f4d63915e5b8f3c0125b089ab176` |
| 111 | `lemma` | [symm_apply_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-apply-apply.md) | 621 | `result-track:6afcd98e2713fb282ee8af75025c2f8a3cf74151c2510e27ee7c1e9b00a7c7fb` |
| 112 | `lemma` | [symm_comp_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-comp-self.md) | 623 | `result-track:adec9beef235bb0e1a20a5ecfc016b3c637aae44824fce427caf9a9e2f1a3f46` |
| 113 | `lemma` | [self_comp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/self-comp-symm.md) | 624 | `result-track:eaa8364271a26d26a2dcf1f7945204bffe288e357781e0a1e6031c3d60f7cba4` |
| 114 | `lemma` | [symm_trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-trans-apply.md) | 626 | `result-track:ca8fecccf52d24914d779d3245b4f6418126088b84e9a932be974735fd7917f6` |
| 115 | `lemma` | [symm_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-symm-apply.md) | 629 | `result-track:12740be268b443617ba57d948fa35f136c06d9ec24a0b145e2063e53388e2954` |
| 116 | `lemma` | [apply_eq_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/apply-eq-iff-eq.md) | 631 | `result-track:4446c92679e76419546315246e8e5b1aadca0c4a501c201b02f72d945d75d6c4` |
| 117 | `lemma` | [apply_eq_iff_eq_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/apply-eq-iff-eq-symm-apply.md) | 633 | `result-track:83dd6ea0eeb0495bcbe1d46f4b6e50e5118c6c758e534a054881bde6f9cca9f5` |
| 118 | `lemma` | [symm_apply_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-apply-eq.md) | 637 | `result-track:e48b21003fa60295817768b9e2cfc4e5f449a3b59fc4a86edb2d429b587ebc16` |
| 119 | `lemma` | [eq_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/eq-symm-apply.md) | 638 | `result-track:8b6221b971498a211c0004be2445878d00369e0216ada08fd8a411fca1bf82c9` |
| 120 | `lemma` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-symm.md) | 640 | `result-track:f78017b2c8b1f0360861e3f71d6404321e88cc1ce0009bb87791d1359a9501d5` |
| 121 | `lemma` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-bijective.md) | 642 | `result-track:0bc8da89289a0e338a4ec49ad9399897b87a5bbe8550d4b31ed0eb5498b7eea0` |
| 122 | `lemma` | [refl_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/refl-symm.md) | 645 | `result-track:c8a78332a6a52e354ded9124ce6baad280c52b79a912af03898552581d130054` |
| 123 | `lemma` | [trans_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/trans-refl.md) | 646 | `result-track:9d001e2059f611de7bd74e2175920223b69e7fab2ee3274e7b069b44ecc6e3be` |
| 124 | `lemma` | [refl_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/refl-trans.md) | 647 | `result-track:1acf4c4d0bfd66ba27d06928333a5f6b230c728c9698f183011f6b2b23b0bde1` |
| 125 | `lemma` | [symm_trans_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-trans-self.md) | 649 | `result-track:6a31fb51ec40e3491878375308a326d52d3a997bc65b069cdba299b93dd12e84` |
| 126 | `lemma` | [self_trans_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/self-trans-symm.md) | 650 | `result-track:ddebf2391157c081fee47540bf7a72bebaab0eac02e96568d85509c160d265fa` |
| 127 | `lemma` | [trans_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/trans-assoc.md) | 652 | `result-track:af74d57ea452b6a80cb0ff680df5bfe4b12a7239d935ed50707dcf74acf5d4b3` |
| 128 | `def` | [cast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/cast.md) | 657 | `declaration-track:027bc47232a497aad05d3235d2f878deba44a55e2d46d080ffbe7185e3903746` |
| 129 | `theorem` | [cast_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/cast-symm.md) | 665 | `result-track:aef6960950da980d53ba157871080b4f5f2a9876e9923a565e6340cc00b709a0` |
| 130 | `theorem` | [cast_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/cast-refl.md) | 670 | `result-track:dac16d5f807dd3bf7115890d9e455484913dc9ce2224f56428a83b1259e3ce45` |
| 131 | `theorem` | [cast_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/cast-trans.md) | 675 | `result-track:06585f5a4fb95fbdda7cb5bdf16e4ef40e3c808796833d76ad192fc077a9e253` |
| 132 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/swap.md) | 681 | `declaration-track:316c16cb5b0f266f709719826563c94c8533e0d27af44a86b40b088e794fb166` |
| 133 | `def` | [compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/compl.md) | 686 | `declaration-track:bebe863823785844d0a238cd6ac3e260bbad0c91016729b08bd6c885e330f799` |
| 134 | `theorem` | [coe_fn_symm_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-fn-symm-mk.md) | 690 | `result-track:1e1f666cc08b8880486551e5de1380e1778f01bdac0f8af8d6dabcb5c73f1544` |
| 135 | `theorem` | [rel_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/rel-symm-apply.md) | 693 | `result-track:abe994b1adf68a5795926c57f8edb931d0f2dbb8fb7eefdf2afb1894d51b5194` |
| 136 | `theorem` | [symm_apply_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/symm-apply-rel.md) | 696 | `result-track:515dff91bdf2b1dc11a135379e738193f0ced34db39a31dfad0f4d538a5013ee` |
| 137 | `theorem` | [bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/bijective.md) | 699 | `result-track:4bca48b85c3d789976f757990626071d665301287aa69db6de162a06e5818108` |
| 138 | `theorem` | [injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/injective-source-edition-2.md) | 702 | `result-track:fa6806c759c5bcfb031684a9f905a78971c6f746f985867e254bbc774d1118a6` |
| 139 | `theorem` | [surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/surjective.md) | 705 | `result-track:05d414cdf26edc8f31a8b3aabfa0e57e63a02b1623c6f3cfc4203f88ef178a6d` |
| 140 | `theorem` | [eq_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/eq-iff-eq.md) | 708 | `result-track:8fa62dc82189d26be6d2c8c79264608d3253d4ee5f08fb343f8de8a39b8718d9` |
| 141 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/copy.md) | 713 | `declaration-track:dbfe10f0266bcf50f622ebc8c0a2e59ab2af4ca58a6d24073e0a5db173b8d89d` |
| 142 | `lemma` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/coe-copy.md) | 721 | `result-track:8b590d4cb158b4bc211f3fc217f4e6deab37e97753ce6f3e9171c542ee1c2bad` |
| 143 | `lemma` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/copy-eq.md) | 723 | `result-track:4eeed10553e3052ecfbf80ac67e455e9340105af4246dfdb61f0464deaacad7e` |
| 144 | `def` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-source-edition-3.md) | 727 | `declaration-track:f88e96d490dbb44a6fa9efab73e6c16bcfb2172512649931aa5a8ac44b0e9876` |
| 145 | `theorem` | [preimage_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-apply.md) | 732 | `result-track:c0d0820c2fabd915381a344af4f16a04fa6b0c7aebd47b2aad751755ac38b885` |
| 146 | `theorem` | [preimage_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/preimage-symm-apply.md) | 735 | `result-track:f1a806076fd7de919c45543d585db35791932d3645b3567926cee767ece39cd6` |
| 147 | `instance` | [IsWellOrder.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/iswellorder-preimage.md) | 738 | `declaration-track:827581b1d2daaa2e154e30f9f649b227e6fede025f230731a2c476739be3c763` |
| 148 | `instance` | [IsWellOrder.ulift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/iswellorder-ulift.md) | 742 | `declaration-track:38a15795cd08527cc0ac47bb98f8cb63bdcbf3859ebb51722836f230bfadbb15` |
| 149 | `def` | [ofSurjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofsurjective.md) | 748 | `declaration-track:92037cb407c1bb46def66cbd88c169ea11f856deac4b253dd588ec061093798a` |
| 150 | `def` | [relHomCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relhomcongr.md) | 755 | `declaration-track:c8d4c1e53428f900f62ac1ff6dd7b86b5563d2ca1d3cd4fabb5981611839d760` |
| 151 | `def` | [sumLexCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/sumlexcongr.md) | 767 | `declaration-track:bacfe89ce7f8e46b9cac172a614244ed7d6f58de7f3669ae4fda070c2ec474e6` |
| 152 | `def` | [prodLexCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/prodlexcongr.md) | 775 | `declaration-track:32c4242102f1082e8a00186fdb6d5963427a57797cc06ec8377d6d2e8484c3e8` |
| 153 | `def` | [relIsoOfIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/relisoofisempty.md) | 781 | `declaration-track:96648b9f7f050ad367c133e7820ca50b0597e39bb940dd2d466f0bc812481878` |
| 154 | `def` | [ofUniqueOfIrrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofuniqueofirrefl.md) | 785 | `declaration-track:992a33fa9a66cd035b140e8149e2235c233ac883297e81492f456c1d0b1a5de8` |
| 155 | `def` | [ofUniqueOfRefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoBasicCoeFnMk.lean/declarations/ofuniqueofrefl.md) | 793 | `declaration-track:65b2df11605cef2088be919fa285153015f82083a7a338633af2b13616be58ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=785e7299eb23a8b9f278e4cb85c330d7cbc59853ce0244a89bdd19d00defdf64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0ec3949b5d89fdb1e27b0efc1aa8c4062b8decbc9cae794b7ad544bdea89ec98.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0ec3949b5d89fdb1e27b0efc1aa8c4062b8decbc9cae794b7ad544bdea89ec98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
