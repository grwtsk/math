# Verification target: Simple Graph Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62fea0da01dc1e6d843d44e86ee8519509ef5b5f",
  "lexical_observation_count": 218,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant97f49ff9b52fe1906b6a2071422b35ec496cd6b3d9d81043e77e56efceb0a73f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62fea0da01dc1e6d843d44e86ee8519509ef5b5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant97f49ff9b52fe1906b6a2071422b35ec496cd6b3d9d81043e77e56efceb0a73f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant97f49ff9b52fe1906b6a2071422b35ec496cd6b3d9d81043e77e56efceb0a73f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Disjoint` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/macro.md) | 60 | `declaration-track:040054ff0b076e1d1930a5daecf5612b9a219a83c41892c03a82133cb3afa1bd` |
| 2 | `macro` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/macro-source-edition-3.md) | 69 | `declaration-track:704d4642b92d085e8545bc593a53ffc88d53d7b8a70a25d197d8e7733e0df01c` |
| 3 | `macro` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/macro-source-edition-2.md) | 79 | `declaration-track:1a161d66f64bfba96e47d1c1f4ae8e8d698a552e0d2a93c2a3590b0b61cc5eff` |
| 4 | `structure` | [SimpleGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/simplegraph.md) | 95 | `declaration-track:442174711d34bfec5fca336efe9d2a0567deb10b6bc6a010c5c526ac3cf30f27` |
| 5 | `def` | [SimpleGraph.mk'](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/simplegraph-mk.md) | 107 | `declaration-track:73094140817044e25f2d7bcb8f5ca6fcea60c686bfe629fb2df64cbe57ebab52` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-9.md) | 119 | `declaration-track:99c5b2aa34848c506c0dff966da7b15dce801460f41b888f357a071ca289cbcf` |
| 7 | `instance` | [SimpleGraph.instFinite](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/simplegraph-instfinite.md) | 132 | `declaration-track:77f03f661e3b01b112b8ddea3911ad0f75538b6879cd986ad913dd5d25ffeab9` |
| 8 | `def` | [SimpleGraph.fromRel](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/simplegraph-fromrel.md) | 137 | `declaration-track:0bc2b4bbe92e1ab1f5f583375895a6a5275ef9e7b9c1732393a4da13c5305246` |
| 9 | `theorem` | [SimpleGraph.fromRel_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/simplegraph-fromrel-adj.md) | 141 | `result-track:900e79af4fea67858f672ca870f1edba46918256ef2200680475a435d038fc1b` |
| 10 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance.md) | 148 | `declaration-track:1777278c22cd454ca770334640d9168404ebf0cf4a7fbc350a3672b3b552d93f` |
| 11 | `def` | [completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/completebipartitegraph.md) | 156 | `declaration-track:68bfa7fc52c8366e5005f304a046b8640ec4c7dfd67591872725426f9bfa7cfe` |
| 12 | `theorem` | [irrefl](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/irrefl.md) | 166 | `result-track:d0d8ef94f177fb1a9b0ec88cab92c6fa4ffad8da5182cb1b19a6754c9857d7e7` |
| 13 | `theorem` | [adj_comm](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-comm.md) | 169 | `result-track:e83872813b2f372e059ce6d19470995d06d9fb7effbdfce1a0fc1669759e5371` |
| 14 | `theorem` | [adj_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-symm-source-edition-2.md) | 173 | `result-track:eb69a99786c343fef495ef799d6706b7e161fe3f6847a41e570abff1df98c91e` |
| 15 | `theorem` | [Adj.symm](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-symm.md) | 176 | `result-track:91d5ac3c6d6c7c1b22c9d6c1d65ba206382e27d9d137f39dfb80179cddb1f5dd` |
| 16 | `theorem` | [ne_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/ne-of-adj.md) | 179 | `result-track:a9433c4763f088ac5d5b50c81449c66185a02c157ea415840a47ec659862ca63` |
| 17 | `theorem` | [Adj.ne](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-ne.md) | 184 | `result-track:5b64c7f07edd547397fe493d9f32531a10ee6875446e6471aeb7961624b512e1` |
| 18 | `theorem` | [Adj.ne'](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-ne-source-edition-2.md) | 187 | `result-track:737bc6a7b231f52fd23b55a0035351c3e749d3bd0ee4eb97565c084ed910b0e2` |
| 19 | `theorem` | [ne_of_adj_of_not_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/ne-of-adj-of-not-adj.md) | 190 | `result-track:509dbcce4d24159e3c84c1a32dff7a36aacebd30d699568ad2e49e629adc3814` |
| 20 | `theorem` | [adj_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-injective.md) | 193 | `result-track:a9a50977a6f9887ec2a860e22c710658802f4dbf67fc5cd5648773f38acc40e6` |
| 21 | `theorem` | [adj_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-inj.md) | 197 | `result-track:ca8fe1b9d1e85eb7c68503b7c35e8aa3cb4fbcbf3ae1601391b57cfe256a5f49` |
| 22 | `theorem` | [adj_congr_of_sym2](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-congr-of-sym2.md) | 200 | `result-track:fd761a9e6ebfe7ec98babcc031827b2ba3da0167cf3848b0daf9f7e4e568598b` |
| 23 | `instance` | [symm_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/symm-adj.md) | 206 | `declaration-track:6f1eb616a9cd63ff6597a1ab7689f133620d4088a2c5589c1af4dec70d28ae88` |
| 24 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:1790b171dca92655b88eba36b7b40aa9a3c1c02812cd9fd1c4fe0faf27ec9ef5` |
| 25 | `def` | [IsSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/issubgraph.md) | 218 | `declaration-track:3dd15a3f5b8b99d7e4b96d99517153ffb311150ac78b02300b6f1fa14901c5ab` |
| 26 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-6.md) | 222 | `declaration-track:41ad851ba95380ff6999c099989eef48a1d3b17a19b6da336ed2b8ffb64c5c6b` |
| 27 | `lemma` | [le_iff_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/le-iff-adj.md) | 225 | `result-track:3cf4b23f5f983c7564b556c593d5ff44669c45d2801fe2e51dc59f02a8acb05a` |
| 28 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-10.md) | 228 | `declaration-track:c7205a0de209ee64972c699904dd79c6f250efbb385b25c9e05c55edbcf2ebbc` |
| 29 | `theorem` | [sup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sup-adj.md) | 234 | `result-track:f2ba65af039120eefdc91abca53367f28ac3aae760227a80325a1327edc41e9a` |
| 30 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-11.md) | 238 | `declaration-track:dfd1ef13785f9419ac70b938543906460bbb46bb033ac21be6eca7e24650f463` |
| 31 | `theorem` | [inf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/inf-adj.md) | 244 | `result-track:0438f636a2763895c7af3442204ca14357e54c9e67f547ac924d2f324585a0d0` |
| 32 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-12.md) | 250 | `declaration-track:fa38b93ff128dc2b9f5d5f7abb142fcf7c1a2c23808b4dfda31ddf7ce548fbeb` |
| 33 | `theorem` | [compl_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/compl-adj.md) | 256 | `result-track:ad04b9b0606e8d1088de94f36e7d2e3ace53162e71775ba40640b6094fe8efdf` |
| 34 | `instance` | [sdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sdiff.md) | 260 | `declaration-track:8d5021c5a0eb4c626662ff320071670fcea4fc3c66ebbee91647b0b197e35073` |
| 35 | `theorem` | [sdiff_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sdiff-adj.md) | 266 | `result-track:bdb0bbdef8546c52d5293a928f4e36f155d9d892582161017c22f432de08f0b1` |
| 36 | `instance` | [supSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/supset.md) | 269 | `declaration-track:dccc1687e64357b10c18d805691624121029f999ea6d33a717c2687d0413afca` |
| 37 | `instance` | [infSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/infset.md) | 274 | `declaration-track:4dd1d64761b22530ce6a8b561f75fa337734a3d1aea86b30a320ab6ade169b6e` |
| 38 | `theorem` | [sSup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/ssup-adj.md) | 280 | `result-track:bda2aa276e8a91b4f8c5413727c3668888ba01f32fafcf1543d0872760cbf286` |
| 39 | `theorem` | [sInf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sinf-adj.md) | 284 | `result-track:5e76e58b2851c06cb78ad2318de1af3b64228773451275047b1c90e12b238115` |
| 40 | `theorem` | [iSup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isup-adj.md) | 288 | `result-track:fb8b66922473e28a6cd8e4d5fe0809aa3de929fe909032644a011b0155a30665` |
| 41 | `theorem` | [iInf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iinf-adj.md) | 291 | `result-track:6f035a8d95fd01c057ffbe8805c89315b8f9753a8b8e14ebcb3a6cbdd75de219` |
| 42 | `theorem` | [sInf_adj_of_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sinf-adj-of-nonempty.md) | 294 | `result-track:eeeab9d1e3904a1e545cb6a766905b52070548a2338568e00b6117fb4a863e83` |
| 43 | `theorem` | [iInf_adj_of_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iinf-adj-of-nonempty.md) | 301 | `result-track:60382e07e97f288768d7d962d36b47007dbb7fe54a302a66dd96993c2c06322b` |
| 44 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-8.md) | 305 | `declaration-track:968e532e62a12f6418a270d44021513477b83100159ea80af9ebf4011ac43f98` |
| 45 | `instance` | [distribLattice](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/distriblattice.md) | 308 | `declaration-track:f892fb6e345286d0afa09ca11e48cb97c4badaa57d71b1f62f53b6258e0923be` |
| 46 | `instance` | [completeAtomicBooleanAlgebra](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/completeatomicbooleanalgebra.md) | 311 | `declaration-track:f86448ad3532c3f4c12a5b6be6b13190ed087f3da7101ca38c1968690598123d` |
| 47 | `abbrev` | [completeGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/completegraph.md) | 332 | `declaration-track:74e7793d3d5af5cf95cd0d53b05e6c8e98de7c0751452e23f4b33739f4ac61d3` |
| 48 | `abbrev` | [emptyGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/emptygraph.md) | 335 | `declaration-track:db0d3014bc2c66a174ef383ff8ff0ffe79e9f845a175985f9bd4fb7b5764293d` |
| 49 | `theorem` | [top_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/top-adj.md) | 338 | `result-track:78745e1a1f83f58203ec44002de9e32a84c80c113094a0347ed7f3685b1d013b` |
| 50 | `theorem` | [bot_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/bot-adj.md) | 342 | `result-track:31d6ca911609635da6df7729131467324444a8d8e536bf3cbbb4a734222801a7` |
| 51 | `theorem` | [completeGraph_eq_top](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/completegraph-eq-top.md) | 346 | `result-track:6b5b69e8079c254c8ad70b6d915b3bcd56e60e002b97aed47983b9d27a5f9077` |
| 52 | `theorem` | [emptyGraph_eq_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/emptygraph-eq-bot.md) | 350 | `result-track:37efc5a78f238b74c360cf4e253b04bac344b8438dc431412d09fb49cfa01442` |
| 53 | `theorem` | [eq_bot_iff_forall_not_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/eq-bot-iff-forall-not-adj.md) | 355 | `result-track:5e8af083f74d541d02156b0e133ae04e1341aeeec7dcb5cb6408388fb0ebae28` |
| 54 | `theorem` | [ne_bot_iff_exists_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/ne-bot-iff-exists-adj.md) | 358 | `result-track:0417c880e33130d9316832fc6ece876036d72eba50a5e459ee174abe120ef00d` |
| 55 | `theorem` | [eq_top_iff_forall_ne_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/eq-top-iff-forall-ne-adj.md) | 361 | `result-track:44b17a9aac2d98e1ba1112342d135a1c0951944729b46e1937b4e4aeab073294` |
| 56 | `theorem` | [ne_top_iff_exists_not_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/ne-top-iff-exists-not-adj.md) | 364 | `result-track:831f525dd661d0e7665e282bf27e85c9898a5ccbce58aa05195fa95db83a60ab` |
| 57 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-7.md) | 370 | `declaration-track:4991a7143182624c455dceb740c0931d4376604ef35a979a4a6193b86bb73a22` |
| 58 | `instance` | [uniqueOfSubsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/uniqueofsubsingleton.md) | 373 | `declaration-track:33106a0e28520a69dc6092526217c1096feeb54a232e0bb86103d64196989484` |
| 59 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-4.md) | 377 | `declaration-track:2127131df87156b16a4674a9574c4e3abd9abef4e7b8f70cbe8003f5a30c4b0a` |
| 60 | `instance` | [Bot.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/bot-adjdecidable.md) | 385 | `declaration-track:e73ca2c70ea8425b789918fc042c71e1bdcf0a352195039d1f8289c09b5abcb6` |
| 61 | `instance` | [Sup.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sup-adjdecidable.md) | 388 | `declaration-track:e8e1280e15097e8a8b491188a60d54743cd31f339c768b812046c2774f2bd10b` |
| 62 | `instance` | [Inf.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/inf-adjdecidable.md) | 391 | `declaration-track:ff5ece43bdd8b8c08fa03093d1b9493d4d7fec639858b9b993fdb02cbdc99024` |
| 63 | `instance` | [Sdiff.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/sdiff-adjdecidable.md) | 394 | `declaration-track:05d9d20e8491ecef6cc5a9632a7d1008fa8bf00e498079bc8a7dd0c79b38c26a` |
| 64 | `instance` | [Top.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/top-adjdecidable.md) | 399 | `declaration-track:d8d7d2ecf374b131964bad7bedcb7c23bbfd4a2c95b32a7dd896028fb335313b` |
| 65 | `instance` | [Compl.adjDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/compl-adjdecidable.md) | 402 | `declaration-track:9dbb91b5f2798db3466b5b91574e218be6a397591ffb3d829cee77cccb3e2ceb` |
| 66 | `def` | [support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support.md) | 410 | `declaration-track:c1486880d31ece62dcb1b937d518a1d0a633d0516c08d9e133c23ea920843d3d` |
| 67 | `theorem` | [mem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-support.md) | 413 | `result-track:bb58b40c610f8f91f33d9b33123567b9d012cc80a26ec93bfcf2882a610416f0` |
| 68 | `theorem` | [Adj.mem_support_left](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-mem-support-left.md) | 417 | `result-track:d8596b90814f594b07649003e6af614d21860095b5ccd0bb780b4cfd905e55cb` |
| 69 | `theorem` | [Adj.mem_support_right](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-mem-support-right.md) | 421 | `result-track:8b0bc862199f005ebe3ffdf2ac02cb76c8cd014a281b06dc73c67758d17f4187` |
| 70 | `theorem` | [support_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support-mono.md) | 425 | `result-track:1df65b68b2ca7b982587efd39e4110bbb7d284bb4ce2628678180e0a89a3cb23` |
| 71 | `theorem` | [Adj.left_mem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-left-mem-support.md) | 428 | `result-track:bff36b81d2f7f15661f7f0178957d5ce172f5fbd14cc16d06ed9e74c4383ead2` |
| 72 | `theorem` | [Adj.right_mem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-right-mem-support.md) | 431 | `result-track:07ab362b9eea5770a577a6c0d172e23e4a8383bb70b968169bc8b6f55a3a71fe` |
| 73 | `theorem` | [support_top_of_nontrivial](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support-top-of-nontrivial.md) | 435 | `result-track:c85586ec44c075eda55d4cd1ef4ce7e042077ce06de3f92907805b367d837fd2` |
| 74 | `theorem` | [support_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support-bot.md) | 440 | `result-track:8b39a0823462905aaa7b2567cc8ed2d9cae508772a3d58846408835fa4eb8b5d` |
| 75 | `theorem` | [support_eq_bot_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support-eq-bot-iff.md) | 445 | `result-track:d56370106d4934c4fadabd4c1acf04c9a74c1f017c07229bdab70fec35f5d53a` |
| 76 | `theorem` | [support_of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/support-of-subsingleton.md) | 452 | `result-track:c136d0259c4f6bd104fb8da5940941e9da2f27044292dd69e867ec356224e7b5` |
| 77 | `def` | [neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset.md) | 456 | `declaration-track:333345b73a52e08d59f5f2ea52c959a442853537f838a2e602db40ef6481b9e9` |
| 78 | `instance` | [neighborSet.memDecidable](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-memdecidable.md) | 458 | `declaration-track:12af2af8a02a7fb488e2300486bad61ed9a87e0f827bb96608a96c428be40406` |
| 79 | `lemma` | [neighborSet_subset_support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-subset-support.md) | 462 | `result-track:8bf47056ba1e342904f42e28d1f06546cd811573963d8e1b0b223a67da80c074` |
| 80 | `def` | [edgeSetEmbedding](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgesetembedding.md) | 477 | `declaration-track:b75ea28dc5fd348af472665201124c3b61bd99c9071027c4dd407d73bd417b1d` |
| 81 | `abbrev` | [edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset.md) | 483 | `declaration-track:1bcf31063fd3dee0fad33ab1bd1a9a1f118fdd21115f39981f505ad8d61c80e4` |
| 82 | `theorem` | [mem_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-edgeset.md) | 486 | `result-track:a187eb9421baa8e0fd0a3e258c20a4e722bc6295f706fc4e011dfac47552eeaf` |
| 83 | `theorem` | [not_isDiag_of_mem_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/not-isdiag-of-mem-edgeset.md) | 489 | `result-track:e781fc8496836f50d59e4a6f40db0408824f43bd412485282472fea07b581194` |
| 84 | `lemma` | [not_mem_edgeSet_of_isDiag](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/not-mem-edgeset-of-isdiag.md) | 492 | `result-track:a3b585ed04f8b55ed47fb04eb03406be5e70d7f137e9a9298dc3aab84f0f33cf` |
| 85 | `theorem` | [edgeSet_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-inj.md) | 497 | `result-track:24c8c2c78e4837ef9ae7aad6adb2791b842af5073bf355cf9a638ded96783164` |
| 86 | `theorem` | [edgeSet_subset_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-subset-edgeset.md) | 499 | `result-track:12ec762d0e30f6a11c015f2ed40af0ace56f1595ebaec7da8af0abc867118825` |
| 87 | `theorem` | [edgeSet_ssubset_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-ssubset-edgeset.md) | 501 | `result-track:1b402dfbbee6552de05338423862c32e3a7c9c37117855c8a2966ec58f683b8c` |
| 88 | `theorem` | [edgeSet_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-injective.md) | 503 | `result-track:d0dd0fcd5df23a34aad0cea7226fae4c3202f820c80006734c816abd821263ec` |
| 89 | `theorem` | [edgeSet_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-bot.md) | 515 | `result-track:9fbeb5b628c84694d7a12660f60690bbc70f313739e8a5b028bd923393b7c6fe` |
| 90 | `theorem` | [edgeSet_top](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-top.md) | 519 | `result-track:213c0a1cdb2ffe10ce9ba4bee83c2b5eedf588310d7af075a7acf3010099717f` |
| 91 | `theorem` | [edgeSet_subset_compl_diagSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-subset-compl-diagset.md) | 523 | `result-track:78f202c3e0284fbd1e7d189a8b55055a929c14383b38033deffaedcb455233dd` |
| 92 | `theorem` | [edgeSet_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-sup.md) | 527 | `result-track:01146c601cb04f14cb07fa161fd4530b93a8400f4338da6e873302319874c978` |
| 93 | `theorem` | [edgeSet_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-inf.md) | 532 | `result-track:eba2902725e8a06acf44bad6181cbed0bea129bc4ccbdaf9b3fac7dc77a2075c` |
| 94 | `theorem` | [edgeSet_sSup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-ssup.md) | 536 | `result-track:3cfb09251d3b4e5ccec9a7c250491ae155f6d93e2df8931abc6a9a65f5ae9838` |
| 95 | `theorem` | [edgeSet_sInf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-sinf.md) | 540 | `result-track:ab4a6427b9a88d6c01cffa91487c7e23086d399829472681353178b84b30c23c` |
| 96 | `theorem` | [edgeSet_iSup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-isup.md) | 546 | `result-track:c9edcdef8e39e32af13ba7575a4f572e2dd48b0687968d3a03a4633354826851` |
| 97 | `theorem` | [edgeSet_iInf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-iinf.md) | 551 | `result-track:e51483354955ad648fd72c40402b35d3ed2fa28a2ee74ab9cd7c2b986281b821` |
| 98 | `theorem` | [edgeSet_sdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-sdiff.md) | 558 | `result-track:7a2dc7d3a288cb66e52cf4b76c3a44bbdd58c950d81d216c10c2324c39c2b7af` |
| 99 | `lemma` | [disjoint_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-edgeset.md) | 564 | `result-track:3b709d9acf57af617e17b2d41752c48b9904b83cbd8d4893436b310ddd7cc787` |
| 100 | `theorem` | [disjoint_of_disjoint_support](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-of-disjoint-support.md) | 567 | `result-track:768d02aacbaba25f242a37f2101fa41b1bc1854ab8030a09575a4049d4841b8e` |
| 101 | `lemma` | [edgeSet_eq_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-eq-empty.md) | 572 | `result-track:10772c565baf7b99deea06997851461f3cb809a1faf74aa03c2410a0c45467d1` |
| 102 | `lemma` | [edgeSet_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-nonempty.md) | 574 | `result-track:f0e48feb8341d9007c9093dffada68f6fa120cc3c0408fa63fb0585bc9471ee6` |
| 103 | `theorem` | [edgeSet_sdiff_sdiff_isDiag](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-sdiff-sdiff-isdiag.md) | 580 | `result-track:9d58a2146ccc6eb380e596215a8e33ea538ad912ea7f2e22697a2b1939136f0c` |
| 104 | `theorem` | [adj_iff_exists_edge](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-iff-exists-edge.md) | 589 | `result-track:90d9404ad6fcfcd56685b5382ff80099ae10304546eb80b83b57290693752652` |
| 105 | `theorem` | [adj_iff_exists_edge_coe](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-iff-exists-edge-coe.md) | 596 | `result-track:4e56191c6811a252b8149ca936db09ca42ef55ecf765359b35bfd41d219bb759` |
| 106 | `theorem` | [edgeSet_subset_sym2_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-subset-sym2-iff.md) | 600 | `result-track:5814f37aa8fa93023dd5e7864aebb531117155de573a77d32b586191f90010b2` |
| 107 | `theorem` | [edge_other_ne](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edge-other-ne.md) | 610 | `result-track:bb11830f82bdcd1b410d82b62e83670cf578cfb38f06da550d259ee516a97792` |
| 108 | `instance` | [decidableMemEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/decidablememedgeset.md) | 615 | `declaration-track:d5ad7c1e45f5ceb8ed985f9e4f96fb92bd66eb251ba88c8857e58b68035f216a` |
| 109 | `instance` | [fintypeEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fintypeedgeset.md) | 618 | `declaration-track:fa3c59e84e5d835d1609f399745c2b4a6ec9f37e2a3db940502ce0525c1abafa` |
| 110 | `instance` | [fintypeEdgeSetBot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fintypeedgesetbot.md) | 621 | `declaration-track:9797fc8b610356ced4455467c86204b992cf6a0f926364149ddc8ed2ea5e7220` |
| 111 | `instance` | [fintypeEdgeSetSup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fintypeedgesetsup.md) | 625 | `declaration-track:267df006e18ad8bcb033abd965ca1e30d5579883fae55f1613268f879e2b6051` |
| 112 | `instance` | [fintypeEdgeSetInf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fintypeedgesetinf.md) | 630 | `declaration-track:3b0dadaa55d96a0a2a94850f37acc3b870ce1a0850c1b381146d589bf1ef43e5` |
| 113 | `instance` | [fintypeEdgeSetSdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fintypeedgesetsdiff.md) | 635 | `declaration-track:f5fb238bf92548b4cd28edd9f962a7e81965b3d3f2da6c17f7c32015a999c95b` |
| 114 | `def` | [fromEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset.md) | 647 | `declaration-track:d864b827ec1ee005d7992fa3f1c76ea87dad2be83d500d5fc1cb0a6dcef1c1f4` |
| 115 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-3.md) | 651 | `declaration-track:1c0b965fdf49d749d6d15bc2c57f7d2e2d9f6188b33b4e409293b1dbd3802526` |
| 116 | `theorem` | [fromEdgeSet_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-adj.md) | 655 | `result-track:684e3d9601c6f18eaf47d5483886fc98a6673082e81690d1e6317a5ec54712a6` |
| 117 | `theorem` | [edgeSet_fromEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-fromedgeset.md) | 661 | `result-track:45e7861eb222879bfc1e3813e97ca5bd54d5fb7a06005995c36e545dcab6b0b4` |
| 118 | `theorem` | [fromEdgeSet_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-edgeset.md) | 666 | `result-track:b04afab9af05d0688ae3234ad5b1bb69bf8ed39c433c27d8518b6185f2823af1` |
| 119 | `lemma` | [le_fromEdgeSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/le-fromedgeset-iff.md) | 670 | `result-track:d31dba7112c6ff8e5d15ca9a44263711fc2883632a43d0f42237886a43cda618` |
| 120 | `lemma` | [fromEdgeSet_le](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-le.md) | 673 | `result-track:2a802b0211890d5d0f4e177d2d766d5f28b437dacdf33974e53f6064f885c880` |
| 121 | `lemma` | [edgeSet_eq_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edgeset-eq-iff.md) | 676 | `result-track:9adf94177052d851a4f64bfbf80db7aa4d79344adb96f0b820c4a1ba7099ff21` |
| 122 | `theorem` | [fromEdgeSet_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-empty.md) | 681 | `result-track:530e0bf99837e83d67cc37615f8e6e555aec88ad36b50edeed934cf8288111da` |
| 123 | `lemma` | [fromEdgeSet_not_isDiag](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-not-isdiag.md) | 685 | `result-track:1a972091db0512a09eb95995e215981bab9deb01e7c019368adf4e820cbd7633` |
| 124 | `theorem` | [fromEdgeSet_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-univ.md) | 688 | `result-track:7830ebd987c116788932f0cceab8dfab1f7d2f6622c7dbac218673f72b63a501` |
| 125 | `theorem` | [fromEdgeSet_inter](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-inter.md) | 693 | `result-track:1af91908053bcdcea3669d2bcf49a67fbacefefcc3ec4aeeb2022442d5883270` |
| 126 | `theorem` | [fromEdgeSet_union](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-union.md) | 700 | `result-track:eab8d6df1371e45fa2c1a5a9dffb58ac9dbd906735c02a640ef74126333a204e` |
| 127 | `theorem` | [fromEdgeSet_sUnion](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-sunion.md) | 705 | `result-track:d327f90b34ae35f99fd25c21e49e19e890672f47c8f897dad0bf9c6e17aee32c` |
| 128 | `theorem` | [fromEdgeSet_iUnion](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-iunion.md) | 711 | `result-track:1cab89e399deaa8985554c52623c4b0c6133867a870050a9acbc429a23ef22b1` |
| 129 | `theorem` | [fromEdgeSet_sInter](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-sinter.md) | 716 | `result-track:d12181859ef54df5b8aa4d7251222717b0e0bbc189c0d11637aa98c28bdc19d3` |
| 130 | `theorem` | [fromEdgeSet_iInter](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-iinter.md) | 721 | `result-track:321a79efd14ad31450fcb811db35c41bec88678ba3e13739f224bb83a046e1af` |
| 131 | `theorem` | [fromEdgeSet_sdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-sdiff.md) | 727 | `result-track:a07486ec3ec39dc1a6adb143acc747ce0fb4bc8f1578f3dce9642831e09f445b` |
| 132 | `theorem` | [fromEdgeSet_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-mono.md) | 733 | `result-track:3d43598e4338acc37f57afbe416e68b77ae70597f1d8caedcf5c3cf0ed11f0a6` |
| 133 | `lemma` | [disjoint_fromEdgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-fromedgeset.md) | 736 | `result-track:c533b3246b58e7ee823527d5ff66a1d8db69cffeadc6a91ad841bddcb58af982` |
| 134 | `lemma` | [fromEdgeSet_disjoint](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/fromedgeset-disjoint.md) | 741 | `result-track:af35598f4d0ee357a203b1a4eb23c71bd628c484e78408f77fa9a585c268bd54` |
| 135 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/instance-source-edition-5.md) | 744 | `declaration-track:2d8b603308541208a1044602322430ad4c65749ca3fd4b84d3465ad16edd6962` |
| 136 | `theorem` | [disjoint_left](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-left.md) | 750 | `result-track:66e7ccbda6110a9f9c2381e5f8b829aa6d0367698b720d84090ede6f4dd6831b` |
| 137 | `def` | [incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidenceset.md) | 757 | `declaration-track:7e4388f134170c8498dc99e7fba8e48f624882a75447d19a0c4c91bb8c5261ed` |
| 138 | `theorem` | [incidenceSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidenceset-subset.md) | 760 | `result-track:f543481074e268e49b2b25b865648073d91b7ccabe9cd97a91bbf969608d57ce` |
| 139 | `theorem` | [mk'_mem_incidenceSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mk-mem-incidenceset-iff.md) | 762 | `result-track:701fc23d7615df5118b0439a1da91de9b90959aa2f59d04a14a469525e6df29b` |
| 140 | `theorem` | [mk'_mem_incidenceSet_left_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mk-mem-incidenceset-left-iff.md) | 765 | `result-track:c95f43c6fc5162904824121071c7d50bb12ca7e299e4324a3e666e320cb37525` |
| 141 | `theorem` | [mk'_mem_incidenceSet_right_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mk-mem-incidenceset-right-iff.md) | 768 | `result-track:a392b8527605b37950d8250a6d6970bab0d6f783000fa3c0355e4c4d17321f8a` |
| 142 | `theorem` | [edge_mem_incidenceSet_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edge-mem-incidenceset-iff.md) | 771 | `result-track:5d1d08d8f9708d4237ff1727b6e3937c47076d8de9c3d0000b0c54f676df5fd8` |
| 143 | `theorem` | [iUnion_incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iunion-incidenceset.md) | 774 | `result-track:231ba4e73382bd8a047e323af439a726d1788303c3844ed19ed262343b0b2768` |
| 144 | `theorem` | [disjoint_incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-incidenceset.md) | 779 | `result-track:6fe1f821ed2daa698f15ffdb23618f5177ac911171188fe348e354c909e5c1cf` |
| 145 | `theorem` | [incidenceSet_inter_incidenceSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidenceset-inter-incidenceset-subset.md) | 785 | `result-track:aeac52cdb4a421d85b9b3276e86721fc3e5569beb4ca2d757a7bc03c1bb8c5b2` |
| 146 | `theorem` | [incidenceSet_inter_incidenceSet_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidenceset-inter-incidenceset-of-adj.md) | 789 | `result-track:4eb1f9e3a537deedc662d5a0d1bc9d82519f48e892d1ca780e526d60de4effa7` |
| 147 | `theorem` | [adj_of_mem_incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-of-mem-incidenceset.md) | 795 | `result-track:f9a2f12ca2cb97257fe55b4609efd74d0ca0b8a975648d9271a403fb8b3011d3` |
| 148 | `theorem` | [incidenceSet_inter_incidenceSet_of_not_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidenceset-inter-incidenceset-of-not-adj.md) | 800 | `result-track:603f4d56aae2379872f4f4e4a2b370685878ff195ad78108d25f66243bfc25b1` |
| 149 | `instance` | [decidableMemIncidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/decidablememincidenceset.md) | 806 | `declaration-track:3939f04debe7aaf54d57202058d9ff5377201eaa87b4b2cdd2a3f8017bdb29a2` |
| 150 | `theorem` | [mem_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-neighborset.md) | 811 | `result-track:cbd40054e58d3995a190814946bbdc19f40bc8ca35e0ab03211be6cd3876a3d2` |
| 151 | `lemma` | [notMem_neighborSet_self](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/notmem-neighborset-self.md) | 814 | `result-track:99ad1837d739013bd752ad258f44efab914aa07409bef07e61a6539529c2123b` |
| 152 | `theorem` | [nonempty_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/nonempty-neighborset.md) | 817 | `result-track:8fbc3e321ee1bcbfc8e797a8a2b2aac47b73cdeb774b380e8f52573a2617a29b` |
| 153 | `theorem` | [neighborSet_subset_compl](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-subset-compl.md) | 821 | `result-track:9dfee0b76d08df490f3b93342727848314183da973fa29861485053cd3a380b3` |
| 154 | `theorem` | [neighborSet_ne_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-ne-univ.md) | 825 | `result-track:c13f411b0235d252a00ed08a55534b77464051bc6be72cca5452fa7a41f09383` |
| 155 | `theorem` | [disjoint_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-neighborset.md) | 829 | `result-track:f6aec5e9b11fd84c0afe28d857cc0650156f2addb255b83c06a0de66b738e68d` |
| 156 | `theorem` | [neighborSet_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-sup.md) | 834 | `result-track:75c849d064fdd254d62b5634376a03db328a73d89b36fffee969b2fccde3ae65` |
| 157 | `theorem` | [neighborSet_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-inf.md) | 839 | `result-track:9669feb45a676bf823b7dd086f2059e5492500b9e300c33813722eeb471c6e31` |
| 158 | `theorem` | [neighborSet_sdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-sdiff.md) | 844 | `result-track:0b57310dc76441181767f19e5f52acdae1c90d9faa6d2728aea3c0f6fdb9dc85` |
| 159 | `theorem` | [neighborSet_iSup](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-isup.md) | 849 | `result-track:5bd3bde99bcbd9cf88b314d8c08db4cf3192ad057215eed7aaf8942aab444916` |
| 160 | `theorem` | [neighborSet_iInf](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-iinf.md) | 854 | `result-track:ee7ccda264114520ad58a99021c49d0d741be3f2a38ce44abc0c535f8e14f645` |
| 161 | `theorem` | [mem_incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-incidenceset.md) | 860 | `result-track:438fbc7dc1a91689a68b5916236e496247996a6fae412f158e8aeaaa491edcc0` |
| 162 | `theorem` | [mem_incidence_iff_neighbor](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-incidence-iff-neighbor.md) | 863 | `result-track:891acf10a16daf86e99fc3cb3a5f4f20478791e6d2b160ffd3bb25ddb2b14158` |
| 163 | `theorem` | [adj_incidenceSet_inter](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-incidenceset-inter.md) | 867 | `result-track:067589b675dcb684cf3b7b99ce2b2dbf25312ae7a7caed11e64c075951a5f11f` |
| 164 | `theorem` | [compl_neighborSet_disjoint](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/compl-neighborset-disjoint.md) | 877 | `result-track:3aba0f2890f406657072ff37ff420ba19c86b2d90377cbc620119340394531e6` |
| 165 | `theorem` | [neighborSet_union_compl_neighborSet_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-union-compl-neighborset-eq.md) | 884 | `result-track:ee3f3b4eb202a17ea1646a877906c55bd972ac5cdba93cda225db40c1bd936de` |
| 166 | `theorem` | [card_neighborSet_union_compl_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/card-neighborset-union-compl-neighborset.md) | 891 | `result-track:c69e0dd370c63ab42b9bd25398c2e6ec31b969c79ede96a3465ba43d7cddadfe` |
| 167 | `theorem` | [neighborSet_compl](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-compl.md) | 897 | `result-track:883edf16b5cb63db37d00aea44479d692aa96d4485c0679a0f751392cab97339` |
| 168 | `theorem` | [neighborSet_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-mono.md) | 904 | `result-track:9106b8d594b44abb61857134c7b833bdbcf551769fbe7a170ab61c49dd215678` |
| 169 | `theorem` | [neighborSet_top](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-top.md) | 909 | `result-track:815ad66d8950b64d4c8ad9d9d1690df0163f0dfbc0ffb51718e54febd2634bc5` |
| 170 | `theorem` | [neighborSet_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-bot.md) | 912 | `result-track:374c51f61e8ca80719272aac9732a9600f7a69c469b00ac1fd0c8fe417eeccbf` |
| 171 | `theorem` | [Adj.nontrivial](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-nontrivial.md) | 916 | `result-track:122f534c44863b319654c964a20ccc2b64fb686b56c91195153f7ab37724d2ab` |
| 172 | `def` | [commonNeighbors](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors.md) | 921 | `declaration-track:4d509c6a055821810c2b0013bac105b7e62903cef537e0903ebcf6b6b3a69dc6` |
| 173 | `theorem` | [commonNeighbors_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-eq.md) | 924 | `result-track:e7439358f78fd8273483b3ad5d3333b10360be8a2124e37841c8c93069e12d16` |
| 174 | `theorem` | [mem_commonNeighbors](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-commonneighbors.md) | 927 | `result-track:de32de9b1a7b1d49be363184705120c427e27b2c3c827e9c554f6a0d0c63d430` |
| 175 | `theorem` | [commonNeighbors_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-symm.md) | 930 | `result-track:98f603b2c877c5b5c3b24a0fda6f1302a243e556c2e502c093b01891ddfffd4b` |
| 176 | `theorem` | [notMem_commonNeighbors_left](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/notmem-commonneighbors-left.md) | 933 | `result-track:3e38315a8f69b2c4c6881d8b7aa78043b2b839a688486389e7305cc18fea073f` |
| 177 | `theorem` | [notMem_commonNeighbors_right](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/notmem-commonneighbors-right.md) | 936 | `result-track:f355ed0a12efff6ed1546346120602ca17a83ebff29540a074bfeaa546588d68` |
| 178 | `theorem` | [commonNeighbors_subset_neighborSet_left](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-subset-neighborset-left.md) | 939 | `result-track:946ec15703a93579ba45a7c8542ad62b111f125cb68e13abc56669566e2c5071` |
| 179 | `theorem` | [commonNeighbors_subset_neighborSet_right](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-subset-neighborset-right.md) | 943 | `result-track:569fb2304976577ba453d701afa52821712c7d8d8a6f63e0f7d96c6eaf41cce7` |
| 180 | `instance` | [decidableMemCommonNeighbors](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/decidablememcommonneighbors.md) | 947 | `declaration-track:fcaa7169d844220308acf9469d04740f0d99c64af9946b6822fc4a2ed5cc104a` |
| 181 | `theorem` | [disjoint_commonNeighbors](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/disjoint-commonneighbors.md) | 952 | `result-track:622c637f3c845a16618ec4acfe87a5ce2ceae2036b6526a1fe0a6e1f7c394808` |
| 182 | `theorem` | [commonNeighbors_top_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-top-eq.md) | 957 | `result-track:4240c96e9ef8bed635d789614cf21da76d77c687a6bda96aff9659733d08f599` |
| 183 | `theorem` | [commonNeighbors_bot_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/commonneighbors-bot-eq.md) | 963 | `result-track:f3d3df8e16b81e5a05a17af011f7d21fa01dda02160cfbb3fe843059a3256179` |
| 184 | `def` | [otherVertexOfIncident](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/othervertexofincident.md) | 971 | `declaration-track:0c68fe436adf21b9c1219d063f89cf2b74eb389b203269c42428364c259fdeaa` |
| 185 | `theorem` | [edge_other_incident_set](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/edge-other-incident-set.md) | 974 | `result-track:e28c7174fbf1e4ee4900ae97fe5a299ef7d3568cf04c37a678f5837f77e5cce1` |
| 186 | `theorem` | [incidence_other_prop](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidence-other-prop.md) | 979 | `result-track:ca3cceb9e791abfde367fca7819e7ef469751d900caab99fac831ce185eb3288` |
| 187 | `theorem` | [incidence_other_neighbor_edge](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidence-other-neighbor-edge.md) | 985 | `result-track:46eeb4a027ea28143dc5b203cbc22b1cf75026b8cd668be2f1aee6d23d67e209` |
| 188 | `def` | [incidenceSetEquivNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/incidencesetequivneighborset.md) | 992 | `declaration-track:9a77b12106d09160ce171f92f9974668f506e3b6870f3078c47c8a5385f219b3` |
| 189 | `def` | [IsCompleteBetween](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iscompletebetween.md) | 1008 | `declaration-track:f94aad30a2133cba153ecdec698d34bbe543c6412ba21646ad0847f7292881b0` |
| 190 | `theorem` | [IsCompleteBetween.disjoint](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iscompletebetween-disjoint.md) | 1011 | `result-track:5404600fa99ec58fe297f9ef219ebaf84bca53706c37d9eae1b77d3e345442bd` |
| 191 | `theorem` | [isCompleteBetween_comm](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iscompletebetween-comm.md) | 1014 | `result-track:3b987c383f54a0a26457b23aeeab44f45ab7f8a6e958bdb3e48dc732356c01e0` |
| 192 | `theorem` | [IsCompleteBetween.completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/iscompletebetween-completebipartitegraph.md) | 1020 | `result-track:e2df570ab0c026bb0261f09cbfe8c027ffe5621e98cff135a8d6d18bb686aa12` |
| 193 | `theorem` | [subsingleton_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/subsingleton-iff.md) | 1028 | `result-track:4ef227953ce95fb4dead6943a2f376e4e4b99697a1bc96529226da3e27474ff1` |
| 194 | `theorem` | [nontrivial_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/nontrivial-iff.md) | 1033 | `result-track:2be9e31e4d3468f47c9a4f512814bdec8a9bfd1976d6765845f4b1e1490e9b80` |
| 195 | `def` | [IsIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated.md) | 1041 | `declaration-track:a8d90510acc5596a02b760b6ca8fa8f2f035fefa43a3e68031135aa48221020a` |
| 196 | `lemma` | [neighborSet_eq_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-eq-empty.md) | 1043 | `result-track:0c60982daba7bd41227b913541d56a56154fac013ccb4d92300256353f7cc049` |
| 197 | `lemma` | [neighborSet_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-nonempty.md) | 1046 | `result-track:6f4fc3a01aa39e6203f4f26e0b4939b8def6e4950ce085c7757dd2369067c904` |
| 198 | `lemma` | [mem_support_iff_not_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/mem-support-iff-not-isisolated.md) | 1054 | `result-track:fd51ef99d4e6ee5197c0062c1cc9a1ba29dd7084898d438f90b80132ab3c8598` |
| 199 | `theorem` | [notMem_support_iff_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/notmem-support-iff-isisolated.md) | 1058 | `result-track:1667177f69c722f8785d2bcce806d9aadf9d4ca6670d8ef1ea3c8189074bd853` |
| 200 | `theorem` | [exists_adj_iff_not_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/exists-adj-iff-not-isisolated.md) | 1062 | `result-track:783b92e3c5e08ca3113ea16aecc56a6040f79892684ba8406f7402326663dd32` |
| 201 | `theorem` | [isIsolated_iff_forall_edgeSet_notMem](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated-iff-forall-edgeset-notmem.md) | 1066 | `result-track:0bec97e4b6fee65e804943a8cadc4c21a9e9715e0c4b87d1315f83e4c26f35b7` |
| 202 | `theorem` | [not_isIsolated_iff_exists_edgeSet_mem](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/not-isisolated-iff-exists-edgeset-mem.md) | 1070 | `result-track:2cadf4eedb7b67a36eee5d5b1c7cc11e0b1aa1357c0e76ca9a5c99d4cbf0bf41` |
| 203 | `theorem` | [IsIsolated.of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated-of-subsingleton.md) | 1075 | `result-track:6296c63fb5ace859ec9541cda94c55a303991f6e1461fec8e3546e8e1c67d898` |
| 204 | `theorem` | [nontrivial_of_not_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/nontrivial-of-not-isisolated.md) | 1080 | `result-track:6dd86a8c72e0be712164a1b16ba9ecfc36689f371033db8ac8a543713e9139e5` |
| 205 | `theorem` | [Adj.not_isIsolated_left](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-not-isisolated-left.md) | 1084 | `result-track:fb1a754672deccfd27ea8347dbb5c81241e1efe70f22dd79972ab33c4d8223ff` |
| 206 | `theorem` | [Adj.not_isIsolated_right](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/adj-not-isisolated-right.md) | 1088 | `result-track:c348b6459d0908f8056ffd8434a6317170d010ff5db7b8956d5382a2a6832528` |
| 207 | `theorem` | [IsIsolated.bot](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated-bot.md) | 1092 | `result-track:2761fbe5339ee2152e8058f53227bac31944cc3757d7ff684cea03b2d08f3675` |
| 208 | `theorem` | [eq_bot_iff_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/eq-bot-iff-isisolated.md) | 1098 | `result-track:bc1573006553d0779cc051a3eac2f40c05c1dcdf07b55eacbd52bb16ca4c1da3` |
| 209 | `def` | [IsUniversal](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isuniversal.md) | 1106 | `declaration-track:7393d9cb9d93078a70eddffac6f629d25fae3b9521bf66377848e2fef9e01181` |
| 210 | `lemma` | [insert_neighborSet_eq_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/insert-neighborset-eq-univ.md) | 1108 | `result-track:c4e42bae12d4aa7ee882fe91453a8b5a18ba4aab233f9da62cbbef6e5023f657` |
| 211 | `lemma` | [neighborSet_eq_compl_singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/neighborset-eq-compl-singleton.md) | 1113 | `result-track:3e950fb0b74210eb607a98cb66e929f43817d2614aceb96c8d92436151c1b983` |
| 212 | `theorem` | [IsUniversal.of_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isuniversal-of-subsingleton.md) | 1120 | `result-track:697fd37768f1c171e475fd5714888424d88d09c61f181e4973ead5ce1a1c3366` |
| 213 | `theorem` | [IsUniversal.not_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isuniversal-not-isisolated.md) | 1123 | `result-track:8a71d95da3e363ebbc2edfb626ada1db4976a2cdad8b4e51db859291634a9a49` |
| 214 | `theorem` | [IsIsolated.not_isUniversal](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated-not-isuniversal.md) | 1130 | `result-track:3f578e5d198efaaf60f161f212a5e448060e5f1e7e4823d1989c440197ed55ea` |
| 215 | `theorem` | [isUniversal_compl_iff_isIsolated](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isuniversal-compl-iff-isisolated.md) | 1136 | `result-track:315b64a447e5b7f615c035fc4e5b9e657ae3cca66ee7ab4fd5268c8c2218ed2d` |
| 216 | `theorem` | [isIsolated_compl_iff_isUniversal](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isisolated-compl-iff-isuniversal.md) | 1144 | `result-track:ad19b9e30fd5396e8b0aaca1b2b775f15b459ac343b07ec2c030c0c9b56aa469` |
| 217 | `theorem` | [eq_top_iff_forall_isUniversal](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/eq-top-iff-forall-isuniversal.md) | 1151 | `result-track:35f06bf7011789aaabf20bb727b324bd0bad7b3b1cc1d95cb21a1b6312e378ce` |
| 218 | `theorem` | [IsUniversal.top](../../../../../Combinatorics/GraphTheory/SimpleGraphBasicPublic.lean/declarations/isuniversal-top.md) | 1155 | `result-track:cc970fe7e880a928305e290e23d28ae4190d6316e4f4e4e90d2cd09f9be1d043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56305e83e7ded78b2e22a5cf3f92d503c7b982e570ef8d39085c966fb72fb2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant97f49ff9b52fe1906b6a2071422b35ec496cd6b3d9d81043e77e56efceb0a73f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant97f49ff9b52fe1906b6a2071422b35ec496cd6b3d9d81043e77e56efceb0a73f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
