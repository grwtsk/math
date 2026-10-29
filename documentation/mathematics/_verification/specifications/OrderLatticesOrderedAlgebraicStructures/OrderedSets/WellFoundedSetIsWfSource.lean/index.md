# Verification target: Well Founded Set Is Wf Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b530751c9d01a75bffa274649223d8d29334a9e0",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b530751c9d01a75bffa274649223d8d29334a9e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Sigma.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon.md) | 58 | `declaration-track:43896ca2fa78ce139b2b2269c7f00ae2c3924b57e1a77beb69d4386029b005ab` |
| 2 | `theorem` | [wellFoundedOn_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-empty.md) | 63 | `result-track:ea2aae033cd02a18e070c7d336cb71a5b21e1e3f60b749138cffbe3da7e1c00e` |
| 3 | `theorem` | [wellFoundedOn_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-iff.md) | 75 | `result-track:81a3f2d27126bcbf5a8a5c8f5c9ff5ddcba059ddac1aa0fa1efa102ad49de489` |
| 4 | `theorem` | [wellFoundedOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-univ.md) | 91 | `result-track:5d3d38424a294da6fb289f2ca45e0cee7453c0ae78cf61d1aebf39b068d094b9` |
| 5 | `theorem` | [_root_.WellFounded.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/root-wellfounded-wellfoundedon.md) | 95 | `result-track:eb80e90b0492f9eaf74055fdb554c55da5c81095b99a35679b60c5a6ec5d8d24` |
| 6 | `theorem` | [wellFoundedOn_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-range.md) | 100 | `result-track:af3bd229ce1c555ea4eb83790094b149561cf4ff06be926a91c3a42fbce7023c` |
| 7 | `theorem` | [wellFoundedOn_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-image.md) | 111 | `result-track:d0df87ebe8f2b7adb4e6a662f0e49d06c0c5014fb046b6c25165449ddecbd5a9` |
| 8 | `theorem` | [induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/induction.md) | 117 | `result-track:74493c4086a5e4441ae880a490f9852227544ce7dbc7798b37d4f23917b9e666` |
| 9 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/mono-source-edition-2.md) | 125 | `result-track:896c29561fd578507a72ab4185f86d5cbc7702c8fab276866aa36abfd614989c` |
| 10 | `theorem` | [mono'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/mono.md) | 131 | `result-track:3458903c91e16fda2e37d9e19447b5c9230042f1631e6ba1f534bea65c401747` |
| 11 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/subset.md) | 136 | `result-track:48dd9eff4dc88832a325ab15f17222d20a48333b824e5c07bed88ef9f4f4edab` |
| 12 | `theorem` | [acc_iff_wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/acc-iff-wellfoundedon.md) | 145 | `result-track:3750f0e4412c1fa9bbec409352f7629dd17ba68318df16dabd0405e38a3e30a4` |
| 13 | `instance` | [IsStrictOrder.subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/isstrictorder-subset.md) | 171 | `declaration-track:6b59a00c0f81f9bacf7c0e0c60d801ecb311b530d4edce2b901e415b21bdc5c5` |
| 14 | `theorem` | [wellFoundedOn_iff_no_descending_seq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-iff-no-descending-seq.md) | 176 | `result-track:1ddead811b06395aa4738d6f35dae24a637788120ac77d4e4972f41aae0603ab` |
| 15 | `theorem` | [WellFoundedOn.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-union.md) | 190 | `result-track:110752e6b57c517430a0ec8d423a9e2b2ac9b92fd3c048a3000f4abdb343de54` |
| 16 | `theorem` | [wellFoundedOn_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-union-source-edition-2.md) | 199 | `result-track:df4b1e83893a9cd9bf2d685ce176e7f64b8301338be8d6626c79e60502392856` |
| 17 | `def` | [IsWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-source-edition-2.md) | 215 | `declaration-track:74ddefb916c6d768791b0414f5dd2d60b20c4a8bcc68ae41f7502a27163dfb0e` |
| 18 | `theorem` | [isWf_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-empty.md) | 220 | `result-track:45cd6e7e206258832ad36dfd889dec9d16a11da44fbfb286cfe11c31169f6594` |
| 19 | `theorem` | [isWf_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-univ-iff.md) | 224 | `result-track:8d112f2f9cc3c659d0bd1dc199c6d338fa49208dde3c168fd2674baae52e084a` |
| 20 | `theorem` | [IsWf.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-mono.md) | 228 | `result-track:957ee75d8676e0d673f4073be4915814f19b27b7051a00c95899662f6f597533` |
| 21 | `theorem` | [IsWf.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-union-source-edition-2.md) | 237 | `result-track:cb0de30da7e346afc36614930bcc50624615da699c936e583e84a2d8e547d914` |
| 22 | `theorem` | [isWf_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-union.md) | 240 | `result-track:66b569c28e555e56bc6b5291eaee874d1a9cfb2ce4b7aa306262bcb0989ba913` |
| 23 | `theorem` | [isWf_iff_no_descending_seq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-iff-no-descending-seq.md) | 249 | `result-track:cb1c2075c15db78acac15be980064386ed204346db89dd63a00a04d2b40481f1` |
| 24 | `def` | [PartiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon.md) | 268 | `declaration-track:1d596a485c75178ea36fb5ecc2346e18c2ba9aa91a301256ed5696f14e868f68` |
| 25 | `theorem` | [PartiallyWellOrderedOn.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-mono.md) | 276 | `result-track:bcead5235542b821e187bfebe63305b9b2d160dab160a9c9085e01903947acee` |
| 26 | `theorem` | [partiallyWellOrderedOn_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-empty.md) | 281 | `result-track:d6e1545ff3bbce78a7529177d8b64570a8fe7372b46e51bf9a88d846ea386046` |
| 27 | `theorem` | [PartiallyWellOrderedOn.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-union-source-edition-2.md) | 285 | `result-track:fd74085f813aa3758c5ddaa094898632aa464aa7b6619b8db6e4db0e6a3d37c2` |
| 28 | `theorem` | [partiallyWellOrderedOn_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-union.md) | 296 | `result-track:65c741638e0119f75fecf96992248896dcf1eb75d11a1073a58c220ed48e1a64` |
| 29 | `theorem` | [PartiallyWellOrderedOn.image_of_monotone_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-image-of-monotone-on.md) | 302 | `result-track:27eb4dde230ac4669ed31a3e6d4a12fcbd1002cabc8a4d09612cc1f8facb6e81` |
| 30 | `theorem` | [_root_.IsAntichain.finite_of_partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/root-isantichain-finite-of-partiallywellorderedon.md) | 311 | `result-track:ac199cc4d5cb3781b59429df112b4811c6b38cdb7d422d8d0bdc7edb1a67687c` |
| 31 | `theorem` | [Finite.partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/finite-partiallywellorderedon.md) | 323 | `result-track:271cfaf7d721eaec310e906708ec9749cc8de9c9ab0d0bb6ff8524718aceb558` |
| 32 | `theorem` | [_root_.IsAntichain.partiallyWellOrderedOn_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/root-isantichain-partiallywellorderedon-iff.md) | 329 | `result-track:0de3ea3e1be9ac40132b9f3c12ae99b918ca54ce34a7434d35a884ba1cc987de` |
| 33 | `theorem` | [partiallyWellOrderedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-singleton.md) | 335 | `result-track:9a1fac23810ecd2bd89c40624598df206ca329d3cafb4f0dbbee247940cd1819` |
| 34 | `theorem` | [Subsingleton.partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/subsingleton-partiallywellorderedon.md) | 340 | `result-track:ef9876fc0e988611c0119b1556ec37089872b51f75c389f5db9da038d6a96aab` |
| 35 | `theorem` | [partiallyWellOrderedOn_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-insert-source-edition-2.md) | 344 | `result-track:8e6d2570b1744af50d781377b937c2b03ebaa6c25de3eb5fd1ee6deba38e5087` |
| 36 | `theorem` | [PartiallyWellOrderedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-insert.md) | 350 | `result-track:15f8e5626974f41f72315f7aae19a5ead0f3fa8a9c18ea3582cacb9829b3b163` |
| 37 | `theorem` | [partiallyWellOrderedOn_iff_finite_antichains](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-iff-finite-antichains.md) | 355 | `result-track:9fd745c2384d5039022d472e50a0d883c17f5fa900b47e52df0696aa8988ac1c` |
| 38 | `theorem` | [PartiallyWellOrderedOn.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-exists-monotone-subseq.md) | 377 | `result-track:ad85756680784bc8358aaca41ef1853ad825d7e5d08163c774827990b62c4131` |
| 39 | `theorem` | [partiallyWellOrderedOn_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-iff-exists-monotone-subseq.md) | 388 | `result-track:ff8fa7f6c32d323ca5131cce7914d03d15e9ace3e680c2007755b5fff6a8ae15` |
| 40 | `theorem` | [PartiallyWellOrderedOn.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-prod.md) | 397 | `result-track:fc980b0543b6e7ed00e26e89908e02ff18b0d41f800dd7772046aa31eff0dc1a` |
| 41 | `theorem` | [PartiallyWellOrderedOn.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-wellfoundedon.md) | 408 | `result-track:46317398733d0b7a4c5450e5af483ff9b18f6ff232844eb6dd2b56d4ce4cb038` |
| 42 | `def` | [IsPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-source-edition-2.md) | 430 | `declaration-track:98a9749eb7cf5beb367ff4e05deeb895b987ec6cdda2a1910c56c0ecd8ec975b` |
| 43 | `theorem` | [IsPwo.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-mono.md) | 434 | `result-track:676e1fe0f9be5a4df28f84703ea7c235cfc118bce136b26630ccdcf8bbba5282` |
| 44 | `theorem` | [IsPwo.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-exists-monotone-subseq.md) | 437 | `result-track:da8d0b98761561a7a7d5849434b1e78d231897a82618b699324c3f1381e3df10` |
| 45 | `theorem` | [isPwo_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-iff-exists-monotone-subseq.md) | 442 | `result-track:eb12d4202afea73a7703008132f5b83f6d517f2fa27a21e42b804dc78fdefe17` |
| 46 | `theorem` | [IsPwo.isWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-iswf.md) | 447 | `result-track:0bc43929099c1beb218009202008cc7753d13671d4eca7575cd7b505c9570656` |
| 47 | `theorem` | [IsPwo.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-prod.md) | 451 | `result-track:6cf6ffe3386008ac4340e3012fc735e7ee391a520b4dcae1272a561df38d073a` |
| 48 | `theorem` | [IsPwo.image_of_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-image-of-monotoneon.md) | 455 | `result-track:b1364a32ba0260ebb1ac8292a56149754bc4265e89581d5fb285752782fd7f42` |
| 49 | `theorem` | [IsPwo.image_of_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-image-of-monotone.md) | 460 | `result-track:1af0be4e246a795ee6283ee3ff0b2d7c67a375f594268e1d15ad37a260ffa586` |
| 50 | `theorem` | [IsPwo.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-union-source-edition-2.md) | 464 | `result-track:c7cf7c00c9521928254dd13e0054aeba186fc9dbf723797286df1dae8b2af477` |
| 51 | `theorem` | [isPwo_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-union.md) | 469 | `result-track:5e45fb0edc581bad5af309176867f0444246d5d8fe9924242a3dfc14e4108612` |
| 52 | `theorem` | [Finite.isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/finite-ispwo.md) | 473 | `result-track:41aee2c3ee24148d0d504d04c47a4f5a42825ef4aa285c88d5ecc6875aff5512` |
| 53 | `theorem` | [isPwo_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-of-finite.md) | 476 | `result-track:1ba68df169e6fe833b51610c05b0334cf3af7d348bb9f468bebf81a67c1a9c1f` |
| 54 | `theorem` | [isPwo_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-singleton.md) | 479 | `result-track:efbfd0acac92a65e6fe746a74d0cbd40ed1ef98352b33257c028c306bc51e275` |
| 55 | `theorem` | [isPwo_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-empty.md) | 482 | `result-track:5ecbf50303fe57afb39055ae655df7a4bbe1b255d81d71377cc5cff697b73068` |
| 56 | `theorem` | [Subsingleton.isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/subsingleton-ispwo.md) | 485 | `result-track:da7dbe2d0669e2b96159f33376b39740d091ee1c94e34d84de429eb8e287fa4c` |
| 57 | `theorem` | [isPwo_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-insert.md) | 489 | `result-track:a447c6ee00744f9940a81079405f99b6a49f70068b4cb601da729c85bf404593` |
| 58 | `theorem` | [IsPwo.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-insert-source-edition-2.md) | 493 | `result-track:f29c1e65847d9a9ef4773dc240cfecd069ef2a791a3d553842b7a1fbc7ee9e53` |
| 59 | `theorem` | [Finite.isWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/finite-iswf.md) | 497 | `result-track:117aec69a0c498f865f09b5fdb68250a763d12b40b2aa30ba1becb94f1e6a249` |
| 60 | `theorem` | [isWf_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-singleton.md) | 500 | `result-track:fd19689c845d3fe11a3703fc246a7645a6ec4407314886cbba6f969878b7fb13` |
| 61 | `theorem` | [Subsingleton.isWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/subsingleton-iswf.md) | 503 | `result-track:0f621de97255871678d896452439d4002d701872512882f416c40b33160095c8` |
| 62 | `theorem` | [isWf_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-insert.md) | 507 | `result-track:28efe4ea4d8e1138eae4b6cf42b775867d96a1131eeb3e9b307a3f868f9f340a` |
| 63 | `theorem` | [IsWf.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-insert-source-edition-2.md) | 511 | `result-track:fd55a9af8830ccfae210673a2e634d20ee7f26a0d2f728dede1d47529341c724` |
| 64 | `theorem` | [Finite.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/finite-wellfoundedon.md) | 521 | `result-track:321b028b87c4bd0643b0c87d5996f42de41896b603e968d48fc9dedd3e3b7bcf` |
| 65 | `theorem` | [wellFoundedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-singleton.md) | 527 | `result-track:f955358543740ea5ddbe83a781e50f9db86bd699e9645bf2dca9e5c6cd9f5420` |
| 66 | `theorem` | [Subsingleton.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/subsingleton-wellfoundedon.md) | 531 | `result-track:6280ab389aaf1325943527cbfa4a765adee09b86af4d94d62d66031c95ed7464` |
| 67 | `theorem` | [wellFoundedOn_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-insert.md) | 536 | `result-track:14e37c7d79e6849aebab839976300dcb2e4b5a236faac1c86735e5a9600e8200` |
| 68 | `theorem` | [WellFoundedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-insert-source-edition-2.md) | 540 | `result-track:877b5527ea3d44d78c2c5f6e570b3c2fb4b6aedf305ac3ea00284202f97b92bb` |
| 69 | `theorem` | [IsWf.isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-ispwo.md) | 551 | `result-track:595aedc281b25a91245f2cac04011a1f399ddd52b69534765231356393fa433c` |
| 70 | `theorem` | [isWf_iff_isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-iff-ispwo.md) | 560 | `result-track:6add7f4be9315d713d421a5c20c50c6cfbc035c25a91f5b8fcf5f256be6752a6` |
| 71 | `theorem` | [partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-source-edition-2.md) | 573 | `result-track:b209494b60173325ab061cbafc468f9124b65e28167f1df77d6390405ebfa7d1` |
| 72 | `theorem` | [isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo.md) | 579 | `result-track:4cb326997542d1f06a532fd691384bcd7cbbeb84f4c973ca5430fc631fc1a1a3` |
| 73 | `theorem` | [isWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf.md) | 584 | `result-track:37397beea8ec25cb3c628f7a4b8720e183d89c59c89658f53cb842d361366d6c` |
| 74 | `theorem` | [wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-source-edition-2.md) | 589 | `result-track:b28be348b4ba5074b4913f2b01e3bcfc9bd040b4396876409816bfd9a37a20d0` |
| 75 | `theorem` | [wellFoundedOn_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-sup.md) | 595 | `result-track:58743c45444f13c212d53f2479d04b8ae3af9033682dc96c2c732cd3477c58ab` |
| 76 | `theorem` | [partiallyWellOrderedOn_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-sup.md) | 600 | `result-track:e7fa4c8c382186e6086d74f27f9606bdf8f8045e1b14888202a330630979aea6` |
| 77 | `theorem` | [isWf_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-sup.md) | 605 | `result-track:cdcf324333d9eafee4d382a7bbd52eb473c775b95bfddebe76c4f2ec35d48fc7` |
| 78 | `theorem` | [isPwo_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-sup.md) | 610 | `result-track:e54bc29c833bb5de3596087737a2944a851781aa996255d01ae15bb3559c745d` |
| 79 | `theorem` | [wellFoundedOn_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfoundedon-bunion.md) | 616 | `result-track:d7a19abaae2199f71b6b6bc3ac052a5711e65bc091952f511438862ab182699f` |
| 80 | `theorem` | [partiallyWellOrderedOn_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-bunion.md) | 622 | `result-track:ee8704d931e26d12a2347f3cde6527fbf855f5f7635fbe0e9cb3c66f0285d36f` |
| 81 | `theorem` | [isWf_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-bunion.md) | 628 | `result-track:9758a054f0007bb84d1b7589adaaa6f703007268488ea9708942153566fec337` |
| 82 | `theorem` | [isPwo_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/ispwo-bunion.md) | 634 | `result-track:a4875873ad98116fe1c093d88d7e0543a7142bc7b621baa0dc93b5aebeef2e44` |
| 83 | `def` | [IsWf.min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min.md) | 648 | `declaration-track:b39e88b8ca445231bdcd1d448d04ff330790377fea1c2b254fc51bfa515e9946` |
| 84 | `theorem` | [IsWf.min_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min-mem.md) | 652 | `result-track:954f9093db5d90cc983adefed258bff0a05d76a20d706a0ba4b1271c630a2259` |
| 85 | `theorem` | [IsWf.not_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-not-lt-min.md) | 656 | `result-track:b140a8aa8be70f4f4442229be98c67fb5e24ab5a10268d871252622016043789` |
| 86 | `theorem` | [isWf_min_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min-singleton.md) | 661 | `result-track:4d59e728b271c69c26329802a5f03c34eb966baff4bb4fa277521cecd1eadd81` |
| 87 | `theorem` | [IsWf.min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min-le.md) | 672 | `result-track:4da485bc0e0de2e92003157a98420469ed2592474f6eeb5f33b2a12453a35d21` |
| 88 | `theorem` | [IsWf.le_min_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-le-min-iff.md) | 676 | `result-track:9f76149c7feed62d0c5d3fa442bb8c07e8d73df7eea42877e78e61ad177b1294` |
| 89 | `theorem` | [IsWf.min_le_min_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min-le-min-of-subset.md) | 680 | `result-track:260763ee888545e430643f23042df9992bbfda64188d888174e11ab8346f19a0` |
| 90 | `theorem` | [IsWf.min_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iswf-min-union.md) | 685 | `result-track:6255b582595a07c4c37424ebb0e1d8943fcce245e4addba74cc9be9101dbc5ef` |
| 91 | `def` | [IsBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/isbadseq.md) | 708 | `declaration-track:716e2b5b40788ad2473cdba81259f54fabbc429afedf5c64177dbc03f96f87aa` |
| 92 | `theorem` | [iff_forall_not_isBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iff-forall-not-isbadseq.md) | 712 | `result-track:f4554cccddf0676de3e84581a9c31b917e36bce475d12879f58ee3efad43d135` |
| 93 | `def` | [IsMinBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/isminbadseq.md) | 719 | `declaration-track:74735a39dc1e432f5ce9c70142f1534e009282627b1639eea954cf89fed781c0` |
| 94 | `def` | [minBadSeqOfBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/minbadseqofbadseq.md) | 726 | `declaration-track:2a1c167342d3d9743470b441421dff320b74f48a9b8e23a6c17a94090cd85df0` |
| 95 | `theorem` | [exists_min_bad_of_exists_bad](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/exists-min-bad-of-exists-bad.md) | 738 | `result-track:8590205a3cd7aac5aa7ad6276855bc7757a2503cc5b36c949bcaa971352ba8b7` |
| 96 | `theorem` | [iff_not_exists_isMinBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/iff-not-exists-isminbadseq.md) | 761 | `result-track:ae57d23d1507dc1edd8d81a098082630eddeeaf726daad2db6321aaabac027bc` |
| 97 | `theorem` | [partiallyWellOrderedOn_sublistForall₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/partiallywellorderedon-sublistforall.md) | 774 | `result-track:ac621574babfc88b6685883624ab0c3b70ff3963840048438c6983560606fe77` |
| 98 | `theorem` | [WellFounded.isWf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfounded-iswf.md) | 815 | `result-track:4e0be83641a03a31f99bcc5b8655f089b26df068dd43cd8022af375274897350` |
| 99 | `theorem` | [Pi.isPwo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/pi-ispwo.md) | 825 | `result-track:fb045b7c92e7429acfa79241818a6e0e7944626683e0ed9d513f8dc406f152a2` |
| 100 | `theorem` | [WellFounded.prod_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfounded-prod-lex-of-wellfoundedon-fiber.md) | 849 | `result-track:46869b3dd7c8a6eca8041144127bddd6b2339853f9277123d824b195372c7f8f` |
| 101 | `theorem` | [Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/set-wellfoundedon-prod-lex-of-wellfoundedon-fiber.md) | 861 | `result-track:cfad1da511302d5244d7cf2f84590a9b24f38c1ed36a5b544080b41ff2602194` |
| 102 | `theorem` | [WellFounded.sigma_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/wellfounded-sigma-lex-of-wellfoundedon-fiber.md) | 878 | `result-track:64012ac3aacd5a322f289d43016677e7a44ad098b6ba759caf5c08e42ec68db8` |
| 103 | `theorem` | [Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWfSource.lean/declarations/set-wellfoundedon-sigma-lex-of-wellfoundedon-fiber.md) | 896 | `result-track:5b63e050158eabaa612cb4e06d81b5d4cbdfb68401dd2134a483a95ea5b38708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d36eac2b47a35badf6d75f82a3fdd544a0e8727e1fe002a7412a063ec7f2a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
