# Verification target: Sym Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd435c1736746f9f390f5c6e084ac45d8c0b6b9",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd435c1736746f9f390f5c6e084ac45d8c0b6b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sym.md) | 43 | `declaration-track:0f3d15d9c72a1f9f9bf32a9220ad0a9bf5f2a1eab95237867225cfef7635f995` |
| 2 | `def` | [Sym.toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sym-tomultiset.md) | 48 | `declaration-track:962257df13ccc4a82c1b8801df502924d6066079aa09d5cc5b1f6af2ddc6f4b7` |
| 3 | `instance` | [Sym.hasCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sym-hascoe.md) | 51 | `declaration-track:cd74a93c098dfbe6057f1915be6e31560e9c927dcafa6ddf5229bfc1d8a2cafc` |
| 4 | `abbrev` | [List.Vector.Perm.isSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/list-vector-perm-issetoid.md) | 58 | `declaration-track:82f7c640699071cc55e761ee782fe83a387e458cda6774361f24d54eaed033c4` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-7.md) | 65 | `declaration-track:a96920b41d5834540e9e5cdb70c7f1df383968fe31b5315cdee1b3e4826f2e59` |
| 6 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-injective.md) | 73 | `result-track:45c002f601965558eea34f1a8bb05d7a28a69f2c20c0944fe50e7246a827aea7` |
| 7 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-inj.md) | 77 | `result-track:5e5e6c294464b4c5199acf1acb38ae4d3e4744504815c8a329fae7f73a4b9760` |
| 8 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/ext.md) | 80 | `result-track:951843fc5ecadac0c53ea73b294fd21b647e92b00acce6ba68247f1c155ca0ef` |
| 9 | `theorem` | [val_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/val-eq-coe.md) | 84 | `result-track:bdfcff7597a5d0e0327f94953535c9fd6bdf2488a448531fb77eb704b09303da` |
| 10 | `abbrev` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mk.md) | 90 | `declaration-track:70e30beb7d39e8833653bd3d7f33056601ac463e1c8b29f4021331e4f958ce33` |
| 11 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/nil.md) | 95 | `declaration-track:3c2b15517a5c8cf292c841288161f545a32edbfa2084af380e7a9b1fb036ea54` |
| 12 | `theorem` | [coe_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-nil.md) | 99 | `result-track:7c7f5cfcf7c4e26453d21874b453f20820ff473d93a9f275a61d36920e6a2893` |
| 13 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons.md) | 105 | `declaration-track:7d0cf503dfdba95a03bb8d9c97f65fb2285fdddb01663eea6d55641fa8c07fe8` |
| 14 | `theorem` | [cons_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-inj-right.md) | 112 | `result-track:75923e529835b55f55f959beba9b47d3079df9c7f6637be022f3fa1c4ba834ac` |
| 15 | `theorem` | [cons_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-inj-left.md) | 116 | `result-track:67a477a9b1f660f7c5af69020f15373d4f134eda782232fa3e02bbb3417363d8` |
| 16 | `theorem` | [cons_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-swap.md) | 119 | `result-track:67c45ec951a4adba16e9a4555b48ef3241d723ff39cfc78226d7f232941fbac2` |
| 17 | `theorem` | [coe_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-cons.md) | 122 | `result-track:14d28441bc5d7a68be4703844b035e77adff7dc7043fb8ae4c0ac22d72f7c178` |
| 18 | `def` | [ofVector](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/ofvector.md) | 128 | `declaration-track:9e2745b36f57fa7eff721b7936e5628dfba3052049e5c5625f290b90ebc53ce9` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-4.md) | 134 | `declaration-track:717f0793c33f6c290f19f899aa384757d7d2751ac529dc37505420385fa9a67c` |
| 20 | `theorem` | [ofVector_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/ofvector-nil.md) | 137 | `result-track:27d8bdc86b13624f096d6078f93a0a586426355f8da14e48b36987b4a824fb0d` |
| 21 | `theorem` | [ofVector_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/ofvector-cons.md) | 141 | `result-track:7d4252e2363e70aee019ef178df8e431e90d322a2182595a710b53cba91ec0b4` |
| 22 | `theorem` | [card_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/card-coe.md) | 147 | `result-track:822252f051ed3f831c41392a326bd6a234c242bbfbae428daac626d35d69941c` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance.md) | 151 | `declaration-track:61b45213ffd05088c77d094ff29bda2203ddd77632d0d277f790422d8ed07efc` |
| 24 | `instance` | [decidableMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/decidablemem.md) | 154 | `declaration-track:3e699931c926775de77c521c122dbe9d99cd8a7c717c8990c65a1d114536a681` |
| 25 | `lemma` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-mk.md) | 157 | `result-track:a55fbc4fa6ea1dff4ae5d987b195146b1e3993c88655fc05a39018547b32b1c9` |
| 26 | `theorem` | [mem_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-mk.md) | 160 | `result-track:aef3a65fc754a0888c82dc93424ce1c31fa43f6d2bb72ed5706f1ac10f890724` |
| 27 | `lemma` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/forall.md) | 164 | `result-track:5c5021aba2ddae27186171117d373849cf3b97ecf9992f09ffa99bd118cb5441` |
| 28 | `lemma` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/exists.md) | 169 | `result-track:142e3f718490ec4c3af46d0bdc68103686fa3af3b9aacd03327faee9123aa926` |
| 29 | `theorem` | [notMem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/notmem-nil.md) | 174 | `result-track:26fbc19c51c014071cd39f857bbc20006c8880c1362775dd8441f0a1e3286767` |
| 30 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-cons.md) | 178 | `result-track:284e7f81f7694152118505b0c2860b95edd606261f6e4bee5d2e23c0adb1b46e` |
| 31 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-coe.md) | 182 | `result-track:592ffe3bac2369cc9496ba66a847321bc19c060bd968c177e27f0b2edc758ef8` |
| 32 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-cons-of-mem.md) | 185 | `result-track:0267696a012b43d363312a8faff81b9f37ae87a3a6bb182d0f63e4e66766b4ea` |
| 33 | `theorem` | [mem_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-cons-self.md) | 188 | `result-track:ea2b220292fec6318f69e5d0fabd2516e371c1542948f4a8abd263ac36969fad` |
| 34 | `theorem` | [cons_of_coe_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-of-coe-eq.md) | 191 | `result-track:a392b10da7a1ea839176a6e14bf6cf499b08e686135d5f3d0e1c335488a75e31` |
| 35 | `theorem` | [sound](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sound.md) | 197 | `result-track:e8e17c44b60010d8ce8496e00c66923eb9bb4d4d9c5af7a2e1d52eeb3754d48b` |
| 36 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/erase.md) | 202 | `declaration-track:b4c1731a3e8bfaa9e555a058e2b64d571e19c4578aff1bd50121268505b3f6b8` |
| 37 | `theorem` | [erase_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/erase-mk.md) | 206 | `result-track:1a2a9c16ba7b846e050e90e72bfec5f5a1cdee44a72756b17936efcd3a46b20e` |
| 38 | `theorem` | [coe_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-erase.md) | 213 | `result-track:e539abe591c4995c0570e20659e3b3110893e200a5bc0fda0be3c534cbb68fe9` |
| 39 | `theorem` | [cons_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-erase.md) | 218 | `result-track:b8e8fae963e69b37ae794b3411d6810f0a6e3797747871788eb643787c8b5792` |
| 40 | `theorem` | [erase_cons_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/erase-cons-head.md) | 222 | `result-track:6fe5ea6a203879186f6883fb939fb72d4ab3db9db1f3e003393ba966d2755ca6` |
| 41 | `def` | [Sym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sym-source-edition-2.md) | 228 | `declaration-track:64c4725a286fe493084a6c70e5068ef0f80b2fdda8b7da3afbdd13d2bd13e18d` |
| 42 | `def` | [cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-source-edition-2.md) | 233 | `declaration-track:bd5439bd73015d4a1c6ca6869e1eb2ded5df5a0e6b395ce0e542dd2b33386488` |
| 43 | `def` | [symEquivSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/symequivsym.md) | 241 | `declaration-track:3d11a4a4a362e68e86c85be6b749981b00bd5e3335a56e545b570a3ca316a482` |
| 44 | `theorem` | [cons_equiv_eq_equiv_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cons-equiv-eq-equiv-cons.md) | 244 | `result-track:a35e4aebd71449f1921c2a1c47efb422fede023f3816476ffcb08ae2332b6661` |
| 45 | `instance` | [instZeroSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instzerosym.md) | 249 | `declaration-track:83de26220123b558210ae927097b397d3da2e4062c3cd08d626ce103ab9c355d` |
| 46 | `theorem` | [toMultiset_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/tomultiset-zero.md) | 252 | `result-track:605e5d34f974607b6313b63946d35e3f934d4193d3c71eb88b6976573586ba54` |
| 47 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-8.md) | 254 | `declaration-track:c0ee57dfe562b8ee0b7d9931b1f1b3a8538a25cae28398c3c8de8f84d86e9251` |
| 48 | `theorem` | [eq_nil_of_card_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/eq-nil-of-card-zero.md) | 257 | `result-track:5187064c100eb74fb29633d4a0ff360009ec918496f4a13243cc3df0ea472d1f` |
| 49 | `instance` | [uniqueZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/uniquezero.md) | 260 | `declaration-track:e222b4f98288556fe30cd82ad854ec099b578c4fa7646863a762f5f3cd33dd66` |
| 50 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/replicate.md) | 264 | `declaration-track:cff52bc7f073e7f87724cad7234a659a31ceb726f496187b6184c8f0e7f1769a` |
| 51 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/replicate-succ.md) | 267 | `result-track:0f7d280f5fcb655f3c8c4a898db4cb5c04ff24cad1e3823c174946b94fdf2f84` |
| 52 | `theorem` | [coe_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-replicate.md) | 270 | `result-track:6eb39cb2acb7c00daea4f6f29062922edd9dfe795c7f27c204b365869237ed0a` |
| 53 | `theorem` | [val_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/val-replicate.md) | 273 | `result-track:74808ce222bfa1ae75d5fa07faa6d6abec0abfe2367cb04d3eb2cb4ffe99404a` |
| 54 | `theorem` | [mem_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-replicate.md) | 277 | `result-track:3ef038099938f75db777e1cce83da097056cf654fe4b88cb75169a9a15f087fc` |
| 55 | `theorem` | [eq_replicate_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/eq-replicate-iff.md) | 281 | `result-track:fbdbaa2ccace0880ac3b11db532fdb16265265f7fd7ec9e30aedf5d7a77c5074` |
| 56 | `theorem` | [exists_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/exists-mem.md) | 285 | `result-track:7c66c562488c91906cabc75be2244317d6e29ec64291cce149a6e2bf807b8e4d` |
| 57 | `theorem` | [exists_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/exists-cons-of-mem.md) | 288 | `result-track:a1dc37f9be758752574ba176d3939823c82f003611102c91baa6d08d455b769b` |
| 58 | `theorem` | [exists_eq_cons_of_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/exists-eq-cons-of-succ.md) | 298 | `result-track:a8bcf2d1f323c391079138fdae6bc804b08c2010fc69b830005db503694acc63` |
| 59 | `theorem` | [eq_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/eq-replicate.md) | 302 | `result-track:14f72993429d6ee971e2a3de1bee468119816736a23ac3b3ff925a6c58df1b1a` |
| 60 | `theorem` | [eq_replicate_of_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/eq-replicate-of-subsingleton.md) | 305 | `result-track:fc7051a0f4ba4c6565f049892240769bb4105dfe4c36e0c889a53125f3bcb31b` |
| 61 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-5.md) | 309 | `declaration-track:80cd438cb7bd98c421c5fe864725fe9e60d780e5f90f8af6a7d5203a11c7a0f1` |
| 62 | `instance` | [inhabitedSym](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/inhabitedsym-source-edition-2.md) | 317 | `declaration-track:e1fa6bad37a3ee080a1f5e13462f4d1cce5b95cd0a3520104ce2957069d1395a` |
| 63 | `instance` | [inhabitedSym'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/inhabitedsym.md) | 320 | `declaration-track:3584e64a2986174ce0b655dac7ac79a1e2228053176fe6b3ea6654eeca2346dc` |
| 64 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-3.md) | 323 | `declaration-track:6a3bd9f75e5bce54108888f772fd95485f221ae7bb746e8b4e58344fd4afb9ed` |
| 65 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-2.md) | 328 | `declaration-track:6960bb03ec05a543ec800bc78cb09f3e30de12ad15f9c9a84bfd2734b9cb0605` |
| 66 | `theorem` | [replicate_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/replicate-right-inj.md) | 331 | `result-track:4bcec0bc7a9d599c5ada111148ef3606207be7d7575b58aafe51a8faa7e067ac` |
| 67 | `theorem` | [replicate_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/replicate-right-injective.md) | 334 | `result-track:18a9444eb5c2c2173901f4d8a758fe73f611d79fd93801550277e6e3b80be4d5` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/instance-source-edition-6.md) | 337 | `declaration-track:8377426f6a79b9897af060f4c6ef48a207d695bf5401e49b1cb865c723c90cf4` |
| 69 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map.md) | 342 | `declaration-track:cae01c92b1a583e3cdc32444c7050f6b9575ea4dfb8389f4e98bf9e2aa133541` |
| 70 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-map.md) | 346 | `result-track:4e796aaa88d3bca8b00a308db043c4bffb55a64735cee4cc9119a33a5f8c29a8` |
| 71 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-id.md) | 353 | `result-track:517982c791354ec72ef96c738f7af9f301edb08f20b84606d65e24701d2d62e3` |
| 72 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-id-source-edition-2.md) | 357 | `result-track:78452e68081ac26f9ae951d5c990804295be0faf581084d95002e8c0c8d03c6d` |
| 73 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-map.md) | 361 | `result-track:c4286ff0b8fb5aa8dc49b991e2177ac2225bfeb0b886722a08881e6b5e512019` |
| 74 | `theorem` | [map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-zero.md) | 366 | `result-track:ad42b4287aff0e0ba8afdfa07eb70be22e6575bb575a3e90993691ae2de837b5` |
| 75 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-cons.md) | 370 | `result-track:898c4cd0146d03db927f220cf5c49f18ace2ce90153aaaba34b17bffb16db201` |
| 76 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-congr.md) | 374 | `result-track:b7b3c802cbf82a994f6d1ad5a29f894ed5c823cc9aa4963d5c22684f55845217` |
| 77 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-mk.md) | 378 | `result-track:5b75993ad902a2ceccd5be7eba6349431831d515445f36e152f7a6fb2fad4bbe` |
| 78 | `theorem` | [coe_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-map.md) | 383 | `result-track:e8cc83dde4ad1028a6c133bf864b1794425c2dd910a9a4a0a678813b56ebbe3c` |
| 79 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/map-injective.md) | 386 | `result-track:0f4ab6297c0d25e61c7c5217238d08ff0f38d53f7b8db7d89759c58521173a7f` |
| 80 | `def` | [equivCongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/equivcongr.md) | 393 | `declaration-track:1eb848d34c3091054bb223f0a3eff8dc050edfb2caa739008906373070c07c36` |
| 81 | `def` | [attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/attach.md) | 401 | `declaration-track:2bc8a38aafc960b1eb68b9e0a8b9d43d572c22885cedfc51825f42c2a0ca6516` |
| 82 | `theorem` | [attach_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/attach-mk.md) | 405 | `result-track:bdd00c0113b269f66da730e9f3d3fa7e53d5de33d36526d66af0388ecab4621a` |
| 83 | `theorem` | [coe_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-attach.md) | 410 | `result-track:5d1b337d5027423dcb12e25c40e7bedb911b176c62ca8afbceb1065325580ddf` |
| 84 | `theorem` | [attach_map_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/attach-map-coe.md) | 414 | `result-track:8da0d511847737e8484b69e4b5a7ffa109ee44ecc9d1339a8a7265420dabb93f` |
| 85 | `theorem` | [mem_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-attach.md) | 418 | `result-track:4439d9989d5664e44a8f3a679c4d35e02c7c5864cbbff47efa64584b32d71a1c` |
| 86 | `theorem` | [attach_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/attach-nil.md) | 422 | `result-track:a46595b9be9f88140ef04ed35516d3fdd4e3224504c365250908f8f7523dcae7` |
| 87 | `theorem` | [attach_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/attach-cons.md) | 426 | `result-track:bb83c437a95c6379ca840fe42c667fa1a57c43a73e679cfc48993106e0adaa29` |
| 88 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cast.md) | 433 | `declaration-track:677d17649d365f9b406879726e5ccd28c853ee06f3f4593d934aa8c726f81fa1` |
| 89 | `theorem` | [cast_rfl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cast-rfl.md) | 438 | `result-track:3a359594ff2bec0547a75998f82c26155a2d9f3a5dbb5c9a217dce1a02ebb994` |
| 90 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/cast-cast.md) | 442 | `result-track:8bc6a50929f99969143f3c6105f36a83a4ead7a880b6ade2c636f8b93f7eda17` |
| 91 | `theorem` | [coe_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-cast.md) | 447 | `result-track:3795d607947c856c9a5b99a109763e3ea3e1a7232800a7523ad310512d4484bc` |
| 92 | `theorem` | [mem_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-cast.md) | 451 | `result-track:18dfdd73c768beabfb914133ef97201e1f1652e5ea123680f646523f608716fb` |
| 93 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/append.md) | 455 | `declaration-track:1072ce398fcc6b1df8352fbbfed0b5a76fce7a64bf0748f294f6f512758cb3a9` |
| 94 | `theorem` | [append_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/append-inj-right.md) | 459 | `result-track:15cd8610e1094d1f0331cde846bfc1e4477080822d3d8b4da1362d8f15bce661` |
| 95 | `theorem` | [append_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/append-inj-left.md) | 463 | `result-track:9748ba6082f7996fe051e6b1889946346454b291b0b54c5e5b86821ac7673b1f` |
| 96 | `theorem` | [append_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/append-comm.md) | 467 | `result-track:f65901e1780cc20c1788c18e798acc5a899ef3611231d25111381bd18e4c4f33` |
| 97 | `theorem` | [coe_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-append.md) | 472 | `result-track:226e5acb6747881a9c23f5776c334feaa2447040274d95f5643fb5462e84561f` |
| 98 | `theorem` | [mem_append_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-append-iff.md) | 475 | `result-track:d9a8d75397504bcadcccf2300acb11c31da7fc19df586cff07169bf71b992e20` |
| 99 | `def` | [oneEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/oneequiv.md) | 481 | `declaration-track:00481d0fa0a1a242d2d34cbdb45903f410ef7cf5ec85dbdcac89eaed66fc4d64` |
| 100 | `def` | [fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/fill.md) | 494 | `declaration-track:b38abad5543f81c913cf7855effdf0cd20472fa1aa36cdd9a9d496933e9f76f2` |
| 101 | `theorem` | [coe_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/coe-fill.md) | 497 | `result-track:df3212898868786fb5631d46f921e4986644dd2d40885fee8271d2d9f1cd6eb0` |
| 102 | `theorem` | [mem_fill_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/mem-fill-iff.md) | 501 | `result-track:e33711646475900107e05d2f898ffc5e0bb5e9356a2543bbc427fd4b7fd1ad55` |
| 103 | `def` | [filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/filterne.md) | 509 | `declaration-track:ca37cfd90ed537f0f82cbde57cf2c06aebacd177d23b96798494b28f0b4df8c6` |
| 104 | `theorem` | [sigma_sub_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/sigma-sub-ext.md) | 520 | `result-track:4896e47201cb5f04224ffd82039a08d69f828e8aed959ed34f1f886dd56ea60c` |
| 105 | `theorem` | [fill_filterNe](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/fill-filterne.md) | 528 | `result-track:475fda2a6551d6e32c18e616dbdd74d9ada256630bc6d71bed333792d55d45cf` |
| 106 | `theorem` | [filter_ne_fill](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/filter-ne-fill.md) | 539 | `result-track:e16f0553cc03b21f52d0685e785ac4c31b7235fad9609833a5a437b56df990e8` |
| 107 | `theorem` | [count_coe_fill_self_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/count-coe-fill-self-of-notmem.md) | 551 | `result-track:4a75382b1ba4959479b71f6549085b4fe8f791b0b621486e9fc5d98bfe297583` |
| 108 | `theorem` | [count_coe_fill_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/count-coe-fill-of-ne.md) | 556 | `result-track:3e1e21d971b75ac0dbbb3af91d684c2b68de5b2bf327fb1e0afec8a57f7035d2` |
| 109 | `def` | [encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/encode.md) | 577 | `declaration-track:5468571be7cfba1801e9515b574425d01a2577f0f7fdd41be666e311090e100f` |
| 110 | `theorem` | [encode_of_none_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/encode-of-none-mem.md) | 585 | `result-track:62006b642b13b1256744134de184889f343c2849370fe0f0f5f83f5fa46b1db9` |
| 111 | `theorem` | [encode_of_none_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/encode-of-none-notmem.md) | 590 | `result-track:cb40fc0299cd5cd0cc54b0c58b81ac12fd5ce6611314715bda12da216151dddb` |
| 112 | `def` | [decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/decode.md) | 598 | `declaration-track:5b61c9cde0ba20d520d903689099ae901c9fcd5e01a2a71eb0c08c5113d9f3d2` |
| 113 | `theorem` | [decode_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/decode-inl.md) | 603 | `result-track:0fd30c915e81d6f42ff7e8c8a0d3823406e43ace3f99c2faee558dfa5675df48` |
| 114 | `theorem` | [decode_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/decode-inr.md) | 607 | `result-track:6f1ec6021350c5c5a8c3ad4844deb9aa98d8f371a858dd8f6ed42ad9d7c9ae24` |
| 115 | `theorem` | [decode_encode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/decode-encode.md) | 611 | `result-track:7eabc8d3fb9314f8540077408d13b28343674092850d98e84ba88bc90c4590ee` |
| 116 | `theorem` | [encode_decode](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/encode-decode.md) | 619 | `result-track:33fa8f7dd7467edb8d3db1989b64c35cd476b4a219d1312e07c31146a6cff469` |
| 117 | `def` | [symOptionSuccEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SymBasicPublic.lean/declarations/symoptionsuccequiv.md) | 635 | `declaration-track:dd993c348e4e906314452bca85de56fb19d527591079e5992f1b99f8d0636787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52759c78df745d2f2f7c1b9673debcf0622eb4f118f09fe3c86c43ed51ac4297 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
