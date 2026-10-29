# Verification target: Data Finset Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f998fe38137024f8254199b009aabb13aac75c3",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant96fdeaf7a5660d85ee7a754520de96f09d106956fb9276602fb7a0a37a0f3d2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f998fe38137024f8254199b009aabb13aac75c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant96fdeaf7a5660d85ee7a754520de96f09d106956fb9276602fb7a0a37a0f3d2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant96fdeaf7a5660d85ee7a754520de96f09d106956fb9276602fb7a0a37a0f3d2b.lean.json)

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
| 1 | `structure` | [Finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/finset.md) | 83 | `declaration-track:45d436dec8f193b17004e7eba64ce30fc8f29815ed0b5c4874dd80a9327c90ca` |
| 2 | `instance` | [Multiset.canLiftFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/multiset-canliftfinset.md) | 89 | `declaration-track:bbba5731b4f64494c6a4fce0f9bfa87e1c9c25a02ef466cb6a68ac19b6c07a40` |
| 3 | `theorem` | [eq_of_veq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/eq-of-veq.md) | 94 | `result-track:fd72b9cf0ad33cc14eb008bbe77575fb3f2678675c920af63944d41da94fa3dc` |
| 4 | `theorem` | [val_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/val-injective.md) | 97 | `result-track:9a228df113e73f32e9d1d8bdb6605de781abefeb4cce9322a54ba05fcadf5a6d` |
| 5 | `theorem` | [val_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/val-inj.md) | 100 | `result-track:76d79224ae6f37da214a871f4ea3d526899ce8a0be6360cd881598f634c1c4fb` |
| 6 | `instance` | [decidableEq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidableeq.md) | 103 | `declaration-track:7b1630552ca5f755d42dec9f52bf8b7af7feaf206ca54eb6a71a70fb1f9d94e2` |
| 7 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:f154c5a234827e995ce80a671f16cfe28d8d9eb5cce1f47ae63b0338c4878f88` |
| 8 | `theorem` | [mem_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mem-def.md) | 113 | `result-track:51f97bee599129d17d5b9918ff9ea2855efd55170485e48b0386366548db9163` |
| 9 | `theorem` | [mem_val](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mem-val.md) | 119 | `result-track:c0302f95fcbec57f3a4b4e26d918e573f93f29b9c6cd105d1662167b80154c04` |
| 10 | `theorem` | [mem_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mem-mk.md) | 122 | `result-track:1539ed1722bab14ba713b1a51a3ff200df2f3bd489772c4cfcba0ffe33fcb357` |
| 11 | `instance` | [decidableMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidablemem-source-edition-2.md) | 125 | `declaration-track:9be49459a9ef2d8f8f1e9a2de38ee2d732908232a381a0f964bfd5cc0718ead8` |
| 12 | `lemma` | [forall_mem_not_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/forall-mem-not-eq-source-edition-2.md) | 128 | `result-track:70f9f4bbe290a72658d6cf5be4c5ca09a362fcc020b0121faa6a4f5aaeb0c860` |
| 13 | `lemma` | [forall_mem_not_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/forall-mem-not-eq.md) | 129 | `result-track:3b1f3ec4f1c9a95815c15703a495304b516349a6c572499dba218109d5cb0fc1` |
| 14 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:4a490a32140c524f6bed58e56fbd5ae42ca8ed8d0657e22da99d1cbc990b5131` |
| 15 | `theorem` | [mem_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mem-coe.md) | 134 | `result-track:e0460ae2e86ae43c708736d8d86e4a5ecea062cf9d5ebd5ece032d2ab978b5ec` |
| 16 | `theorem` | [setOfPred_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/setofpred-mem.md) | 138 | `result-track:a3bf4234b1b778f537bb7dfea69c23e1d87d36afcdef3878493a21fb3515d762` |
| 17 | `theorem` | [coe_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-mem.md) | 143 | `result-track:b43dfb5a53195fe47bb51be8161af9b916be322f8f92a6c9bd3e19d98e22aebe` |
| 18 | `theorem` | [mk_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mk-coe.md) | 146 | `result-track:0be275b0c50a657af20e392f55ca39fec66dd812eda11d92d56bf9da37aebdc5` |
| 19 | `instance` | [decidableMem'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidablemem.md) | 149 | `declaration-track:06b7a4f72ea962380eba8d8e0ee240189f258ccb89ad7019e9402dc54a1ba2a4` |
| 20 | `theorem` | [ext](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ext.md) | 155 | `result-track:f6f60818a2928a67c20fdc8dc6fcf6b12d4195db56544e52f3ea9ffe782f6953` |
| 21 | `theorem` | [coe_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-inj.md) | 159 | `result-track:88091d131e2ca27862ed00f716b8714135a38274625d1a06637b183233685a70` |
| 22 | `theorem` | [coe_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-injective.md) | 163 | `result-track:1a7f7b3aca38a5501dc789f7d8712a7a4ce586ee4b9a752edf931bbe15bb3eac` |
| 23 | `theorem` | [forall_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/forall-coe.md) | 168 | `result-track:c6afeeb432663fe91349812c56aa12c124cc3212147726e8b2f5d16e35186afb` |
| 24 | `theorem` | [exists_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/exists-coe.md) | 172 | `result-track:069b1e89207cc5915bb5d1d7590415ea3cde2773751081ba9be3ac5419eea1e2` |
| 25 | `instance` | [PiFinsetCoe.canLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/pifinsetcoe-canlift.md) | 176 | `declaration-track:435429a0b8c7298b7768ab5dec636145cdcf52f34deef64b97ba6e255fc2c886` |
| 26 | `instance` | [PiFinsetCoe.canLift'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/pifinsetcoe-canlift-source-edition-2.md) | 180 | `declaration-track:83e9525345acad6a3b4a9b5ac1919201fe85c4e1db6d9c2a21d118e8187333bc` |
| 27 | `instance` | [FinsetCoe.canLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/finsetcoe-canlift.md) | 184 | `declaration-track:00a90c34239dec373291e22380c4719a2c9650e89fa6b314901c3a740b707cf2` |
| 28 | `theorem` | [coe_sort_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-sort-coe.md) | 188 | `result-track:d0b9983cb81ce96a78a74b8cfd18906662e346d7166088248a2d7f2313a94886` |
| 29 | `theorem` | [subset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-of-le.md) | 199 | `result-track:e09b6a127a34f06c240249daaf46dbc5768625f01e659b874bd5a800b0932145` |
| 30 | `theorem` | [subset_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-def.md) | 201 | `result-track:00649c88282e08342484ff872edca12a4e4ff2e557e0ab19cda9f4db1e24e5cf` |
| 31 | `theorem` | [ssubset_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ssubset-def.md) | 204 | `result-track:18d79f00702d4407c372d98f9ca9fb621e5b1ca1dacd22126549365807df3bbe` |
| 32 | `theorem` | [Subset.refl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-refl.md) | 207 | `result-track:079581cc05f5a8d0113de8ac6f976ac4422413dec13c815cd412b0c56960aa0c` |
| 33 | `theorem` | [Subset.rfl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-rfl.md) | 210 | `result-track:cb741f7caf3b7f28209a0dd42448989d3b7d40f7f4fe0c4361c305969ebf9d2c` |
| 34 | `theorem` | [subset_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-of-eq.md) | 213 | `result-track:565818f2c670d096a4357021724a93f8f205eeaa8fa54d58a129ea5282c6daa7` |
| 35 | `theorem` | [Subset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-trans.md) | 216 | `result-track:ab77aea35b20216ef58c90105933d3e554f4ad9f029dd006221271747aedbe09` |
| 36 | `theorem` | [Superset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/superset-trans.md) | 219 | `result-track:8d0ee5c5ff1f22866b26817f3de37b32eb615c0340d742e475cd606f354927da` |
| 37 | `theorem` | [mem_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/mem-of-subset.md) | 222 | `result-track:77a037cbae783e6520cc06fb6767c83f01f0be72a4355e5f1e9271d185b89a6e` |
| 38 | `theorem` | [notMem_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/notmem-mono.md) | 225 | `result-track:44ea0bcf107115413276b1f46a10f79428ace953d1c20b5824f5dd41bb754a4f` |
| 39 | `theorem` | [Subset.antisymm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-antisymm.md) | 230 | `result-track:60cc80710a1c06dfe448bfab5baec429151fd3ff3bd30bed839714f3ebd58dec` |
| 40 | `theorem` | [subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-iff.md) | 234 | `result-track:fe4013bb3909e634545ccad5d1d1afbe913a3c80b47c702bc61867439e48051f` |
| 41 | `theorem` | [subset_iff_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-iff-notmem.md) | 237 | `result-track:4133f0470bd8d19eb5a23e6b400bf671fff2a29e71d18d40e3fc7f061820ca6c` |
| 42 | `theorem` | [coe_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-subset.md) | 241 | `result-track:63906fa706cbdfb3e02509201383f455436e7319ad1540eaae8b79e4d3dbaf64` |
| 43 | `theorem` | [val_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/val-le-iff.md) | 245 | `result-track:c6a3b6e2226db870fc03236024c949396e4be99e4bc6d6c15a4f0da1d9f8a6b8` |
| 44 | `theorem` | [Subset.antisymm_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/subset-antisymm-iff.md) | 248 | `result-track:8a33c2bb884d62f1fe6c0b592e26c89eda514df7a52a416e7fe81bcdf7070eed` |
| 45 | `theorem` | [not_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/not-subset.md) | 251 | `result-track:a768a7f2413f887440db9b703ac25b9e6e3ddf64c613efdb2c00487c4d5e8d3e` |
| 46 | `theorem` | [le_eq_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/le-eq-subset.md) | 254 | `result-track:b105baac96964518410f1c45186489d69335f9e6ba701edb862a4bcada4c5838` |
| 47 | `theorem` | [lt_eq_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/lt-eq-subset.md) | 258 | `result-track:3aef4af57fde2a93c88c051d549339b3f02cd1a4d4e27b2a86576c5539d95077` |
| 48 | `theorem` | [le_iff_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/le-iff-subset.md) | 262 | `result-track:8f2362bba4e208d51d1f01342fa64a5fc79a9ebbd87fdf07fc74932b24f1a357` |
| 49 | `theorem` | [lt_iff_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/lt-iff-ssubset.md) | 266 | `result-track:465ca19ccf8779df92151c2cfff98871f13bc5ec585263c808e5de78cb9fd260` |
| 50 | `theorem` | [coe_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-ssubset.md) | 270 | `result-track:191873a2f4f46c813ebadc09229dd6b7786776033633ce6e987963e25085ce6c` |
| 51 | `theorem` | [val_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/val-lt-iff.md) | 274 | `result-track:defb46028c356fab49e119d658a3b97406e875d0ecd4ca11a312999b74473ca7` |
| 52 | `lemma` | [val_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/val-strictmono.md) | 277 | `result-track:a8dace6b3f6aa416fc16960fd882745e65c4527c2865e85cfb018fef3347fa57` |
| 53 | `theorem` | [ssubset_iff_subset_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ssubset-iff-subset-ne.md) | 280 | `result-track:32fab66fbeb8e4b7cb4b9e50c4d6c66b274cf4641b1ea2282323f345ba4d6476` |
| 54 | `theorem` | [ssubset_iff_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ssubset-iff-of-subset.md) | 283 | `result-track:d939d4eb429a4abfb0a5d18ac3e881eef464cd824a13a3f3f14cac5124697c61` |
| 55 | `theorem` | [ssubset_of_ssubset_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ssubset-of-ssubset-of-subset.md) | 286 | `result-track:bd8d02550ddf64fd3051ddebf125b0b2c92813fe0ed410f18518f19942cc3e39` |
| 56 | `theorem` | [ssubset_of_subset_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/ssubset-of-subset-of-ssubset.md) | 290 | `result-track:196151bfb658b8567ddba6b18633a0267cd59317a320cf9f0feea9bffd0e3af8` |
| 57 | `theorem` | [exists_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/exists-of-ssubset.md) | 294 | `result-track:47d1d7d7d0002f2379c5de260523ead71f96b0f36f461f6f7a9140265766fb7a` |
| 58 | `instance` | [isWellFounded_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/iswellfounded-ssubset.md) | 297 | `declaration-track:5709beddfd11f3e29309e1d094a58ad39d2473a087a51dcd7d2a484703140da2` |
| 59 | `instance` | [wellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/wellfoundedlt.md) | 300 | `declaration-track:71f35f8bf2b2825892274c33759419cc05d85051e105c4bb174ae659aac11b02` |
| 60 | `def` | [coeEmb](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coeemb.md) | 312 | `declaration-track:dc164a292517cd52a7d9fc5d5f1d3a7d401d8a9f8115eee1f65dbb37b246505b` |
| 61 | `theorem` | [coe_coeEmb](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/coe-coeemb.md) | 316 | `result-track:fdc3a975881544af8b54259238cec6b003b6e8a459a6f52c51b74d5070aa6f2e` |
| 62 | `instance` | [decidableDforallFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidabledforallfinset.md) | 328 | `declaration-track:9bf92ea71b4f9c9ecb8c44cb1efa9691b7cc54afeafc6c6ca4f33e1ff1a72673` |
| 63 | `instance` | [instDecidableRelSubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instdecidablerelsubset.md) | 332 | `declaration-track:3eaffbb4c489a0adeb23021f1ef2f44b0be9fac9cc5536a4ab1b7b7dd2ccbdc9` |
| 64 | `instance` | [instDecidableRelSSubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instdecidablerelssubset.md) | 335 | `declaration-track:e9a997729c9b245211899c81c4f0b66982a1018bd5fb10fe49def21bc83cab37` |
| 65 | `instance` | [instDecidableLE](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instdecidablele.md) | 338 | `declaration-track:b882b14de8fe6fe22a9a5e593559b74f302fa36a203d301cc62d7436f9a87127` |
| 66 | `instance` | [instDecidableLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instdecidablelt.md) | 341 | `declaration-track:d7886d937714b72e5b8c015a949fea2d47a2ce2c0f8143d18550d82dd798bc2f` |
| 67 | `instance` | [decidableDExistsFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidabledexistsfinset.md) | 344 | `declaration-track:0f65578bd76536e2dcdad61c879862f3365767ee72ce463adf80340ed4380fe8` |
| 68 | `instance` | [decidableExistsAndFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidableexistsandfinset.md) | 348 | `declaration-track:bbb48fb51ce9b49e5c2a6add5afaeb440164d1015a28385ef4c6edabcc2116f7` |
| 69 | `instance` | [decidableExistsAndFinsetCoe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidableexistsandfinsetcoe.md) | 352 | `declaration-track:3fde060f683cd251d5d4c2be35b0b1ad1dc46fdad02ab3d0f88b8fc83ab1378f` |
| 70 | `instance` | [decidableEqPiFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/decidableeqpifinset.md) | 356 | `declaration-track:12c73af3e49f730445f3a5858e9171d77b3679fc6d17f00ea300695a9324c145` |
| 71 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instance.md) | 368 | `declaration-track:25249cc92f87d8e508fd4c15fb01e0246a8062f3f2e694d2b80d381abf5aff98` |
| 72 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 371 | `declaration-track:c141c7304ee0d325010d25e296a7381d9effae331d38a14df553476218a6caf9` |
| 73 | `theorem` | [pairwise_subtype_iff_pairwise_finset'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/pairwise-subtype-iff-pairwise-finset-source-edition-2.md) | 382 | `result-track:5fc4b543c040074223f0020ef6175c8ea5b4e1192ab0e793adf6cd2a510899f8` |
| 74 | `theorem` | [pairwise_subtype_iff_pairwise_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespacedPublic.lean/declarations/pairwise-subtype-iff-pairwise-finset.md) | 386 | `result-track:1b12ccd52ad380b934678cf89de85083168ecdc0ed2a664b6442393da2a7bf68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9040c780f12564557d6a35a5e48d126e6af9c644c3ad0b9f67704a1d34b9424 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant96fdeaf7a5660d85ee7a754520de96f09d106956fb9276602fb7a0a37a0f3d2b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variant96fdeaf7a5660d85ee7a754520de96f09d106956fb9276602fb7a0a37a0f3d2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
