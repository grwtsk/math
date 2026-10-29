# Verification target: Sum Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ece8a13e38809536f1374d157bab315735015e0",
  "lexical_observation_count": 169,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SumProdNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SumProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ece8a13e38809536f1374d157bab315735015e0`.

Source path: `GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceSum](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/insttopologicalspacesum.md) | 52 | `declaration-track:e82e23c8dc516d870e356f6611ef08932a0475a50272020abf1cf8936b299bd0` |
| 2 | `instance` | [instTopologicalSpaceProd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/insttopologicalspaceprod.md) | 56 | `declaration-track:985e351a96eda43351f6b14bd23799e131d064da87a32564d8f6852e5b1a1805` |
| 3 | `theorem` | [continuous_prodMk](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-prodmk-source-edition-2.md) | 66 | `result-track:52b19ed704b89513dd0faa374444d4f6e1d242173b2cf241eb2ec9eb3a55c42b` |
| 4 | `theorem` | [continuous_fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-fst-source-edition-3.md) | 74 | `result-track:9f17a67704f588b76c7a5e8cbecfe159997b719f96523c9186640beba28daa42` |
| 5 | `theorem` | [Continuous.fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-fst-source-edition-2.md) | 79 | `result-track:2bd7741af878627c5e89b70d9e1e5068427066745548221055aa868ee44e80d8` |
| 6 | `theorem` | [Continuous.fst'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-fst.md) | 83 | `result-track:141d54f2b0d293f669ed97844609021033817fe3049c62345b4faa447511cf5e` |
| 7 | `theorem` | [continuousAt_fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-fst.md) | 86 | `result-track:183957e54f3ab065dc8a2b5ca3066b1d55ca407159b7366ccbc8e28daa06bed7` |
| 8 | `theorem` | [ContinuousAt.fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-fst-source-edition-4.md) | 91 | `result-track:ebbd50297f8c7f68408e912ecf2e6bf1aa0c5e512c30f6f2d8067c73cbc22e8d` |
| 9 | `theorem` | [ContinuousAt.fst'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-fst-source-edition-2.md) | 96 | `result-track:9b982c873384295570bff98e4af2872a43f39ab91da77696e76ce966af050a0c` |
| 10 | `theorem` | [ContinuousAt.fst''](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-fst-source-edition-3.md) | 101 | `result-track:a84424b51f2768ed16c5043f7d694bb2780a3b5ddc43c76e8686d8230d1e6999` |
| 11 | `theorem` | [Filter.Tendsto.fst_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-tendsto-fst-nhds.md) | 105 | `result-track:ff8737340ba8e03f014b7ede70e1345a6fb140767bfc0c72f48674b2f3f51bf9` |
| 12 | `theorem` | [continuous_snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-snd-source-edition-3.md) | 110 | `result-track:f2fe8f9a18c3106160d885e003b95344d0d669d1f0bf3373b898a2aa6f25783a` |
| 13 | `theorem` | [Continuous.snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-snd-source-edition-2.md) | 115 | `result-track:708a7461f0f71af841a8c603a2c2c2eba2a9697eb78b2def620fff3b86266ca0` |
| 14 | `theorem` | [Continuous.snd'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-snd.md) | 119 | `result-track:262798cda662b93f82acea9804b3e05b539db4d5a93522d398da50a91b31ea2b` |
| 15 | `theorem` | [continuousAt_snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-snd-source-edition-3.md) | 122 | `result-track:99a48847dc40aceb71fdc0f1f7522a270b3be30a553ec70a0d8f3d587722693b` |
| 16 | `theorem` | [ContinuousAt.snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-snd-source-edition-2.md) | 127 | `result-track:663973701280e62a5ede779e7c209d1aa48411931689205666c6dd56428aa3ad` |
| 17 | `theorem` | [ContinuousAt.snd'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-snd-source-edition-4.md) | 132 | `result-track:fefabe2b326b420963682144a9e70dbb91d33ccb87e8b6788560ca2bcb912dde` |
| 18 | `theorem` | [ContinuousAt.snd''](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-snd.md) | 137 | `result-track:4f7d1405bc917353d8691e0e52c72ad64f102e1ccb20a926b53f525e3e906e54` |
| 19 | `theorem` | [Filter.Tendsto.snd_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-tendsto-snd-nhds.md) | 141 | `result-track:37f8befe3d7b964982011dc7e6744cfc77e4f8fc7827bbaf0f8b3c000212a1ac` |
| 20 | `theorem` | [Continuous.prodMk](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-prodmk.md) | 146 | `result-track:051fcc0ef986373b16dfadf401bc0ba49e4d997ecb6452ebf8f1137de88ee1b9` |
| 21 | `theorem` | [Continuous.prodMk_right](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-prodmk-right.md) | 154 | `result-track:282beea03a6e5daefae5acabc131458b20b25ef616abae46d662287ce0622d2c` |
| 22 | `theorem` | [Continuous.prodMk_left](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-prodmk-left.md) | 160 | `result-track:5444950823fc6947a4f5695b7cbbd5ea8a15cfc0e81049f0c8d2fdfc6f2dd048` |
| 23 | `lemma` | [IsClosed.setOf_mapsTo](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosed-setof-mapsto.md) | 167 | `result-track:0fc5b187f2d11181e7cfbf0d35f942d9d4a730b57f5df1a22290028ac8c37c54` |
| 24 | `theorem` | [Continuous.comp₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-comp-source-edition-2.md) | 171 | `result-track:5140b507f2337e95f8c8935457195835e4d312d17ebce6d0a5b8c09b01c0a87d` |
| 25 | `theorem` | [Continuous.comp₃](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-comp.md) | 175 | `result-track:2eac4949e9cd7b7cf63fbdbb8748741921b8681def1235ca5ddbe37b1aad2057` |
| 26 | `theorem` | [Continuous.comp₄](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-comp-source-edition-3.md) | 180 | `result-track:9dc295381e61759899cdc0f02e53ec2bcedc710fb946e21cb2c4914551cd9ade` |
| 27 | `theorem` | [Continuous.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-prodmap.md) | 186 | `result-track:6992875acdbc752ae3c4e92aa18902dcecffb96c5d1571c2a142ca1bf67fa596` |
| 28 | `theorem` | [continuous_inf_dom_left₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-inf-dom-left.md) | 191 | `result-track:8f7608bf68d58e08f073356336c73dd16932bfe4a78f36c0ab9005438b026c74` |
| 29 | `theorem` | [continuous_inf_dom_right₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-inf-dom-right.md) | 201 | `result-track:b02e40dbc327ea52c3eddd5b309147970214de2c5d09e9580b76640f1e2ba37c` |
| 30 | `theorem` | [continuous_sInf_dom₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sinf-dom.md) | 211 | `result-track:8af3156ac77fb36099ea1e6eee19e16c33af9573019caed47a9236c35513e6b7` |
| 31 | `theorem` | [Filter.Eventually.prod_inl_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventually-prod-inl-nhds.md) | 222 | `result-track:fe2c4775f46df889cf5c0d0bd7f458613ddb7d9b3d56bd819993ac31b926afe7` |
| 32 | `theorem` | [Filter.Eventually.prod_inr_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventually-prod-inr-nhds.md) | 226 | `result-track:762b2f36087b7bdb18244736f03d8a0a46de830a5b94bdd8be5cc35ec7539bae` |
| 33 | `theorem` | [Filter.Eventually.prodMk_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventually-prodmk-nhds.md) | 230 | `result-track:e48f4de2959786cdac5971eed334026ab9f11ea03f7a7d19a294f6e260b69f6b` |
| 34 | `theorem` | [continuous_swap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-swap.md) | 237 | `result-track:6e1c697c4a2ccaddfb4ea6d4583467121f814ef3abc0d9f8f080bfa9323cda7b` |
| 35 | `lemma` | [isClosedMap_swap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-swap.md) | 240 | `result-track:18fe6c6fbcb76fc3d4ded3571773d8fc34db3d529e1a6d7724a6bf6fc674e068` |
| 36 | `theorem` | [Continuous.uncurry_left](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-uncurry-left.md) | 244 | `result-track:5ec34c49ae37480f1a0de3b99f50406f8b19fa1c93c8e18c7a3e1b6deab673d3` |
| 37 | `theorem` | [Continuous.uncurry_right](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-uncurry-right.md) | 248 | `result-track:6dcbb861cee95cbaaf2dcb55a5fe9c30cab3131c1179dfe1d5f20bf09c072d8b` |
| 38 | `theorem` | [continuous_curry](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-curry.md) | 252 | `result-track:af4a33ef13eb489aa2988e23e020548792a65e14e0fa2262749a60201b196d61` |
| 39 | `theorem` | [IsOpen.prod](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-prod.md) | 255 | `result-track:ef23817cca31429b612df72feb123afb75198a3ba9fd9ebaf81fb210c000f575` |
| 40 | `theorem` | [nhds_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/nhds-prod-eq.md) | 259 | `result-track:ba7021fe19932f0f911c9ece4e9ed27c0c2079dac165a7005f207f5c06ccce97` |
| 41 | `theorem` | [nhdsWithin_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/nhdswithin-prod-eq.md) | 263 | `result-track:cfff944ffc5c24c7675264caa5ed7bec3001e2b4551fe007dabbad4f3aeffc72` |
| 42 | `instance` | [Prod.instNeBotNhdsWithinIio](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-instnebotnhdswithiniio.md) | 267 | `declaration-track:7d750edc62ba28a4a71de8c948be301ad160c18cc061662f82f2ac08dd246a2c` |
| 43 | `instance` | [Prod.instNeBotNhdsWithinIoi](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-instnebotnhdswithinioi.md) | 273 | `declaration-track:a2a2f6531194b32adbe9c739fe955ebc65050fc1848d311bde59e1acc87a8843` |
| 44 | `theorem` | [mem_nhds_prod_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/mem-nhds-prod-iff.md) | 279 | `result-track:6707abeed1e1d9b58a2243c401159f7f3d6880e75a9e5f7cd3ab4664197b2653` |
| 45 | `theorem` | [mem_nhdsWithin_prod_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/mem-nhdswithin-prod-iff.md) | 282 | `result-track:6c774bf7cb7402a64a78ab2da2600f051e65d695ca34549d57492b24eb2dd840` |
| 46 | `theorem` | [Filter.HasBasis.prod_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-hasbasis-prod-nhds.md) | 286 | `result-track:21cc16fb3490b1d4ae18544a8d1559d5885b56a2dd69a2c00abdac2c4346f9e3` |
| 47 | `theorem` | [Filter.HasBasis.prod_nhds'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-hasbasis-prod-nhds-source-edition-2.md) | 293 | `result-track:82806eaf2462c81ab8e3df3fda5e201e786ba1bebf083dc64973f97886666412` |
| 48 | `theorem` | [mem_nhds_prod_iff'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/mem-nhds-prod-iff-source-edition-2.md) | 299 | `result-track:defd48eda4b4122914c7d5289ceb2d6c968d449b4e688c8d963f3d5ce2c488d2` |
| 49 | `theorem` | [Prod.tendsto_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-tendsto-iff.md) | 304 | `result-track:eaa632242791e2fa44e27fd144eec5eaaf59ede60af6c84feb84c848eb5be38e` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/instance.md) | 309 | `declaration-track:8f8ac51c50274e200385d76c01fae6fc75333b57ed0154e82ec5196f56be0f10` |
| 51 | `theorem` | [prod_mem_nhds_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-mem-nhds-iff.md) | 313 | `result-track:f6953bd631a412e0dd0ca38cc0a5e57441417cf4b23aa4518c19491a3e2ea870` |
| 52 | `theorem` | [prod_mem_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-mem-nhds.md) | 316 | `result-track:6bd56ba2546b3bdacd37294007853081a857f8257fe88393a8001e5a2406ecf9` |
| 53 | `theorem` | [isOpen_setOf_disjoint_nhds_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-setof-disjoint-nhds-nhds.md) | 320 | `result-track:774306d266a2dc533791d68d3cee70cb783259499cf0eac6353636e7e81f2eb8` |
| 54 | `theorem` | [Filter.Eventually.prod_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventually-prod-nhds.md) | 327 | `result-track:11f1e8926f01271e760450776537fad972b6c7d20b4bf2ba083914f19b58b6be` |
| 55 | `theorem` | [Filter.EventuallyEq.prodMap_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventuallyeq-prodmap-nhds.md) | 331 | `result-track:1dc00855ea4a9f53b180b982460fc5cab64033fee4d209935eaa06f18af86b16` |
| 56 | `theorem` | [Filter.EventuallyLE.prodMap_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventuallyle-prodmap-nhds.md) | 337 | `result-track:0bd39de25f2e1dc5f863b3007a696a4b1418aa8f9df66983dbe7cb1731b2f1e8` |
| 57 | `theorem` | [nhds_swap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/nhds-swap.md) | 343 | `result-track:b12a518e5db20ada05d82337cccb1084e87179115b4e641777820f4952854efd` |
| 58 | `theorem` | [Filter.Tendsto.prodMk_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-tendsto-prodmk-nhds.md) | 346 | `result-track:ac5cfaa9a4642f46cd734ef958533b74a2cf8005140f330452b22c7c24c41f45` |
| 59 | `theorem` | [Filter.Tendsto.prodMap_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-tendsto-prodmap-nhds.md) | 355 | `result-track:bfa73f282295e7de74f1cf8c0ed6839a5db8cf802b1df6162a0fbc7a150330e8` |
| 60 | `theorem` | [Filter.Eventually.curry_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/filter-eventually-curry-nhds.md) | 361 | `result-track:4a2534d109bbb69ba62dec9591a2efc84c9a02b5101b2e7c7cfbc4dcf49e10a4` |
| 61 | `theorem` | [ContinuousAt.prodMk](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-prodmk.md) | 367 | `result-track:8abd32330b57a308f69e182abdd9e7746dbfcd0a1f667d1717230400206f4356` |
| 62 | `theorem` | [ContinuousAt.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-prodmap.md) | 374 | `result-track:25f2b26afd42de2faea0a41dabca811c7a2ac148196163023302b09eac3ae88c` |
| 63 | `theorem` | [ContinuousAt.prodMap'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-prodmap-source-edition-2.md) | 380 | `result-track:988759c94afdf23b36bdeb283a22ce646b99b0951fb057da6ff95e43b1327462` |
| 64 | `theorem` | [ContinuousAt.comp₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-comp.md) | 384 | `result-track:e88e2b71ff08f398e0ad91be26323f0054465b6402efab2ad108bf4b23db64f8` |
| 65 | `theorem` | [ContinuousAt.comp₂_of_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuousat-comp-of-eq.md) | 389 | `result-track:92f7f05d58081909525394d824d2ac31d1435b911efe0d95424836a0f78e49e5` |
| 66 | `theorem` | [Continuous.curry_left](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-curry-left.md) | 396 | `result-track:776299115b4655670bee1abec01b1e602a9768efb17d1c245fd1e5411521037a` |
| 67 | `theorem` | [Continuous.curry_right](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-curry-right.md) | 402 | `result-track:f85a63e88a2342b95a382380ce9d4a45aa49ff3ad13e69ef3492da3e5d13a3ae` |
| 68 | `theorem` | [prod_generateFrom_generateFrom_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-generatefrom-generatefrom-eq.md) | 408 | `result-track:7699dc647e28044096390a28f01d6a8460b1bf36ff3d0e8db41c0d46be243d4c` |
| 69 | `theorem` | [prod_eq_generateFrom](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-eq-generatefrom.md) | 438 | `result-track:f1c481309dde25656ac92c8cf9fdbc1d1bb73163b9e71b8ff6ccc6b55a8a9edb` |
| 70 | `theorem` | [isOpen_prod_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-prod-iff.md) | 449 | `result-track:31bdbd357307daab443c73ab434acc2e96310944f6a82f5fda8db7590779c680` |
| 71 | `theorem` | [prod_induced_induced](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prod-induced-induced.md) | 455 | `result-track:3e87085dc6d1f910b041688c62c0324cd13534541edee06fb5c19785f1a05770` |
| 72 | `theorem` | [exists_nhds_square](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/exists-nhds-square.md) | 464 | `result-track:5574e9756e8b5da9eda28aa8a72901999dd0f9e102e211c428d6961243a83ed0` |
| 73 | `theorem` | [map_fst_nhdsWithin](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/map-fst-nhdswithin.md) | 470 | `result-track:8c349d8c9fde0a7c5757d52d60795e3efd6e5cfc12fb84513823005bb7b7764a` |
| 74 | `theorem` | [map_fst_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/map-fst-nhds.md) | 479 | `result-track:477a994b777d1966d0fd8ea20206a782e4866fed52e028a46720c1ebc05a949e` |
| 75 | `theorem` | [isOpenMap_fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-fst.md) | 483 | `result-track:f0c3609c5d837d37b8f011f1ced2f1be4382b6e15c86a4fca9c8bce806b32353` |
| 76 | `theorem` | [map_snd_nhdsWithin](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/map-snd-nhdswithin.md) | 488 | `result-track:24b3dfbc9c1e6337630ea5f7948334822f024065cd748df30be013805efc7a23` |
| 77 | `theorem` | [map_snd_nhds](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/map-snd-nhds.md) | 497 | `result-track:c11b77aefc1d42230993989f3d985a23675ca078493ecafc2183b212d2b7017e` |
| 78 | `theorem` | [isOpenMap_snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-snd.md) | 501 | `result-track:705c62705d730259602a62d6fa8c325502ee4d338ceab83843f414b15b845568` |
| 79 | `theorem` | [isOpen_prod_iff'](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-prod-iff-source-edition-2.md) | 506 | `result-track:8e08a9ecf09ee3570d8dc24e6672997da592b91da905e11443ef5b3ef4b1f521` |
| 80 | `theorem` | [isQuotientMap_fst](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isquotientmap-fst.md) | 520 | `result-track:4b75c5a7e37de925dc5d157c505cae5d73b302e44b50f5f4948f3a9c3a80e183` |
| 81 | `theorem` | [isQuotientMap_snd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isquotientmap-snd.md) | 526 | `result-track:0dbb2cdfdceed86d7017e467b5a42983f06321dbce7c889f5721a6b96abeac45` |
| 82 | `theorem` | [closure_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/closure-prod-eq.md) | 532 | `result-track:39d8ad1f51c33c38d4cc8a1f8e1fab505c76b2fb3db201471d9def2613667c30` |
| 83 | `theorem` | [interior_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/interior-prod-eq.md) | 536 | `result-track:e4256fb2a61bd0de8051457c147cb7f203eae3c2378ca671cddb4cd9f7bc0680` |
| 84 | `theorem` | [frontier_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/frontier-prod-eq.md) | 539 | `result-track:7244edf73968dcddc6cd4f65692e97e6bbaf2dc51ca6c6e3dbaa402c04d51c74` |
| 85 | `theorem` | [frontier_prod_univ_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/frontier-prod-univ-eq.md) | 544 | `result-track:b7a0ad34cef75e46bec3249b7e2a3675543302a0d987f4806b759a17a2610721` |
| 86 | `theorem` | [frontier_univ_prod_eq](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/frontier-univ-prod-eq.md) | 549 | `result-track:1447b325523205b4f54792f4efbb97d1671ddef3690cae988b53d7e7e29caa1d` |
| 87 | `theorem` | [map_mem_closure₂](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/map-mem-closure.md) | 553 | `result-track:6ced96ef7469d34c8b5b3b108518556778c5a3519256c63f3b84d2b8b0cf4782` |
| 88 | `theorem` | [IsClosed.prod](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosed-prod.md) | 560 | `result-track:f7ddf9f02867e6b4a3badaa6d2b8029d4c45db20157873d060eb4812c1b088af` |
| 89 | `theorem` | [Dense.prod](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/dense-prod.md) | 565 | `result-track:ea874843158de0a821fae4332fec0e2a04f7c6091377555bea39e698ea949796` |
| 90 | `theorem` | [DenseRange.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/denserange-prodmap.md) | 571 | `result-track:8d8ad65d19cd61c44f200cd1804f6f584c43199551d442344def02cc046413b3` |
| 91 | `lemma` | [Topology.IsInducing.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isinducing-prodmap.md) | 575 | `result-track:10c98a8b693a5c7dadebcccc6c77ba49f2a781a0b8994c20ac3367a737e623e3` |
| 92 | `lemma` | [Topology.isInducing_const_prod](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isinducing-const-prod.md) | 583 | `result-track:f27e33a8431f5f55264f05364afda88762f793505fe9577c4dd5a628141bf2f4` |
| 93 | `lemma` | [Topology.isInducing_prod_const](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isinducing-prod-const.md) | 591 | `result-track:cbbdac7990f2b3651e7366357a9ce9936cf8a8f0199ef874503deeabb5bb6638` |
| 94 | `lemma` | [Topology.IsEmbedding.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isembedding-prodmap.md) | 598 | `result-track:13b36bd14706b195420abab9eb327cbf4dae4e2c1ee073cfef89cf8898183ae8` |
| 95 | `theorem` | [IsOpenMap.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-prodmap.md) | 603 | `result-track:d3c17985c0ce5ee015fb2ee372d036e172a94ccf9e09dc65967f006d5f249663` |
| 96 | `lemma` | [Topology.IsOpenEmbedding.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isopenembedding-prodmap.md) | 610 | `result-track:975bbea78e7afb969bee8c75a77153c0ed1f8c9ce5b975645ba6245ff2cf2257` |
| 97 | `lemma` | [isEmbedding_graph](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isembedding-graph.md) | 614 | `result-track:516013c6827d67dba6608e703a36bd4c2533c5f0ea08582b13563bca784ef889` |
| 98 | `lemma` | [isEmbedding_prodMk](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isembedding-prodmk.md) | 620 | `result-track:8f1c50240a71f7e47916b283fb4bfcd40b5f3450cf17ac1b842b2ab37abd0274` |
| 99 | `theorem` | [IsOpenQuotientMap.prodMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenquotientmap-prodmap.md) | 626 | `result-track:35e9c46e2c06d39f6da3cc36d6799c3554c96ba3dc3ebf55ba9780067d36dbd5` |
| 100 | `theorem` | [continuous_sum_dom](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sum-dom.md) | 638 | `result-track:0e4eb7330988484ce11c29ab0d5fb9524d8476a5d023dae94adbda2f9c3e7610` |
| 101 | `theorem` | [continuous_sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sumelim.md) | 644 | `result-track:0098361b738d63447fcf518831db9e6e56aadba4c5470f14057b28fbc81ebaf7` |
| 102 | `theorem` | [Continuous.sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sumelim-source-edition-2.md) | 651 | `result-track:f11ad3818e0e9713a1c1afe393797832e7ad33afd628fa28922bb3b28a50c03c` |
| 103 | `theorem` | [continuous_isLeft](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-isleft.md) | 658 | `result-track:36dfd26f794a45515031506b91f8ffa53465dad3c8001a79582c136c50066709` |
| 104 | `theorem` | [continuous_isRight](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-isright.md) | 662 | `result-track:0ea68cf9a9b536f53d7fca0e3a1b9bbcdb798ef305d071b3a4ba299b91d22f88` |
| 105 | `theorem` | [continuous_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-inl.md) | 666 | `result-track:163027b9ab6b1576082b7a8c2943c5123a9c3bfd66d59e4d2d670e425524107d` |
| 106 | `theorem` | [continuous_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-inr.md) | 669 | `result-track:e631e01f233d633492fd5cee3ffa4652a838b81946816f18b21067428802b1e0` |
| 107 | `lemma` | [continuous_sum_swap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sum-swap.md) | 672 | `result-track:6a968888cfd160655ec528aa40314709864cadf37278dcb37bfa67ada2d4a289` |
| 108 | `theorem` | [isOpen_sum_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-sum-iff.md) | 675 | `result-track:628948192402435658af900a02e569d55e070618578f41f7ed8f8a255f3d5cf2` |
| 109 | `theorem` | [isClosed_sum_iff](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosed-sum-iff.md) | 678 | `result-track:443b064b3d3e9b40ecb8f5935b89223645ae52096a52bb77e1d82713b60656ec` |
| 110 | `theorem` | [isOpenMap_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-inl.md) | 682 | `result-track:886e01b1e05e4f9a5c9effee578a5e06b85203e44bb0297284b06fb752174cbd` |
| 111 | `theorem` | [isOpenMap_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-inr.md) | 685 | `result-track:86a3686f8c4de93525840b5a024c15f581fd47b1835fc968c6fc94b8ee494b07` |
| 112 | `theorem` | [isClosedMap_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-inl.md) | 688 | `result-track:89aee5bcefb9d9fe5bf7f8186c8621873e3aa273a36c5321fe7cec72eb482c4f` |
| 113 | `theorem` | [isClosedMap_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-inr.md) | 691 | `result-track:e2afbb9f89e872a9478d0f7e06ef3d81716fac153beacfd3c37021ec46a37423` |
| 114 | `lemma` | [Topology.IsOpenEmbedding.inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isopenembedding-inl.md) | 694 | `result-track:45b21ee3ccd8ea1bb0b1fc1ba22e71ceee8ff88c6ede278350db591233dfcc79` |
| 115 | `lemma` | [Topology.IsOpenEmbedding.inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isopenembedding-inr.md) | 699 | `result-track:163972867d5b309a57e9740165a123e7bce9013b2f930e4422cf377c38833b75` |
| 116 | `lemma` | [Topology.IsEmbedding.inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isembedding-inl.md) | 704 | `result-track:00d1ef898a32d91282ec9225234aadda2cfe062acf488cb2987a2f8b84428e68` |
| 117 | `lemma` | [Topology.IsEmbedding.inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isembedding-inr.md) | 705 | `result-track:aa7d95b18e12f7c73137a564a440ad6271a38a11f447ce4ec4313c04c36d080d` |
| 118 | `lemma` | [isOpen_range_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-range-inl.md) | 710 | `result-track:069367bca778d92ad6f98cc9e82ae8b86518642a45ab02e5b835a8d3cbd8cd09` |
| 119 | `lemma` | [isOpen_range_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopen-range-inr.md) | 711 | `result-track:9ffba345d5df0b1321c4234fc9cee5ab73c6c5c0c2e757acfe0bb0264e048f30` |
| 120 | `theorem` | [isClosed_range_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosed-range-inl.md) | 713 | `result-track:d50a7878bc64e1f5e21887997f71672d2fa0d3a2af7fb2abc9945812168da107` |
| 121 | `theorem` | [isClosed_range_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosed-range-inr.md) | 717 | `result-track:267a8625d21ed168af3f8d21b2772ca38d4efce05d1f0f9be5dc17e96ce00993` |
| 122 | `theorem` | [Topology.IsClosedEmbedding.inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isclosedembedding-inl.md) | 721 | `result-track:c1d2c743c0c7d6aa0a6e7be17f8174bcef9b572fbd9527b5581e86fd90dccbf5` |
| 123 | `theorem` | [Topology.IsClosedEmbedding.inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/topology-isclosedembedding-inr.md) | 726 | `result-track:66321462b91f85772340c64be4b190594861995f66a9359092c3ebde7994cb73` |
| 124 | `theorem` | [nhds_inl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/nhds-inl.md) | 731 | `result-track:4c30c360100942311d7cd0b8787865c8c838a99df091334db58010ed79107195` |
| 125 | `theorem` | [nhds_inr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/nhds-inr.md) | 734 | `result-track:c1b7e0b5c115b27247f4ef5f5b2987e79100f84d74d63605e606fe7b33490194` |
| 126 | `theorem` | [continuous_sumMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-summap-source-edition-2.md) | 738 | `result-track:d3b73d8b88dc2ebc5e5779ce105e7c4a37d5d9470546d7cbdf589ec3351c4b0c` |
| 127 | `theorem` | [Continuous.sumMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-summap.md) | 746 | `result-track:09cab77036a5d3ea15c91602f68938990c7021a47bd0360910de3615dea88268` |
| 128 | `theorem` | [isOpenMap_sum](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-sum.md) | 752 | `result-track:e2ee1c3b5d35f412227affcb99c1bf80a939c394ce69ea2bd08c0a0b8780c65a` |
| 129 | `theorem` | [IsOpenMap.sumMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-summap.md) | 756 | `result-track:711b2eeb9a682c998a7c4b327900ae200dac56839a8350a940c5ba847792fb0f` |
| 130 | `theorem` | [isOpenMap_sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-sumelim-source-edition-2.md) | 761 | `result-track:70a3bb33e85814d9f84a8bfe506a43b00a4999020176bc5352d06ff663fe4a41` |
| 131 | `theorem` | [IsOpenMap.sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenmap-sumelim.md) | 767 | `result-track:33fe363a38afb50335cc59f2a209aa89587e34ea7f9dcd6192cf76f963f7e4ca` |
| 132 | `lemma` | [IsOpenEmbedding.sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isopenembedding-sumelim.md) | 773 | `result-track:6d7989c849f6f2062831da486b86708f8a742e4cf226acbc49cd7ebb528b7719` |
| 133 | `theorem` | [isClosedMap_sum](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-sum.md) | 779 | `result-track:db623f5ea154821c285ed1a98c4703f8c94723032f88c4c427341aba7dfad7f4` |
| 134 | `theorem` | [IsClosedMap.sumMap](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-summap.md) | 790 | `result-track:5d4f7a7f569b3466bf25da87e8f0f035fadb56928e92640c6e0b20fabe0d8ae6` |
| 135 | `theorem` | [isClosedMap_sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-sumelim.md) | 795 | `result-track:3c909625975541cb87e7f822cd26b0232b691ecb1ae05cd84adbe2fb56da2deb` |
| 136 | `theorem` | [IsClosedMap.sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedmap-sumelim-source-edition-2.md) | 799 | `result-track:a20e8bcecffa94b594cf78f7f2ae7e189c4731f8cc4b433c7ac31f1c9a76cfc0` |
| 137 | `lemma` | [IsClosedEmbedding.sumElim](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/isclosedembedding-sumelim.md) | 803 | `result-track:6d9d6a783c6d41525569f80030aef37fe41453f718168dbe488e2207692c0d7e` |
| 138 | `def` | [sumCongr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcongr.md) | 819 | `declaration-track:ee6e3a2734310a76734b98dc75694e876a416f0ce971658b7140d34665dd5833` |
| 139 | `lemma` | [sumCongr_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcongr-symm.md) | 825 | `result-track:bef6304e0345a4d98a3284a068b6b6437a57c9e1454dd59f90f5b019454e6909` |
| 140 | `theorem` | [sumCongr_refl](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcongr-refl.md) | 829 | `result-track:9026a178751cf908919924404b8242262815f32ab47312187ffd0dd1ef8e2024` |
| 141 | `theorem` | [sumCongr_trans](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcongr-trans.md) | 834 | `result-track:0f178d62062ae11f51d91d1fd5c43c641274ae72a7c395340064d338acdef82d` |
| 142 | `def` | [prodCongr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodcongr.md) | 841 | `declaration-track:8a39d250ad67f22ebddf1a37cc5f34d01265a075405d45fbd750645e59037c62` |
| 143 | `theorem` | [prodCongr_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodcongr-symm.md) | 845 | `result-track:6780a90598936a9b9c90e4441e1bbd6265a80e906f771e6da7a6a5b4f5a377fc` |
| 144 | `theorem` | [coe_prodCongr](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/coe-prodcongr.md) | 850 | `result-track:9ec5fb11e86942b7e9e4240485acb52415b80ea2ccbd7991ff1a174bf5c57de4` |
| 145 | `def` | [sumComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcomm.md) | 856 | `declaration-track:e2be8f21977f4e3df52040c3d5f427acb7c56365fde5488044a435d57bdeb9c4` |
| 146 | `theorem` | [sumComm_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumcomm-symm.md) | 862 | `result-track:32d9a3ac1a3617792b2c0c9564c0d26be99e39aad51b91c127824c93d606cc8b` |
| 147 | `theorem` | [coe_sumComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/coe-sumcomm.md) | 866 | `result-track:c4f10b614a1bd46f7f388f6f45e4a454d13439739ebab20daf47634c4380c017` |
| 148 | `lemma` | [continuous_sumAssoc](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sumassoc.md) | 870 | `result-track:a233da88ce1e8fcbfa0f4480f1dd896184379ebdae2a050c6bbd81e1e4e3daed` |
| 149 | `lemma` | [continuous_sumAssoc_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/continuous-sumassoc-symm.md) | 874 | `result-track:e86f279f6d2aef7baa00c68de21f3d5608f893ff7299e898354dbc237a41a768` |
| 150 | `def` | [sumAssoc](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumassoc.md) | 878 | `declaration-track:92dc5f625db49c7d3dadb922162193bcf79047772f191b15ace58809800d2dc8` |
| 151 | `lemma` | [sumAssoc_toEquiv](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumassoc-toequiv.md) | 884 | `result-track:7aabd26dd38d1df883025d86c010e55f34db20fd7abb5eff926553a7d2b52853` |
| 152 | `def` | [sumSumSumComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumsumsumcomm.md) | 887 | `declaration-track:5505474a4da53cdf7756401285d2508b718b1264f861e2cfdb1213941b379475` |
| 153 | `lemma` | [sumSumSumComm_toEquiv](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumsumsumcomm-toequiv.md) | 901 | `result-track:b6fc74545872499705759057f04a4010b149012ec9d845837cca7b8242c290eb` |
| 154 | `lemma` | [sumSumSumComm_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumsumsumcomm-symm.md) | 904 | `result-track:563379e260aee1ffc94d373ea0530590eb2eaf1cddc5fc282cae2a35690f4a9f` |
| 155 | `def` | [prodComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodcomm.md) | 907 | `declaration-track:9a23069ffa2e3df524509896e742810a3cbbb8b8cdd5a156461f24f85d75e760` |
| 156 | `theorem` | [prodComm_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodcomm-symm.md) | 913 | `result-track:ad5428d4a226681b020aaa495036c74f67d7d1d85181c5e6c6d6fed653279b50` |
| 157 | `theorem` | [coe_prodComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/coe-prodcomm.md) | 917 | `result-track:5ef1787b635eb9309f6382a68f5640ae00cca7f6ee5ee063f2165941c9b91e86` |
| 158 | `def` | [prodAssoc](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodassoc.md) | 921 | `declaration-track:bf3b333bc48892b6e23bc4072f28072d611a5273fe62626d2e9f10f14e96b347` |
| 159 | `lemma` | [prodAssoc_toEquiv](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodassoc-toequiv.md) | 927 | `result-track:efefd07048cab2eb07432378b0714712e9f877d36faee67dcdb02def1df48d72` |
| 160 | `def` | [prodProdProdComm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodprodprodcomm.md) | 930 | `declaration-track:4463179e75430d3711558b946be2cab77d260a4d21096b2ea42df3c32d188582` |
| 161 | `theorem` | [prodProdProdComm_symm](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodprodprodcomm-symm.md) | 942 | `result-track:a2157bf0f1b229bf868fafe0921eeadc4e8bcaad331aebe450e76f57f66e77d5` |
| 162 | `def` | [prodPUnit](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodpunit.md) | 947 | `declaration-track:69d7950b8da2de43a816334da0353cf47249d258bb39eedbd8de93ed9b4be460` |
| 163 | `def` | [punitProd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/punitprod.md) | 953 | `declaration-track:fa72ffa9690a4164629e991fbf92941711e37accac3ad070544682dae963cac6` |
| 164 | `theorem` | [coe_punitProd](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/coe-punitprod.md) | 956 | `result-track:d7ef070b715c7b08438c4842b1bd17b170aa782ee80fa47a041dfb1e9f22d19e` |
| 165 | `def` | [sumEmpty](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumempty.md) | 960 | `declaration-track:56d7c4a0343b23e9cd58f1fac735d51577a4eba31d0d668635713f614ee74efe` |
| 166 | `def` | [emptySum](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/emptysum.md) | 966 | `declaration-track:90677cbf324698a590684fcfb38d972bbc59ea50ea5e11e3e76456e3edfd51e8` |
| 167 | `theorem` | [coe_emptySum](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/coe-emptysum.md) | 968 | `result-track:9bb4759b94f7afdc2242c9803d16a860181d297812e537ade4e01e337e82513b` |
| 168 | `def` | [sumProdDistrib](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/sumproddistrib.md) | 974 | `declaration-track:bc5a756522ee242340fedf8df388c4d19b778e79d5ccc7554b0200477582e5db` |
| 169 | `def` | [prodSumDistrib](../../../../GeneralTopology/SumProdNamespaced.lean/declarations/prodsumdistrib.md) | 982 | `declaration-track:bdcef6f2b4249ba9366a8a5d16a1afccdf452041942c6445c0c788694dfc267d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b67638fe7d87a15298e472743e07cbb6b67a231aa9c5af53f323f699abf0f0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
