# Verification target: Ordnode

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e3f915c87687bca4ee51bc70ce0d44f5f09270",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e3f915c87687bca4ee51bc70ce0d44f5f09270`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Compare` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ordnode](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/ordnode.md) | 69 | `declaration-track:4d74491a1fd567e8193714698d3a4480f1e6cb4713f4a4f2c15c3213e72d3c77` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-9.md) | 78 | `declaration-track:e8c0fe90505223eb65b48604599fc3fd8fabd6c679f323e68fe8944253d90a89` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:2814b473bb9e85bbbf4dc2077393897f5936e3e188c2efbbd45e8da1c01efc48` |
| 4 | `def` | [delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/delta.md) | 93 | `declaration-track:1561266158f4b6f999e0531092ed64a540a1065786c4b12e62730aa3d98c0e6b` |
| 5 | `def` | [ratio](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/ratio.md) | 104 | `declaration-track:35138b983eecae3de57f371ad23bda1be78b8d4bfe608c7e7f92e65f4e64982a` |
| 6 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/singleton.md) | 111 | `declaration-track:ccc59ce3dd06eb736766c65dbfefca14b036a19ca6349b94957492526a96f02d` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-4.md) | 116 | `declaration-track:52906c5198beed502bbe5bcd6c59ce5e68bb6791333e1714075b6cbf540b3a28` |
| 8 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/size.md) | 123 | `declaration-track:a9a34383a9e5411e213b13e637b80f3037d73b714126b1bf46c89d4a374aa60d` |
| 9 | `theorem` | [size_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/size-nil.md) | 127 | `result-track:3fecaa971a68d43e30b1ebd46de5a7b328a24a3a98ea52e94505755f49d60cc8` |
| 10 | `theorem` | [size_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/size-node.md) | 129 | `result-track:bc8dcfd74c50dd57ec0296d076c495988994593471feafda677cf4679873ca7e` |
| 11 | `def` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/empty.md) | 138 | `declaration-track:18e0e7b114b9d3c32b70142ac13c4ee16d4471be8e1c667e5ff131b9d3869a22` |
| 12 | `def` | [dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/dual.md) | 148 | `declaration-track:1930009f89e50f2c33a2c264f04b8b2171210567764164d4782d54cd01cbe0a2` |
| 13 | `def` | [node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/node.md) | 156 | `declaration-track:8c147e1153bf075ef8c8d5cb8754be3ba5c293b4e14b7c09ff21c7750241cfd2` |
| 14 | `def` | [repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/repr.md) | 162 | `declaration-track:6ffe0d2a879ce37ee11ed1b088003b1b1366e6ce0b0fa7d7591499dd4731dfc1` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-8.md) | 171 | `declaration-track:e0984e0be7e9f6c42f1c5fd4b36181bccd38afd12591fffdcf1f371924f7d4a9` |
| 16 | `def` | [balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/balancel.md) | 179 | `declaration-track:716baecf92834af29db6b7ea469bd4307718c93639beb57a5926e181fff4d82e` |
| 17 | `def` | [balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/balancer.md) | 213 | `declaration-track:7ed47a6f22a8425ecdf58ba0ebc3a2a69ee144a7f367bbb9605894e101a9d416` |
| 18 | `def` | [balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/balance.md) | 247 | `declaration-track:e172dd8b6e2e250a5922790e896b27dcd3f77375624b612762a7a2955ed80072` |
| 19 | `def` | [All](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/all.md) | 303 | `declaration-track:7448d66655544e5f6b099bca9ec54e1c93cfe68e4ba5be8e5799c5efa899a59f` |
| 20 | `instance` | [All.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/all-decidable.md) | 307 | `declaration-track:15dc2798b6728508a03b07ba07a8af6be19f13ba3199362bdc1303e6e3a32cb7` |
| 21 | `def` | [Any](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/any.md) | 318 | `declaration-track:a208e1fea8f33284a5ab1db59317c587853d9d0fe06bf1c34e27c7b8408ea342` |
| 22 | `instance` | [Any.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/any-decidable.md) | 322 | `declaration-track:faa67a0a8a70219d5b17603542eb69fc85598a6511630a7159acde9ca0710319` |
| 23 | `def` | [Emem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/emem.md) | 335 | `declaration-track:b64e91af39e92e55c169fc2e01b4c9aa9ed04019db7b90b2202ac4e84c3e3b5d` |
| 24 | `instance` | [Emem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/emem-decidable.md) | 338 | `declaration-track:b3c2bc871cd58ad66d1c35e8dcc4faeb90474fb262ef9f41d4805a9f26e32387` |
| 25 | `def` | [Amem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/amem.md) | 358 | `declaration-track:f872a411d253b04cdf03a86f93c3e0da3393e5793edc674351641a0d5e346a79` |
| 26 | `instance` | [Amem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/amem-decidable.md) | 361 | `declaration-track:7e1116788171ee7e2b32555ea9b45d5713ba247974bf49095412b50d6611b9e1` |
| 27 | `def` | [findMin'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findmin.md) | 368 | `declaration-track:3f198b436ff776d9c13b392ee5ff8d735543e2322318fdbe02562bc1bb91e436` |
| 28 | `def` | [findMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findmin-source-edition-2.md) | 376 | `declaration-track:e3ac62db7deba0cf40349172f323d6af0167695d9d1d6f7016ede9ca40a80b39` |
| 29 | `def` | [findMax'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findmax-source-edition-2.md) | 384 | `declaration-track:5e38c9b2fcfb047a0530a91e282786c61c5807b0b87f25b3932e87bd348a7400` |
| 30 | `def` | [findMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findmax.md) | 392 | `declaration-track:09b065855614e709f0cb28d5067ff2864e15582ea9752aaed781c6e21f796abb` |
| 31 | `def` | [eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/erasemin.md) | 400 | `declaration-track:5dea382110998f8b198245933881b3e4e3f0ad0d72abb91234a959e161626783` |
| 32 | `def` | [eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/erasemax.md) | 409 | `declaration-track:b55133a4e7b3e8280f0d4c0eeb53d700cd2408aac03ac986a7ceec6381859605` |
| 33 | `def` | [splitMin'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitmin-source-edition-2.md) | 417 | `declaration-track:67d0c0d03fbf96a0fe69ab4b06cfa0af2ec8692bc6f37bef10e2953814dc8282` |
| 34 | `def` | [splitMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitmin.md) | 427 | `declaration-track:318ae721db5c9112546fa9faee6d484b3c94685e9a78e3a04c561776e8e2189b` |
| 35 | `def` | [splitMax'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitmax-source-edition-2.md) | 434 | `declaration-track:a8f3592f6cf95a9e1ba93cf4ebc46cd37fc52b2756d077fa94b9bd1d6938f255` |
| 36 | `def` | [splitMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitmax.md) | 444 | `declaration-track:957f4b991e2eb972b8c4f51a39ab5e207d0eaa417d40e3b1874ab09c17be622f` |
| 37 | `def` | [glue](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/glue.md) | 451 | `declaration-track:28a00e96c39748895816fc1ef80af7b32ad7e4e7eed1348e874dbadcedb11b40` |
| 38 | `def` | [merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/merge.md) | 466 | `declaration-track:a7ecebfe471c7356ab001a2d17cc401bcbe3536d17b7ad09d6642eb0c3407055` |
| 39 | `def` | [insertMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/insertmax.md) | 481 | `declaration-track:ddd89c776899e48684b2efad55026db8342eb173958611a51b9ea360cab41091` |
| 40 | `def` | [insertMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/insertmin.md) | 490 | `declaration-track:5b2b03ab8bdfe841df0ebdb0cf0494879bd8615bc082f71a9de17a2fdfa3fb5e` |
| 41 | `def` | [link](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/link.md) | 499 | `declaration-track:5537537f89eb2218f3063f417e429ecb9ce8578cc929f82f822925ea4f93ba13` |
| 42 | `def` | [filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/filter.md) | 514 | `declaration-track:8547b2b4ff8b3b6b032f760e37aacef7be6f508de266075cba82bbe34f879322` |
| 43 | `def` | [partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/partition.md) | 523 | `declaration-track:5ed607bd6729ea9faec7d53dfcab57439880db584ab497819e52c946ad33dbfc` |
| 44 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/map.md) | 535 | `declaration-track:c8c3d093a56fbb4fc4e87747ebd9c773b37bed69369558299ae3151e0efa289e` |
| 45 | `def` | [fold](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/fold.md) | 545 | `declaration-track:25fa5b2772a20f10269719dfc25cbf1ccc4e6e65af34e818b34c102405c1cd6a` |
| 46 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/foldl.md) | 552 | `declaration-track:d01248094a6da76cd2b622b83e6534036667193b8d044d11d247448cca2dbb00` |
| 47 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/foldr.md) | 559 | `declaration-track:becc65436683c98ca31ff2fd2ebbac2ab1f32a64dff483f16c450f6423a125eb` |
| 48 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/tolist.md) | 567 | `declaration-track:8c13d08be50f85a7a6d8752cd89caad8855c555b0a6ee4bc8370fbee8feba51d` |
| 49 | `def` | [toRevList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/torevlist.md) | 574 | `declaration-track:013adc98d165379de55d1c1c33174c8dee4911d8fbc1db01e2d4d32c0e8b7d7d` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-2.md) | 577 | `declaration-track:1267ef0df76a6704c583ad1d8a22a72f6bee876b54ac69d8a584dbe5004e5d7e` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-6.md) | 580 | `declaration-track:79cb0720bb56fa87e5f2e4a4e3e45eaafc155b75d1805df328b9aaafb32ba2b3` |
| 52 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/equiv.md) | 587 | `declaration-track:c42a2796597637fd0611232e1e8e68455abfec9407b00d01b68fb4927aaafeda` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-7.md) | 590 | `declaration-track:ddf2535cd70863a6f2cab8aa8e0826ccd8cd9183aeaba1ed8ab5d293b966a6a0` |
| 54 | `def` | [powerset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/powerset.md) | 596 | `declaration-track:7abddad5d53f165e3a8de3195e842a68202c0c1b605baa78bca2ae7a22fc6a17` |
| 55 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/prod.md) | 602 | `declaration-track:3d7e1fa8568d25bccbf5ca006f42e35d3f5f97ce9e48c7a5b0383a5985173de4` |
| 56 | `def` | [copair](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/copair.md) | 609 | `declaration-track:dddda1b6d903c503cb089d0a2e7ac2a562b3932e177f7cf308a9bce4a048d19c` |
| 57 | `def` | [pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/pmap.md) | 616 | `declaration-track:80d6935807a6f729e6195c9b46d4c00b206600cbfce255fcea8fe7167960bcc1` |
| 58 | `def` | [attach'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/attach.md) | 624 | `declaration-track:86e0c93de5bea585fe546af03aee96ebee251c088036471b3702f1ab9a2b501f` |
| 59 | `def` | [nth](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/nth.md) | 631 | `declaration-track:98733ab6fce442ef8a930a070af9134224f5cd854dcffeab5b9595e4524604a4` |
| 60 | `def` | [removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/removenth.md) | 643 | `declaration-track:0a34ea58c736bacafb02d4780fc9bb65319af87edd8051be3f98d3b4f7f1518d` |
| 61 | `def` | [takeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/takeaux.md) | 656 | `declaration-track:142d20ae6d072ee7c0634e3fec2745be37127ed602d7be11b71fc637f3dd3c15` |
| 62 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/take.md) | 670 | `declaration-track:85dc890376b9b5dbf64e4aad073b934ba5f398f757ddd950a7acdca1d52e490c` |
| 63 | `def` | [dropAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/dropaux.md) | 678 | `declaration-track:34b2f3f4b9a9bc70e645c767c3102def771917d5efb8e99ac88f50ba40ef3cba` |
| 64 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/drop.md) | 692 | `declaration-track:c4cd891b7768b6790d740941d542d66a3bb0af3b5492e025d61d5bb64d19fa21` |
| 65 | `def` | [splitAtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitataux.md) | 700 | `declaration-track:8cfcb820bf4845f803d146c7448a67454e6064ed98d7617c51c071f2f472e27c` |
| 66 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/splitat.md) | 718 | `declaration-track:600bcf6f22358072647bcb05d55edb5af145927878cc315ceae641bf95148b32` |
| 67 | `def` | [takeWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/takewhile.md) | 726 | `declaration-track:f5313c3402cd9d2a7fae41fd4e8315ee9906304a6354591844cce2582bc1c16a` |
| 68 | `def` | [dropWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/dropwhile.md) | 735 | `declaration-track:ccf42ca927107eac274955ae00eea8c3ad99b74e22afc10137d223b70f3a575e` |
| 69 | `def` | [span](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/span.md) | 744 | `declaration-track:9d3cea92db74a43bdf3855853d48327326220a9429c99ec55102db910a80dabe` |
| 70 | `def` | [ofAscListAux₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/ofasclistaux-source-edition-2.md) | 760 | `declaration-track:cce275a57e66d52897679e43311f418992c6d879bcd9ec05f910b790326807a8` |
| 71 | `def` | [ofAscListAux₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/ofasclistaux.md) | 774 | `declaration-track:c1f0aa6b0b26f4a171a2f034d4946243b75cc02866301846dec73dfa2149fd30` |
| 72 | `def` | [ofAscList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/ofasclist.md) | 787 | `declaration-track:bd47b8c034773efb79a8d1eacb37f841217d5fd2b2d98551384981187f682b8b` |
| 73 | `def` | [mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/mem.md) | 805 | `declaration-track:43204a301f2067ada1507fa143452aecba4bf28ca27913fb77738c9ebab554a7` |
| 74 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/find.md) | 823 | `declaration-track:63631a52e9faf5fd94544b8dfdc7da91c58f039d4fc477b0bcf3097e31657329` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance.md) | 831 | `declaration-track:08f4e234fc032423c62b26422d15a4475a383c4b3b2c17ae90efd5ba5977b2e7` |
| 76 | `instance` | [mem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/mem-decidable.md) | 834 | `declaration-track:d963ab6448a1535aa8dfdb03e19f14493f21facbeb91c48f205e81cda3ad57bc` |
| 77 | `def` | [insertWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/insertwith.md) | 848 | `declaration-track:f1e673badabbf6521754a5b505ad286897dabff77f23634b289a171aea3bc61a` |
| 78 | `def` | [adjustWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/adjustwith.md) | 867 | `declaration-track:d104b046a04aff3d25ce576ccb753deac4202d133411dad274200b0358cf9ed8` |
| 79 | `def` | [updateWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/updatewith.md) | 882 | `declaration-track:b1736a2e97792543e60638c7a6e26f0b4f2fcd9e8bf999dc7f00859ae503f7d5` |
| 80 | `def` | [alter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/alter.md) | 901 | `declaration-track:13fc2ca80105f132bb2ae5d1bc5a8230fc0d0e490c71b3381f0225f376c03865` |
| 81 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/insert-source-edition-2.md) | 922 | `declaration-track:f33dcc82bb5f2a0e90f110c1909ba3d06ea6efb08abc3685658ed6716fd6dc57` |
| 82 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/instance-source-edition-5.md) | 930 | `declaration-track:63e36a6a95e134f6abc4889493a8eee33841387a30b94864f34c0df821ec75f5` |
| 83 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/insert.md) | 943 | `declaration-track:67ef97b05555538db905004162208667edb58b2872c69676d89899e122902acf` |
| 84 | `def` | [split](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/split.md) | 962 | `declaration-track:082224168535ea51a2771c76b7d331dac4d3906cca15aee06a0c654c908ec32b` |
| 85 | `def` | [split3](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/split3.md) | 985 | `declaration-track:b20321e2742b466adf719aff19408d4596cfa0b5bb54aee372012eb21091e7d6` |
| 86 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/erase.md) | 1007 | `declaration-track:6a0d19da0f92c73860d611065fac7baa6c17b88139f2ea016a46851e40e7eb18` |
| 87 | `def` | [findLtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findltaux.md) | 1016 | `declaration-track:b249f1081151440f44750183871823710f27f82bad06f6c8d15ab99322ad8389` |
| 88 | `def` | [findLt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findlt.md) | 1025 | `declaration-track:cf355bb5cbe34fcc193bdcfd3a92ec041de6f7827c9f3228e97efab743e7a315` |
| 89 | `def` | [findGtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findgtaux.md) | 1030 | `declaration-track:4b3cf04d83ad19e3c363382e0323bafeed93c226f397750c1be31b1fff301c38` |
| 90 | `def` | [findGt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findgt.md) | 1039 | `declaration-track:ff0a231f7fe6597875150ad43f5db0669f4d8721c857eba80626357179ff03e9` |
| 91 | `def` | [findLeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findleaux.md) | 1044 | `declaration-track:dbd671fbdd0f0e98d4169db2d615d152ffce72c833e30129016b1c6bdb9d9341` |
| 92 | `def` | [findLe](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findle.md) | 1057 | `declaration-track:66a0b0a755ecd041fb747d66aa8b12b1ae8ea3314ed460a91068cbbaf21d63da` |
| 93 | `def` | [findGeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findgeaux.md) | 1066 | `declaration-track:2c5cb00f7af0d55dd1e356c882e6802595a862e667443eb5cc1f07e1bb10c172` |
| 94 | `def` | [findGe](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findge.md) | 1079 | `declaration-track:7e976728e4e1ae734927e7d345cc5d7e42a2c63b7cac5c8aca28e5573388a50c` |
| 95 | `def` | [findIndexAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findindexaux.md) | 1088 | `declaration-track:cf9b1ddc7ee91ee8d828bd06c10ac0d2dc027996d9cfd19fae3fd6099d1a0eaa` |
| 96 | `def` | [findIndex](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/findindex.md) | 1102 | `declaration-track:11879b84df62fe59745a8c0531694bc0771c549d9f0bd4ba74b20141ce22c897` |
| 97 | `def` | [isSubsetAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/issubsetaux.md) | 1106 | `declaration-track:9e23345fe3015619b2c568d94e4bbf06a5919d27a5db2b8d3c9ea0b2c991273d` |
| 98 | `def` | [isSubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/issubset.md) | 1117 | `declaration-track:121f284c483f9786a9862aaca56e7bf0ccccfeacb3f6bf1e1bc952f0f02aa123` |
| 99 | `def` | [disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/disjoint.md) | 1124 | `declaration-track:483d7deace7da9aaca762e24d989b8207e10ba50312b5a6a7e86f4e14275070e` |
| 100 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/union.md) | 1140 | `declaration-track:b3ddb0c110fe6b4a74702b08012ddde300425cfb09ec751bce013dbfe23bb0b3` |
| 101 | `def` | [diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/diff.md) | 1155 | `declaration-track:0408125c00e048bae74d0a2169afca5c50b59c473633a828c65e249c2e22cb64` |
| 102 | `def` | [inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/inter.md) | 1169 | `declaration-track:1e449a28c32d60414fe6e006f7f2ce6230b6c5183a8051dbf37acf1ba1c30bd4` |
| 103 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/oflist-source-edition-2.md) | 1187 | `declaration-track:d2fbe17d961c39fa26e60195221294229770cf7406e8052aa7d1c8f199e016f0` |
| 104 | `def` | [ofList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/oflist.md) | 1195 | `declaration-track:a73899e4fc11e7bbb33f7d253cfeb3cd9e98ba5e00b61fda05ca44b917ff29f5` |
| 105 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ordnode.lean/declarations/image.md) | 1205 | `declaration-track:02a48f5c623956031e599bcce3416327f05f2b8ff250d79da2556b3d89cc106c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42bf37415491d0eb235b17c56eaeefecd7400d0357d70a5ca24911a354c2ded3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
