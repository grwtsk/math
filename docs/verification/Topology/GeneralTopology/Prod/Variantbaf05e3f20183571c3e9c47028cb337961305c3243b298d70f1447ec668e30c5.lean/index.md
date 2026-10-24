# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "389bdc6cf1681ac393a9e992c3095ead5b22b1e2",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `389bdc6cf1681ac393a9e992c3095ead5b22b1e2`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product--5aeb8f52b588e50767d35011.md) | 48 | `declaration-track:5aeb8f52b588e50767d35011779fdf6a3b7037743f73060d8a4dec7a0917428b` |
| 2 | `instance` | [instSProd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/instsprod--61e5de74ebf8f4e8db3edf7c.md) | 52 | `declaration-track:61e5de74ebf8f4e8db3edf7c415599c2b1d0b05d8eb95bdebb4f34e04f157266` |
| 3 | `theorem` | [product_val](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-val--adb6cdcf417c494ffb90b691.md) | 56 | `result-track:adb6cdcf417c494ffb90b6918183b4ee4692f1ef6d267cbc953a8fc581f17d96` |
| 4 | `theorem` | [mem_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/mem-product--ba4f3e49a7a07525320c6f1a.md) | 61 | `result-track:ba4f3e49a7a07525320c6f1a6eb83ab07dc56594c767750a52b7f8641acdcd16` |
| 5 | `theorem` | [mk_mem_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/mk-mem-product--506f5958844060fad5206899.md) | 65 | `result-track:506f5958844060fad5206899488e455caa526284eba57cb823f952020d771a1a` |
| 6 | `theorem` | [coe_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/coe-product--28344ae268136349a5c1d658.md) | 70 | `result-track:28344ae268136349a5c1d658ee259473c25c39d1fddd3de62b2c366ca9b296f2` |
| 7 | `theorem` | [subset_product_image_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/subset-product-image-fst--f9bae018dbc4f01637db6b87.md) | 75 | `result-track:f9bae018dbc4f01637db6b8707981fbffd87034fa0a417b56cde5ab7d006e841` |
| 8 | `theorem` | [subset_product_image_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/subset-product-image-snd--2bd83cdfbc8a33237136394a.md) | 79 | `result-track:2bd83cdfbc8a33237136394a7a4ad5d30dff0f95d784f6ae7574aff517668ee6` |
| 9 | `theorem` | [product_image_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-image-fst--257508477a1a03e502ee6815.md) | 83 | `result-track:257508477a1a03e502ee6815ef4c9069e0e812c1582d7511a1c202fa135bb5fe` |
| 10 | `theorem` | [product_image_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-image-snd--cb9e655d4f2f649f87c91689.md) | 88 | `result-track:cb9e655d4f2f649f87c91689d11d37db2623e9dea19e0f6736088abc8c04bae0` |
| 11 | `theorem` | [subset_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/subset-product--f05ce31df0b3e19f3b9191aa.md) | 93 | `result-track:f05ce31df0b3e19f3b9191aab585d87b4e5fde2a4e54889c26a2a963cbe692cb` |
| 12 | `theorem` | [product_subset_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-subset-product--1463812b36a8a687995c4f83.md) | 98 | `result-track:1463812b36a8a687995c4f83993945d618c82e0ffb1ba66915555c268dce60c4` |
| 13 | `theorem` | [product_subset_product_left](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-subset-product-left--42f67ec70833080281b7d73b.md) | 102 | `result-track:42f67ec70833080281b7d73b66ddf9f4bb9b8f2c186bd25fc316681f3a55ba79` |
| 14 | `theorem` | [product_subset_product_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-subset-product-right--c62075092ea305c4db061031.md) | 106 | `result-track:c62075092ea305c4db0610319f3350c75bf073f61b47bcb71033bd6f4e06374b` |
| 15 | `theorem` | [map_swap_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/map-swap-product--492daa9e5ab54a0b8bf2ab62.md) | 110 | `result-track:492daa9e5ab54a0b8bf2ab62cdff7eabb59db35687ebb33c2a9369138f5409ce` |
| 16 | `theorem` | [image_swap_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/image-swap-product--e7ee1404b7552a2f092af335.md) | 118 | `result-track:e7ee1404b7552a2f092af3353b1ec316eafdcaf3cda5d0b6fe2bd38f5d79ce2a` |
| 17 | `theorem` | [product_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-eq-biunion--7fb38cba1bcccab4972bd893.md) | 125 | `result-track:7fb38cba1bcccab4972bd893398529010a84ccf098e85e5dd47c5ed33e1b18c2` |
| 18 | `theorem` | [product_eq_biUnion_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-eq-biunion-right--8eeb864dd4bbad84b89da176.md) | 132 | `result-track:8eeb864dd4bbad84b89da176b12c92d28d8f3fcf434ccac9c7173a8caa8d4e7b` |
| 19 | `theorem` | [product_biUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-biunion--3d6b66d7033d144a3bf838ce.md) | 141 | `result-track:3d6b66d7033d144a3bf838ce8d55462dba8abdf5bbd5d49347db5b76b90391c5` |
| 20 | `theorem` | [card_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/card-product--28b3664bc0f00adcf0591bda.md) | 147 | `result-track:28b3664bc0f00adcf0591bda053eb959eeebe366d6dbc36b6d29e82761e060e7` |
| 21 | `theorem` | [filter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/filter-product--84c55303ce00b70803bdab5e.md) | 151 | `result-track:84c55303ce00b70803bdab5e99c1d7eb7b2baf91c14b6e8ee2fd468d84dd27a2` |
| 22 | `theorem` | [filter_product_left](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/filter-product-left--223b0f20d78d1bfa971e819a.md) | 157 | `result-track:223b0f20d78d1bfa971e819a54f596cbcdcb2596f589c7fdf1867ec9ae521429` |
| 23 | `theorem` | [filter_product_right](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/filter-product-right--f73bb863d53ece6ca924f3e1.md) | 162 | `result-track:f73bb863d53ece6ca924f3e11ba78fb804e0ea36ea745def220a4488f2faf8fe` |
| 24 | `theorem` | [filter_product_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/filter-product-card--3fd56bf5f2610c4c12941418.md) | 167 | `result-track:3fd56bf5f2610c4c12941418ab7b9a3ad200402b3cb6c62d345a4377588162d8` |
| 25 | `theorem` | [empty_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/empty-product--493608a5e26593a07acd1e8c.md) | 186 | `result-track:493608a5e26593a07acd1e8cd27de46bda6296b29e3923693f2a84d04601c51d` |
| 26 | `theorem` | [product_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-empty--0371dd0dc4d9b69c766d232d.md) | 190 | `result-track:0371dd0dc4d9b69c766d232d8912fc58bdb0767de20c4d680f3695bff6c7468f` |
| 27 | `theorem` | [Nonempty.product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/nonempty-product--b4b691f340e5db15b82aab50.md) | 194 | `result-track:b4b691f340e5db15b82aab50d8b2977e9f75d67ad7714e35e03e7ccd9b4b6f8f` |
| 28 | `theorem` | [Nonempty.fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/nonempty-fst--9ef1e391f782c1cecaaf90ae.md) | 200 | `result-track:9ef1e391f782c1cecaaf90ae0a2b12d48dd36a6c870c18f44147e596f5038c49` |
| 29 | `theorem` | [Nonempty.snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/nonempty-snd--e8e4f1cc05a23a7cfe5956d2.md) | 205 | `result-track:e8e4f1cc05a23a7cfe5956d2d86cb1a71baed8a07f2b6eea13c9c701a7fe05de` |
| 30 | `theorem` | [nonempty_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/nonempty-product--785bf6bb61ef2330b23fd7c0.md) | 211 | `result-track:785bf6bb61ef2330b23fd7c005457b213a0a76af35b22b9df8ab97a66fb8fef8` |
| 31 | `theorem` | [product_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-eq-empty--3f6f3bef9c233cccbd5308c7.md) | 216 | `result-track:3f6f3bef9c233cccbd5308c76cb354e296cd46b854cd80fa66ff7a7aa42fa5f2` |
| 32 | `theorem` | [singleton_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/singleton-product--a5b60c11faf760fa473f45dc.md) | 222 | `result-track:a5b60c11faf760fa473f45dc0f0de11531997c3972164297257a21ec1d4a103d` |
| 33 | `theorem` | [product_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-singleton--aa2387a964b3391074ae5b5d.md) | 229 | `result-track:aa2387a964b3391074ae5b5d205f43e03507a546c58cf1ab0582bbc82da6f3ba` |
| 34 | `theorem` | [singleton_product_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/singleton-product-singleton--78f1aeb863b99f2aa771d78b.md) | 234 | `result-track:78f1aeb863b99f2aa771d78bfe88edd59114b718cbc1c67718a50adf011a5924` |
| 35 | `theorem` | [union_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/union-product--e4079a8c669d8ac5611fc5ac.md) | 240 | `result-track:e4079a8c669d8ac5611fc5ac71f5ad616eac221ff71e30008d3a07fd2d29750e` |
| 36 | `theorem` | [product_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-union--2306cbebe2893a3046be0a7e.md) | 246 | `result-track:2306cbebe2893a3046be0a7e6529e3f3d117e59af4831cd9ee21be600303524c` |
| 37 | `theorem` | [inter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/inter-product--63663c56999baec43ab15ead.md) | 251 | `result-track:63663c56999baec43ab15ead59c7d6bf1f09296b2f698397db224e1346f7d670` |
| 38 | `theorem` | [product_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-inter--570df389d4e173d23a07ab9f.md) | 256 | `result-track:570df389d4e173d23a07ab9fcc3d2354f9e966a24f0f448330540a064e8536d9` |
| 39 | `theorem` | [product_inter_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-inter-product--d0c061966907b7be99267080.md) | 261 | `result-track:d0c061966907b7be992670804ef0dc71e72deb69dcb71726fbab20f33428b046` |
| 40 | `theorem` | [disjoint_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/disjoint-product--59e6d22ec4a3bdeb39b9d6e3.md) | 267 | `result-track:59e6d22ec4a3bdeb39b9d6e325c2deb222c82c76538c81f9803273dafdbdb025` |
| 41 | `theorem` | [disjUnion_product](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/disjunion-product--1b104ef186b2e5d7637218a5.md) | 272 | `result-track:1b104ef186b2e5d7637218a5b5353fe2d45a7c5bd9ce40a0252018e6ccddb969` |
| 42 | `theorem` | [product_disjUnion](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-disjunion--27ca6e9cdc0d04e59d205a38.md) | 278 | `result-track:27ca6e9cdc0d04e59d205a388880903a3dcd3c7876bd7e12e0b9472f0d693178` |
| 43 | `def` | [diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag--394b157379d4285929e47ffd.md) | 291 | `declaration-track:394b157379d4285929e47ffda154836ec2d395af1d7c3f92e543ef21aeb43249` |
| 44 | `def` | [offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag--035fff69e319dc0977e4f686.md) | 297 | `declaration-track:035fff69e319dc0977e4f686965c34673cff191563fd95a423cd9525ef37a8f6` |
| 45 | `theorem` | [mem_diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/mem-diag--ea8600e286fab62bb53fefc1.md) | 304 | `result-track:ea8600e286fab62bb53fefc1373ed916962e976a7391e3afbee973c2babeae8f` |
| 46 | `theorem` | [mem_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/mem-offdiag--4b6777ce50fdfdc579311103.md) | 309 | `result-track:4b6777ce50fdfdc5793111033ee3224ae797c07042a3bcde9fe58e39bdd5b4ea` |
| 47 | `theorem` | [coe_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/coe-offdiag--a0aa790e3d9bd251e38730dd.md) | 316 | `result-track:a0aa790e3d9bd251e38730dd87d44da6dcfbc820f74e88ba480866196937ecd9` |
| 48 | `theorem` | [diag_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-card--f4ef14dfe2187e949f5fe63f.md) | 321 | `result-track:f4ef14dfe2187e949f5fe63fa38b9fdc96713f89ccc9855dea2fac28192e7891` |
| 49 | `theorem` | [offDiag_card](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-card--6d156f18351688e936deaff2.md) | 338 | `result-track:6d156f18351688e936deaff2f44213ae280d4d2c531b414e835ba45404d98d97` |
| 50 | `theorem` | [diag_mono](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-mono--4c442481dd92db056f4705b5.md) | 349 | `result-track:4c442481dd92db056f4705b567ce35a5fe26695cf4e6f807cbeed57e643076fb` |
| 51 | `theorem` | [offDiag_mono](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-mono--384ff3e8c574b581d1c12c8b.md) | 354 | `result-track:384ff3e8c574b581d1c12c8b41085cc2f776962c6164b4c3a2cec3c095c413c9` |
| 52 | `theorem` | [diag_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-empty--abfaa4ea03f648aaedc5d62e.md) | 359 | `result-track:abfaa4ea03f648aaedc5d62e9072101b077a058e012f7d3449c3d55d5f5e037a` |
| 53 | `theorem` | [offDiag_empty](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-empty--655605d104c8f9495f55186b.md) | 364 | `result-track:655605d104c8f9495f55186b9a7398a9ee62629c068e6559ef2264ba5b588813` |
| 54 | `theorem` | [diag_union_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-union-offdiag--4bc77d6c00cff80dadfb690e.md) | 369 | `result-track:4bc77d6c00cff80dadfb690ebf11e94cde9e2b2a499847fc5b499a6b3cd8a0b1` |
| 55 | `theorem` | [disjoint_diag_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/disjoint-diag-offdiag--31360a41b87fbba4f167db2b.md) | 374 | `result-track:31360a41b87fbba4f167db2b928be16cd8640beedc9ced45086388cb861f1d9f` |
| 56 | `theorem` | [product_sdiff_diag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-sdiff-diag--9e30dbeca31149829c14ca94.md) | 378 | `result-track:9e30dbeca31149829c14ca94730eb7e5482141811673f03f2c413a8288a3c49a` |
| 57 | `theorem` | [product_sdiff_offDiag](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/product-sdiff-offdiag--ff077c26c9e95fe5c225408c.md) | 383 | `result-track:ff077c26c9e95fe5c225408c98fbf0b497f9dc4ea6a82a27d59e033f6741851c` |
| 58 | `theorem` | [diag_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-inter--69946f119f952498c138e6ea.md) | 387 | `result-track:69946f119f952498c138e6ea4408a9011259bd5097af26f0230795e915f6afbd` |
| 59 | `theorem` | [offDiag_inter](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-inter--31f074366448717a1968462a.md) | 391 | `result-track:31f074366448717a1968462a4f68ba360cbf67af632a919028b39f26095fc08f` |
| 60 | `theorem` | [diag_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-union--5ea1541ba1fd7e67e4fe6cc1.md) | 397 | `result-track:5ea1541ba1fd7e67e4fe6cc1765734903be02b2f3f92c9fae55ba5885ac5dda5` |
| 61 | `theorem` | [offDiag_union](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-union--addfb0a263f1a280d7c6b7c0.md) | 404 | `result-track:addfb0a263f1a280d7c6b7c0130633e07baa027f1bb1dcc11dedeac7ac9a0538` |
| 62 | `theorem` | [offDiag_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-singleton--c1ae93069f7268f22fcb6249.md) | 414 | `result-track:c1ae93069f7268f22fcb62498e98de749f3b36444346293e67bac5e1bcda47a9` |
| 63 | `theorem` | [diag_singleton](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-singleton--7b9ca0451c77672b0e46400d.md) | 417 | `result-track:7b9ca0451c77672b0e46400d0f98847bfd70a3de711e129cac4ecbc67ff9ace2` |
| 64 | `theorem` | [diag_insert](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/diag-insert--8e3a9a3f541752d13421a864.md) | 421 | `result-track:8e3a9a3f541752d13421a86457ee184ad2e400455b6bfc11e6f4868119fe0219` |
| 65 | `theorem` | [offDiag_insert](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantbaf05e3f20183571c3e9c47028cb337961305c3243b298d70f1447ec668e30c5.lean/declarations/offdiag-insert--49f0afefad7efa9e2e199cf2.md) | 425 | `result-track:49f0afefad7efa9e2e199cf23334a56d177b4b637105b7ad8310ad6d143f2414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
