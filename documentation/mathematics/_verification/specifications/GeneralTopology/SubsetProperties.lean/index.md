# Verification target: Subset Properties

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
  "lexical_observation_count": 253,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SubsetProperties.lean/index.md) · [Full source](../../../../GeneralTopology/SubsetProperties.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e52814ff071f39927c50c6b77ea81c348738f4dd`.

Source path: `GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Accumulate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BoolIndicator` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact.md) | 68 | `declaration-track:a6d7548c56ef6f3ab5766ed816a39923b9a973bfe18bf37f22eece63e4e439ad` |
| 2 | `theorem` | [IsCompact.compl_mem_sets](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-compl-mem-sets.md) | 74 | `result-track:8da384a019bcac7c694621f0d64b04b828498af72f2c04ee6800e0f42c018341` |
| 3 | `theorem` | [IsCompact.compl_mem_sets_of_nhdsWithin](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-compl-mem-sets-of-nhdswithin.md) | 83 | `result-track:6ea1e833c9565cf8900d3789e5d4e42f8e421ccefac60eadba9db22ef5d91d4a` |
| 4 | `theorem` | [IsCompact.induction_on](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-induction-on.md) | 96 | `result-track:f6893bdbf2357bc3768aeb1e865c80f852986fb2b0ce72f66df72cb078ebe600` |
| 5 | `theorem` | [IsCompact.inter_right](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-inter-right.md) | 109 | `result-track:9321164171b411c8bd7439d40a0e62c5e997ef394446470c5ce2799f8ed9b8a9` |
| 6 | `theorem` | [IsCompact.inter_left](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-inter-left.md) | 119 | `result-track:17b35741e52f0ad5daed18ec3e9a849a332417693b207501e6cdb4c1d426ed3a` |
| 7 | `theorem` | [IsCompact.diff](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-diff.md) | 124 | `result-track:d3b1bc3a6a3a5d4151b30fb4f4718c2894f8e907d66e5955463548c41059b19c` |
| 8 | `theorem` | [isCompact_of_isClosed_subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-of-isclosed-subset.md) | 129 | `result-track:cd20eb023aabd1da31506f43d56a645ef59a7bf388983eb16f4cd984d14e46a7` |
| 9 | `theorem` | [IsCompact.image_of_continuousOn](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-image-of-continuouson.md) | 134 | `result-track:ff68c0556848cc55555b59b2980f363d2eda6c4e242640e5556ef1466455a4b8` |
| 10 | `theorem` | [IsCompact.image](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-image.md) | 149 | `result-track:638a3bbc00782c9794e26151830285b7386351c4c07b4928f9728f98a58157bb` |
| 11 | `theorem` | [IsCompact.adherence_nhdset](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-adherence-nhdset.md) | 153 | `result-track:599cec47855a053654aef7ba90420b6f0f43169874fb13efcf5800225d730dad` |
| 12 | `theorem` | [isCompact_iff_ultrafilter_le_nhds](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-ultrafilter-le-nhds.md) | 164 | `result-track:510adee39e1344f677209463f9d473e4442b7ec077a7204b818cb1f7a4d624cf` |
| 13 | `theorem` | [IsCompact.elim_directed_cover](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-directed-cover.md) | 177 | `result-track:2d26c3da72329d4dc3fa5a098e7c9eab81e908abf18de0a192451c0915ef731b` |
| 14 | `theorem` | [IsCompact.elim_finite_subcover](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-finite-subcover.md) | 191 | `result-track:f0f6589251e634ed6ca57e16a5a6f788c63f7918d37449b23f455d2578fb9989` |
| 15 | `theorem` | [IsCompact.elim_nhds_subcover'](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-nhds-subcover.md) | 197 | `result-track:a9ed196d182418a0aa5bfbb718a81a6c0b9d6eed4e4e6b0b919146b8e87b4e6c` |
| 16 | `theorem` | [IsCompact.elim_nhds_subcover](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-nhds-subcover-source-edition-2.md) | 204 | `result-track:d2e591d8bac4f0144070ceb3ecba67a896c46bf14678f66e04f00c995553416b` |
| 17 | `theorem` | [IsCompact.disjoint_nhdsSet_left](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-disjoint-nhdsset-left.md) | 215 | `result-track:dc1495a23100bbe26ff638326d346fe92359172e51d4ece60b9b9fee47630cc1` |
| 18 | `theorem` | [IsCompact.disjoint_nhdsSet_right](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-disjoint-nhdsset-right.md) | 230 | `result-track:bb39bee1a6e035cba744fd55f4b4cb5b0931c64e7e85b58cf1d8698b8d7795b2` |
| 19 | `theorem` | [IsCompact.elim_directed_family_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-directed-family-closed.md) | 238 | `result-track:9e9d93ff148faf44b3cbc3c4ba377939f8f8c5c4e75a50a96757eadd00739f6a` |
| 20 | `theorem` | [IsCompact.elim_finite_subfamily_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-finite-subfamily-closed.md) | 255 | `result-track:f84572462b30be77ba73edd2fb5f2fb3ee1848f8db8e55e09ebb0be8d254e0d9` |
| 21 | `theorem` | [LocallyFinite.finite_nonempty_inter_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-finite-nonempty-inter-compact.md) | 264 | `result-track:56299c452b16a70d8111e58e8544be2c907ca0446928a456b73a850097e976f9` |
| 22 | `theorem` | [IsCompact.inter_iInter_nonempty](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-inter-iinter-nonempty.md) | 276 | `result-track:0d9eb4ab5830d5864d1c4c8af86c643b34bd72efdf8dad9a77938594f314ac8f` |
| 23 | `theorem` | [IsCompact.nonempty_iInter_of_directed_nonempty_compact_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-nonempty-iinter-of-directed-nonempty-compact-closed.md) | 285 | `result-track:b03c87043744189a00152df448dad7e8cc3ff6ba7923d10a17974656a5acacbb` |
| 24 | `theorem` | [IsCompact.nonempty_iInter_of_sequence_nonempty_compact_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-nonempty-iinter-of-sequence-nonempty-compact-closed.md) | 302 | `result-track:91678cb6c207358dfa24679c4f7305a07722998fe8a9eff24856c0eaea50d0d3` |
| 25 | `theorem` | [IsCompact.elim_finite_subcover_image](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-elim-finite-subcover-image.md) | 313 | `result-track:4d6870ade03d689e98bcc58c23941b66b9a06ccc89e8225bd785f556efcc551a` |
| 26 | `theorem` | [isCompact_of_finite_subcover](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-of-finite-subcover.md) | 324 | `result-track:03a22fd269177c8dfbe7bcdb54e2eb36d7e62808898708e05546db3fa19b7244` |
| 27 | `theorem` | [isCompact_of_finite_subfamily_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-of-finite-subfamily-closed.md) | 342 | `result-track:53cafddd603d5d9ee899110d0b2c8fc22b675a1ff0ebb7df5c9e78544f13d897` |
| 28 | `theorem` | [isCompact_iff_finite_subcover](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-finite-subcover.md) | 355 | `result-track:42ca1a77323b12f376c705c90481e62d192dbd2a8229edd9220646e0c792585a` |
| 29 | `theorem` | [isCompact_iff_finite_subfamily_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-finite-subfamily-closed.md) | 364 | `result-track:4726f727a4912ad08757834986308269b57dedce2c983fdf4f254e502940fd4b` |
| 30 | `theorem` | [IsCompact.eventually_forall_of_forall_eventually](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-eventually-forall-of-forall-eventually.md) | 374 | `result-track:d902e09386aa0904f706e576daf32fcf0df24be9e752ac877448ee5fd1d448ce` |
| 31 | `theorem` | [isCompact_empty](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-empty.md) | 393 | `result-track:daac3c7fa294c4dd08c8f38a69a5bf88cc10a67b42d3a5a50510ce28b4f55425` |
| 32 | `theorem` | [isCompact_singleton](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-singleton.md) | 398 | `result-track:b43efa5ab9bdde3e244a9257a3b30836d0f088eba10e464baa6dbd8eeee6f728` |
| 33 | `theorem` | [Set.Subsingleton.isCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/set-subsingleton-iscompact.md) | 403 | `result-track:b454cdc1457752803debf646f7b3eb511d063990e67317049b47fadff8a74e3b` |
| 34 | `theorem` | [Set.Finite.isCompact_biUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/set-finite-iscompact-biunion.md) | 408 | `result-track:5694ec4e04388a69cffc7486c60e1323645b41e3791a1ecfd941503bc03009c9` |
| 35 | `theorem` | [Finset.isCompact_biUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/finset-iscompact-biunion.md) | 417 | `result-track:31e6bbbb23584931f3a960a28994478041624f78fc667d319a37799202fb5290` |
| 36 | `theorem` | [isCompact_accumulate](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-accumulate.md) | 422 | `result-track:27fd4d42a1be66b3c27829998b332aab3d6d4ea35c963719169a64a443069f46` |
| 37 | `theorem` | [Set.Finite.isCompact_sUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/set-finite-iscompact-sunion.md) | 428 | `result-track:eaf474658a645551f894bad25c929c722abd4a3ca49c9036fd8b21eb5335f41e` |
| 38 | `theorem` | [isCompact_iUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iunion.md) | 433 | `result-track:73474b285a7cb16e21a68618b0c44da9a5af898b23b8a858db2a96f7bf396e5c` |
| 39 | `theorem` | [Set.Finite.isCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/set-finite-iscompact.md) | 438 | `result-track:841d7e133d19c3fa2edbfe614a94437b755c223d59629dd3dfdac9a01062ab53` |
| 40 | `theorem` | [IsCompact.finite_of_discrete](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-finite-of-discrete.md) | 442 | `result-track:e94e3b7be24fbb35d8813c18e2b294e3bf131df77cafd6a7f6fbdebacb89f26b` |
| 41 | `theorem` | [isCompact_iff_finite](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-finite.md) | 450 | `result-track:63994785714d948e67d705465e1d2dadb1adab75e0ee3d8760d512557c798f30` |
| 42 | `theorem` | [IsCompact.union](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-union.md) | 454 | `result-track:be7df5a855bf8310398e25f37f5b60242c002d8c7014d16d6680a7d3380f2270` |
| 43 | `theorem` | [IsCompact.insert](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-insert.md) | 458 | `result-track:d5c552c0c74536790161b11112f80df10156f5d7119b14fb64473f044e9241f8` |
| 44 | `theorem` | [exists_subset_nhds_of_isCompact'](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-subset-nhds-of-iscompact.md) | 466 | `result-track:eb0162e5b231033493559421098a07ac1a201c7d8c9626aef5c7318da07f4e7e` |
| 45 | `theorem` | [isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-open-iff-eq-finite-iunion-of-istopologicalbasis.md) | 488 | `result-track:f5c1f1f1da798d3da31460097d83277e4e8580e0876865903a4733f87731c753` |
| 46 | `def` | [cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/cocompact.md) | 519 | `declaration-track:eadf2cb3014cf8051657d3f2a66a1f7ac2da562c6b8925fa2325f7497432c57b` |
| 47 | `theorem` | [hasBasis_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/hasbasis-cocompact.md) | 523 | `result-track:bbc7c149a2c5908865536e7b89d045633f9ca86259346c37b34a02ef834ce08b` |
| 48 | `theorem` | [mem_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-cocompact.md) | 531 | `result-track:2b52e6d17e84877c9d085eb516b8513a8ce4a3575f963c20b5bba3a9cef62c6e` |
| 49 | `theorem` | [mem_cocompact'](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-cocompact-source-edition-2.md) | 535 | `result-track:ed671c68f9e7438ef91932c2d21ed0ae4a785afa55e3cb212d4a5140c82107c7` |
| 50 | `theorem` | [_root_.IsCompact.compl_mem_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/root-iscompact-compl-mem-cocompact.md) | 539 | `result-track:4f1f4361f1fc08b1b77ec0e16f7543cf2c563033cb9cbf91c47d137107d2f1a5` |
| 51 | `theorem` | [cocompact_le_cofinite](../../../../GeneralTopology/SubsetProperties.lean/declarations/cocompact-le-cofinite.md) | 543 | `result-track:00b0cbd4ceb2fa7a111541c26e35a9a50f246ba12bec0276b0fc9fbe2fc7724f` |
| 52 | `theorem` | [cocompact_eq_cofinite](../../../../GeneralTopology/SubsetProperties.lean/declarations/cocompact-eq-cofinite.md) | 547 | `result-track:9a71015636cda941efcd84eb0deaf69c7d65eebbc03618ca41b75ebe85a2210a` |
| 53 | `theorem` | [_root_.Nat.cocompact_eq](../../../../GeneralTopology/SubsetProperties.lean/declarations/root-nat-cocompact-eq.md) | 552 | `result-track:b7517404e75d567d9e5f4be55cfb810237471d8bbc51592801b363b1bb6f1217` |
| 54 | `theorem` | [Tendsto.isCompact_insert_range_of_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/tendsto-iscompact-insert-range-of-cocompact.md) | 556 | `result-track:5e553d048ad47829a89b0d2001f4a3c09c2c3dfdd82d709fce6e75cb9e180037` |
| 55 | `theorem` | [Tendsto.isCompact_insert_range_of_cofinite](../../../../GeneralTopology/SubsetProperties.lean/declarations/tendsto-iscompact-insert-range-of-cofinite.md) | 573 | `result-track:1ebc28679afdca53a645b26bfbe06f1a30f98fe7136b21ab2136a95a7586a15c` |
| 56 | `theorem` | [Tendsto.isCompact_insert_range](../../../../GeneralTopology/SubsetProperties.lean/declarations/tendsto-iscompact-insert-range.md) | 580 | `result-track:cdbe80b561e3255bff0fe08c07dd08ca0afba5fc9f49235019e2b986f1fcf4f1` |
| 57 | `def` | [coclosedCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/coclosedcompact.md) | 587 | `declaration-track:b0ca86b84227425bffa619d7ce130baf73acb26a96b0b45f17aca7ddc57399fb` |
| 58 | `theorem` | [hasBasis_coclosedCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/hasbasis-coclosedcompact.md) | 591 | `result-track:d51a65b2def7e417f73ae590d58b37b233213cf26d0c74940ce45bfbda7ea14e` |
| 59 | `theorem` | [mem_coclosedCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-coclosedcompact.md) | 600 | `result-track:6de7a59b216945a661687bb4991d3ca39a3f2df73c5e85f7a20b1282644c4879` |
| 60 | `theorem` | [mem_coclosed_compact'](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-coclosed-compact.md) | 604 | `result-track:ef514acda6b2a06b67652da1a6cc1e8092ee278617be32123c8930aed2b41212` |
| 61 | `theorem` | [cocompact_le_coclosedCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/cocompact-le-coclosedcompact.md) | 608 | `result-track:7c2790decd61c57d8b59a2a5f7b3997271949249f89ee3ae22f55d804477b434` |
| 62 | `theorem` | [IsCompact.compl_mem_coclosedCompact_of_isClosed](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-compl-mem-coclosedcompact-of-isclosed.md) | 614 | `result-track:8645bd5877ffa7e84d0d5b898d959c144c5e2cae73bb06f2edce17e2b460fc21` |
| 63 | `def` | [inCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/incompact.md) | 626 | `declaration-track:f520785b707fa6f4c368765e1fe1fe40a8633896ea31a9b597a9b2d5999f715d` |
| 64 | `theorem` | [inCompact.isBounded_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/incompact-isbounded-iff.md) | 633 | `result-track:4b769af6b8d234034b322a127103c90ae48a948e10ec9008ac021cca48397858` |
| 65 | `def` | [NhdsContainBoxes](../../../../GeneralTopology/SubsetProperties.lean/declarations/nhdscontainboxes.md) | 645 | `declaration-track:3f560b1c019d6e836d683f81402d5a7afb474169152ca7ea58ce974e185c442d` |
| 66 | `theorem` | [NhdsContainBoxes.symm](../../../../GeneralTopology/SubsetProperties.lean/declarations/nhdscontainboxes-symm.md) | 651 | `result-track:dfafc6eff2ea8075b734f70f87f7a9cbf29b447ad1d54bcef966d2f42efd6cee` |
| 67 | `theorem` | [NhdsContainBoxes.comm](../../../../GeneralTopology/SubsetProperties.lean/declarations/nhdscontainboxes-comm.md) | 658 | `result-track:8f75e976514e8af6d174ed3151a4921703465d5e0a971e799bebfdc45b4c8d96` |
| 68 | `theorem` | [nhdsContainBoxes_of_singleton](../../../../GeneralTopology/SubsetProperties.lean/declarations/nhdscontainboxes-of-singleton.md) | 663 | `result-track:ea7c06ad96de7be4daa0bc04a60c5083679ada5326f38f7c81e08ded491734df` |
| 69 | `theorem` | [nhdsContainBoxes_of_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/nhdscontainboxes-of-compact.md) | 669 | `result-track:500deeffd0ece772c09d86257dd67b2f13ea265db40e97534b15d20e2f52f8b5` |
| 70 | `theorem` | [generalized_tube_lemma](../../../../GeneralTopology/SubsetProperties.lean/declarations/generalized-tube-lemma.md) | 696 | `result-track:245960287066f3867bd2f5c8971afdeeb24e54444ea2e0c1f5702880bde79b9c` |
| 71 | `class` | [CompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactspace.md) | 708 | `declaration-track:320bf6f475a525cbe5c597107bb54018ea6877a3b38ff097d86ba06097b3553b` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-8.md) | 714 | `declaration-track:34cfde9bf20c4e53315368cd6e4ae4cb9d5ae2483d24509a40dd61771c18cae2` |
| 73 | `theorem` | [isCompact_univ_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-univ-iff.md) | 718 | `result-track:17544ba4d89617050c38e90f7140454fef75ac59fea45468a089af45989ad1e9` |
| 74 | `theorem` | [isCompact_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-univ.md) | 722 | `result-track:2132f656f4f37f0ca972e13a044349e5e6d3f05d062c66c36f6bd10e6c9ff360` |
| 75 | `theorem` | [cluster_point_of_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/cluster-point-of-compact.md) | 726 | `result-track:7e78de6fd1a29d09cb992031eda0a0d4bc2ea888dab0a8977ba5f6326108e381` |
| 76 | `theorem` | [CompactSpace.elim_nhds_subcover](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactspace-elim-nhds-subcover.md) | 730 | `result-track:7c2f7ea0279a3af2dad421b2ab8e6326ba856ed8d99a2f5f5dc49237df4e9eb5` |
| 77 | `theorem` | [compactSpace_of_finite_subfamily_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactspace-of-finite-subfamily-closed.md) | 736 | `result-track:88e279332adc342e6a8d33ccba255ffb6e4842af86662961d142f2e80a318c81` |
| 78 | `theorem` | [IsClosed.isCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-iscompact.md) | 744 | `result-track:3c8a2e111bdc7c7a50e802aff7266504827c54871e5f94fc5f56c5581103d0c9` |
| 79 | `class` | [NoncompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/noncompactspace.md) | 749 | `declaration-track:19ca0c8048daabea4e240e40fe23a850eecbe2c850b55d34be801d3860baa16f` |
| 80 | `lemma` | [noncompact_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/noncompact-univ.md) | 755 | `result-track:22c31de72c80e2b0d889014c6156df146a3cd94a414289d91a09a9d07458624f` |
| 81 | `theorem` | [IsCompact.ne_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-ne-univ.md) | 759 | `result-track:b2f8520f9e5b6298d0001cf6a499c96b3f21a35c1d1bd900411341db02b2159a` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-20.md) | 763 | `declaration-track:fe32e18ec9c89b754c417e66c32b6dd590902376c6dab1dcbf312cabed48ea3e` |
| 83 | `theorem` | [Filter.cocompact_eq_bot](../../../../GeneralTopology/SubsetProperties.lean/declarations/filter-cocompact-eq-bot.md) | 769 | `result-track:841c4c380a7ea1571b0a595522103b0d825ae50b1cd546153fcdb1c3a926aca2` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance.md) | 773 | `declaration-track:02943c3e3f71fd8c72e88dd0415f838032eb376a1868654bcd6f04f0ce331ff2` |
| 85 | `theorem` | [noncompactSpace_of_neBot](../../../../GeneralTopology/SubsetProperties.lean/declarations/noncompactspace-of-nebot.md) | 776 | `result-track:29ad49aa7e9899ca562d807b2f44f687f9dff2da498504129079fd1514de9a3c` |
| 86 | `theorem` | [Filter.cocompact_neBot_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/filter-cocompact-nebot-iff.md) | 780 | `result-track:5db3d84534cae7195e02bb38c1f7455770e28dd3dd9dd759c1b3cc7759ec86b6` |
| 87 | `theorem` | [not_compactSpace_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/not-compactspace-iff.md) | 784 | `result-track:aed86d0de969455f919ec36e962926af741f423db94601070ae1deaf650084a5` |
| 88 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-10.md) | 788 | `declaration-track:698334ff03e8a2d4aabf0a3340f7520a3246101eda9e9720bb057e8927f7b40c` |
| 89 | `theorem` | [finite_of_compact_of_discrete](../../../../GeneralTopology/SubsetProperties.lean/declarations/finite-of-compact-of-discrete.md) | 793 | `result-track:148dfd21e5beb2b98c874202baf459e983806b9171af5f83c78d8c8531d05199` |
| 90 | `theorem` | [exists_nhds_ne_neBot](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-nhds-ne-nebot.md) | 797 | `result-track:40c8a4fc734c755c44db7c0599435cbd7cf2bee26b813fc1716e93cf4586a1c9` |
| 91 | `theorem` | [finite_cover_nhds_interior](../../../../GeneralTopology/SubsetProperties.lean/declarations/finite-cover-nhds-interior.md) | 805 | `result-track:eeda553c35bb382974a1bad06d50351c491ec48a81c5133f30d4a32c95d055ff` |
| 92 | `theorem` | [finite_cover_nhds](../../../../GeneralTopology/SubsetProperties.lean/declarations/finite-cover-nhds.md) | 812 | `result-track:8fbae4383acb43ccc5725bccdab9121c22ea09dc6bf829a09b9d3de3e5bbae49` |
| 93 | `theorem` | [LocallyFinite.finite_nonempty_of_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-finite-nonempty-of-compact.md) | 820 | `result-track:2b40d84db6b46d30ca7d3d689ea203196dcd480dfb81230dc755ae4bc691dc1e` |
| 94 | `theorem` | [LocallyFinite.finite_of_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-finite-of-compact.md) | 827 | `result-track:0e524c4aca4cd53e50925e030e0958b767c1658fc3e7bf29327c298034ecebe6` |
| 95 | `def` | [LocallyFinite.fintypeOfCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-fintypeofcompact.md) | 834 | `declaration-track:d6699dac907da406f16ce338036c9eb1b4e7c6d6734abf7d6a3b5bdd0f3b5ab4` |
| 96 | `theorem` | [Filter.comap_cocompact_le](../../../../GeneralTopology/SubsetProperties.lean/declarations/filter-comap-cocompact-le.md) | 842 | `result-track:a947fa079e23f5a6ca3088e03d85bc9f9014ec22be18ff0d18d153e13b28c981` |
| 97 | `theorem` | [isCompact_range](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-range.md) | 850 | `result-track:0d40a1630fc2b2e30d95f2077d7452cace209520515e6d0fd5020f757b72a38b` |
| 98 | `theorem` | [isCompact_diagonal](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-diagonal.md) | 854 | `result-track:cba218566458d71d18a151fda41de4288f96445c382c37d7db6db3be00d6c433` |
| 99 | `theorem` | [isClosedMap_snd_of_compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosedmap-snd-of-compactspace.md) | 860 | `result-track:608593da29a3590850e70f1b0940a3696e763015c365e9bb308b2bf5cd29d157` |
| 100 | `theorem` | [exists_subset_nhds_of_compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-subset-nhds-of-compactspace.md) | 873 | `result-track:dfd4ce136c02ffd1d4b8036aae98c3c59ee2284b0962fa7c1eb266d12ecf3cd5` |
| 101 | `theorem` | [Inducing.isCompact_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/inducing-iscompact-iff.md) | 881 | `result-track:1a59f66982816b1508c9128acc20ebada07aa381985119d61547a8f49d7278d3` |
| 102 | `theorem` | [Embedding.isCompact_iff_isCompact_image](../../../../GeneralTopology/SubsetProperties.lean/declarations/embedding-iscompact-iff-iscompact-image.md) | 892 | `result-track:f0ad668d4811dc511d9cdb7da2d2d41ea86279790b7979953a6c586af66f113e` |
| 103 | `theorem` | [ClosedEmbedding.isCompact_preimage](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-iscompact-preimage.md) | 898 | `result-track:a6b33ba18d04aae93fa64c914bdbb4cc4ef6f9bb22941cd0aed16623da3dddea` |
| 104 | `theorem` | [ClosedEmbedding.tendsto_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-tendsto-cocompact.md) | 906 | `result-track:7cb71cfb9ae4a5cc67da7b74e1837d034db92e1758a32152f5e3a71ba5140658` |
| 105 | `theorem` | [isCompact_iff_isCompact_in_subtype](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-iscompact-in-subtype.md) | 912 | `result-track:4cdf9f30c03c2a2e156fa9b01354b383e5c57a4393cf33c0b65206668e1dfe1b` |
| 106 | `theorem` | [isCompact_iff_isCompact_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-iscompact-univ.md) | 917 | `result-track:1d8df2e2637e7c0f72d4eae870f51a16afc49ba382b499c896c453370d7d18cf` |
| 107 | `theorem` | [isCompact_iff_compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-iff-compactspace.md) | 921 | `result-track:c4eb27bff61b8539060ebaffb961629ac66066695ed145ef84069ed0f049dda7` |
| 108 | `theorem` | [IsCompact.finite](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-finite.md) | 925 | `result-track:f346b5238547e8d06acb2b69be9ca8682aac96c59b1f3b7d7873b6de26638599` |
| 109 | `theorem` | [exists_nhds_ne_inf_principal_neBot](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-nhds-ne-inf-principal-nebot.md) | 929 | `result-track:bb3d17ff47b87b77b3e70a478b0dd41b0cddb4ee186b5792511adcfb9ba30d75` |
| 110 | `theorem` | [ClosedEmbedding.noncompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-noncompactspace.md) | 936 | `result-track:0be10ed426eaabe73a005838096624ac084b6a6e3f2456cbf207268838f05853` |
| 111 | `theorem` | [ClosedEmbedding.compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-compactspace.md) | 941 | `result-track:e57a3fc9325ac0efd542c6c012ab6a4f948872cf37e569020c6b22bc98c264eb` |
| 112 | `theorem` | [IsCompact.prod](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-prod.md) | 946 | `result-track:62318589d86b2abb50baa9e285a0bcccb76d5c72c4fe372ad58bd1ae10eb0374` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-16.md) | 961 | `declaration-track:e1a611496890cededb547097987445a5e571613d34b7d5194e676f3de655ff99` |
| 114 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-12.md) | 966 | `declaration-track:ac715ebbbfda5a90da727c69f7cb27b7292a9d299217ce650cbcdaf3e4a4975f` |
| 115 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-14.md) | 970 | `declaration-track:cc0b35adf31e3b03fd066afde9e8321d3b2cd8eaa991be054ed21e05cbb889be` |
| 116 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-11.md) | 975 | `declaration-track:9f6fc46d2e8594eba4b8801f2f45a5b5a74f4b680423124ea8e0d1307824af76` |
| 117 | `theorem` | [Filter.coprod_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/filter-coprod-cocompact-source-edition-2.md) | 983 | `result-track:ced5bb610d54737f12137a98fb1820ad62cb554a6e2eeb174667df5ed46cfd1d` |
| 118 | `theorem` | [Prod.noncompactSpace_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/prod-noncompactspace-iff.md) | 1007 | `result-track:17dce55384a62a7dba20f5fa3c2df20d3dac614918e9130c3a7c63b57ecf972c` |
| 119 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-19.md) | 1013 | `declaration-track:f2872ba95c593157726a1b7af703ab8631f1e89de72a967736eae29651c1c859` |
| 120 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-17.md) | 1019 | `declaration-track:e5efd5131909fca02551399d088475bd88a1f4a480b3a3f18eba4420e2fe2358` |
| 121 | `theorem` | [isCompact_pi_infinite](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-pi-infinite.md) | 1029 | `result-track:2c6d245469d2ed8ff02e6c106ae40b124761d1ab5ab3d67c37203c4b2b68b028` |
| 122 | `theorem` | [isCompact_univ_pi](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-univ-pi.md) | 1042 | `result-track:ad236136fad5ed487ed5d344ce35b7b157271fe4a504295ae3ff657209661370` |
| 123 | `instance` | [Pi.compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/pi-compactspace.md) | 1048 | `declaration-track:d79a412853f4eee3ee2942dd3d0508927520ecb02d54008aee4b557eb939c744` |
| 124 | `instance` | [Function.compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/function-compactspace.md) | 1052 | `declaration-track:d1b3d55a878259cb164a6b982accb6319ba68e1908fe4200627d101c709c83b3` |
| 125 | `theorem` | [Filter.coprodᵢ_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/filter-coprod-cocompact.md) | 1058 | `result-track:1d0bcfa53262525cfa442ab0c7c06eea9715f998a5184e307cde382d5475664a` |
| 126 | `instance` | [Quot.compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/quot-compactspace.md) | 1070 | `declaration-track:3647dbe3124e9d52dc098fd1f06f5d18514e993dc739d832394fade6e0e8ba46` |
| 127 | `instance` | [Quotient.compactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/quotient-compactspace.md) | 1076 | `declaration-track:9eef27af9f5b5420b6ccbc25673ca0d1275194a0da72123b11e133b65150380e` |
| 128 | `class` | [LocallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallycompactspace.md) | 1084 | `declaration-track:1fccb7cc5e4992ad041a065fa53956ebb7972f2a77c287729c564976ee211cc8` |
| 129 | `theorem` | [compact_basis_nhds](../../../../GeneralTopology/SubsetProperties.lean/declarations/compact-basis-nhds.md) | 1090 | `result-track:a3d986eae02a341236ae10821112358773af0e5e687906d4cc7c09f48225ce99` |
| 130 | `theorem` | [local_compact_nhds](../../../../GeneralTopology/SubsetProperties.lean/declarations/local-compact-nhds.md) | 1095 | `result-track:aa91869e0d7ef9a147ebbd9c55f0042dbb5aa19fd07e9c8adb079b2cbde0429d` |
| 131 | `theorem` | [disjoint_nhds_cocompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/disjoint-nhds-cocompact.md) | 1101 | `result-track:9a35027c5ca2dbd7978e05593e3163314cb943e0d6211df6ce1651210f3442c0` |
| 132 | `theorem` | [locallyCompactSpace_of_hasBasis](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallycompactspace-of-hasbasis.md) | 1105 | `result-track:2f82f7527d46ba411ce870ed190077fdb324b6c66c843e630beaf23f8a0ced22` |
| 133 | `instance` | [Prod.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/prod-locallycompactspace.md) | 1113 | `declaration-track:f498b9151e0867d8e4e7cd32dcccd7ca301138bc4f1421832095fafe86aab09d` |
| 134 | `instance` | [Pi.locallyCompactSpace_of_finite](../../../../GeneralTopology/SubsetProperties.lean/declarations/pi-locallycompactspace-of-finite.md) | 1126 | `declaration-track:21eaf534402270801ed1c72695e324ded410131b6c3d49c8f9f1753860417cc4` |
| 135 | `instance` | [Pi.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/pi-locallycompactspace.md) | 1138 | `declaration-track:528f88ac955e1d0afe2a3f690ed85f18694e9e9e6112002a6ab5deb69773339a` |
| 136 | `instance` | [Function.locallyCompactSpace_of_finite](../../../../GeneralTopology/SubsetProperties.lean/declarations/function-locallycompactspace-of-finite.md) | 1156 | `declaration-track:b21034e196f32b9db33c0cce939e0ab8a95b92611046ff53c9ce496914557999` |
| 137 | `instance` | [Function.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/function-locallycompactspace.md) | 1161 | `declaration-track:1275d0fc9cfb820bfada200fbe23c12b740473ff12e8334528571e9b209b26cb` |
| 138 | `theorem` | [exists_compact_subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-compact-subset.md) | 1170 | `result-track:a93af1c83cda546a4d07d7a1918abdaa7cb280723522fe086dbafa9902e63e85` |
| 139 | `theorem` | [exists_compact_mem_nhds](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-compact-mem-nhds.md) | 1177 | `result-track:86b6554ac6cf0f39237194497cb521984bf02de10add8a0eb826593837cf88cf` |
| 140 | `theorem` | [exists_compact_between](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-compact-between.md) | 1185 | `result-track:0a92d83ba0770de095fc26b0eec18fc72147bd4f242eda424826b82ffd7a856a` |
| 141 | `theorem` | [exists_compact_superset](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-compact-superset.md) | 1197 | `result-track:3369f501a4e102c9643d102fa61c02f7b6445bb74ebae3bea5b14f2c39f518b5` |
| 142 | `theorem` | [ClosedEmbedding.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-locallycompactspace.md) | 1203 | `result-track:2730e69a5615a9ee68e49182e54a9f8aeefc92e10b68e952caccb6482357516b` |
| 143 | `theorem` | [IsClosed.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-locallycompactspace.md) | 1212 | `result-track:021a6d236e2fe0b4b3a9d5f1d5840b37937a6ebaee8a6f4a130cd6653d8e9386` |
| 144 | `theorem` | [OpenEmbedding.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/openembedding-locallycompactspace.md) | 1217 | `result-track:8c64b47e6f1d6c3c754fa0ee9e9212bf6875f47f484174261d3217dd54ba9b5d` |
| 145 | `theorem` | [IsOpen.locallyCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/isopen-locallycompactspace.md) | 1230 | `result-track:24e5935276258d8a65f212d0ab7b2320b770dddfc10b2a44232edeeef592c8a2` |
| 146 | `theorem` | [Ultrafilter.le_nhds_lim](../../../../GeneralTopology/SubsetProperties.lean/declarations/ultrafilter-le-nhds-lim.md) | 1235 | `result-track:a8c01fa82239ae1411775c603903c1ff80c37a9df179f9eaf31568253c394eb3` |
| 147 | `theorem` | [IsClosed.exists_minimal_nonempty_closed_subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-exists-minimal-nonempty-closed-subset.md) | 1241 | `result-track:f344a1218c7e03b071ac7522a38a584cd24d865727ec97987d7da62b4e2355e3` |
| 148 | `class` | [SigmaCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/sigmacompactspace.md) | 1283 | `declaration-track:549ed534943e965c35e6a30da32442c67af77cde43a825ee9d9b201401471dac` |
| 149 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-15.md) | 1290 | `declaration-track:e19ab4e2c4216ca99157ac2f5a7fe109d3ba055e15f3ecea6d44a384ba3b1135` |
| 150 | `theorem` | [SigmaCompactSpace.of_countable](../../../../GeneralTopology/SubsetProperties.lean/declarations/sigmacompactspace-of-countable.md) | 1294 | `result-track:7d755cc5da0eacb0705a744acdad80f4cd82b04d675b66c93dadcc3e908a118f` |
| 151 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-3.md) | 1300 | `declaration-track:08854f53c5d37e08992aa910d1a49bb26b7c37403be9e59683743c117825ef1b` |
| 152 | `def` | [compactCovering](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactcovering.md) | 1315 | `declaration-track:573541498bdcbe207b07e8465f0cea94c97b03aa1c995ee4cb19b2cd0458f8ae` |
| 153 | `theorem` | [isCompact_compactCovering](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-compactcovering.md) | 1319 | `result-track:55cf1e5209fd4813bf8a30a11fbcc11d6ac4ac0555c9f776f6b5f5af5de12fe3` |
| 154 | `theorem` | [iUnion_compactCovering](../../../../GeneralTopology/SubsetProperties.lean/declarations/iunion-compactcovering.md) | 1323 | `result-track:ffec54be5fab67bfdf585f1381f5f592ee822f071c0272758165d10d3b405456` |
| 155 | `theorem` | [compactCovering_subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactcovering-subset.md) | 1329 | `result-track:ba29bf921a1fcfddcf9a4a23a85a5cc2cceadf98d6c456f193053858ef3b9c9e` |
| 156 | `theorem` | [exists_mem_compactCovering](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-mem-compactcovering.md) | 1335 | `result-track:0f999871fce2ccefde33fdb080d1bd4ca6114e53fd6277bd2c1ae4c1d74bc79d` |
| 157 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-6.md) | 1339 | `declaration-track:30e47bdd3616f3d767ac5123af41821131e5fe25430d972339342a272467c713` |
| 158 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-9.md) | 1345 | `declaration-track:3581e8f31361d4ec18817e33b3eddd0eaddc2c82152cf1b756483a3d03ecc775` |
| 159 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-2.md) | 1353 | `declaration-track:0304bb6e4dfb36a6a2c1b6db2f794f2aacbdd7f042a835a770fbe255901e3e45` |
| 160 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-18.md) | 1360 | `declaration-track:f16d5be93774a696f6ed5089808581e5687d5347d121751d8fef84edc707ed71` |
| 161 | `theorem` | [ClosedEmbedding.sigmaCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/closedembedding-sigmacompactspace.md) | 1375 | `result-track:4328531856594b2474b65b9f98428db8dcdf6984207f37ff48f5145e78d68b81` |
| 162 | `theorem` | [IsClosed.sigmaCompactSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-sigmacompactspace.md) | 1383 | `result-track:01cac3c052f7169294652b01b8c239e5b7fd710e2af17bb0296fbf7a89b854bc` |
| 163 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-4.md) | 1386 | `declaration-track:12c03322bd3f69430c01ce481185ad3805699823c612902420a1a3a706213812` |
| 164 | `theorem` | [LocallyFinite.countable_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-countable-univ.md) | 1391 | `result-track:7618d04e98c29214802ae4005687344e1d8f05c5a787b7bacb3594f35bc571a4` |
| 165 | `def` | [LocallyFinite.encodable](../../../../GeneralTopology/SubsetProperties.lean/declarations/locallyfinite-encodable.md) | 1402 | `declaration-track:3d49d5a6cf3ebb46881f8a9cec72912591ff584634936aab2f1c97e13b5d9a4c` |
| 166 | `theorem` | [countable_cover_nhdsWithin_of_sigma_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/countable-cover-nhdswithin-of-sigma-compact.md) | 1410 | `result-track:3d0a3aff7d19bb3a217935f15d5bdc90a15934ba73c44852a1640900cad46349` |
| 167 | `theorem` | [countable_cover_nhds_of_sigma_compact](../../../../GeneralTopology/SubsetProperties.lean/declarations/countable-cover-nhds-of-sigma-compact.md) | 1426 | `result-track:8b2a8ecbc852d3289a1776bcd820c9c38a95a2bf2fb8a3157f69f4b604205b78` |
| 168 | `structure` | [CompactExhaustion](../../../../GeneralTopology/SubsetProperties.lean/declarations/compactexhaustion.md) | 1443 | `declaration-track:8adf216cd2395de9f97f6f51a0fece0cbc98551d9241a1b31f3260dc03ff8a99` |
| 169 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-5.md) | 1457 | `declaration-track:2d5f482b7f554da52d477e112a0fd05a07bf1e33c536421d6fcf4e1c8b79d525` |
| 170 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/SubsetProperties.lean/declarations/tofun-eq-coe.md) | 1466 | `result-track:e94ad98a13b8f0ace41eba483f806e551233a533f3341395147e16207cd3ce86` |
| 171 | `theorem` | [isCompact](../../../../GeneralTopology/SubsetProperties.lean/declarations/iscompact-source-edition-2.md) | 1468 | `result-track:d604fee481f45ecd782383dda4d257b96c5fa46b7f008cadaa97cbc9d9ea802e` |
| 172 | `theorem` | [subset_interior_succ](../../../../GeneralTopology/SubsetProperties.lean/declarations/subset-interior-succ.md) | 1472 | `result-track:d771bc6481d246ef8beb656bd4372a8af82375d6fe3783f11473b91ad13e7557` |
| 173 | `theorem` | [subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/subset.md) | 1477 | `result-track:498a42901c778360ce36f86fdd37f4a5a0f9a9e9278ff0e367b704abded1d51a` |
| 174 | `theorem` | [subset_succ](../../../../GeneralTopology/SubsetProperties.lean/declarations/subset-succ.md) | 1481 | `result-track:234d2496cff9614468efee6a57d203db5a11a2fbf02dd6458ba761ca2ccdf7d7` |
| 175 | `theorem` | [subset_interior](../../../../GeneralTopology/SubsetProperties.lean/declarations/subset-interior.md) | 1484 | `result-track:c851265df033d0cc94af524a48281b9047abb06e48d39abb75f6006d1e9c20bc` |
| 176 | `theorem` | [iUnion_eq](../../../../GeneralTopology/SubsetProperties.lean/declarations/iunion-eq.md) | 1488 | `result-track:5e5447709979f13ee92a1b7faeaf3bc99740e38710779ebbda6f2848be1efb74` |
| 177 | `theorem` | [exists_mem](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-mem.md) | 1492 | `result-track:3013b756415efee65a9a360fc6fd4f922c44e049bc5e2a306e77633615140a66` |
| 178 | `def` | [find](../../../../GeneralTopology/SubsetProperties.lean/declarations/find.md) | 1497 | `declaration-track:12c1ec8341e8c48d0e197c47f3bf190e2eb7cd8aa9ce6278563dec2391ba2888` |
| 179 | `theorem` | [mem_find](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-find.md) | 1501 | `result-track:19d031c02cf86922061c8de16e5455f7392480201c7bd25366f0d4f18d65fd2b` |
| 180 | `theorem` | [mem_iff_find_le](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-iff-find-le.md) | 1505 | `result-track:69e928bc94bf31f5ba9a287f96a6afe94fee906adec564cbc26c0c6e17665d4f` |
| 181 | `def` | [shiftr](../../../../GeneralTopology/SubsetProperties.lean/declarations/shiftr.md) | 1510 | `declaration-track:7379eced06bae2b31f2874401f0f222b9ad4da6edf89c9ad3b210c37689758ef` |
| 182 | `theorem` | [find_shiftr](../../../../GeneralTopology/SubsetProperties.lean/declarations/find-shiftr.md) | 1518 | `result-track:527bb0e93c2b582ef1585ccc66b36229bf6eeeba65676235373be634c9a76a23` |
| 183 | `theorem` | [mem_diff_shiftr_find](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-diff-shiftr-find.md) | 1522 | `result-track:82528c287637ed6d68d00862be77e0890cdd1b3256025c4b9bff41ef2fcf185d` |
| 184 | `def` | [choice](../../../../GeneralTopology/SubsetProperties.lean/declarations/choice.md) | 1530 | `declaration-track:2eb0b67c83ce59473ae7f97651f0d151d4b8efcfde1d649e4bcb08778ffc9c1f` |
| 185 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-7.md) | 1544 | `declaration-track:3163b9121aa6d0fc38eede4a7019b2c55a1411224d3ead1c0e64349d221fdc76` |
| 186 | `def` | [IsClopen](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen.md) | 1554 | `declaration-track:0415aed066b09c8c270f6992c3bbacc7fa1c8f2788cdef5c51a6196a0655a228` |
| 187 | `theorem` | [IsClopen.isOpen](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-isopen.md) | 1558 | `result-track:8fda2976cda1d03242813d856955d22ba1e8af3a006a36d697c8d7f1e434e3f7` |
| 188 | `theorem` | [IsClopen.isClosed](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-isclosed.md) | 1561 | `result-track:6998ec3058c3d8ca161dca4734e30104592d1b5bfbbc6c542cceddcd8de35f6d` |
| 189 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-iff-frontier-eq-empty.md) | 1564 | `result-track:fcf1950571607ebe1e1ab32ebd21c7a83e0b1efe24cbb36c2d703de5f5287ed7` |
| 190 | `theorem` | [IsClopen.union](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-union.md) | 1574 | `result-track:a2a60a711e01ea0b66cbe14f39cc4a78cd806dd2d144a46ab731ce911ef0b063` |
| 191 | `theorem` | [IsClopen.inter](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-inter.md) | 1578 | `result-track:d04839d7ba6a06df4ad1f202bec0f495f41e4b3154822d97b0029626c2b34795` |
| 192 | `theorem` | [isClopen_empty](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-empty.md) | 1582 | `result-track:a6e5f68c38ee8b0147b15c570e8bb7a6ae6ba9c2ae4646889c33eb50ad488600` |
| 193 | `theorem` | [isClopen_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-univ.md) | 1585 | `result-track:52b9513bc41fb19c02406683f7beec082a239db3e4866301117f538bf552368a` |
| 194 | `theorem` | [IsClopen.compl](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-compl.md) | 1588 | `result-track:c90a9b7d981803f5897fe86e6a9dc667939a9f3fd7b88c7401fbc94feaab462c` |
| 195 | `theorem` | [isClopen_compl_iff](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-compl-iff.md) | 1593 | `result-track:6c10977d9a037d174a0bd1f7dbf5a863607e4e1450488abe505d516f62ac54c3` |
| 196 | `theorem` | [IsClopen.diff](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-diff.md) | 1597 | `result-track:0164f7fdff60ab164ee416dc518a85d32d2b0884b83635d67a616e131f6bd16e` |
| 197 | `theorem` | [IsClopen.prod](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-prod.md) | 1601 | `result-track:2ba33db67e65fa5c3335d84e21d050f491ed29fa8b3f3a419c44f1f2ebbe034d` |
| 198 | `theorem` | [isClopen_iUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-iunion.md) | 1606 | `result-track:75c8870a83ca1d78fe243f7bde3518f3d235f04a7f7311b2d2002a6aa65c714e` |
| 199 | `theorem` | [isClopen_biUnion](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-biunion.md) | 1611 | `result-track:cb1646f9903a8d8d2ac8094d9996d9c97b57036c820459d38bb2d8c2a89c6a6a` |
| 200 | `theorem` | [isClopen_biUnion_finset](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-biunion-finset.md) | 1616 | `result-track:17271009d546da6b7871fb83a1f45a63f742032724f526e00cbc0548c936fbef` |
| 201 | `theorem` | [isClopen_iInter](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-iinter.md) | 1621 | `result-track:a568d817604953fa2eea6b5b22235c761415f961d28b75a7a7b6974117b99043` |
| 202 | `theorem` | [isClopen_biInter](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-biinter.md) | 1626 | `result-track:53dcfe3cc1e00b1fd626423d54599f92e6bd3c1a4e9a9010d4d7bfe1ac961976` |
| 203 | `theorem` | [isClopen_biInter_finset](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-biinter-finset.md) | 1631 | `result-track:b6417439a2d821218b507ff143f66e04808be987b8cff62cefa0f18cbd5b7c2a` |
| 204 | `theorem` | [IsClopen.preimage](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-preimage.md) | 1636 | `result-track:c691eefec73ab43d0696e46d7804fb615a7e941ffc9a72d55de65eefc47838c1` |
| 205 | `theorem` | [ContinuousOn.preimage_clopen_of_clopen](../../../../GeneralTopology/SubsetProperties.lean/declarations/continuouson-preimage-clopen-of-clopen.md) | 1641 | `result-track:eb20f7643cc7b36fd515174e5af1f419b0c42c08497ab618f051ed00548be686` |
| 206 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-inter-of-disjoint-cover-clopen.md) | 1648 | `result-track:0973735e4832ccc7b82662f916751daeaef10e7465ae7e6d993321a32ce6f3aa` |
| 207 | `theorem` | [isClopen_discrete](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-discrete.md) | 1659 | `result-track:be9493ba3581d997ed60b77e9ad3b7b3bc04e0f2b2ecbb201df0e5b886fbd0fe` |
| 208 | `theorem` | [isClopen_range_inl](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-range-inl.md) | 1664 | `result-track:5423ad2c50cfcd78805a6112f7adc1c921e354e581e2b660852af22144e37a86` |
| 209 | `theorem` | [isClopen_range_inr](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-range-inr.md) | 1668 | `result-track:76843b3c5cdc47954eea8174620920a4821dfa096056b483a3b0228841895050` |
| 210 | `theorem` | [isClopen_range_sigmaMk](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclopen-range-sigmamk.md) | 1671 | `result-track:ed4567795f8553ad16e89951f4f51ece274e5dd517b1658802d8f00bbf5d6a39` |
| 211 | `theorem` | [QuotientMap.isClopen_preimage](../../../../GeneralTopology/SubsetProperties.lean/declarations/quotientmap-isclopen-preimage.md) | 1676 | `result-track:aeb205c46826ad4aeb3062d909a4a256be4dcde916e00faf247473af42c0b950` |
| 212 | `theorem` | [continuous_boolIndicator_iff_clopen](../../../../GeneralTopology/SubsetProperties.lean/declarations/continuous-boolindicator-iff-clopen.md) | 1683 | `result-track:f7e068a28c0b42ec24169cbf21dfb30727c35b77ebbc79fb58eaef3511c85855` |
| 213 | `theorem` | [continuousOn_boolIndicator_iff_clopen](../../../../GeneralTopology/SubsetProperties.lean/declarations/continuouson-boolindicator-iff-clopen.md) | 1694 | `result-track:70114084735e3b97efa5f6f96ac8921f5895da085eeea778c3234db2a924f1bc` |
| 214 | `def` | [IsPreirreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible.md) | 1705 | `declaration-track:b1923b536c0329a1c602e7c576ec73ec7088eced38677c6ded5ef18aad6b1b53` |
| 215 | `def` | [IsIrreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible.md) | 1711 | `declaration-track:1ed37e112429cc6d4011add7e0236e3b32ea4225794ee42aa1c08542f78e5d81` |
| 216 | `theorem` | [IsIrreducible.nonempty](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-nonempty.md) | 1715 | `result-track:d201935ee86c2434ad4665d49634f02c61457e350148c8051bc98019fb63bfa3` |
| 217 | `theorem` | [IsIrreducible.isPreirreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-ispreirreducible.md) | 1719 | `result-track:8bca1b44ef063e40933191899a8b0c7a05ed5278422d2dfd9a5d9bccd5f592bb` |
| 218 | `theorem` | [isPreirreducible_empty](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-empty.md) | 1723 | `result-track:57f821e1f7b54aab0572a0fa0798e10ce73c796831b8c94f4961949061ebac5e` |
| 219 | `theorem` | [Set.Subsingleton.isPreirreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/set-subsingleton-ispreirreducible.md) | 1727 | `result-track:fc2d9d9e2a1d065d110971323d15d565be79c3835c4550efe621371e0a4312a9` |
| 220 | `theorem` | [isPreirreducible_singleton](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-singleton.md) | 1732 | `result-track:62445ecaa8c763a6699488ebea1559e4344836def3ce05217ea09c69b10859f2` |
| 221 | `theorem` | [isIrreducible_singleton](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-singleton.md) | 1735 | `result-track:63dacc537cbe04640dffd1715eb7686ef6996ada1ede6e81bfecc2853b2cc619` |
| 222 | `theorem` | [isPreirreducible_iff_closure](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-iff-closure.md) | 1739 | `result-track:1ee121463f57314aeba8860fbfdfe1dc1f2339aca3b8a2d18fbe60e6181ed8d7` |
| 223 | `theorem` | [isIrreducible_iff_closure](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-iff-closure.md) | 1746 | `result-track:a52cefa6877e823ea355c8929d0e3b9d3cdbe3d237501adc3b9cc0abd9c1ef7b` |
| 224 | `theorem` | [exists_preirreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/exists-preirreducible.md) | 1756 | `result-track:d2bd6258fb7ee39401d960d288452551ea795bab81120ca2c34f74a688ee4b0c` |
| 225 | `def` | [irreducibleComponents](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblecomponents.md) | 1777 | `declaration-track:d3ac8d7ae843e392e54f038831ffd145e20ffa41d6ba687442f7c8c0ed40dded` |
| 226 | `theorem` | [isClosed_of_mem_irreducibleComponents](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-of-mem-irreduciblecomponents.md) | 1781 | `result-track:b2b11fd9d23dd146adcadd3d445fc46cba39765d22ce08be48037d2cd19373c2` |
| 227 | `theorem` | [irreducibleComponents_eq_maximals_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblecomponents-eq-maximals-closed.md) | 1787 | `result-track:24a43baf0a40f95ff4103d7cdc1d34ecc8f647aed78c6a12c7aa57a175bdc531` |
| 228 | `def` | [irreducibleComponent](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblecomponent.md) | 1800 | `declaration-track:280816956995232eee4f84fa9d56b85ce32760428a0eeeeb6e05c09d0031ef2b` |
| 229 | `theorem` | [irreducibleComponent_property](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblecomponent-property.md) | 1804 | `result-track:bd542d59c6549f5f9e056d55ae297ea13b2710c86ddf945226b2f1a723e120bc` |
| 230 | `theorem` | [mem_irreducibleComponent](../../../../GeneralTopology/SubsetProperties.lean/declarations/mem-irreduciblecomponent.md) | 1811 | `result-track:d4fbc234e34315404844604a4ac066b044fbad015ec212682e6c89f3f77b566c` |
| 231 | `theorem` | [isIrreducible_irreducibleComponent](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-irreduciblecomponent.md) | 1815 | `result-track:c5662220a4557ff1493934928192645ee36b61b98fb3ff4dd6a28260ea8b36c3` |
| 232 | `theorem` | [eq_irreducibleComponent](../../../../GeneralTopology/SubsetProperties.lean/declarations/eq-irreduciblecomponent.md) | 1819 | `result-track:7cff71ea99542d3c28d9b579d4dffaf1f0bb1426a4457cb9b13ad02efa557493` |
| 233 | `theorem` | [irreducibleComponent_mem_irreducibleComponents](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblecomponent-mem-irreduciblecomponents.md) | 1824 | `result-track:b6f4036e84e485966c0c6d359b634d16373cf99bde31dda4450db4147e6e5dd6` |
| 234 | `theorem` | [isClosed_irreducibleComponent](../../../../GeneralTopology/SubsetProperties.lean/declarations/isclosed-irreduciblecomponent.md) | 1829 | `result-track:ebb40d195b2ea16123cadba675847b39e1116dd7d84bf3a5e0af1f7638db15d8` |
| 235 | `class` | [PreirreducibleSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/preirreduciblespace.md) | 1834 | `declaration-track:8137446d62f3433d4c6e77e1092c19c32617f7825b657fc7924e7960c6ba6064` |
| 236 | `class` | [IrreducibleSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblespace.md) | 1841 | `declaration-track:adb244808252415c82eec9af5dedff3a05c3be5a9d4b154e9caae79382640629` |
| 237 | `theorem` | [IrreducibleSpace.isIrreducible_univ](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblespace-isirreducible-univ.md) | 1848 | `result-track:df8d56df8d9f3439b9f52f4a5d4e4f7c851c0080b803575b0f94833a31efcdc0` |
| 238 | `theorem` | [irreducibleSpace_def](../../../../GeneralTopology/SubsetProperties.lean/declarations/irreduciblespace-def.md) | 1853 | `result-track:8e38f0253c1d36198773bea63f68f455836c1a64acef49e46ac8ad83b368139e` |
| 239 | `theorem` | [nonempty_preirreducible_inter](../../../../GeneralTopology/SubsetProperties.lean/declarations/nonempty-preirreducible-inter.md) | 1860 | `result-track:3ac87505a7d4d977c82459b09269ccd63c2174117dc93bc6e69df3f8af2db401` |
| 240 | `theorem` | [IsOpen.dense](../../../../GeneralTopology/SubsetProperties.lean/declarations/isopen-dense.md) | 1867 | `result-track:3e82147f5cbc3e12df29f6e685842958fa78124d1b2500672479111e84c5572c` |
| 241 | `theorem` | [IsPreirreducible.image](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-image.md) | 1872 | `result-track:fd5d4559d2bbb422974c4f984c8cf9ee40ee47be5648a0cf4798212e6e822145` |
| 242 | `theorem` | [IsIrreducible.image](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-image.md) | 1890 | `result-track:96c46939e762fef65c1036642b868e89960fe174d813abca74cac33d7cc9af83` |
| 243 | `theorem` | [Subtype.preirreducibleSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/subtype-preirreduciblespace.md) | 1895 | `result-track:312a86f35b70d4e897eefd4a5eac6e4f31d4068e11c0bdb4512ced072c809383` |
| 244 | `theorem` | [Subtype.irreducibleSpace](../../../../GeneralTopology/SubsetProperties.lean/declarations/subtype-irreduciblespace.md) | 1903 | `result-track:2ce73198d3a5ad00b7cd4c9cac219add900fe511533de629ef2688871c809f7e` |
| 245 | `instance` | [(anonymous)](../../../../GeneralTopology/SubsetProperties.lean/declarations/instance-source-edition-13.md) | 1910 | `declaration-track:be8385d30f26306834523031c6506458f65491840f193f60684a959092ed0fd9` |
| 246 | `theorem` | [isIrreducible_iff_sInter](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-iff-sinter.md) | 1922 | `result-track:023169afe8b8847079736632035fbd3c945876c064265d48db273384459b48af` |
| 247 | `theorem` | [isPreirreducible_iff_closed_union_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-iff-closed-union-closed.md) | 1940 | `result-track:7f095fff7934e6261c00b9012b6b79a81d7887f12ee02c69df874f2f3c6f600f` |
| 248 | `theorem` | [isIrreducible_iff_sUnion_closed](../../../../GeneralTopology/SubsetProperties.lean/declarations/isirreducible-iff-sunion-closed.md) | 1952 | `result-track:3ac1faaff200032736decf86895f8a8ee166c8525c692cca84ebf70b5b92c126` |
| 249 | `theorem` | [subset_closure_inter_of_isPreirreducible_of_isOpen](../../../../GeneralTopology/SubsetProperties.lean/declarations/subset-closure-inter-of-ispreirreducible-of-isopen.md) | 1966 | `result-track:7be16deb7b6e6b8e9b0e7b74b7e1e4f96dbcbca75cfb70488d80d30e4b5eda85` |
| 250 | `theorem` | [IsPreirreducible.subset_irreducible](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-subset-irreducible.md) | 1975 | `result-track:fdb9a2597ce909a7bee1cc824c5dd88a911e5e62a400dbf0e8fdfda0b6c10ceb` |
| 251 | `theorem` | [IsPreirreducible.open_subset](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-open-subset.md) | 1992 | `result-track:fab6c10e4cb7df40fd088097cf110c8a524beac79535a2cbba96a2eae561175e` |
| 252 | `theorem` | [IsPreirreducible.interior](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-interior.md) | 1998 | `result-track:a5317bc73c4f10fac9594806cd147134cfdafe37b2c9c9c8d2e1908ae89df7df` |
| 253 | `theorem` | [IsPreirreducible.preimage](../../../../GeneralTopology/SubsetProperties.lean/declarations/ispreirreducible-preimage.md) | 2003 | `result-track:f1621a2e971e745f9c460bc843e7fe7247f0cb9f71c1d4889eb79a32451e2d3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26009f2c4917b254c31323ca0e1d6124230f7299de1d6b424388cef85ef37500 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
