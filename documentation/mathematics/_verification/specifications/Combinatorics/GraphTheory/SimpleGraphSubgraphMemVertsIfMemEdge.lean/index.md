# Verification target: Simple Graph Subgraph Mem Verts If Mem Edge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9518e8ea4199211e36db009cb674e98f86e02642",
  "lexical_observation_count": 184,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9518e8ea4199211e36db009cb674e98f86e02642`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraph.md) | 60 | `declaration-track:ae7c46461700f569364bb269d8601fb993a52e4cfe1e5ecb3fccd2620e400139` |
| 2 | `def` | [singletonSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/singletonsubgraph.md) | 72 | `declaration-track:a78cba6abc07c87d7ecc27e9b5b0f2329eecca121a36bd165943749754b29b89` |
| 3 | `def` | [subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraphofadj.md) | 82 | `declaration-track:5ea3b4c81b65b09aeb1bb80d8737e0b3995d2e2528a24d64d7d69f0b8a25f060` |
| 4 | `theorem` | [loopless](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/loopless.md) | 98 | `result-track:817cec0172209e267d8a110bf2c9d68f4dfef18acd17cc4e85c3d8712db045ad` |
| 5 | `theorem` | [adj_comm](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-comm.md) | 102 | `result-track:62d7dd76220e7f79437cbd8949781af1fc77da6e32bd75b35c0894f92923c20b` |
| 6 | `theorem` | [adj_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-symm.md) | 107 | `result-track:391466814c1f090c45523442ea8b17580fc6bb977f6c7a9ea8f22d20209f2a71` |
| 7 | `theorem` | [Adj.symm](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-symm-source-edition-2.md) | 111 | `result-track:82d3e7f444fd4443e045b19db9ca4643a3d1833b7ae37cfe2e066664f2a1cd6e` |
| 8 | `theorem` | [Adj.adj_sub](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-adj-sub.md) | 115 | `result-track:0eb569498116da61e72e1123491c60efcb5cbc24b059d258e9c5a29197705a08` |
| 9 | `theorem` | [Adj.fst_mem](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-fst-mem.md) | 119 | `result-track:526132b893cab53aa607888fbe56e272cf8c1fb9429be88e0ac1981ce6229a19` |
| 10 | `theorem` | [Adj.snd_mem](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-snd-mem.md) | 123 | `result-track:04c7f8c48a469247029c50079dff6cb837b0cf168fea59e70998a0c1698892ca` |
| 11 | `theorem` | [Adj.ne](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-ne.md) | 127 | `result-track:a1a56d693cef499ea8fc0faa6a9be518f80077d4f319f5ff12e7bba1f10b83e6` |
| 12 | `def` | [coe](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe.md) | 133 | `declaration-track:e2e1ca917cc84c3b7d669c2cfb3304fd6afba94351d753b39e38253f11c9cf04` |
| 13 | `theorem` | [coe_adj_sub](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe-adj-sub.md) | 140 | `result-track:7c6560291ddfd7891f51abc26dd57e257fc06b7147330dfc2019bc0689436220` |
| 14 | `theorem` | [Adj.coe](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-coe.md) | 145 | `result-track:4a58ea9f87bcba7f08896c5fec97ecbebe3774a5a06cd0dfc3c7261c904fdd7b` |
| 15 | `def` | [IsSpanning](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/isspanning.md) | 150 | `declaration-track:19f299ac82f9bf9b8cecd0c944c7ffc78019a9edffe933fba470eef60b007c7a` |
| 16 | `theorem` | [isSpanning_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/isspanning-iff.md) | 154 | `result-track:68acab9d54c8b2c456dc1fc05a7a2f58be916c9212309f69f621ba32a13a5a10` |
| 17 | `def` | [spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe.md) | 162 | `declaration-track:ed052715056c3b1182a790c9497ba9b8803e2afb7ea2a695a6099b41fcdaae35` |
| 18 | `theorem` | [Adj.of_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/adj-of-spanningcoe.md) | 169 | `result-track:e6dd386eb158646e486e90804c8aec8bcfa12c12e6057ab2b118bb88626a5fc8` |
| 19 | `theorem` | [spanningCoe_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe-inj.md) | 174 | `result-track:f5187f3599ec253dbadd4aeee3c310a3d1c45104cb35e335560e30540719024f` |
| 20 | `def` | [spanningCoeEquivCoeOfSpanning](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoeequivcoeofspanning.md) | 180 | `declaration-track:e576ce9da9ec29b1a84d7f6f691163a1c416766766693ccf10954fc84590d41c` |
| 21 | `def` | [IsInduced](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/isinduced.md) | 191 | `declaration-track:2888629bb474a7e6a2ebc639477f0c943af0b8b326cca21fb062f532ff04430f` |
| 22 | `def` | [support](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/support.md) | 196 | `declaration-track:ef0ec03c0868daa33e9f871e829ed01606a7b3766f22f6e56b59606a80b64629` |
| 23 | `theorem` | [mem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/mem-support.md) | 199 | `result-track:55918788dff58da3aec37944dd14b49e28406b00e0d80dcc4d6fca327199ce7b` |
| 24 | `theorem` | [support_subset_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/support-subset-verts.md) | 202 | `result-track:fd76995a6788842c17f2ac91adbb3acb7736da69f951d0297d4128e9d46173e0` |
| 25 | `def` | [neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset.md) | 207 | `declaration-track:6ea13b29750768d6e5ad32fd0217e753a504a12fe5da64ff50647f0cb058a600` |
| 26 | `theorem` | [neighborSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subset.md) | 210 | `result-track:9685b83b0dfa37a4e118e102ed4a4d98c4b407cbfe86da445155f3cbce6b69f9` |
| 27 | `theorem` | [neighborSet_subset_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subset-verts.md) | 214 | `result-track:e21a96c93850092d38c6feacbd58b98f6ef0db269dd5b2ae625d07f4bbc9d59c` |
| 28 | `theorem` | [mem_neighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/mem-neighborset.md) | 219 | `result-track:831e960bf063d2df2021fed2cfe15b724bd5cd46ebe90bc180b90b6d61642943` |
| 29 | `def` | [coeNeighborSetEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coeneighborsetequiv.md) | 223 | `declaration-track:fbb5bc6191acff2fda4961f3f54f87bd4961109b5414f5829aa33f7af6e1bd0b` |
| 30 | `def` | [edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset.md) | 232 | `declaration-track:d560f15d85cb840b42532f511b26bc3a23d57cc6e0777c1706a0f6591367d2b5` |
| 31 | `theorem` | [edgeSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-subset.md) | 235 | `result-track:e8a41889c1434b39783a592b25be3c4d3cb84a1ff79224ac8feb809b763d13e8` |
| 32 | `theorem` | [mem_edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/mem-edgeset.md) | 240 | `result-track:f4649cfa1d65406b4d7b825e42b2a455f10fb465e77fa2ee5274d3c48b1ea213` |
| 33 | `theorem` | [mem_verts_if_mem_edge](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/mem-verts-if-mem-edge.md) | 243 | `result-track:11cc5ce5312e4aefca1b89cb781712350b086b374aed16ceef1516c72315ffc4` |
| 34 | `def` | [incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/incidenceset.md) | 254 | `declaration-track:8e370fd8b86314263ef1512f7a032cf14f9aa7812291d0f8a68a4681bc3388ee` |
| 35 | `theorem` | [incidenceSet_subset_incidenceSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/incidenceset-subset-incidenceset.md) | 257 | `result-track:612e7fca6fbca20f2fffc396374b52869f246cb4279ec25107a26411170f4f19` |
| 36 | `theorem` | [incidenceSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/incidenceset-subset.md) | 262 | `result-track:f9391158e795f342d81d20b2a47f4f691ea56ba042f8e0f3fc49d84fcb3c4667` |
| 37 | `def` | [vert](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/vert.md) | 268 | `declaration-track:eb4b02419fc97201a16397888f6ca68fc44838b882f9815c46416a7115595593` |
| 38 | `def` | [copy](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/copy.md) | 275 | `declaration-track:7469a97a1b4466fe6e7acf7ca0df0b02c06d8ce32a1d7596b5c35aaef51682dc` |
| 39 | `theorem` | [copy_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/copy-eq.md) | 284 | `result-track:10a2be176d32dea13a6a2b6b383cd1ce20825d9100a10b46779f709b82c49688` |
| 40 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-7.md) | 290 | `declaration-track:da1a60c6592b5c31f38ec3fd02279d1bbdc961fbd5067c0468a52f9b18045f7d` |
| 41 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-5.md) | 299 | `declaration-track:7c1bb596943349c7687ec340c559db655c734f44ab71695cfbc7507db8373ac1` |
| 42 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-4.md) | 308 | `declaration-track:5de490d44d27d798363484188c3e398e2ee66665f2ed955caf0b89ad1763c3f0` |
| 43 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-3.md) | 317 | `declaration-track:3cd62bebb822caf9447cb1ab38e88e4842a717ac9942ddee80e1b980146603d1` |
| 44 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-6.md) | 325 | `declaration-track:d1123f630320507435034339b8017c42b69163e66c5d30b98647afb10c25804d` |
| 45 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance.md) | 337 | `declaration-track:0d4ea922ba35e146786f06b3b0d3f5f47e0ec8ddcfa62aff4dbaaf022c8620bd` |
| 46 | `theorem` | [sup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/sup-adj.md) | 346 | `result-track:5f784d465553fa1d33f03460329bfcd7d10379d4b39cdac22a145a2919ee38d9` |
| 47 | `theorem` | [inf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/inf-adj.md) | 351 | `result-track:e09c7e3343de99092a9ce4254f0cd38c67afdebc3e3f0786c18902fea830e44f` |
| 48 | `theorem` | [top_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/top-adj.md) | 356 | `result-track:f458b64f45f7b7608d094ff3fa1eb8e71e9e963db8eec2984fbbe41f69ea1935` |
| 49 | `theorem` | [not_bot_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/not-bot-adj.md) | 361 | `result-track:a5aeca977404f5664ef072ee7df8e339924e4588867ec3bea6fd1bce63e72747` |
| 50 | `theorem` | [verts_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-sup.md) | 366 | `result-track:82954a272315d6fd394d17ddd351654384c9c217f50968f02929a094820aff6f` |
| 51 | `theorem` | [verts_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-inf.md) | 371 | `result-track:00ea85d0569ef1c5dd7d6575142545fc9634d985eb457e67c3689e94a96f6051` |
| 52 | `theorem` | [verts_top](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-top.md) | 376 | `result-track:3fb775580f96d12480186b9abd95a50a231d10004e94ce52825f09d96edba7e1` |
| 53 | `theorem` | [verts_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-bot.md) | 381 | `result-track:9df4a622695e5f4b9bb91dcb95ad7f77a1e5d8432cd5c46aca83f5aab1b391cf` |
| 54 | `theorem` | [sSup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/ssup-adj.md) | 386 | `result-track:542fa60f165cc82cac1da6fef1b1ed9a6de8068d91851802bebddcf53c209abc` |
| 55 | `theorem` | [sInf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/sinf-adj.md) | 391 | `result-track:d1039ebec62bc564e9061a8d0331e95ed45a9a213576f4d6a8d5f50743ae94b9` |
| 56 | `theorem` | [iSup_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/isup-adj.md) | 396 | `result-track:c3183335da766bca88744a36188fa025e32535c0d9472798d922c33fa9e375a1` |
| 57 | `theorem` | [iInf_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/iinf-adj.md) | 401 | `result-track:42d9595b4d8ccd723a1a59aadfdda899ac2b6c9bef91477c7a1933a4fb497cdb` |
| 58 | `theorem` | [sInf_adj_of_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/sinf-adj-of-nonempty.md) | 405 | `result-track:23f92f2c129a929c71d1b7187335dc12b7cfe126e463d9df79aa56d09d2f88b4` |
| 59 | `theorem` | [iInf_adj_of_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/iinf-adj-of-nonempty.md) | 413 | `result-track:45badf6f8168a657f493ee5cd25101211f124ba0f60e99e62620ca6231aa1539` |
| 60 | `theorem` | [verts_sSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-ssup.md) | 420 | `result-track:8f5a9c5ff481c5a5d72f08df35900346d2901cf3a2250d2f27a5a6b17c7733f5` |
| 61 | `theorem` | [verts_sInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-sinf.md) | 425 | `result-track:fcf7ba0f4a3832af632b5a29182c9418a6d846cd464da8586f7161b25627d890` |
| 62 | `theorem` | [verts_iSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-isup.md) | 430 | `result-track:612f6272a6fe4e2c34d61564739f6c92edb6596dcc08575c7ae52d4fd075e06d` |
| 63 | `theorem` | [verts_iInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-iinf.md) | 434 | `result-track:8cb84a985f248c8300c06b5b7d27ef7ca51d811c98665cc8970a9e8ec8e2b264` |
| 64 | `theorem` | [verts_spanningCoe_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/verts-spanningcoe-injective.md) | 437 | `result-track:30ec1bcc25a66c866da7c1301b2dcf71153dd8a7cc1f7364685cc0763702d5ce` |
| 65 | `instance` | [distribLattice](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/distriblattice.md) | 445 | `declaration-track:4aba1fe5c79692f717535aff6b22ae73cd2bd4f36aa6d1605b6484ae72d33d3c` |
| 66 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-9.md) | 451 | `declaration-track:e543a795edae478ee39437f78db4ea201a448c2f2268f58e85ab707d436cc84b` |
| 67 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-8.md) | 458 | `declaration-track:de8b627e96cfaa1fcc867c64b3de65ed6f310a5e71d979eff3b168ec85fa6339` |
| 68 | `instance` | [subgraphInhabited](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraphinhabited.md) | 483 | `declaration-track:c582c2ba90ecde2265cb61bd222dd5560745ab62549b5e9c087d6e0dd5343b21` |
| 69 | `theorem` | [neighborSet_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-sup.md) | 487 | `result-track:78d47965ec2a2010f9519048f46fa70541e62e8270a8e5875e5f44ba0a78075e` |
| 70 | `theorem` | [neighborSet_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-inf.md) | 492 | `result-track:448d3a5946c80459866445b8e67ac94aa61ecdb1e465b775932821b8d5985a82` |
| 71 | `theorem` | [neighborSet_top](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-top.md) | 497 | `result-track:464d7aeaed4cda3fb4caf7a25bc7244358896bfeaca49663efa2cab5ac8d3656` |
| 72 | `theorem` | [neighborSet_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-bot.md) | 501 | `result-track:7f010e428c5d6f8277f8847f30d924ecc1277ae67464b9b933ba33b31025027e` |
| 73 | `theorem` | [neighborSet_sSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-ssup.md) | 505 | `result-track:54192bdf048944b5cd444156608710d144aa952ac0098c1d5686bf12dc52d0e5` |
| 74 | `theorem` | [neighborSet_sInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-sinf.md) | 512 | `result-track:a4600dc712cdcdeaa7daf2d1b2fa82a462fe39601b7a76106e1150b720673fc4` |
| 75 | `theorem` | [neighborSet_iSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-isup.md) | 519 | `result-track:efb06b2aefd3a14407a84bc754845f95a1e10ee768330ac48dedf48e39e44ab5` |
| 76 | `theorem` | [neighborSet_iInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-iinf.md) | 524 | `result-track:ca84537b1bd741f7425072fab43e351c5fd2b965326120234a6d28532c02c787` |
| 77 | `theorem` | [edgeSet_top](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-top.md) | 529 | `result-track:a59ddbd6c393073486a40c804253f85b83c624595c23eb7b804c81d3de3ab22c` |
| 78 | `theorem` | [edgeSet_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-bot.md) | 533 | `result-track:f5333b0ac8394121637e74b8237de3fa1f69d78a7e541d853e0317d2fb8e0298` |
| 79 | `theorem` | [edgeSet_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-inf.md) | 538 | `result-track:becc55335dec52495f6f51656f41963caecae1e7840d722d1a5022688ce79bd3` |
| 80 | `theorem` | [edgeSet_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-sup.md) | 543 | `result-track:b84ece43f4ed9c4871f501ff354091a997969e64f5f8aa69a10f402bdf2f2e91` |
| 81 | `theorem` | [edgeSet_sSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-ssup.md) | 548 | `result-track:6aa0385cd1fae24da2fcf64e4ad722a35d13f46bd44c87d3c2abda3b2deb6d26` |
| 82 | `theorem` | [edgeSet_sInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-sinf.md) | 555 | `result-track:f130113b4b7a3433039afdb3bee8653cdeaa518dc3ca4d625e6d236602148e14` |
| 83 | `theorem` | [edgeSet_iSup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-isup.md) | 563 | `result-track:2e1183fb90d447fc5e3a8e7d44bcc010faa6f3adf3f6569d0974939348fb917a` |
| 84 | `theorem` | [edgeSet_iInf](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-iinf.md) | 568 | `result-track:cbd66404ae5bd0c5f1f01425456c1ce594973b5bc1db73b66c33530dbf2e9119` |
| 85 | `theorem` | [spanningCoe_top](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe-top.md) | 574 | `result-track:daa2fe29f81164681bae55a0f134bc55da45cb40582f2434cadca5a872a27711` |
| 86 | `theorem` | [spanningCoe_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe-bot.md) | 578 | `result-track:dcddc42e13b638c3699038daa21a2bbd4e2b8233c360df0babcc7cd720517d41` |
| 87 | `def` | [_root_.SimpleGraph.toSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/root-simplegraph-tosubgraph.md) | 583 | `declaration-track:7b0bc022620cc87e8e2b58d2b21ac3cad19afc2a904e49d6378e26a2da649520` |
| 88 | `theorem` | [support_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/support-mono.md) | 591 | `result-track:ef625338c0d198930ea42a4559a698a0f4bbe6f2101ad627c8d17366c6233442` |
| 89 | `theorem` | [_root_.SimpleGraph.toSubgraph.isSpanning](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/root-simplegraph-tosubgraph-isspanning.md) | 595 | `result-track:c5d7304714fbe08e1f8a48f08b1a670fdb4942cb0521b94191b80308cfe991e2` |
| 90 | `theorem` | [spanningCoe_le_of_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe-le-of-le.md) | 600 | `result-track:24926423cf3d53058745b80db2c4dc5d2f79f994629e6ea27ccdfbafab44746e` |
| 91 | `def` | [topEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/topequiv.md) | 605 | `declaration-track:75b115229e0df2dd7b34aaa442b7aa76c394384dd480bb3e047b884367929fbc` |
| 92 | `def` | [botEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/botequiv.md) | 615 | `declaration-track:3cce0b51e18362f00e82922342f98294635ad6fd8d6b80364949b22a0ed24346` |
| 93 | `theorem` | [edgeSet_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-mono.md) | 623 | `result-track:618e1f4d6ed9f6ca451691cc8abd8cbc2c28b472277e4f35dab73cf8db34a6f0` |
| 94 | `theorem` | [_root_.Disjoint.edgeSet](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/root-disjoint-edgeset.md) | 627 | `result-track:acff53dc4b9c87e6714046b76f331dc20c7fd75b269de6643d1aa6508a07241f` |
| 95 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map.md) | 634 | `declaration-track:35dddd89c8dcdc0b4dfc1041c870e41dae2cd351a49d05e6e500aa467f2c6a14` |
| 96 | `theorem` | [map_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map-monotone.md) | 648 | `result-track:04a92f0d136c79f5c1aace3f01255cafdbcab5f5e770e2274bf97786f5153ebd` |
| 97 | `theorem` | [map_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map-sup.md) | 659 | `result-track:e74444b18320ec4560829667c65e4bb279e2f7d1be7da1d77a88aba8f44ca204` |
| 98 | `def` | [comap](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/comap.md) | 676 | `declaration-track:f6e4be9f7ebbe606820510a00e7b0d799c153385c1896e3ab26746165206d46f` |
| 99 | `theorem` | [comap_monotone](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/comap-monotone.md) | 684 | `result-track:aee68dfd88672a0cfd773a84f8b1ca97412486c9a7a0c4e6a315be9e9c658b26` |
| 100 | `theorem` | [map_le_iff_le_comap](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map-le-iff-le-comap.md) | 696 | `result-track:d40be2ef7fb73301b2136fe50df3fcac26f8c960555e8f2b56db9730ca60e419` |
| 101 | `def` | [inclusion](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/inclusion.md) | 714 | `declaration-track:868ad2a49f84df6c12586be3558c1ad838f90b32ddedcf1d2bb10417743e4a89` |
| 102 | `theorem` | [inclusion.injective](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/inclusion-injective.md) | 719 | `result-track:14c6ad960305708e183c90deff03f997e907f8e0282cc03aa95ff068c5176c5d` |
| 103 | `def` | [hom](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/hom.md) | 727 | `declaration-track:3bafd25c4c15923383b12ee314340744d292f58ceda66f2b2c0a947c00181220` |
| 104 | `lemma` | [coe_hom](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe-hom.md) | 732 | `result-track:9cb66382727df4ccee816a12c0ca872eb1dd2866946bc1bdbbb9f35d3030aa47` |
| 105 | `theorem` | [hom.injective](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/hom-injective.md) | 735 | `result-track:c79dbcb1a138acd93cc4ce1ebb6e527fc9f5117462388bd850988552afba68af` |
| 106 | `def` | [spanningHom](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanninghom.md) | 742 | `declaration-track:147541aae076b7f3d9db3f613bc36c868d31edbe6bd18abddd13a341abb70468` |
| 107 | `theorem` | [spanningHom.injective](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanninghom-injective.md) | 747 | `result-track:49124dac56d0bd78a855bca528fbfd16423437fa99e8709c325fc4d862820064` |
| 108 | `theorem` | [neighborSet_subset_of_subgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subset-of-subgraph.md) | 751 | `result-track:78cbc7a3e7de3e316387a76eed23dd2276e83e31cbf34e73a53c9585aa105d54` |
| 109 | `instance` | [neighborSet.decidablePred](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-decidablepred.md) | 756 | `declaration-track:b60502e1fee44a2489b304243285961a7da4348844bf5a0db7b821d8fd985913` |
| 110 | `instance` | [finiteAt](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/finiteat.md) | 762 | `declaration-track:0c6367e4269c42decbdaaf10167203c8b9f77f8fa6e07f9fff7c8c327d368002` |
| 111 | `def` | [finiteAtOfSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/finiteatofsubgraph.md) | 770 | `declaration-track:b178fb057346c5128cf9d11c43333f0499d33e48cd8540ecfd0f75eaf32930bf` |
| 112 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/instance-source-edition-2.md) | 775 | `declaration-track:0e8d90be364d6562f247bc8fd871b1065578ed9114f44578086bf2892f0d6d62` |
| 113 | `instance` | [coeFiniteAt](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coefiniteat.md) | 779 | `declaration-track:debc9bb2c7fd803b289920df8bbb48a547f791a5bd436271e98874e96a200be3` |
| 114 | `theorem` | [IsSpanning.card_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/isspanning-card-verts.md) | 784 | `result-track:6733ea8d1dbdd22f5c7a5364956c25ea8f3e87c4e1b5fc9fa9f717b2bd422c85` |
| 115 | `def` | [degree](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/degree.md) | 791 | `declaration-track:a7ac4ba46ad77a4639ab692b7926d554e2457fa6471d3df0a97673ba7526d020` |
| 116 | `theorem` | [finset_card_neighborSet_eq_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/finset-card-neighborset-eq-degree.md) | 795 | `result-track:2458cd76dabdeaf71552ac1e78d1f5d46385838ccbb9dcf7cecb0a34b0702412` |
| 117 | `theorem` | [degree_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/degree-le.md) | 800 | `result-track:395dcb29c457b8afdcf7824b67b9713871a4a0135d49563d36340879901fc623` |
| 118 | `theorem` | [degree_le'](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/degree-le-source-edition-2.md) | 806 | `result-track:c45286e5fce5ba3bd178c45c2d7134780ecbe6c8f22e28039efb95b3833b64cc` |
| 119 | `theorem` | [coe_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe-degree.md) | 812 | `result-track:84df4bf58cbf27ba1a73d47abb5bca628b2a859bc30430181b6014d82c2f6f7c` |
| 120 | `theorem` | [degree_spanningCoe](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/degree-spanningcoe.md) | 819 | `result-track:5f409a14f91c53e65083227f568a194407a5a9c6777282fd16919ecbeefa86e5` |
| 121 | `theorem` | [degree_eq_one_iff_unique_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/degree-eq-one-iff-unique-adj.md) | 825 | `result-track:850f0e9896ee16bee830971f9abfe40e49d1a23f34b29cba4cded9718cbb279d` |
| 122 | `instance` | [nonempty_singletonSubgraph_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/nonempty-singletonsubgraph-verts.md) | 840 | `declaration-track:b65216223953bf2307695c66cf5cf28a86f4b6e7c5a3cb9c6624689e57b30098` |
| 123 | `theorem` | [singletonSubgraph_le_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/singletonsubgraph-le-iff.md) | 845 | `result-track:4c6651d8886d454f0576b36bfdaeeaad588c17666240a17b039f82ae64c8eca1` |
| 124 | `theorem` | [map_singletonSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map-singletonsubgraph.md) | 855 | `result-track:2b3803760b4351ca43bcb40ac1e10aaba08e912b2423d0a1b2955dc3c3232659` |
| 125 | `theorem` | [neighborSet_singletonSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-singletonsubgraph.md) | 864 | `result-track:37dc8a1e4878d9f37b715ba83749a1764e7fe61f676f35989382e8c4e2b2c65f` |
| 126 | `theorem` | [edgeSet_singletonSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-singletonsubgraph.md) | 869 | `result-track:8759397c98786965de177e50c79f0f670bbf1284dc5041cb071081b6e2ecf0b7` |
| 127 | `theorem` | [eq_singletonSubgraph_iff_verts_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/eq-singletonsubgraph-iff-verts-eq.md) | 873 | `result-track:e7eca15810978f1a0eefc35c202c04166f7312dc8ba278b829690cf18650fbf0` |
| 128 | `instance` | [nonempty_subgraphOfAdj_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/nonempty-subgraphofadj-verts.md) | 887 | `declaration-track:ce35ab92396cf354d28bbb144211c0d0af1775cc528f4320d5c5aba208894e6d` |
| 129 | `theorem` | [edgeSet_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/edgeset-subgraphofadj.md) | 893 | `result-track:3386d81490313005faf4fa32f3f9929ac021678ffb094286ebde864ff1cb7da3` |
| 130 | `lemma` | [subgraphOfAdj_le_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraphofadj-le-of-adj.md) | 902 | `result-track:5f3abf5a43702b5809164e2a6901a446ce9fca1f84ca407b809316fb1e02dbf9` |
| 131 | `theorem` | [subgraphOfAdj_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraphofadj-symm.md) | 910 | `result-track:bc854bc66220f33bc4c944153b2757f78b8ee52672afaef79d946450d9f1a634` |
| 132 | `theorem` | [map_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/map-subgraphofadj.md) | 916 | `result-track:6fd0e23f1b3e270e0b0b8c6cf43fbc285b56851eb52dcecc108313eb3bb1244c` |
| 133 | `theorem` | [neighborSet_subgraphOfAdj_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subgraphofadj-subset.md) | 938 | `result-track:776d67ccb04ca65bd9d7a6e5eecf7fed1a6f8a0ec22bba45cd9316a980a1687a` |
| 134 | `theorem` | [neighborSet_fst_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-fst-subgraphofadj.md) | 944 | `result-track:7f6745d1400a7b4b44f3c432eea9ce454a603c9eb504a39e4693543d223c5315` |
| 135 | `theorem` | [neighborSet_snd_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-snd-subgraphofadj.md) | 952 | `result-track:2c0692be8a2d694327989858268aeef45727fa1884a707e2d8938faaab36ff13` |
| 136 | `theorem` | [neighborSet_subgraphOfAdj_of_ne_of_ne](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subgraphofadj-of-ne-of-ne.md) | 959 | `result-track:568cdf1dbd017af1aa3e628fb1e33a90be7d35b3a00db53ebf128358d767e041` |
| 137 | `theorem` | [neighborSet_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/neighborset-subgraphofadj.md) | 965 | `result-track:1fb283bde7c874aadc59a48c335dad1fe28b8bd9a489abfb4899965e0e049809` |
| 138 | `theorem` | [singletonSubgraph_fst_le_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/singletonsubgraph-fst-le-subgraphofadj.md) | 970 | `result-track:a712c3eb466607017fe9c63c2ceab2e5e92dee9287038205a1d0f5263a1c48bf` |
| 139 | `theorem` | [singletonSubgraph_snd_le_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/singletonsubgraph-snd-le-subgraphofadj.md) | 976 | `result-track:983de57fcfd9ffadf7b1c40a6ca11f86ad1650e56f168f9db24b4cbb3d517c68` |
| 140 | `def` | [coeSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coesubgraph.md) | 993 | `declaration-track:cfa30549ded40380dd7ee3b0018d6c5a54d56f130f6067918f69ca5656b25a51` |
| 141 | `def` | [restrict](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/restrict.md) | 1000 | `declaration-track:c3dddc5680e32c724ac94e4000360d44440537b37fb1d9bf11b0d181b14cfb1b` |
| 142 | `lemma` | [coeSubgraph_Adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coesubgraph-adj.md) | 1004 | `result-track:ca5a7890d14ef07704f2c826e96d87057d0a6ca7170bc026442a7f7e10220c14` |
| 143 | `lemma` | [restrict_Adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/restrict-adj.md) | 1009 | `result-track:7b092c260664bb4415beee9096f377168a755355bcfd3b9662771e747dd132ba` |
| 144 | `theorem` | [restrict_coeSubgraph](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/restrict-coesubgraph.md) | 1012 | `result-track:c7b62c4a05ed5e6d2c1299442db697ef1b3e7be76cf24c05e4c5b6a83e4b5a23` |
| 145 | `theorem` | [coeSubgraph_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coesubgraph-injective.md) | 1020 | `result-track:f9c85a7e1a534bc67bc810a925717005b7ea4f520c69ad9a14cf988f4f36f6bc` |
| 146 | `lemma` | [coeSubgraph_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coesubgraph-le.md) | 1025 | `result-track:0865badb6e69764d70bbbef032f3181d51523cf97d6f29338559237b0843ce50` |
| 147 | `lemma` | [coeSubgraph_restrict_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coesubgraph-restrict-eq.md) | 1032 | `result-track:6ba47554d20e48136c6650cc6c2cd86c6faf9fa9c6d43646440e3f1923ce9bcc` |
| 148 | `def` | [deleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges.md) | 1048 | `declaration-track:73b4207cddab898d1cfae523fb0c88dfe7d3a3d4c36161d745abf5d77b06948a` |
| 149 | `theorem` | [deleteEdges_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-verts.md) | 1061 | `result-track:d44b12a3be07ba5d7ae24db190865f5253f6e9aa3b43765e372115a675d11114` |
| 150 | `theorem` | [deleteEdges_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-adj.md) | 1066 | `result-track:f16867230ae4f083b42adc2a0b07e463711281d55a01cf71bd6945ad9cbcf21e` |
| 151 | `theorem` | [deleteEdges_deleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-deleteedges.md) | 1071 | `result-track:1c92e6f116dd45a782b47f974a29adca3914f7c12a0001a3437d41ef983947e2` |
| 152 | `theorem` | [deleteEdges_empty_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-empty-eq.md) | 1077 | `result-track:8b39e836898b9c5321bcd3dcf1b79fde1a336b988e55b3d6f96ce7c3351dc6a1` |
| 153 | `theorem` | [deleteEdges_spanningCoe_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-spanningcoe-eq.md) | 1082 | `result-track:457e63064db26d4e9d2dffd38e15dd537bf4226d0d036735a28bdac634a4ac04` |
| 154 | `theorem` | [deleteEdges_coe_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-coe-eq.md) | 1088 | `result-track:4f919d73dedf6d09155a6e3628621bc1aa09744d9bf8d6f9a6002daf390fb27c` |
| 155 | `theorem` | [coe_deleteEdges_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe-deleteedges-eq.md) | 1105 | `result-track:594c51401b1349d8dd62373f31240d0e2d5b4d0a2e4b5b1a13a7e6dc2cfb6e7c` |
| 156 | `theorem` | [deleteEdges_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-le.md) | 1111 | `result-track:ef7d06135f1e71924ed1d074ee94b0a159554de3b122e556fa3a2dcb191ed4e2` |
| 157 | `theorem` | [deleteEdges_le_of_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-le-of-le.md) | 1115 | `result-track:7ff49548299dd86552947928c560e293807b879461816e9d4d7cc89d8aea16ec` |
| 158 | `theorem` | [deleteEdges_inter_edgeSet_left_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-inter-edgeset-left-eq.md) | 1123 | `result-track:020e00fe79135f1715bc3dc35b0d328ecb4d72d0f02e82016acc6383c3808b26` |
| 159 | `theorem` | [deleteEdges_inter_edgeSet_right_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteedges-inter-edgeset-right-eq.md) | 1129 | `result-track:52a827db7bd13be8b1251e12e8f18c940f7e5f22ee3d680409222b7700ec7691` |
| 160 | `theorem` | [coe_deleteEdges_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/coe-deleteedges-le.md) | 1134 | `result-track:9996188fb52702f6cd2b4d8b746cca7a44bb99320fb3452a7a0dbd30b738dc3f` |
| 161 | `theorem` | [spanningCoe_deleteEdges_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/spanningcoe-deleteedges-le.md) | 1139 | `result-track:b02d815251a3dafa5f0af7d2568708511c9810c79a4efa5990613d976fc7220c` |
| 162 | `def` | [induce](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce.md) | 1156 | `declaration-track:c71e2b85a51d1758fec7a847b2ff82a8c59e11d548770ed5224b71cc149e6b11` |
| 163 | `theorem` | [_root_.SimpleGraph.induce_eq_coe_induce_top](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/root-simplegraph-induce-eq-coe-induce-top.md) | 1164 | `result-track:99fa1498191226cb2568bd861034d8c5ebd07a529486c74436055d24a1e636f7` |
| 164 | `theorem` | [induce_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce-mono.md) | 1174 | `result-track:9dd69b6991ad48a8b5123c34d309c1d6967e0959fa53a67c252d11ec6fd1b5f5` |
| 165 | `theorem` | [induce_mono_left](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce-mono-left.md) | 1183 | `result-track:3de7c426fa4813051a34bd02ed9042f190acdf051fddf593b65506daeca9ce7f` |
| 166 | `theorem` | [induce_mono_right](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce-mono-right.md) | 1188 | `result-track:458cc18170d42188d760f3ae0787dfa9ec1ce3c05f7f2721a888edd82ef349c6` |
| 167 | `theorem` | [induce_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce-empty.md) | 1193 | `result-track:c61b29b3a294e638b73d0d562df70bc4dbda9042f60e5e5090c4404de27ed73c` |
| 168 | `theorem` | [induce_self_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/induce-self-verts.md) | 1198 | `result-track:1eee1e72ae79e50f0d81060f8f065ffe35658678a89cfcedb0a6badabcdb2a91` |
| 169 | `lemma` | [le_induce_top_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/le-induce-top-verts.md) | 1206 | `result-track:f0325ce2604c1be170646bad04a08718e4c2214f2819e7ea0559983491b1f74c` |
| 170 | `lemma` | [le_induce_union](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/le-induce-union.md) | 1210 | `result-track:6a48c827e42263946b19c87e601d390b20caf994fe7d160bbf2540ca139f5aaf` |
| 171 | `lemma` | [le_induce_union_left](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/le-induce-union-left.md) | 1216 | `result-track:690cbc533e94cae0c509d7240f8d19906ff681fdc2cafba139b5b34005bccb28` |
| 172 | `lemma` | [le_induce_union_right](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/le-induce-union-right.md) | 1219 | `result-track:b99a4527da393514a7312ca4a40f0f397898622015055b6d18328533e0b4300e` |
| 173 | `theorem` | [singletonSubgraph_eq_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/singletonsubgraph-eq-induce.md) | 1222 | `result-track:cc6740b3d8917fc27ca5882cc8f23f7f3d1394a0f1d818b69260a902463f64de` |
| 174 | `theorem` | [subgraphOfAdj_eq_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/subgraphofadj-eq-induce.md) | 1226 | `result-track:c44202ac4ee9ad9c2eee489499085fd5a7246e142a5b619c1858c6211ab706fa` |
| 175 | `def` | [deleteVerts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts.md) | 1244 | `declaration-track:738092100a18ba12a5bdef772da1353a42947428341cc07f55320801cd217db6` |
| 176 | `theorem` | [deleteVerts_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-verts.md) | 1252 | `result-track:13e3327dbac4689b52a70a87160ae1abbe3fbef86b809ebe5d9a994db2587d9d` |
| 177 | `theorem` | [deleteVerts_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-adj.md) | 1256 | `result-track:7a1bce53dddbe917b14b19e557e6e469dd6769046d31cecbe2c8e70d41159de1` |
| 178 | `theorem` | [deleteVerts_deleteVerts](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-deleteverts.md) | 1262 | `result-track:2ca046b540e8547c4f7b59af665a8119d7b98d66b7c026e7bd9f6abb8061265c` |
| 179 | `theorem` | [deleteVerts_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-empty.md) | 1268 | `result-track:ff9b455be54bb4eff0559bcfe86525ec9f92bd75c979f696320f82f14bb7ebf9` |
| 180 | `theorem` | [deleteVerts_le](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-le.md) | 1272 | `result-track:38213b42a9fe8ec05426856578f5cebe52bb2e275a3fecf77e7fe8af2df45bcb` |
| 181 | `theorem` | [deleteVerts_mono](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-mono.md) | 1277 | `result-track:1a39faf015e7bb343ed56f4325f918dd63404f79fde4a3b88297fdab3a5450e1` |
| 182 | `theorem` | [deleteVerts_anti](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-anti.md) | 1283 | `result-track:529ea150d70c5032d2e7e85c7e519f272b98ed6f2fe3e6142f6364bb252d4893` |
| 183 | `theorem` | [deleteVerts_inter_verts_left_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-inter-verts-left-eq.md) | 1288 | `result-track:17035dc811be198aa61e60d304d76c2010b8950fe4537a306fe6ba4792a34d2a` |
| 184 | `theorem` | [deleteVerts_inter_verts_set_right_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphSubgraphMemVertsIfMemEdge.lean/declarations/deleteverts-inter-verts-set-right-eq.md) | 1293 | `result-track:d54b2cb16bd35289feb7f7814e5687f3e9b157caa25dcf9e33af079dbf1729c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0af5d831e5abefa6202bf984fc8bc3e738fde294bc691109785f9c65c75951e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
