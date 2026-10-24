# Verification target: GRWTSK.Topology.GeneralTopology.Support.Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f48cf836ec24a68fecf934c50fbd911d75023df9`.

Source path: `GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/multsupport--81743a8202bd0d54d024d20c.md) | 45 | `declaration-track:81743a8202bd0d54d024d20c718a12a85e97e6260032aebcb6c183b9941e4744` |
| 2 | `theorem` | [subset_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/subset-multsupport--ab0bb2fed9782b116a61746a.md) | 48 | `result-track:ab0bb2fed9782b116a61746a90754687608051e204ba31b13a049f4aac4a58c7` |
| 3 | `theorem` | [isClosed_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/isclosed-multsupport--0a19c83524d3eaff919827db.md) | 52 | `result-track:0a19c83524d3eaff919827db54652536c40996fd088fcdfab776ce1d9ade3842` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/multsupport-eq-empty-iff--f86e1024df03fb5aa01b46b4.md) | 56 | `result-track:f86e1024df03fb5aa01b46b4b72a3462ecf87567f0915d92db96dcb3520b496c` |
| 5 | `theorem` | [image_eq_one_of_notMem_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/image-eq-one-of-notmem-multsupport--0da048ad948e4e088cee7402.md) | 60 | `result-track:0da048ad948e4e088cee7402cd81a51e9c4d49ebec3e51dd2d62287313d45caa` |
| 6 | `theorem` | [range_subset_insert_image_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/range-subset-insert-image-multsupport--1decc2619b063f95882e9c89.md) | 70 | `result-track:1decc2619b063f95882e9c89feaaad696fd42f88a7cccd5fbf898edc3880c1fa` |
| 7 | `theorem` | [range_eq_image_mulTSupport_or](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/range-eq-image-multsupport-or--913b0aba36a2751357da9c5d.md) | 76 | `result-track:913b0aba36a2751357da9c5dc7f7cdd7e7832bef78a6c57fd953c9c92b8c693d` |
| 8 | `theorem` | [tsupport_mul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/tsupport-mul-subset-left--541c18b915cfb9f59b8cdfb4.md) | 80 | `result-track:541c18b915cfb9f59b8cdfb408639bd14dba9ba1fabbc1f8ec01f2b5390d5a50` |
| 9 | `theorem` | [tsupport_mul_subset_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/tsupport-mul-subset-right--bb84d6c4b35ac42fbc05db44.md) | 84 | `result-track:bb84d6c4b35ac42fbc05db44ae4b3fdb3cdaf9cb9cfeb65ebcfda2e29e149f5c` |
| 10 | `theorem` | [tsupport_smul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/tsupport-smul-subset-left--3c2f4e476417acc85b102c44.md) | 90 | `result-track:3c2f4e476417acc85b102c444d62c33673919f27bd5b0a0137e2f8ef2aab7e42` |
| 11 | `theorem` | [tsupport_smul_subset_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/tsupport-smul-subset-right--521aa34e04bafb5653e245ac.md) | 94 | `result-track:521aa34e04bafb5653e245acdc3bd25aabe35ff878245bbf0dcc0366235cf16d` |
| 12 | `theorem` | [mulTSupport_mul](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/multsupport-mul--7f0831120581cfd6e6e0613d.md) | 99 | `result-track:7f0831120581cfd6e6e0613dcd3b41496c35219fc75fbba31025daeed1ced487` |
| 13 | `theorem` | [notMem_mulTSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/notmem-multsupport-iff-eventuallyeq--ae4d92520c92a2603c0ac209.md) | 112 | `result-track:ae4d92520c92a2603c0ac209368b40ad05c82460055407a371f2146c9ca6667e` |
| 14 | `theorem` | [continuous_of_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/continuous-of-multsupport--5df811874afaf419bdf2ac24.md) | 123 | `result-track:5df811874afaf419bdf2ac24cf99327bdb2755453d975da2b4198f674c4c5623` |
| 15 | `lemma` | [ContinuousOn.continuous_of_mulTSupport_subset](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/continuouson-continuous-of-multsupport-subset--4186d96dbb666ea8b7ca9f04.md) | 129 | `result-track:4186d96dbb666ea8b7ca9f047362079c736bd3b6c153874ead3279d5479273de` |
| 16 | `def` | [HasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport--4a5e74ba2fde40af3c3688ae.md) | 148 | `declaration-track:4a5e74ba2fde40af3c3688ae1edf28f849c544995a6fca990f83db868d1091fb` |
| 17 | `theorem` | [hasCompactMulSupport_def](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-def--4ed9c6a6fba66d176d82507e.md) | 152 | `result-track:4ed9c6a6fba66d176d82507e4a2bc722bfd078b73711096136609f0a85cda0ac` |
| 18 | `theorem` | [exists_compact_iff_hasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/exists-compact-iff-hascompactmulsupport--42a082cf80b829ed2dda85d7.md) | 156 | `result-track:42a082cf80b829ed2dda85d755373975c23bd1508f1292054effce68e8d12872` |
| 19 | `theorem` | [intro](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/intro--ed94e1776e7c473a48c87950.md) | 163 | `result-track:ed94e1776e7c473a48c87950216c1f2f71b05c92d1dcb3789b63f55909544d39` |
| 20 | `theorem` | [intro'](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/intro--cebf6c1e57af68bfbac169eb.md) | 168 | `result-track:cebf6c1e57af68bfbac169ebdb6446a35a1ad32846106bcdd435fcbafae7f6d9` |
| 21 | `theorem` | [of_mulSupport_subset_isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/of-mulsupport-subset-iscompact--2e3a61fcaf130137edfb38dc.md) | 176 | `result-track:2e3a61fcaf130137edfb38dc428228ef587e902bfa0c8249842d1c61d270111f` |
| 22 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/iscompact--3160c82f30be36429fb8ea4f.md) | 181 | `result-track:3160c82f30be36429fb8ea4fed93fb0b953779f1cd672adfa307d9169865413d` |
| 23 | `theorem` | [_root_.hasCompactMulSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/root-hascompactmulsupport-iff-eventuallyeq--8a3632dba59af16db43efd2a.md) | 185 | `result-track:8a3632dba59af16db43efd2a8f851f9f146916b8fe971e76b267bb16a778c161` |
| 24 | `theorem` | [_root_.isCompact_range_of_mulSupport_subset_isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/root-iscompact-range-of-mulsupport-subset-iscompact--66317a0259cc19822d3d6353.md) | 190 | `result-track:66317a0259cc19822d3d6353326f9f749c79719d86fc5cb41b5d4c7dd4f7e9b4` |
| 25 | `theorem` | [isCompact_range](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/iscompact-range--47fc46ec6076e0eef25c65ab.md) | 197 | `result-track:47fc46ec6076e0eef25c65ab09bdf83842e8cc8c051c4cc901bdfea25262f455` |
| 26 | `theorem` | [mono'](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/mono--c671c81374e6267905997770.md) | 202 | `result-track:c671c81374e6267905997770d3bdaf4b30ac31b22520c09deb2f0bca29d0de8b` |
| 27 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/mono--0d382eb2d2792ae7a59b0779.md) | 207 | `result-track:0d382eb2d2792ae7a59b077954aaf7c8f4fad3c0abb4dd531992fb6b82208994` |
| 28 | `theorem` | [comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/comp-left--2084c1459905fd7820a7c96c.md) | 212 | `result-track:2084c1459905fd7820a7c96cb2fa02c933e568f6d00a7ee2cdb6f9fb5c488476` |
| 29 | `theorem` | [_root_.hasCompactMulSupport_comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/root-hascompactmulsupport-comp-left--03fd3aa05490d54766115d66.md) | 217 | `result-track:03fd3aa05490d54766115d669ae4bc5ec60e09f62becb69c8bebb9ea5869edfa` |
| 30 | `theorem` | [comp_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/comp-isclosedembedding--c9cd1506df82008629e9c980.md) | 222 | `result-track:c9cd1506df82008629e9c980b7ebdc059a37b87b7ad447aa7b4289dc66af242b` |
| 31 | `theorem` | [comp₂_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/comp-left--5611d2bb590e9bce8037955a.md) | 230 | `result-track:5611d2bb590e9bce8037955a5a7e49334e6f10d1f4a76ed3bf44d982794ef59c` |
| 32 | `lemma` | [isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/iscompact-preimage--a2f6dbfc0826f2511865b749.md) | 238 | `result-track:a2f6dbfc0826f2511865b749e584e563daeeab4f6fe944591f60a376a8f92ed0` |
| 33 | `theorem` | [mulTSupport_extend_one_subset](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/multsupport-extend-one-subset--c285097a3216e0fdb8817896.md) | 252 | `result-track:c285097a3216e0fdb88178964fb619fe853d1958dd89cf215edd64c64f0ab1c7` |
| 34 | `theorem` | [extend_one](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/extend-one--3864148cfd6b159dc18ff2e7.md) | 258 | `result-track:3864148cfd6b159dc18ff2e71feff7afdbcfe9f9b06425e86fb4b95a7206a38d` |
| 35 | `theorem` | [mulTSupport_extend_one](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/multsupport-extend-one--2941b52d1cafeeadedf311cf.md) | 263 | `result-track:2941b52d1cafeeadedf311cf292b27102efba33b4aefa4b5dd63ffcf26775637` |
| 36 | `theorem` | [continuous_extend_one](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/continuous-extend-one--697a17bd8ecaa88e45193747.md) | 272 | `result-track:697a17bd8ecaa88e45193747b84a5ac32522df3f81cb20dc8565d525655000c9` |
| 37 | `theorem` | [is_one_at_infty](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/is-one-at-infty--3d0821e7a988355a3bd3f309.md) | 283 | `result-track:3d0821e7a988355a3bd3f3098d37e161534754be5bc63565592331929cd27566` |
| 38 | `theorem` | [HasCompactMulSupport.of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-of-compactspace--889217a4dee17a1a0abfd89c.md) | 301 | `result-track:889217a4dee17a1a0abfd89c8fcebc5a776a2528f37f4f0895fe5125d9c5b8ba` |
| 39 | `theorem` | [HasCompactMulSupport.mul](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-mul--a7bf0e5a865d1705c6283c58.md) | 318 | `result-track:a7bf0e5a865d1705c6283c581ca33b43fc7e51a65d323a9370d2b17b02610aba` |
| 40 | `lemma` | [HasCompactMulSupport.one](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-one--6cd3a6b488a851da48262808.md) | 322 | `result-track:6cd3a6b488a851da4826280839188ef51c87bbff8238ea0ca072b03f9aa57e98` |
| 41 | `lemma` | [HasCompactMulSupport.inv'](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-inv--4a227a78089d934a2723df63.md) | 331 | `result-track:4a227a78089d934a2723df63053223b861c6141988b7bce3ce94476cb1d68aa1` |
| 42 | `theorem` | [HasCompactSupport.smul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactsupport-smul-left--a2cc36d42255166803bf5b55.md) | 343 | `result-track:a2cc36d42255166803bf5b5553d23a94f76410cb76628213b32ce12abdc852f1` |
| 43 | `theorem` | [HasCompactSupport.smul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactsupport-smul-right--b198e6e26474e7c75d1bb9f8.md) | 354 | `result-track:b198e6e26474e7c75d1bb9f845f9c968c9ba86948cca8bea3b433c8ddabe9277` |
| 44 | `theorem` | [HasCompactSupport.mul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactsupport-mul-right--b582165d8323226196ba097d.md) | 365 | `result-track:b582165d8323226196ba097d23f35a57b66627f1d7c8e8f232f71a54007d80f2` |
| 45 | `theorem` | [HasCompactSupport.mul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactsupport-mul-left--ee018eea7e07a25c6b22b4ab.md) | 369 | `result-track:ee018eea7e07a25c6b22b4aba3ac26f1ecb573ea27e6a4fa0c396667f85279b5` |
| 46 | `theorem` | [HasCompactSupport.abs](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactsupport-abs--956a657bda6a0b80b6f08b3d.md) | 379 | `result-track:956a657bda6a0b80b6f08b3d787dea03e6fdeeadcae487c361a77f3d2787eec5` |
| 47 | `theorem` | [LocallyFinite.exists_finset_nhds_mulSupport_subset](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/locallyfinite-exists-finset-nhds-mulsupport-subset--aaa3c12a3c811fbf9ed20947.md) | 398 | `result-track:aaa3c12a3c811fbf9ed2094714caec0495574aac523e4f8f995d6d4b861036c7` |
| 48 | `theorem` | [locallyFinite_mulSupport_iff](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/locallyfinite-mulsupport-iff--9d4f6af865386ee91cac80ea.md) | 437 | `result-track:9d4f6af865386ee91cac80ea64b5929ab22ab33f32e87fa25212cbcd0beae229` |
| 49 | `theorem` | [LocallyFinite.smul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/locallyfinite-smul-left--51409a937da10fb8884f9936.md) | 441 | `result-track:51409a937da10fb8884f993665ae5a00d0980aed72ae332989c1b48e33d77258` |
| 50 | `theorem` | [LocallyFinite.smul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/locallyfinite-smul-right--5aadc1590be33cc6583052da.md) | 446 | `result-track:5aadc1590be33cc6583052dafbc8dbbb68e21075b79e62f28f2a334f0d9484e9` |
| 51 | `theorem` | [HasCompactMulSupport.comp_homeomorph](../../../../../mathematics/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/declarations/hascompactmulsupport-comp-homeomorph--2afa0821af69ab662e78ced1.md) | 458 | `result-track:2afa0821af69ab662e78ced1d58ececd069bc93dba58de48d9a05fc0776fdde0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
