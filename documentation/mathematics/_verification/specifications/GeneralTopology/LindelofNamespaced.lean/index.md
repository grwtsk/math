# Verification target: Lindelof Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e5d59fcc04eecb88714f3048cd71b043396086",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LindelofNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LindelofNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e5d59fcc04eecb88714f3048cd71b043396086`.

Source path: `GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.SigmaCompact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof.md) | 55 | `declaration-track:d164154c4d5ba08224cf21d8e39869408878d54511eebe36e211a9a141d1a0a4` |
| 2 | `theorem` | [IsLindelof.compl_mem_sets](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-compl-mem-sets.md) | 60 | `result-track:6a09c52930e8112ec2a5690e37c3c1a92b92ff9c1b3dd55d3ccdfefd5027b3c2` |
| 3 | `theorem` | [IsLindelof.compl_mem_sets_of_nhdsWithin](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-compl-mem-sets-of-nhdswithin.md) | 68 | `result-track:b2c038479ed44c0756ad3b10bfcce9eb258274a1cc78a9768f0c3219bd6faa54` |
| 4 | `theorem` | [IsLindelof.induction_on](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-induction-on.md) | 77 | `result-track:709ca91fcb58a9f884e55efb28871e388d3de53f545e3c884b14aca450dbddd8` |
| 5 | `theorem` | [IsLindelof.inter_right](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-inter-right.md) | 86 | `result-track:b51ef836c1677fd52c3b0be13ed114c8393723e13f4713727f124f46db241fcf` |
| 6 | `theorem` | [IsLindelof.inter_left](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-inter-left.md) | 94 | `result-track:796eb03af78bf130317e8c0815a3d8bfbb7b1a8c8a2294315670e6322f2245c3` |
| 7 | `theorem` | [IsLindelof.diff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-diff.md) | 98 | `result-track:7921abda3f0fc2a277fbe805da418fea7b43dc7b3c9d5850ed29434a9994031a` |
| 8 | `theorem` | [IsLindelof.of_isClosed_subset](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-of-isclosed-subset.md) | 102 | `result-track:3d4f44a2c80341db2099bbefe1e783ced45df83186cf6f4847b71f461e8dd3a3` |
| 9 | `theorem` | [IsLindelof.image_of_continuousOn](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-image-of-continuouson.md) | 106 | `result-track:b34e847b314690e05badeb72bb23e067b59a0bbccf6a05efa0cb2b5245964685` |
| 10 | `theorem` | [IsLindelof.image](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-image.md) | 121 | `result-track:7fcf28cf303bfc186f90b0e44594d181012b4b2ef1c78e7dcbcd18977fcab799` |
| 11 | `theorem` | [IsLindelof.adherence_nhdset](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-adherence-nhdset.md) | 126 | `result-track:1936af49a3a3edc406ae9879771a9e221732a030d6497a3df2856a3300332c89` |
| 12 | `theorem` | [IsLindelof.elim_countable_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-elim-countable-subcover.md) | 137 | `result-track:eb425247fc5c4f8c3ad18de6a9c9d059044d233180000c489744432080461f33` |
| 13 | `theorem` | [IsLindelof.elim_nhds_subcover'](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-elim-nhds-subcover-source-edition-2.md) | 161 | `result-track:ff34a6961c544b11ab9165e795faeb55f902258aaca1d8c68a3f7ad0b1c51b29` |
| 14 | `theorem` | [IsLindelof.elim_nhds_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-elim-nhds-subcover.md) | 175 | `result-track:069f4ff1083972a30b869d86afad27eafef9712edfee581fc6220c06f13727ea` |
| 15 | `theorem` | [IsLindelof.indexed_countable_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-indexed-countable-subcover.md) | 188 | `result-track:6d2ee8056e24b9d82a4c3e70ffb745b576bcc42085416e717e53089c85615dd9` |
| 16 | `theorem` | [IsLindelof.disjoint_nhdsSet_left](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-disjoint-nhdsset-left.md) | 204 | `result-track:58201694fc1a5f80acdfc8b6811f9e5be5c0635463531f72956b4e43572778b9` |
| 17 | `theorem` | [IsLindelof.disjoint_nhdsSet_right](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-disjoint-nhdsset-right.md) | 219 | `result-track:8e45dfe0fdcd4acdb189e1444077358518b7b423f1e2e755525ba0d402f6ab83` |
| 18 | `theorem` | [IsLindelof.elim_countable_subfamily_closed](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-elim-countable-subfamily-closed.md) | 225 | `result-track:ff47f2bcbae801b353ac92da86433c3a1c1d0a377d936c103083e3c90ac3af37` |
| 19 | `theorem` | [IsLindelof.inter_iInter_nonempty](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-inter-iinter-nonempty.md) | 245 | `result-track:71cd8c7b47f276f517680800a457676a41e15155d2d61f13ca64ab4efb2e97db` |
| 20 | `theorem` | [IsLindelof.elim_countable_subcover_image](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-elim-countable-subcover-image.md) | 253 | `result-track:43a2396b01e37d047c7d78d9e8034a07bee56729ac4d5510b3beddd0ca483ae4` |
| 21 | `theorem` | [isLindelof_of_countable_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-of-countable-subcover.md) | 264 | `result-track:07258c0135db789b769a6d5d57c3e7828211640d495813fdcd81af804f420373` |
| 22 | `theorem` | [isLindelof_of_countable_subfamily_closed](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-of-countable-subfamily-closed.md) | 283 | `result-track:c1c0d0c2ec3a37824d76629c7c4eb70727f30d65216aaa590019cb5f664a54f2` |
| 23 | `theorem` | [isLindelof_iff_countable_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iff-countable-subcover.md) | 296 | `result-track:599a2a370e0fa979f1459336de60c385e6ee96161b4612c0831ed365af36a955` |
| 24 | `theorem` | [isLindelof_iff_countable_subfamily_closed](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iff-countable-subfamily-closed.md) | 304 | `result-track:d4cf7a2c69db663d90f3d4c40a64b09c7fe916b6ad4568060b35a39ed27b94be` |
| 25 | `theorem` | [isLindelof_empty](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-empty.md) | 312 | `result-track:bcb5bc0aaf12acbec5edfba5734d005c1e6fda81be2eff77c9e3f0b66c6a3b1e` |
| 26 | `theorem` | [isLindelof_singleton](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-singleton.md) | 317 | `result-track:b657506ad9ef7ade05095b42ac83ee7ed002544012eb8ce587d27fb5f5bd32ac` |
| 27 | `theorem` | [Set.Subsingleton.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-subsingleton-islindelof.md) | 321 | `result-track:13352f0621556937b8adfe2186a62e3cedee8899f4b657820e05a87faf30ea7d` |
| 28 | `theorem` | [Set.Countable.isLindelof_biUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-countable-islindelof-biunion.md) | 324 | `result-track:532ccee8713e45bfe44c85350ff5cb9cd6af3e40885ec613032da11c53c12f28` |
| 29 | `theorem` | [Set.Finite.isLindelof_biUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-finite-islindelof-biunion.md) | 343 | `result-track:5e221ea7835eacdadda7bb939b5969aa30b2f9b42322ab4a7aa0e2f1d7cf0dda` |
| 30 | `theorem` | [Finset.isLindelof_biUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/finset-islindelof-biunion.md) | 347 | `result-track:caf4d274739efb0ca7c98dec0db6a2df00af42f5399ad8e173d37060fec1b170` |
| 31 | `theorem` | [isLindelof_accumulate](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-accumulate.md) | 351 | `result-track:740d2c52b992335e7f2b0e300f55e4f598ecd13b889d89e6cf05d2a57c6e39ff` |
| 32 | `theorem` | [Set.Countable.isLindelof_sUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-countable-islindelof-sunion.md) | 355 | `result-track:54a45a43253b81ce41fd617ae2c25912dd44703e58b045cdcf755c252bc2df14` |
| 33 | `theorem` | [Set.Finite.isLindelof_sUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-finite-islindelof-sunion.md) | 359 | `result-track:d8d67fbf2b52eb48aa436b1ec24b8e6b97de74f9630394e96889f0625d1b5162` |
| 34 | `theorem` | [isLindelof_iUnion](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iunion.md) | 363 | `result-track:4020c9bf55a5230ec2238a5aba5e9c4b291cda11fc45ddf77ff34aec5caf5e1b` |
| 35 | `theorem` | [Set.Countable.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-countable-islindelof.md) | 366 | `result-track:d346d44ab2cca0a848945c21e618552f9851f5460b4bfe5f137ccf7a58c9f78b` |
| 36 | `theorem` | [Set.Finite.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/set-finite-islindelof.md) | 369 | `result-track:bc418c7f9c6630c8063cd300ebc509de344b3bb97155f3cdf2a87c895055e1b7` |
| 37 | `theorem` | [IsLindelof.countable_of_discrete](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-countable-of-discrete.md) | 372 | `result-track:977b3b2d01916a842404da2a00423a467fe51cc215a7bde55e2f17e006b78acb` |
| 38 | `theorem` | [isLindelof_iff_countable](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iff-countable.md) | 379 | `result-track:75861db7bb60527f7a39d766712efc329c95d7ab03177d0bd0f0672b74d74d39` |
| 39 | `theorem` | [IsLindelof.union](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-union.md) | 382 | `result-track:8718cf45fa1784231565c0e7275741b657b2f7eda90923762b7c3b988173cb5c` |
| 40 | `theorem` | [IsLindelof.insert](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-insert.md) | 385 | `result-track:514972a764b6752a14a7dfe774c69cbc990597a84b94bf448d86e71a6e3dc1dd` |
| 41 | `theorem` | [isLindelof_open_iff_eq_countable_iUnion_of_isTopologicalBasis](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-open-iff-eq-countable-iunion-of-istopologicalbasis.md) | 390 | `result-track:097add2dd60ec825734e4aa8b2d6b4d825c79713e90501e181827b078efb3173` |
| 42 | `def` | [Filter.coLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/filter-colindelof.md) | 417 | `declaration-track:b9c7216a674b4f6a54a67d4ae5d17c69407b6162e7f49577a8c5868958a8a11f` |
| 43 | `theorem` | [hasBasis_coLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/hasbasis-colindelof.md) | 421 | `result-track:e9f3c0166c351b45a28a39ac060eac05fb546228df121a39616937a7458bb63b` |
| 44 | `theorem` | [mem_coLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/mem-colindelof-source-edition-2.md) | 428 | `result-track:f8cda205fc5f7d40162a915a0f5c7cb482b0931accd10b274012a992fd35942c` |
| 45 | `theorem` | [mem_coLindelof'](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/mem-colindelof.md) | 431 | `result-track:02fefcd0d606935abcf013f9f599102ab43b40801c2f0927875acf10718e0723` |
| 46 | `theorem` | [Lindelof Namespaced](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/compl-mem-colindelof.md) | 434 | `result-track:16a7d3b8ce473474e568806cc569c19fc280ccd228fa8d07ca8900d951393d4c` |
| 47 | `theorem` | [coLindelof_le_cofinite](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/colindelof-le-cofinite.md) | 437 | `result-track:e93df8fb82713f06bb5af3dba6065094a12ea43cd1002a7e102bfd42c1ab32b5` |
| 48 | `theorem` | [Tendsto.isLindelof_insert_range_of_coLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/tendsto-islindelof-insert-range-of-colindelof.md) | 440 | `result-track:bfa1117109ba3fa210238867170eef4e2be930c18c6df6d3bd72d58c1cd23c12` |
| 49 | `def` | [Filter.coclosedLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/filter-coclosedlindelof.md) | 458 | `declaration-track:1055375ba545d3260c659f9ff814ab82da12a05ed2994f2abc7ff0c98f22ba83` |
| 50 | `theorem` | [hasBasis_coclosedLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/hasbasis-coclosedlindelof.md) | 462 | `result-track:e427ec77892f2b562fe21f02ad3b233dcfbd130f54a4535e4a16cbd6f7215bae` |
| 51 | `theorem` | [mem_coclosedLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/mem-coclosedlindelof.md) | 470 | `result-track:dd40c44518fab43e3140b495870d8205b0207be2a62d5be6f523d43af1d87638` |
| 52 | `theorem` | [mem_coclosed_Lindelof'](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/mem-coclosed-lindelof.md) | 474 | `result-track:83c8c7d923f49a9e13a589b51075f851b7ccd7267a809df637b67fbdc6e6a32f` |
| 53 | `theorem` | [coLindelof_le_coclosedLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/colindelof-le-coclosedlindelof.md) | 478 | `result-track:6126de0c862c6cafa8281ed883c5417b6e5692838bf887f874654e1bc518f6a1` |
| 54 | `theorem` | [IsLindeof.compl_mem_coclosedLindelof_of_isClosed](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindeof-compl-mem-coclosedlindelof-of-isclosed.md) | 481 | `result-track:921ef40cd142e2f64b84d1e8d9c9e1b40962114135c3dad2ab0390a6ce8c83f0` |
| 55 | `class` | [LindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/lindelofspace.md) | 486 | `declaration-track:82bdf6d9b6cc25e982f041cddc1e309a75a2bc1414283abbead17fa6b4f285b8` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-11.md) | 490 | `declaration-track:ff883e85ac362d322ab29a662ed6e6c0829ddfaff2680ec340f2d3979397225e` |
| 57 | `theorem` | [isLindelof_univ_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-univ-iff.md) | 493 | `result-track:9e31ad02b3727d82cd31ac81a5fcd564327f420a5af4aea9776ae35a7fd5115c` |
| 58 | `theorem` | [isLindelof_univ](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-univ.md) | 496 | `result-track:4acdd986487a933e22dd6b600f45991a962c23bfa648377e2b8f8c2e6cf49cf2` |
| 59 | `theorem` | [cluster_point_of_Lindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/cluster-point-of-lindelof.md) | 499 | `result-track:0a464ada2997db07548ed539b69d9dbd371daf81dd4b054e0898b5f08d32dfde` |
| 60 | `theorem` | [LindelofSpace.elim_nhds_subcover](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/lindelofspace-elim-nhds-subcover.md) | 503 | `result-track:86f03cfd0b7ff9398a57ad576c495b79e44d4eb16ac459f6e5225053d193b056` |
| 61 | `theorem` | [lindelofSpace_of_countable_subfamily_closed](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/lindelofspace-of-countable-subfamily-closed.md) | 509 | `result-track:3e9ccbda46c7e89604d9c80f88023cb74bea1a1e85a76c9874a3314490b84049` |
| 62 | `theorem` | [IsClosed.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/isclosed-islindelof.md) | 515 | `result-track:87828f61b6f2880d3314f0737740d5cdccbcee2acdd070dadf917704b3c70518` |
| 63 | `theorem` | [IsCompact.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/iscompact-islindelof.md) | 519 | `result-track:05aa8d9b2cae9147e42e57c547e2a3064ace1255e54217b048da8b80f196f6b8` |
| 64 | `theorem` | [IsSigmaCompact.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/issigmacompact-islindelof.md) | 523 | `result-track:48f1ab15661d8b3ebe2f6a57a099236844f44502479b20b8ae0b3801cdb593ab` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-7.md) | 532 | `declaration-track:b350a1a36fcfdfd89699d818cf987a14bf49b8cfd52eafb44cc38e67b556d331` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-2.md) | 536 | `declaration-track:5bf35686cce00c011b2d74603b0674479ce65c24916c0821b862c3ed23b6882b` |
| 67 | `class` | [NonLindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/nonlindelofspace.md) | 540 | `declaration-track:8d6ca7040506ac747dc0441081ebb3f33c1249c5042707909b8ffe580558102e` |
| 68 | `lemma` | [nonLindelof_univ](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/nonlindelof-univ.md) | 544 | `result-track:63cfb2dbdce51fae81ece4148d07d2949f5d1d541f5ce43d072c1ddb6d0ecaa6` |
| 69 | `theorem` | [IsLindelof.ne_univ](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-ne-univ.md) | 548 | `result-track:ffff85529e450cf2cb4f2f1a994ffda8eb49e0cb2dabbb9dee58e70c4d517048` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-10.md) | 551 | `declaration-track:f841d92ce1397ca5c31fc31fb4e7bc3614437d9df28d611a63b5edd263738496` |
| 71 | `theorem` | [Filter.coLindelof_eq_bot](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/filter-colindelof-eq-bot.md) | 559 | `result-track:d246a7c36832dcaba7d02064cf5edcb85bf26423f0e4193a39bbb50d3be4e4fc` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-6.md) | 562 | `declaration-track:b079d1a163eaeb7b17926d4490cf746a9241bf17c320e48cbce2e9d75c1a1ca4` |
| 73 | `theorem` | [nonLindelofSpace_of_neBot](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/nonlindelofspace-of-nebot.md) | 565 | `result-track:8aefe33a9a41296e77514561a9c40e5a3ead5d5abb679a5be1c2e51bdf16dcd4` |
| 74 | `theorem` | [Filter.coLindelof_neBot_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/filter-colindelof-nebot-iff.md) | 568 | `result-track:b7450f639a338365f5e08550b6330b9d4e1fc560bf644ad9fadcd0771ee06a54` |
| 75 | `theorem` | [not_LindelofSpace_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/not-lindelofspace-iff.md) | 572 | `result-track:c7c6dc04087f2cc70ef2a875cf4f2045bace9deba2e9e1fe7f8f2c9b8ccd8174` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance.md) | 576 | `declaration-track:542a5ba8bb79578e91d183844f5e8587339f4dd1c85e9b8377b20019e6ffa932` |
| 77 | `theorem` | [countable_of_Lindelof_of_discrete](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/countable-of-lindelof-of-discrete.md) | 579 | `result-track:5ac74f5e3ddc37814bf297f7e369a87afbddc6395884593074c6ac521fd5a0a2` |
| 78 | `theorem` | [countable_cover_nhds_interior](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/countable-cover-nhds-interior.md) | 582 | `result-track:2af8605b0b7e421f65224d0ffd926037cb55ac4cf520b5680d769531816d5a1f` |
| 79 | `theorem` | [countable_cover_nhds](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/countable-cover-nhds.md) | 588 | `result-track:6ebf8e8ce615f6da6aa49fddbad63f2a06e714a0001801c485379d3df329c353` |
| 80 | `theorem` | [Filter.comap_coLindelof_le](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/filter-comap-colindelof-le.md) | 597 | `result-track:58b3cd449444c986f1a17c1e0d7a3ad70d35d42a255d2fe895fc48e325f35312` |
| 81 | `theorem` | [isLindelof_range](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-range.md) | 604 | `result-track:372ef0a601d0d07e3a5ecdd7ce1a6a89da77f5ec5677e9c90d3b815de27777c9` |
| 82 | `theorem` | [isLindelof_diagonal](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-diagonal.md) | 607 | `result-track:cb57e91005f63cbffe2280bfe6e45b364a98877747f2e30a71d0f48032e70901` |
| 83 | `theorem` | [Topology.IsInducing.isLindelof_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isinducing-islindelof-iff.md) | 612 | `result-track:dfa5ed8c5a74bbe94ebdc19db43686a539041befb45fbf96f074ba7887037fdd` |
| 84 | `theorem` | [Topology.IsEmbedding.isLindelof_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isembedding-islindelof-iff.md) | 623 | `result-track:496f01987a364bd795aab9768ed054099396109b3dd97b7789d4c13c0816b3d3` |
| 85 | `theorem` | [Topology.IsInducing.isLindelof_preimage](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isinducing-islindelof-preimage.md) | 630 | `result-track:5d009eb56f45b92094307016a4e32500ccd9c489da6a3a85959566edac8421ee` |
| 86 | `theorem` | [Topology.IsClosedEmbedding.isLindelof_preimage](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isclosedembedding-islindelof-preimage.md) | 639 | `result-track:de2c07222df7f5063d921dd9cca19f724538e8fe9c2c8811489bf00d3cb283a4` |
| 87 | `theorem` | [Topology.IsClosedEmbedding.tendsto_coLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isclosedembedding-tendsto-colindelof.md) | 646 | `result-track:80b798da31278fc10928f0621375f292731360d2f952f168b2af9455ca03136b` |
| 88 | `theorem` | [Subtype.isLindelof_iff](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/subtype-islindelof-iff.md) | 652 | `result-track:5c2c9c666b9efee204dffe6278ea51c67074c24a96a2f9c6dda949f3abcbd072` |
| 89 | `theorem` | [isLindelof_iff_isLindelof_univ](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iff-islindelof-univ.md) | 656 | `result-track:c9c87eeff614a3f14be2296b9d5991b61280941c90d05100c67b244e01a5a700` |
| 90 | `theorem` | [isLindelof_iff_LindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-iff-lindelofspace.md) | 659 | `result-track:23cc80f9e5663e862b3fc1be356ca3ba3b6c67c24d29a707ad69dce65e312ffc` |
| 91 | `lemma` | [IsLindelof.of_coe](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-of-coe.md) | 662 | `result-track:797c40a14893c112efea0b98b960b48f5d9c958c2e6ef7ae7744055d8ba7ac4a` |
| 92 | `theorem` | [IsLindelof.countable](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/islindelof-countable.md) | 664 | `result-track:6d30ede8c61b48b9ade0cfc973a4c020e8d2ef7bc8acd6702adcc3dd93873f61` |
| 93 | `theorem` | [Topology.IsClosedEmbedding.nonLindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isclosedembedding-nonlindelofspace.md) | 668 | `result-track:2fd0ff88cb1b13b3e1d2232129231934b8ca9d01f068a183856091ba58e41f62` |
| 94 | `theorem` | [Topology.IsClosedEmbedding.LindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/topology-isclosedembedding-lindelofspace.md) | 672 | `result-track:bc2e4cc623d9d5e60f55c53e3a9307a30dea12125043af255eae22837babbd37` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-3.md) | 677 | `declaration-track:6a4593b6fb3d8d6b9b2a9c296a4540d6cff25fa08655efaf2fdf91fd876f7507` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-9.md) | 681 | `declaration-track:cdd0cb302f7d39121525bc78e4b4c1799d193c8caa855b6aa7ec91121a84a381` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-8.md) | 686 | `declaration-track:bb7a084c892930ee47dce5e6553e60f942fe36de1f34440193408999d1724bb3` |
| 98 | `instance` | [Quot.LindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/quot-lindelofspace.md) | 692 | `declaration-track:1a27578b4d984a6186193788889d4e3782ecf532cc788c14832617986423d748` |
| 99 | `instance` | [Quotient.LindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/quotient-lindelofspace.md) | 697 | `declaration-track:772a96d19b034a36a298b214b9c9815abcfdf6b2791626774eae1fd4d6fce5bc` |
| 100 | `theorem` | [LindelofSpace.of_continuous_surjective](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/lindelofspace-of-continuous-surjective.md) | 701 | `result-track:13e77aaeb296364d7f35345cb24eace6188258b562c59f69d7f77648e404fd27` |
| 101 | `def` | [IsHereditarilyLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/ishereditarilylindelof.md) | 709 | `declaration-track:f3efb53cd6d05ee64d224f9b3e2c88504d596bf212c2b296428b1eb4eb0df508` |
| 102 | `class` | [HereditarilyLindelofSpace](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/hereditarilylindelofspace.md) | 713 | `declaration-track:7b5f08bd19d0bc02d02692825007e998389a54621d1169d1435c3a1665652cc8` |
| 103 | `lemma` | [IsHereditarilyLindelof.isLindelof_subset](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/ishereditarilylindelof-islindelof-subset.md) | 717 | `result-track:a977ba3f29c619fdd2eeea6e114e9a44c760b71f376649f6389708f0884288b4` |
| 104 | `lemma` | [IsHereditarilyLindelof.isLindelof](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/ishereditarilylindelof-islindelof.md) | 720 | `result-track:74621839fc313e386c6813f64d710f8e69664c46281a17bfa08f039aa0b8ca86` |
| 105 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-4.md) | 723 | `declaration-track:84941ebae99f232560bc14704636194be0caecb6dfb369b9478a31261354ba8d` |
| 106 | `theorem` | [HereditarilyLindelof_LindelofSets](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/hereditarilylindelof-lindelofsets.md) | 727 | `result-track:f6491727aca0f0614175fe1171d145880a4b1a98b19e58525f13cc4a88745f8f` |
| 107 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/instance-source-edition-5.md) | 732 | `declaration-track:afbae8543f7b0456617560ab90468c400a67a428fb3da0bfb54a12ccca146ab2` |
| 108 | `lemma` | [eq_open_union_countable](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/eq-open-union-countable.md) | 742 | `result-track:db2a073b98d1ae3e7e0d152e9c353bf50cb46b4bada2c69734d80dafcdfdaa69` |
| 109 | `instance` | [HereditarilyLindelof.lindelofSpace_subtype](../../../../GeneralTopology/LindelofNamespaced.lean/declarations/hereditarilylindelof-lindelofspace-subtype.md) | 749 | `declaration-track:b89094808bed482e5a86c7752fa05d81e9c6c1be7691b492b412a1f302d119e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4228b6adf6e3c447b8f704285dc51afc404e2f3f43b9aadd78157f167cd56cd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
