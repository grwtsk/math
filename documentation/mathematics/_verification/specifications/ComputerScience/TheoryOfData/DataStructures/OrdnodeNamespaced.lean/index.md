# Verification target: Ordnode Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5077ba96c8432ca19b8470d57244f8970a48c87",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5077ba96c8432ca19b8470d57244f8970a48c87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Compare` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ordnode](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/ordnode.md) | 77 | `declaration-track:1d9a5ce9e509be30bb8ed74f19ffbffad5564de728c16836220a71d85fc90c83` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-9.md) | 86 | `declaration-track:e22d61740bb7641419d8e8ef341d6b2c5c5dabbf829212d13594f8fb04fdb83e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:4d51f103f6329d8f6e9f7a7a3b596bb743c7e9ba50a7afc391f4ffc4be5295b5` |
| 4 | `def` | [delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/delta.md) | 101 | `declaration-track:7f7aa1bba3c27759ae3a94846dfad57839e4b2ccc1b3b8db24923043841ab563` |
| 5 | `def` | [ratio](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/ratio.md) | 112 | `declaration-track:73eec542532aa10ff2ef1bc4d72f988aeec91be14fe4f40d01b47303b086bec5` |
| 6 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/singleton.md) | 119 | `declaration-track:37245b43400f98c3492e5c215f27f1312595941716532824658c80ded1fbd04b` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-8.md) | 124 | `declaration-track:d9939eaf0ad8e41748c3fb00b7d1aee8e4f992bc0d9fb5918d21ce9189538c1e` |
| 8 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/size.md) | 131 | `declaration-track:f4c57b3c3ec3e52bbedc7ad56689e0821ed09668a87f7519d6571abaccf13299` |
| 9 | `theorem` | [size_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/size-nil.md) | 135 | `result-track:fa63e0948666a10cceb1e4e7f2a99449985994724f6d65f07e428b3b34657b9f` |
| 10 | `theorem` | [size_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/size-node.md) | 137 | `result-track:bcc6fe06d65938dfcf802f691fd1f0a85b60f8081038fd1813413527b1dd31d3` |
| 11 | `def` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/empty.md) | 146 | `declaration-track:01910e0bca5692a29f43414db3b7867bcf52ab07af6a6d64f6245404cc352937` |
| 12 | `def` | [dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/dual.md) | 156 | `declaration-track:a64409eea03889d05f095483111d8e40820d7438a4c5ea13456a2e49ce414258` |
| 13 | `def` | [node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/node.md) | 164 | `declaration-track:fccabdf93ff8e23ac57c81cf3ec0e6f7b8abafe6084de124adb2aab4d9f56248` |
| 14 | `def` | [repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/repr.md) | 170 | `declaration-track:09bd42d3b95c36883f4d5eee2786c236b555b7447bb284c4ce8cf21cd8309400` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-7.md) | 179 | `declaration-track:d923ddae5fcf5af7a88cc3eb20cd8debb9c9f84e11da5c4959688bc7b787135f` |
| 16 | `def` | [balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/balancel.md) | 187 | `declaration-track:e8ec4aa6fdebc4599fb123af5ccaf8d6a8bd5a504ae2d3ef1c6187427adb0a4b` |
| 17 | `def` | [balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/balancer.md) | 221 | `declaration-track:569ebe7224efdebdb31431679fa1d16ab074dead5f55a14c39fc9103cee33d4b` |
| 18 | `def` | [balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/balance.md) | 255 | `declaration-track:750c8c5005767fa0333ad7313962c7219808eb8b87dd811610115fcd3df99d1e` |
| 19 | `def` | [All](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/all.md) | 311 | `declaration-track:76a6d19da2649658896fcc10f8b642f7031c8831c3d043bb168ba297e2b29e72` |
| 20 | `instance` | [All.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/all-decidable.md) | 315 | `declaration-track:a422c8ededf6ed6dfa64fb74becb8d522401a0ed5a7d1b8ae7d409e47263778d` |
| 21 | `def` | [Any](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/any.md) | 326 | `declaration-track:b163b337a0e6812557cbeb40ad37258634f48ddf9b7c0202fa00c7882e3af85b` |
| 22 | `instance` | [Any.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/any-decidable.md) | 330 | `declaration-track:db38d9e0a0bbcb34f92fc2a010db0156aad4b52bad55970b17c908cfae7cef66` |
| 23 | `def` | [Emem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/emem.md) | 343 | `declaration-track:a80ce3dd18504e1f78d1843b61c10378225f7beddd7194495a33e87dd787fd9d` |
| 24 | `instance` | [Emem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/emem-decidable.md) | 346 | `declaration-track:046828d0adecc532d37985dccd4e54b8896b595e6f6afab37564cdb8670c32cc` |
| 25 | `def` | [Amem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/amem.md) | 366 | `declaration-track:c8f9fe89a272860ed5a59e285e73f746fe5c82b483adf928eaca88abc41bb864` |
| 26 | `instance` | [Amem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/amem-decidable.md) | 369 | `declaration-track:f6b288cf316a9d9b7db694ff51a6c682c025623f11b0f61ed41853624f822df7` |
| 27 | `def` | [findMin'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findmin-source-edition-2.md) | 376 | `declaration-track:6981afbe83d46144e3060e47ae21de1a81a8580adb4ee2c43fa7b7e856193cb9` |
| 28 | `def` | [findMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findmin.md) | 384 | `declaration-track:5b8a8085e74c96231a5c127e106fc4136ddddf92ea296a768de743654c503b10` |
| 29 | `def` | [findMax'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findmax-source-edition-2.md) | 392 | `declaration-track:863b8e0257a91c9c04d478ca73dd7687f773214807022684215fe3999574bb3a` |
| 30 | `def` | [findMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findmax.md) | 400 | `declaration-track:72c2f5d7984b5b2c592c803b5e423cdb06ee7354eb044a78a62f8ec33a4c1604` |
| 31 | `def` | [eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/erasemin.md) | 408 | `declaration-track:c9bb0571fcbf5d46b267bc93b89bf572f9b74bc8e4a4b2283532cd62bf227a5b` |
| 32 | `def` | [eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/erasemax.md) | 417 | `declaration-track:e953f577507a3e478a5c4488407b30734ec8c8d509e136a51eb70876e304684a` |
| 33 | `def` | [splitMin'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitmin-source-edition-2.md) | 425 | `declaration-track:dadf132863bae4b98c6705fa7a3537b5e9e0e36ccbd5ae02d3ec5e194dba0012` |
| 34 | `def` | [splitMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitmin.md) | 435 | `declaration-track:bb14372662006bdf3f63e3a25ac7d1706c98d31ba19b2eabc8dd859480996b17` |
| 35 | `def` | [splitMax'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitmax-source-edition-2.md) | 442 | `declaration-track:efaf37c8666faba0815dd4a336543550ffeeebf1f8d8299b7579cd17e8010f0d` |
| 36 | `def` | [splitMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitmax.md) | 452 | `declaration-track:c31347d3e0b845d5a9edf38dc08a7e101d6c66f75f711f05154abba5011cbead` |
| 37 | `def` | [glue](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/glue.md) | 459 | `declaration-track:c9da03b218f505f9e8e058a2ae3c2c7730c0943a7330a06b1a3c70f9c7580520` |
| 38 | `def` | [merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/merge.md) | 474 | `declaration-track:5cbf5120766df86b737e3fe9f783c6f4f40c753f3e559e6007a29b4377594834` |
| 39 | `def` | [insertMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/insertmax.md) | 489 | `declaration-track:e92ea115064801950ec566812e4e71e0e7c581de96c89910eff34ca2d4651cf4` |
| 40 | `def` | [insertMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/insertmin.md) | 498 | `declaration-track:d6bea24754f7f82089fad145a891f1d42a1f021e572c9ded75f2a20554bb87ff` |
| 41 | `def` | [link](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/link.md) | 507 | `declaration-track:d0277e70b30c232ff517870121a81290430d40c03794399a7a5a387d493220b9` |
| 42 | `def` | [filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/filter.md) | 522 | `declaration-track:3d9b2d8d2925409a2f75091cb9cf32fb614f82b6ee7d4f71d21a3c5cdf5d97e3` |
| 43 | `def` | [partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/partition.md) | 531 | `declaration-track:dd28d24b06a3bc345098ebee096030840d6ddd5108509e67578911630687ca34` |
| 44 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/map.md) | 543 | `declaration-track:526dd23d686466d584b8713afd6f184129eefc052ea53ec05be59c0befdd969b` |
| 45 | `def` | [fold](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/fold.md) | 553 | `declaration-track:9f1083f7757ea6e4ab45b82db9e7fc96458499de5fcfcc1e5537e1956542826b` |
| 46 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/foldl.md) | 560 | `declaration-track:0ca543ce03b752378246675ac6caa3938782e2f3a7f611d7d99ca05a14ba9a7d` |
| 47 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/foldr.md) | 567 | `declaration-track:ec7112c7596d4b35c7d033a1fe3d625d5b5c4f7d026a79153aa176831bc0e8e1` |
| 48 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/tolist.md) | 575 | `declaration-track:6eda0115830e960dfe418828da3802e7aad76e1b28e7261aa9383773292aef73` |
| 49 | `def` | [toRevList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/torevlist.md) | 582 | `declaration-track:a2df00ae5a5aaff343c5036235a3790a3de09edcf6df332ba7db4d528dd444bf` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance.md) | 585 | `declaration-track:0c7ebeaacdea70c79124fac7d25dfb58b54902f3abf0adf681ef6ae867b97540` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-6.md) | 588 | `declaration-track:b1e98b1e9ec3a908ae936c1b24d38e478d6efd2b7f1558e9ada9c63a36676d54` |
| 52 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/equiv.md) | 595 | `declaration-track:ebdf25428714cb996bc8dc2e319c7c28afb1ca78d892046d5b855d4aff9715e6` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-5.md) | 598 | `declaration-track:a2142c1d47369d34394b07329627bba10081e48b523f035e7ee81b04019f3be8` |
| 54 | `def` | [powerset](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/powerset.md) | 604 | `declaration-track:b2cec1b1c8a03af3cd875df499e3d2cecc83e3db4a2839bc56f4217f05d26daf` |
| 55 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/prod.md) | 610 | `declaration-track:ac54462103b90d25bc48348ba4f552d3d538274013f5476451cc0f3b4a3929f1` |
| 56 | `def` | [copair](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/copair.md) | 617 | `declaration-track:deee506f180546b82f8428f7ca76d924acceeb00a15ecc341f7f6a8a9a6b3889` |
| 57 | `def` | [pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/pmap.md) | 624 | `declaration-track:7ce922d4abefc9fa13771f00b442417512de170bf7a4990dd4ca1bcd4b76b75b` |
| 58 | `def` | [attach'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/attach.md) | 632 | `declaration-track:ab1e6c2ac4415c9dfa4ec06c1f6693b5e9a3291fa266e34d0d2a76d29023ed32` |
| 59 | `def` | [nth](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/nth.md) | 639 | `declaration-track:309ed6197653f5b416f3e65ae85df0ea995824b2a198c777cb80dfeca6d997a2` |
| 60 | `def` | [removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/removenth.md) | 651 | `declaration-track:faf440be6586cdb3c6611d94f44f72abcb6f54c0a0a98f2b0402179ae08e41f7` |
| 61 | `def` | [takeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/takeaux.md) | 664 | `declaration-track:e2a5c1cd5142733f823753ea6c454d148c41e20fae52805a8426c192488057f1` |
| 62 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/take.md) | 678 | `declaration-track:a394e3d5040ced47526de962d8a2cf0fe1a9f7adff67791027ce5a4af4a14296` |
| 63 | `def` | [dropAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/dropaux.md) | 686 | `declaration-track:d23d01fd590dbbbc26a0f51e4af96ed3aff4c0e413c969d19ea71dc24e13176e` |
| 64 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/drop.md) | 700 | `declaration-track:6644c285f16ebd649362be0b0c1ed7e76f0f82fc7b9b8d555165e4db3efbb12d` |
| 65 | `def` | [splitAtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitataux.md) | 708 | `declaration-track:1175c08959d42433b8c29a0c9206e037b76e023fde6c0a67301141354e161e51` |
| 66 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/splitat.md) | 726 | `declaration-track:d0a0598e96f9d89788b0110bb54d5aa24e56d5dd0218933296036f0646dcc885` |
| 67 | `def` | [takeWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/takewhile.md) | 734 | `declaration-track:7b865982eb441cd486e30a654d63b1e368305e5ce62565b173c5087709fe616c` |
| 68 | `def` | [dropWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/dropwhile.md) | 743 | `declaration-track:def3ec5cd02886e8f7b41fe989e59aaf2902a99ad0cf141410435902be93a096` |
| 69 | `def` | [span](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/span.md) | 752 | `declaration-track:13f4557002046ba00e9beb3b83517ded0642c872e0985e70c767ec30e61ccf43` |
| 70 | `def` | [ofAscListAux₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/ofasclistaux-source-edition-2.md) | 768 | `declaration-track:eca1586774aff06d068fa4c780fe31419fc50a0a0680b631df466ce8ee361c8a` |
| 71 | `def` | [ofAscListAux₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/ofasclistaux.md) | 782 | `declaration-track:b21c568149ea7fb1c361a28a4084d513c32cd7bfa2be011ec8521fb8e28c442c` |
| 72 | `def` | [ofAscList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/ofasclist.md) | 795 | `declaration-track:6d6cb9682f4aa9a80cfc4fb8eb6a0a0a6b9a1349f1943060a8dd62de3ab29a3c` |
| 73 | `def` | [mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/mem.md) | 813 | `declaration-track:a4f45aa52e090d9e33a260c83193013af9a8018af81c75ecbb2d3c75892f5aa0` |
| 74 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/find.md) | 831 | `declaration-track:8dee2ba3e86f98ee2c4fc93ac048f93fe40c96f06ed9e879360e029017afe0ac` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-2.md) | 839 | `declaration-track:3889123655e6f9e2508173445f291ad1289a8c5ce5619e7b196e89432a8e5aa5` |
| 76 | `instance` | [mem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/mem-decidable.md) | 842 | `declaration-track:424c020b247dd14d26db7fd39b24d20320cabfaede724236b7c02a03de99ade8` |
| 77 | `def` | [insertWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/insertwith.md) | 856 | `declaration-track:2c73addc5d22ca687fa08556937607173186e349b6b23f25fe7df7e389f2bba7` |
| 78 | `def` | [adjustWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/adjustwith.md) | 875 | `declaration-track:0582792588d17f18dd40c84fb5c44fa1e85e435799629afd6f98e75341a1b202` |
| 79 | `def` | [updateWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/updatewith.md) | 890 | `declaration-track:69d9dac3cba46d535c823c4fa681765318845194353478feaedccd3786d5f61b` |
| 80 | `def` | [alter](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/alter.md) | 909 | `declaration-track:a9451d164eb64f68ea9542a2fd75021fc48e51519e28a0b2d115a99c193161b1` |
| 81 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/insert-source-edition-2.md) | 930 | `declaration-track:7450e9df42bf6f8d97d0b2b77c854e326f01454e082eeafdc3796d6d55c1660f` |
| 82 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/instance-source-edition-4.md) | 938 | `declaration-track:9a8712d3fbf31c0f43651e3f2c4fd51fda6c6a695ed5fcd08507a5cbe24abe5e` |
| 83 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/insert.md) | 951 | `declaration-track:438d306eb2fa06b0a0b1fd975798f19d7870b7b4fc383688719a16ec328dd4fa` |
| 84 | `def` | [split](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/split.md) | 970 | `declaration-track:7c40f88a9a6ef46ef5dd11c8bd9e2a0ac157c608afc10c3a1a31082bbac9ed83` |
| 85 | `def` | [split3](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/split3.md) | 993 | `declaration-track:01093a33ef2be4e5bbc3cb4dd092311a777b4447012ed96bdb414673e3a9726e` |
| 86 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/erase.md) | 1015 | `declaration-track:7aeb6eaef91d817a40d61f5509438f5b867e07c3881401aab7167d396a231a3e` |
| 87 | `def` | [findLtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findltaux.md) | 1024 | `declaration-track:a0fcf4c83a3e03f8548e6793661ca6a921df705585fa15de6eb189e34dbe6b02` |
| 88 | `def` | [findLt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findlt.md) | 1033 | `declaration-track:a229cd2cf9eb5b53960f37aa5866258fc24f37077a2ace09ee4b6db37fde0233` |
| 89 | `def` | [findGtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findgtaux.md) | 1038 | `declaration-track:eef073b62fc5ad4bf536b83c832cf3bf378c8279eadfc5fc7d2338ec12060efe` |
| 90 | `def` | [findGt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findgt.md) | 1047 | `declaration-track:1a4921b911e000f8943063dad519b174576107755dd6fba85a76a6ec599b8585` |
| 91 | `def` | [findLeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findleaux.md) | 1052 | `declaration-track:a3e05b3bd2586ce0abf10ef80fe62e7724d165d5a33c81306897129174a52049` |
| 92 | `def` | [findLe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findle.md) | 1065 | `declaration-track:ba8f4230c8e146d49b4ef1649d7b99b2078d884d5e02c00abbffef4dc7fe52ef` |
| 93 | `def` | [findGeAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findgeaux.md) | 1074 | `declaration-track:44a3433e012f8a8d2ce7916fb4dcaab16a68fb20c4df0190cf66d9a352392a2a` |
| 94 | `def` | [findGe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findge.md) | 1087 | `declaration-track:c227a5853f172fd88e0233c6a8f8e8727ee307748cd7cc116fd2acdfda93bd09` |
| 95 | `def` | [findIndexAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findindexaux.md) | 1096 | `declaration-track:0cffde00a721d407162a92493f9577efb6336ae824d3b47ec768dd4f88b4f3b6` |
| 96 | `def` | [findIndex](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/findindex.md) | 1110 | `declaration-track:e239f1031f9202400c1e687723dceef1c3de65b5c68490d52b743438c20f4365` |
| 97 | `def` | [isSubsetAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/issubsetaux.md) | 1114 | `declaration-track:8b253ccb8908265842b2d22b4f5c82455fa562e6c017db7385615d3b8df8472d` |
| 98 | `def` | [isSubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/issubset.md) | 1125 | `declaration-track:70fcba55fdd9e49225d79bdf6638ed3efe9ce0c0d865a4d01703bf11d267de1c` |
| 99 | `def` | [disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/disjoint.md) | 1132 | `declaration-track:5db5cf5a49257ae5844378da8e95510e7d4c0b8e0091bbbf6a1ff0c9e54a64a7` |
| 100 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/union.md) | 1148 | `declaration-track:e4b896e30c621f6e705d206072a06ebdd90a0bfd007cf71bf52903e5ca1665b6` |
| 101 | `def` | [diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/diff.md) | 1163 | `declaration-track:439e3bdc29ccf930e2f22395cd23608b770f4cfa8069320a6d8ce56362ea707a` |
| 102 | `def` | [inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/inter.md) | 1177 | `declaration-track:2566c9b404b3ac805af0443b9314830ab086ca12b8ed5b968f789a8904cebdae` |
| 103 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/oflist-source-edition-2.md) | 1195 | `declaration-track:96538aa2a901d801233627d71889c23ffecbffd981c967b197f84fedb4963851` |
| 104 | `def` | [ofList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/oflist.md) | 1203 | `declaration-track:5fd65961a5d35d4337e1a2ef8b559439454bcd93218f69544a2218202fbbf650` |
| 105 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdnodeNamespaced.lean/declarations/image.md) | 1213 | `declaration-track:1f5ef0f33c134e6d97de17068df82f2dac3f1c8cab7bb8fbabfeab20f271d938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8975e9619510fbd42abf458e6104b5b7eba6649e1801b969df759c90e5710bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
