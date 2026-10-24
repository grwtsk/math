# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8acfa9846a52059432c84bca3b6fab226649f8e",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8acfa9846a52059432c84bca3b6fab226649f8e`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product--0e6dab45fed10d3dd8729435.md) | 40 | `declaration-track:0e6dab45fed10d3dd87294355dbc7da1d671b623f21a5c14e898c59c30dbbd2a` |
| 2 | `instance` | [instSProd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/instsprod--8d0a0843ec4b3d628e86b9ca.md) | 44 | `declaration-track:8d0a0843ec4b3d628e86b9caf5244f3fc1ae37d414150c6930ecbe2876d49068` |
| 3 | `theorem` | [product_val](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-val--9723bf82d23f9cc6ace8ff09.md) | 48 | `result-track:9723bf82d23f9cc6ace8ff0997227eb9cb5c4c161e5febd6eaca636158ec256b` |
| 4 | `theorem` | [mem_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/mem-product--717f7aa4944ad1ec25d0f6ca.md) | 53 | `result-track:717f7aa4944ad1ec25d0f6ca337fdb2570e008bcc270efd62b1a22d513e9d30c` |
| 5 | `theorem` | [mk_mem_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/mk-mem-product--586b3041c2c2972a03df81d6.md) | 57 | `result-track:586b3041c2c2972a03df81d6547729e1df3e89fd30a7de5c0839a49158a682ed` |
| 6 | `theorem` | [coe_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/coe-product--ad195e0041070ff1fbe0831f.md) | 62 | `result-track:ad195e0041070ff1fbe0831f7ed80fd27ca63ae014a503027c9fb6fbb1b07de0` |
| 7 | `theorem` | [subset_product_image_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/subset-product-image-fst--8f1e8726af9ce0f2b2189f9d.md) | 67 | `result-track:8f1e8726af9ce0f2b2189f9d401346f1acefa092a3e7c59612457408d4553e07` |
| 8 | `theorem` | [subset_product_image_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/subset-product-image-snd--61800caa146560d7c07ce159.md) | 71 | `result-track:61800caa146560d7c07ce159ffb4684759ce8a916df8dc1f9e283544a443c6d8` |
| 9 | `theorem` | [product_image_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-image-fst--79560fbb1459123fc871f28f.md) | 75 | `result-track:79560fbb1459123fc871f28f365df060ca0a910c1e182d6d29832df440422e75` |
| 10 | `theorem` | [product_image_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-image-snd--59142bb87c1dde7545f8ce6c.md) | 80 | `result-track:59142bb87c1dde7545f8ce6c8625c39f2dce6ce4d6e03e8d7fae3917c3144540` |
| 11 | `theorem` | [subset_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/subset-product--860dd419c9b31f069ad0646c.md) | 85 | `result-track:860dd419c9b31f069ad0646c249bef7b39a3af56b13f71222f716aead59fe2f6` |
| 12 | `theorem` | [product_subset_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-subset-product--4a6844f7e72abf1baef0e8b5.md) | 90 | `result-track:4a6844f7e72abf1baef0e8b5938ad80bf5e9db6022e44ef926c1875441566776` |
| 13 | `theorem` | [product_subset_product_left](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-subset-product-left--b9823443d56fcc511e0383bd.md) | 94 | `result-track:b9823443d56fcc511e0383bdce6f344f518e2539472c8ffd8f457124944888fc` |
| 14 | `theorem` | [product_subset_product_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-subset-product-right--2ebf8bd6f183e56e7fb89dcd.md) | 98 | `result-track:2ebf8bd6f183e56e7fb89dcdfaa0689b6062c88954b5f3f2798cde2ac6b0b6aa` |
| 15 | `theorem` | [map_swap_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/map-swap-product--c4d3eb836bc248287444f684.md) | 102 | `result-track:c4d3eb836bc248287444f6847f69cc5f1f58aed33fdafb0a583b9b4afd5ededb` |
| 16 | `theorem` | [image_swap_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/image-swap-product--cdd63b3f7112809f4f205645.md) | 110 | `result-track:cdd63b3f7112809f4f205645bf7a5dea17f6ae2cab29483d6bba45577a9093bd` |
| 17 | `theorem` | [product_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-eq-biunion--35a6f7d3dfabd7db03fea24b.md) | 117 | `result-track:35a6f7d3dfabd7db03fea24bf1bdfd08628fa5750d137d14787f6398f1110d19` |
| 18 | `theorem` | [product_eq_biUnion_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-eq-biunion-right--fbdef9e6a83599065a1d19dc.md) | 124 | `result-track:fbdef9e6a83599065a1d19dc2c632844a4d12bc15eea70cecdef82801a72cdb5` |
| 19 | `theorem` | [product_biUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-biunion--a8d787fb120fa8de7a37a00d.md) | 133 | `result-track:a8d787fb120fa8de7a37a00d71219eb0c8f15b7b0424c74584527bd40a6776f8` |
| 20 | `theorem` | [card_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/card-product--25f9c3036e66753e1fc50ba8.md) | 139 | `result-track:25f9c3036e66753e1fc50ba8883864204a014adb3c5808754ae20fba4117320b` |
| 21 | `theorem` | [filter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/filter-product--78af91a7cfe45bed60e52fd0.md) | 143 | `result-track:78af91a7cfe45bed60e52fd09ea3e43a93cb277f75282bb0bd05e1fec406b2e1` |
| 22 | `theorem` | [filter_product_left](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/filter-product-left--322a6c4cacec4d90c5247b97.md) | 149 | `result-track:322a6c4cacec4d90c5247b97499a219084aaf68a03081e90a8c2974ac191b4a6` |
| 23 | `theorem` | [filter_product_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/filter-product-right--3fabc943ad434298a4fc1360.md) | 154 | `result-track:3fabc943ad434298a4fc1360fe0d44110cd2bd18865f32ee4d2a901350c39d34` |
| 24 | `theorem` | [filter_product_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/filter-product-card--94633265df665ac31b4064cc.md) | 159 | `result-track:94633265df665ac31b4064ccd17f264275fc88b21c06cda9a860157175686f7c` |
| 25 | `theorem` | [empty_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/empty-product--12f9b6659a41a3647ee1c6f1.md) | 178 | `result-track:12f9b6659a41a3647ee1c6f1492cf702f808f457e00d242e08cdf9736ce3aed4` |
| 26 | `theorem` | [product_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-empty--e4728875feb0f4fabdddb769.md) | 182 | `result-track:e4728875feb0f4fabdddb769c6ed2ac9c5be055d6609b98a0dd3690339c1970a` |
| 27 | `theorem` | [Nonempty.product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/nonempty-product--89bce8f4ce498c95238dffdb.md) | 186 | `result-track:89bce8f4ce498c95238dffdb09e11ad0aab7c44811ded0e4a6c951edd4f7fab1` |
| 28 | `theorem` | [Nonempty.fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/nonempty-fst--713003df8f2bbcf1b73dea7e.md) | 192 | `result-track:713003df8f2bbcf1b73dea7e5c186a1eb70679afabcadb56cef9902c8ebf7a22` |
| 29 | `theorem` | [Nonempty.snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/nonempty-snd--a313f073675b7f31590bce14.md) | 197 | `result-track:a313f073675b7f31590bce147a8e2c74a3dbd2600918bcff64f2b3bdbe6db7b3` |
| 30 | `theorem` | [nonempty_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/nonempty-product--3c38de28c8ca24e38f47fbd1.md) | 203 | `result-track:3c38de28c8ca24e38f47fbd132c0e4ab1414b4a2f3fb17a462bc66f139756179` |
| 31 | `theorem` | [product_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-eq-empty--a1be34af3c18127759a31616.md) | 208 | `result-track:a1be34af3c18127759a31616683c0d0a083382f559433a744ed9e2889dbe3d62` |
| 32 | `theorem` | [singleton_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/singleton-product--068b2897e51b69e0b96bff72.md) | 214 | `result-track:068b2897e51b69e0b96bff72f99dbc7c6e706c14eb3dd46af3009df08a3f109c` |
| 33 | `theorem` | [product_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-singleton--69e1ec9506221f7a1a64e875.md) | 221 | `result-track:69e1ec9506221f7a1a64e8758784b077ccbde11ce722174f721dbddee31d8416` |
| 34 | `theorem` | [singleton_product_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/singleton-product-singleton--59a8e7095018d7419622dc2c.md) | 226 | `result-track:59a8e7095018d7419622dc2c27d6fe3b7257534b1fb9be5fcb6fea272a253e87` |
| 35 | `theorem` | [union_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/union-product--43129bd9e861211b968a7013.md) | 232 | `result-track:43129bd9e861211b968a70130ca5f115a8011730fadb687a646fcdf9c3fd250d` |
| 36 | `theorem` | [product_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-union--09950c2e9c496420f7065837.md) | 238 | `result-track:09950c2e9c496420f70658377ff19c4c746c1e7d71dcae13c4e168b18a5475e0` |
| 37 | `theorem` | [inter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/inter-product--2849328a0ba99c6fc19c9426.md) | 243 | `result-track:2849328a0ba99c6fc19c9426eb4fad9e822b3eb8e38c500d7206eaf6d581a32a` |
| 38 | `theorem` | [product_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-inter--dcaa9b19fbc15c72f97c036a.md) | 248 | `result-track:dcaa9b19fbc15c72f97c036a4e46f1444093915d5457064b62ce11d5a814410b` |
| 39 | `theorem` | [product_inter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-inter-product--102ed51b84318b1cfdcc616f.md) | 253 | `result-track:102ed51b84318b1cfdcc616fc247f03b08445e8012fc94eaa4d4fe946c5c7581` |
| 40 | `theorem` | [disjoint_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/disjoint-product--1d296c2073a45e2672b0fe6f.md) | 259 | `result-track:1d296c2073a45e2672b0fe6f1289ab4d8dfa56143c185aa8e2258b33b5c61c29` |
| 41 | `theorem` | [disjUnion_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/disjunion-product--966ef7a95c3ed7e766f656b5.md) | 264 | `result-track:966ef7a95c3ed7e766f656b5e21c43d25b5713cf22508901aa0bcfaa08cbb0a2` |
| 42 | `theorem` | [product_disjUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-disjunion--4c52270088b98cf764ee2a7a.md) | 270 | `result-track:4c52270088b98cf764ee2a7a31241c0bf08011da2fc79be01e3bc8a4734a7da4` |
| 43 | `def` | [diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag--2d022903ba18af871876ab6e.md) | 283 | `declaration-track:2d022903ba18af871876ab6e15d8b2b788d616ff78634949b72b31f4f9902acf` |
| 44 | `def` | [offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag--f1d2cfc00ec922c19308c7c1.md) | 289 | `declaration-track:f1d2cfc00ec922c19308c7c160af021bbb72321d54e718b0eefaef920bbfe2c7` |
| 45 | `theorem` | [mem_diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/mem-diag--a10231e1207abdb72965735c.md) | 296 | `result-track:a10231e1207abdb72965735cdda7c5ce7988d8b0d3e6fa329c6846c7bad9909e` |
| 46 | `theorem` | [mem_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/mem-offdiag--0405e858a341b940a52825f6.md) | 301 | `result-track:0405e858a341b940a52825f6f06e3f4325f5c32d8d82326c4d0e758608b3face` |
| 47 | `theorem` | [coe_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/coe-offdiag--21471b6ba3979bce5df619a6.md) | 308 | `result-track:21471b6ba3979bce5df619a609433b1b7068461df013e4d901a7030eadda4ff7` |
| 48 | `theorem` | [diag_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-card--b7c1316c9b9d35b05cc3307d.md) | 313 | `result-track:b7c1316c9b9d35b05cc3307d13bc0f28b12c64edfc8354db78c648825081cac4` |
| 49 | `theorem` | [offDiag_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-card--48c22fa7b0ebfcbfd4df6af6.md) | 330 | `result-track:48c22fa7b0ebfcbfd4df6af6c775d3854b2b147b98c1fd8afdbf1db014ba89f0` |
| 50 | `theorem` | [diag_mono](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-mono--d85347bdbbb3e6fe828dbb44.md) | 341 | `result-track:d85347bdbbb3e6fe828dbb44dc5874dc32d2458057f06e315d409135d4777d43` |
| 51 | `theorem` | [offDiag_mono](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-mono--28848cbf787dd4438f408646.md) | 346 | `result-track:28848cbf787dd4438f4086466d9497ff3103b6ff50f5fbe1e80ca7ba2ba25b59` |
| 52 | `theorem` | [diag_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-empty--2e074ba68f9e84463f33f9a2.md) | 351 | `result-track:2e074ba68f9e84463f33f9a26e738e7a7bb0392f395af7c5b26775d3f317f58d` |
| 53 | `theorem` | [offDiag_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-empty--cffa0e1207bb82e5a7fdecc1.md) | 356 | `result-track:cffa0e1207bb82e5a7fdecc12fed5e6728a750c10feff896560209d335d1d2d4` |
| 54 | `theorem` | [diag_union_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-union-offdiag--4c63fb251253fa9dfbf012d6.md) | 361 | `result-track:4c63fb251253fa9dfbf012d6b7e747ba49fed763f4a9249ff8b319add6bc26be` |
| 55 | `theorem` | [disjoint_diag_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/disjoint-diag-offdiag--f56ba0fa18aeb8addae84223.md) | 366 | `result-track:f56ba0fa18aeb8addae8422305abb31c21157c9067db44704349d773919e8fa0` |
| 56 | `theorem` | [product_sdiff_diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-sdiff-diag--f797222cbabc070c9932902a.md) | 370 | `result-track:f797222cbabc070c9932902a2dbfa4e12d9dc2200e00163952d2740a56e60b44` |
| 57 | `theorem` | [product_sdiff_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/product-sdiff-offdiag--90bbf424a4da925698defbec.md) | 375 | `result-track:90bbf424a4da925698defbeccca5fdd3168a3ee1872db12a81d3aa0c77dbb741` |
| 58 | `theorem` | [diag_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-inter--e564746e1a1a2104c42a64c2.md) | 379 | `result-track:e564746e1a1a2104c42a64c24dd3dc2d478464a9a128ad0a337fd283dcd6bdb8` |
| 59 | `theorem` | [offDiag_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-inter--b9f83a013ba6ab4026ad7c9a.md) | 383 | `result-track:b9f83a013ba6ab4026ad7c9a52fc953de7edadd140953acf74c0073b33796c72` |
| 60 | `theorem` | [diag_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-union--8a87ad9d57c677613626cdda.md) | 389 | `result-track:8a87ad9d57c677613626cddac4453a15d80cf0696df788ac9b66b6cac4a85b49` |
| 61 | `theorem` | [offDiag_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-union--ab9b21548ac925ef52c95625.md) | 396 | `result-track:ab9b21548ac925ef52c95625e6d726e9cdb16e7a48e48661a96bbd0cf776bd66` |
| 62 | `theorem` | [offDiag_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-singleton--f85be2932cc69aaf8567277e.md) | 406 | `result-track:f85be2932cc69aaf8567277e943b6c84efe64c2390b0f3f1f83b206b22e31b81` |
| 63 | `theorem` | [diag_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-singleton--edf7815c0cb3dcf97b587bf4.md) | 409 | `result-track:edf7815c0cb3dcf97b587bf43435d9d816dd87e03d89c6a76069f86957fd1b1b` |
| 64 | `theorem` | [diag_insert](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/diag-insert--88ae663603185044d105c077.md) | 413 | `result-track:88ae663603185044d105c0773de7bbd8aae66eac4b7b6b3310d05e1a957862f7` |
| 65 | `theorem` | [offDiag_insert](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/declarations/offdiag-insert--cde3a4b60947cb62d92423a7.md) | 417 | `result-track:cde3a4b60947cb62d92423a70cf34d7fd70e0909ff7f05754263cc874a80ba91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
