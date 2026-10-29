# Verification target: Data Multiset Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a98c584ce5234a932c18caeb55109c8993d4c94",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbd7c5d136b54c2bc9f844eb474a1219736f8db086856fc0bb944847adad4abce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a98c584ce5234a932c18caeb55109c8993d4c94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbd7c5d136b54c2bc9f844eb474a1219736f8db086856fc0bb944847adad4abce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantbd7c5d136b54c2bc9f844eb474a1219736f8db086856fc0bb944847adad4abce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Multiset.](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/multiset.md) | 79 | `declaration-track:55e79ad12335770133763fb8d85144087e00f1ed02135e1f6975d50a9c0d88fd` |
| 2 | `def` | [ofList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/oflist.md) | 86 | `declaration-track:263889ea26c3356c458be3e2e34cdc2fd445f99af613fd2d68abcebe83f00850` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 89 | `declaration-track:a534ec1324d6f8b25d6707dc42b787e067f218148bc1f8d58cb6e8649c85edcf` |
| 4 | `theorem` | [quot_mk_to_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/quot-mk-to-coe-source-edition-2.md) | 93 | `result-track:6a6773fe74074721ed2c5815740bc2a19521a6584eb66a25d98bb89db760cd36` |
| 5 | `theorem` | [quot_mk_to_coe'](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/quot-mk-to-coe-source-edition-3.md) | 97 | `result-track:cabb7a4f1d3b00f5d9890b36ca01ef35b0fcc076f0a20d7ceafefa9fe4b39548` |
| 6 | `theorem` | [quot_mk_to_coe''](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/quot-mk-to-coe.md) | 101 | `result-track:5f7a8adfbd1bccaeb6ab4948fea7eccb7ff2526b91974877f34b9327ff4e34cc` |
| 7 | `theorem` | [lift_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/lift-coe.md) | 105 | `result-track:6d719e74f4dbcf19a1d4cd39b0268ebf685eb901fbfc7ed8cf2fb8872de1b1b8` |
| 8 | `theorem` | [coe_eq_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-eq-coe.md) | 110 | `result-track:2b96ffcf5c0ce05928252c6089ed9435059c7a6427f738f0696ad53c3380636b` |
| 9 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 115 | `declaration-track:f98ead0c202ad7317dc52a27f15bcf44e7678ebbc590b2da74fe0b2c4f52f2bd` |
| 10 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance.md) | 118 | `declaration-track:017887d77c9e05875b9965cc3c204f7a98eee467224edb915f7c86ba57322727` |
| 11 | `instance` | [decidableEq](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidableeq.md) | 121 | `declaration-track:a127e4b1438ea7011b88f992ca3592dff67705ccad8749f28ab495131543ad58` |
| 12 | `def` | [Mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem.md) | 127 | `declaration-track:ed883e1e28f17d94f6140f2069ad1d8ef795b8ea7cf4027d5eebdfd25236b32e` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:3a825a3f6306f770097b6fc305fac5266f96afadc983de3a0fd2fb23ddbee512` |
| 14 | `theorem` | [mem_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem-coe.md) | 134 | `result-track:e142fb27bd9891b249596c387b9e5612a4ff124e00d3021484c9ac01d699bae8` |
| 15 | `instance` | [decidableMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidablemem.md) | 137 | `declaration-track:c94eb22cfd15215ca711ac8d172a63df491c0e4471a8720a57720c5d9c68b367` |
| 16 | `def` | [Subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/subset.md) | 152 | `declaration-track:ebaf0b37642fded6842877b3a4d4cb074d4ce3e3312ca1a3d77f30daebf8aec1` |
| 17 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 155 | `declaration-track:0ae969c5a3e6e50c8a06e3191c29f6100db33dbb2b34caf49eb8c2c977177ad8` |
| 18 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:162b1c827fcc256b74b59dda290b82fefd59eba8d0d5edc83454936a85d62517` |
| 19 | `instance` | [instIsNonstrictStrictOrder](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instisnonstrictstrictorder.md) | 161 | `declaration-track:72a43ce2b4fdf16702f045a2fe6ce3d8700318da49fd76c78503a767a9b638b0` |
| 20 | `theorem` | [coe_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-subset.md) | 165 | `result-track:93fc7c7c28996463991c96166d37ed905e426d13b970b9942670208d718f74ac` |
| 21 | `theorem` | [Subset.refl](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/subset-refl.md) | 169 | `result-track:8668d047ce5b6018eaa795574f84c396e7a974c3aef91e1833494c49042f8d8b` |
| 22 | `theorem` | [Subset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/subset-trans.md) | 171 | `result-track:30350bb330f6d1486bba5ace4769f72c42c6473910a091ffe30618f5c9ccafe2` |
| 23 | `theorem` | [subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/subset-iff.md) | 173 | `result-track:33cb32cc0716a50dbb910e9123f3d11575c7fc077713328ed1ee027fd6b74d57` |
| 24 | `theorem` | [mem_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem-of-subset.md) | 177 | `result-track:87d67eda70d6d8d92e6f105f041fa430826fc5f41b7c4262add41975b616ac6b` |
| 25 | `def` | [Le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/le.md) | 187 | `declaration-track:9caef814a7449c2abea60d9428aa3c7d900ad5ca929a788f8f8518cd5b68f6f8` |
| 26 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 191 | `declaration-track:5346efb51aea03c46f5394b29e48466342e49b9f845fa64f91ba314cbec25840` |
| 27 | `instance` | [decidableLE](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidablele.md) | 197 | `declaration-track:f562780c445f8621351b0c316e1ce8f6a293298e333d66520134228756487a12` |
| 28 | `theorem` | [subset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/subset-of-le.md) | 204 | `result-track:49b67e41f0797cd7e38d3b3d149e73ba52699d6aea2ea2726d95f60e6ed68a93` |
| 29 | `theorem` | [mem_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem-of-le.md) | 209 | `result-track:138eac926585157bf629ab7c637c19d02f458bb6c1413650b494c691414edb37` |
| 30 | `theorem` | [notMem_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/notmem-mono.md) | 212 | `result-track:84b769c14f15d0203c2785d9957290ab13175a3f23a1b1287e995098a95c99e8` |
| 31 | `theorem` | [coe_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-le.md) | 216 | `result-track:10e82abd6523ca22265d7f39c45aee1db075bce8243b170d5a2d470482c42ce4` |
| 32 | `theorem` | [leInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/leinductionon.md) | 220 | `result-track:21faf82cf7821030d8b73370eb27bc121964b639671e7c0b1df6833a3624a3ba` |
| 33 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card.md) | 231 | `declaration-track:d978c493faf11ea3f86983f980131ed58b89472156a1ca6ced2d326ec5443150` |
| 34 | `theorem` | [coe_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-card.md) | 234 | `result-track:8be24e5694e0ef97cc72579b80b32c25cbd2e3d5e768ca992131009965ebb227` |
| 35 | `theorem` | [card_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-le-card.md) | 237 | `result-track:b90d5a38c829e6d6555189517ab571cd1b39381f17200cd9d5dfb25427019710` |
| 36 | `theorem` | [eq_of_le_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/eq-of-le-of-card-le.md) | 240 | `result-track:2cfd4bad42d7a89848e0dd795d0f65c096b3bc4b745dffeadb068ba17f8bcb5e` |
| 37 | `theorem` | [card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-lt-card.md) | 243 | `result-track:2a5f2312aa74b8c219a53c73fc952f7b8efbce5503c616ae1c219013c712937b` |
| 38 | `theorem` | [card_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-mono.md) | 247 | `result-track:07645811301f58839c8b3471611d6c3c30798d082c0a513b0936cb45b67e2767` |
| 39 | `lemma` | [card_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-strictmono.md) | 250 | `result-track:8fc5e3f737c9156452d739506503d6327655e7f8f65fe9503376591947eb36a5` |
| 40 | `instance` | [instWellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instwellfoundedlt.md) | 253 | `declaration-track:6fff282899c110caa1576ef919c5a341d0d67ec7fb5a63922e763a3e5ad0a53e` |
| 41 | `theorem` | [coe_reverse](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-reverse.md) | 257 | `result-track:a7659641b8686592d2115f2180bfae8fcc6a9bd59f4f7ef16de488e99f95e3ba` |
| 42 | `def` | [pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/pmap.md) | 264 | `declaration-track:f30e55accdeba3be8f01003a142c8ecc037e9453655641971b27a7b2254f59e0` |
| 43 | `theorem` | [coe_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-pmap.md) | 274 | `result-track:25d0b9bd0761ad1fe4ed95d57c1294b3cd5cda85b364ba361ec9508a2d711c99` |
| 44 | `theorem` | [pmap_congr](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/pmap-congr.md) | 278 | `result-track:69da18796155097cfd0c08208c494c97b53f36fe4bf8a9936294c95fb5d74945` |
| 45 | `theorem` | [mem_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem-pmap.md) | 283 | `result-track:5925b90d6182637e5f4e53395e02d42a4bfbb154cdd1d12904daee09fde74632` |
| 46 | `theorem` | [card_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-pmap.md) | 288 | `result-track:c7e8fa57fcea1f8888d526d0135dc5a937508b6e780a088180f715e3fef9abf8` |
| 47 | `def` | [attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/attach.md) | 293 | `declaration-track:791a7dc5e8cb3a6ca99154a0a24b7e2878d8479a1eaef2da716c13df12b5a7b1` |
| 48 | `theorem` | [coe_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-attach.md) | 297 | `result-track:0e2f7d51fed33a57f559b6214bd19228281963c8deb84a01bdecd624051077fe` |
| 49 | `theorem` | [mem_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/mem-attach.md) | 301 | `result-track:0490bf9cd000818c120822df1b74180d2b38737bb9326f7802931c35e6d27108` |
| 50 | `theorem` | [card_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/card-attach.md) | 305 | `result-track:cf0ccdcc6f3ec05aae6122251121cf2c3c48ac938321dbdcf646261d1b978eb0` |
| 51 | `def` | [decidableForallMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidableforallmultiset.md) | 314 | `declaration-track:b04c953cc3a2f561c731ff7795c972fd265dd29aecc5f0e6bfe824cf4acaeda7` |
| 52 | `instance` | [decidableDforallMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidabledforallmultiset.md) | 318 | `declaration-track:57cd9131b6b6bc34b32af87b67dc1f9181d02ad1b75fade5f810d3ab191f07e1` |
| 53 | `instance` | [decidableEqPiMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidableeqpimultiset.md) | 325 | `declaration-track:e375de03903b490e0f7376a15c7642d99b7983aa6b5feba0c23bd899a067ec43` |
| 54 | `def` | [decidableExistsMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidableexistsmultiset.md) | 331 | `declaration-track:a5378b2d0ca8871a4700fa42eaac7f4e12d4c81f4d16a509d1eb905d199d5208` |
| 55 | `instance` | [decidableDexistsMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/decidabledexistsmultiset.md) | 334 | `declaration-track:1cbadcc07b6ecbc1188bc54436e202579b364bda2b7cf39a0076c34c9270cf70` |
| 56 | `def` | [Pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/pairwise.md) | 345 | `declaration-track:aeb7455f4c627ccadff3395ff099d1fd4d07898b9d28f37cdabeb730e60e146c` |
| 57 | `theorem` | [pairwise_coe_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/pairwise-coe-iff.md) | 348 | `result-track:9983e2079c839acd486ba64b62997133e798f231805050151a0d19e0742c0a70` |
| 58 | `theorem` | [pairwise_coe_iff_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/pairwise-coe-iff-pairwise.md) | 352 | `result-track:aa498a67453367e31d878d3c3d4a10d7436fb2ebd8bb8f02b819242b89078c10` |
| 59 | `def` | [Nodup](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/nodup.md) | 360 | `declaration-track:b8b36cc572d8386daa76527ae25fea192a3dd648fd5bb498205ba08b2056ae4b` |
| 60 | `theorem` | [coe_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/coe-nodup.md) | 364 | `result-track:069031ef660f790812bfff1ed8f1035429c2e91d40a25b65bccd2e7b1b9a5d2f` |
| 61 | `theorem` | [Nodup.ext](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/nodup-ext.md) | 367 | `result-track:52c4fb0d62c6b61208ab081b0e1f9162fdb59ab22d7e589da64c5e5c8cf10c4c` |
| 62 | `theorem` | [le_iff_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/le-iff-subset.md) | 370 | `result-track:188ef832bd03d2747ae6c40110167e703bf7eaa01a4a70595c422585cbb67dde` |
| 63 | `theorem` | [nodup_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/nodup-of-le.md) | 373 | `result-track:2ca7942d3cc2ad3741be358b3ad9f879d5584836d6dd3b486a33547f17ddc775` |
| 64 | `instance` | [nodupDecidable](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/nodupdecidable.md) | 376 | `declaration-track:de9b2f2363ab869c436245b750b9e92840e0c161b8f56fa354152796abac803c` |
| 65 | `def` | [sizeOf](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/sizeof.md) | 389 | `declaration-track:76a4c45ed9f535dee70a88b2af01901fc39c06521b9d045f7937ffb1e3ae2f04` |
| 66 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 392 | `declaration-track:ebddcfffa4de49c00c338e3f4170aa20395438d69ee1529e8eca1d15ab87df51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdd2dbb23b90169bc4f1326cad9bfc792b79086cfaf1a0b210c0bf0799d56190 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbd7c5d136b54c2bc9f844eb474a1219736f8db086856fc0bb944847adad4abce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variantbd7c5d136b54c2bc9f844eb474a1219736f8db086856fc0bb944847adad4abce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
