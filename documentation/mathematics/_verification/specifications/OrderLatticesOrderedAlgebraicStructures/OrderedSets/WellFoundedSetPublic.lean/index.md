# Verification target: Well Founded Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean.json)

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
| 1 | `def` | [WellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon.md) | 64 | `declaration-track:4b79c720064fb06fb9c03217be064aa0de63510d956beaa093e2a239f840a874` |
| 2 | `theorem` | [wellFoundedOn_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-empty.md) | 68 | `result-track:47336531ee82f39e02e6c9f846d51821cd93cbc37a4f59d0f597a641f75ef2f2` |
| 3 | `theorem` | [wellFoundedOn_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-iff.md) | 79 | `result-track:d8309920e0bf681143043af7f60c016acc6d83dd7d706c378ae1b35a05fd094d` |
| 4 | `theorem` | [wellFoundedOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-univ.md) | 94 | `result-track:5247440770b3dcd76dba4c1ac91778616e8f88a1e93fa0a1532116987efc9648` |
| 5 | `theorem` | [_root_.WellFounded.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/root-wellfounded-wellfoundedon.md) | 97 | `result-track:e96af2478f9d2bdcbe461942d0d8f6c15950cfb70c40b83be364b9d7a9f2d4d9` |
| 6 | `theorem` | [wellFoundedOn_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-range.md) | 101 | `result-track:20b07e8edb98d651072115df12dd6c34397cee9188bb7a3e812bb58aa4e3826f` |
| 7 | `theorem` | [wellFoundedOn_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-image.md) | 111 | `result-track:8a96e3296ab53f4bb35411073afe730a6ee2c6a03f748a9829bedacb00cf8203` |
| 8 | `theorem` | [induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/induction.md) | 116 | `result-track:18d52d6a366f1dda1a539fda1b586db1dca9b63d365ca23384110b496a7837fe` |
| 9 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/mono.md) | 123 | `result-track:473c57285049eca5bb80216c7c7417a804a6fc0078d74b96821be6c709b3dccc` |
| 10 | `theorem` | [mono'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/mono-source-edition-2.md) | 128 | `result-track:6663560266bfdf32c73b364352a38b22a3352f62b09c82e7241b00323c6d3668` |
| 11 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subset.md) | 132 | `result-track:baffce3f4eef86ab273601e5ee48da9bd99d80473654bdf35cf1469dd20223ef` |
| 12 | `theorem` | [acc_iff_wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/acc-iff-wellfoundedon.md) | 140 | `result-track:5406803b604f3bc810a35f050fa53048c0b14e28390d213ef1967df6efe4629d` |
| 13 | `instance` | [IsStrictOrder.subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/isstrictorder-subset.md) | 164 | `declaration-track:ff25bb2c289796abcf239f81e45c49233349b18ef6c8cec34b4f1fde932750b6` |
| 14 | `theorem` | [wellFoundedOn_iff_no_descending_seq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-iff-no-descending-seq.md) | 168 | `result-track:2416e3b15bd8aefebf6df05b344e4434a555047c5b3f62e469e2351baa2db70c` |
| 15 | `theorem` | [WellFoundedOn.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-union-source-edition-2.md) | 181 | `result-track:7efec08cb2c642ec314fd80ab78db9a28386b3dcb731e6a88b4211fc270921c7` |
| 16 | `theorem` | [wellFoundedOn_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-union.md) | 189 | `result-track:3acf20a32df1ac586d48a09b2bafc4730a7e1fb119bcc7c1a8955f21908cdd73` |
| 17 | `def` | [IsWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf.md) | 204 | `declaration-track:1b73bae1d35e981a72e4d44be1bf5f64f5580b52cbb11d535570e2b6ed475f49` |
| 18 | `theorem` | [isWF_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-empty.md) | 208 | `result-track:9cbc7b766991f363dea336015544aa2f2f4cdc23ce646439aa919961088a2ad6` |
| 19 | `theorem` | [IsWF.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-mono.md) | 211 | `result-track:9b85feee056247ad6c482f18420c0fd3efb8c8c5f47e5a1ac235565a1ecdbe29` |
| 20 | `theorem` | [isWF_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-univ-iff.md) | 213 | `result-track:aa462cf41fbb61a54b22088732079ac82fa9a468e0a69adb28964d1d147315ba` |
| 21 | `theorem` | [IsWF.of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-of-wellfoundedlt.md) | 216 | `result-track:18b11f1a18bad7f281888ce253d0e732a7a59c782e66abc0546a1e5e0c9ea25f` |
| 22 | `theorem` | [IsWF.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-union.md) | 225 | `result-track:0cdddbb64251c87d2f86cf81cf013708ec56d2d5ddd6ee94a99fb0fa5c8e6f3c` |
| 23 | `theorem` | [isWF_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-union-source-edition-2.md) | 227 | `result-track:43850434f32f815b47ebc10b07746265abf381910e9adeb38724f1eec9b72fb5` |
| 24 | `theorem` | [isWF_iff_no_descending_seq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-iff-no-descending-seq.md) | 235 | `result-track:e68047ac7716dd04881ed1519ed4689dcadbb95681f3d3a5be705f950a2184c7` |
| 25 | `def` | [PartiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon.md) | 252 | `declaration-track:4f90ec747238447f0ba745361d0a5fd6da30cbe684e06d84a67e9de851eb1498` |
| 26 | `theorem` | [PartiallyWellOrderedOn.exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-exists-lt.md) | 259 | `result-track:d3a9b92d4ab90dbb8b14467f3837ffd91ec578322239805fb493d4682d511fd5` |
| 27 | `theorem` | [partiallyWellOrderedOn_iff_exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-iff-exists-lt.md) | 263 | `result-track:c580afaca33ec659e4ca990b72ae56aadf6ca4cf6aa86c4a30a58fa3ea14ef59` |
| 28 | `theorem` | [partiallyWellOrderedOn_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-univ-iff.md) | 267 | `result-track:528454f0fb3786fb23c3c226e064c3d61868d2007ee0303eeb37d5821dfaaf6b` |
| 29 | `theorem` | [PartiallyWellOrderedOn.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-mono.md) | 270 | `result-track:efd23ac4aae670e697a279008b9a26ae452467bcd02501c97377049b7d70025f` |
| 30 | `theorem` | [partiallyWellOrderedOn_of_wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-of-wellquasiordered.md) | 274 | `result-track:547b2b964b053c08d50d9356c0f79bea8db669cd0b53ba90f3541bd7f284372e` |
| 31 | `theorem` | [partiallyWellOrderedOn_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-empty.md) | 279 | `result-track:019f367e8e21dd506b2296e6512824e4dc93d175adcbe16afafba42d413a15ad` |
| 32 | `theorem` | [PartiallyWellOrderedOn.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-union-source-edition-2.md) | 282 | `result-track:f20a8041f8b7f77b73d6774870b8e4c2b60c668a7064f440a951c84d5c998a45` |
| 33 | `theorem` | [partiallyWellOrderedOn_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-union.md) | 292 | `result-track:abd8ec807c5e7f40e69193f441d12494a7ec8faa3a58adb58b90a4de442b567b` |
| 34 | `theorem` | [PartiallyWellOrderedOn.image_of_monotone_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-image-of-monotone-on.md) | 296 | `result-track:c3e0e14840d0b51a367bd392b5988531ace6157438607ce189fc02056283a745` |
| 35 | `theorem` | [_root_.IsAntichain.finite_of_partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/root-isantichain-finite-of-partiallywellorderedon.md) | 306 | `result-track:6eb9f5f3bfb9c112648a8537681bd1a240c5aae60c0816ff8e7a67d6aef9f54a` |
| 36 | `theorem` | [Finite.partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/finite-partiallywellorderedon.md) | 316 | `result-track:08fe27ba85f64de1d95003b322b67efa953b02c8abaf31765b7cbafa3efc76e3` |
| 37 | `theorem` | [_root_.IsAntichain.partiallyWellOrderedOn_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/root-isantichain-partiallywellorderedon-iff.md) | 319 | `result-track:b3ba74220b11256abefb27508982afc1470af66e2330ea91525188c8980d2773` |
| 38 | `theorem` | [partiallyWellOrderedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-singleton.md) | 324 | `result-track:07247441cc8185a35254a90f3755f286d14c8ab281bab7b28fe10883433fc54c` |
| 39 | `theorem` | [Subsingleton.partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subsingleton-partiallywellorderedon.md) | 328 | `result-track:921862a2d89a5864a0c773a67ce2ae051a8fcd4b51207c470a0dce715ecce169` |
| 40 | `theorem` | [partiallyWellOrderedOn_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-insert.md) | 332 | `result-track:18e47c408e3cef99e986167974679f34086b8fb028296a47c3dea374226d761e` |
| 41 | `theorem` | [PartiallyWellOrderedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-insert-source-edition-2.md) | 337 | `result-track:db9313819d85414974b2cfe47b291b6ece9f6210b1e78dcb623bf594c8961594` |
| 42 | `theorem` | [partiallyWellOrderedOn_iff_finite_antichains](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-iff-finite-antichains.md) | 341 | `result-track:39f821f7656ec74d5f2974418477a3d5d5ec5229c7ff2a9e52512f866f46f79d` |
| 43 | `theorem` | [PartiallyWellOrderedOn.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-exists-monotone-subseq.md) | 366 | `result-track:84ef5f8bc7697caaa55812e7316dacc024456c81fbc4bb4534222ea3b949be24` |
| 44 | `theorem` | [partiallyWellOrderedOn_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-iff-exists-monotone-subseq.md) | 370 | `result-track:aa3f5b07052193b9749a86e4f62ae8a9d7670884ae9429948b5abc88ed429193` |
| 45 | `theorem` | [PartiallyWellOrderedOn.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-prod.md) | 377 | `result-track:61bd9ad764c33e452c587be556029c93796a6a3e69789d8b5f1a71a9da543b3a` |
| 46 | `theorem` | [PartiallyWellOrderedOn.pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-pi.md) | 388 | `result-track:539d1827f3c127736df578c3e4f8aa9300351b9ede233fcf287e6cac23f36ed3` |
| 47 | `theorem` | [PartiallyWellOrderedOn.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-wellfoundedon.md) | 412 | `result-track:2f91ed78e434ac121596564ae47b3d38c1a66f305c4f25fa9c3f93a194812aff` |
| 48 | `def` | [IsPWO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-source-edition-2.md) | 426 | `declaration-track:fae7fd2d33d39e6e27615b5085e3fbe08f5e15ea91112b2d27d3a4605c2a76e3` |
| 49 | `theorem` | [IsPWO.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-mono.md) | 429 | `result-track:9bfe747a28665b1ba333897789ee5535ebc318b6447002862859919d8cab7f6b` |
| 50 | `theorem` | [IsPWO.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-exists-monotone-subseq.md) | 431 | `result-track:a9f9649fcf496abaa6d9eaaaea9aeb7d20a65463057257a4eb5ca3322882b7a7` |
| 51 | `theorem` | [isPWO_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-univ-iff.md) | 435 | `result-track:0ed00d50c69efd3d6a9dbf6ee1b6236b4be81b8957d86457f86f92ac93d8feb2` |
| 52 | `theorem` | [isPWO_of_wellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-of-wellquasiorderedle.md) | 438 | `result-track:8ae30922a27a4d05904b8272e8ad8b3776937465890635ccb8e77cc945a381b8` |
| 53 | `theorem` | [isPWO_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-iff-exists-monotone-subseq.md) | 441 | `result-track:5e6acba155ff49c5d9301fb4cbd6577619e9223df5dbc4f90edc63c5ea86556e` |
| 54 | `theorem` | [IsPWO.isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-iswf.md) | 445 | `result-track:8f82b68e0a8df5fab75f0974ca9727ef3f6882a528e6c859c8f738f90d7a71e9` |
| 55 | `theorem` | [IsPWO.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-prod.md) | 448 | `result-track:9029f6edf1a8c53fc852fe0c1f73b87a7a85661301592fef988599ff57396f02` |
| 56 | `theorem` | [IsPWO.pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-pi.md) | 453 | `result-track:d38e46143d7bf62b988cc55000677558a8327cd6c02dc17b2f48fcefd66cb1d5` |
| 57 | `theorem` | [IsPWO.image_of_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-image-of-monotoneon.md) | 457 | `result-track:2da0cc0752eef6c6ca14637778ca17220ea17ab0da3ce1cd4b5b3519dd8cd58a` |
| 58 | `theorem` | [IsPWO.image_of_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-image-of-monotone.md) | 461 | `result-track:958d54fb2fbff4f804bb06a72d99d33149649c108b721b2b9a1d6440f6df6071` |
| 59 | `theorem` | [IsPWO.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-union.md) | 464 | `result-track:c6009597dabdee102f042845e0323df98372730494a42427fb38c36695258c4e` |
| 60 | `theorem` | [isPWO_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-union-source-edition-2.md) | 468 | `result-track:d88a02855cec0975b6fa9154d33707a5b5e01f9e225cbf4b60b8a5af71c2d66a` |
| 61 | `theorem` | [Finite.isPWO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/finite-ispwo.md) | 471 | `result-track:f1c39791c4e076242c8fbb471108631994726481b80c650a86a5765a5ec0c3f3` |
| 62 | `theorem` | [isPWO_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-of-finite.md) | 473 | `result-track:3187d009f4dfe95e8843495e8f6b25b8c46db7f5814643a7eba17acb5bf5eafe` |
| 63 | `theorem` | [isPWO_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-singleton.md) | 475 | `result-track:519cc18b9d290249743be5299d2c0c4a241b4c72f2c20575de2fc3594a63ec7a` |
| 64 | `theorem` | [isPWO_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-empty.md) | 477 | `result-track:eb695d13ad4799e3dcb468f472c95178cdba92df34db3f3c5ced522524cb8564` |
| 65 | `theorem` | [Subsingleton.isPWO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subsingleton-ispwo.md) | 479 | `result-track:32846087a23c1319e0ae406872a35c8f9260a1ba7137bbb00c2d03f6af695f1b` |
| 66 | `theorem` | [isPWO_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-insert.md) | 482 | `result-track:035fa120210bc797e6698510f32ac0c5a1794a64ce66b6de5342215e4504c935` |
| 67 | `theorem` | [IsPWO.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-insert-source-edition-2.md) | 485 | `result-track:ee22205b3c9863509f61d541b6728f1c3cb77ed005ddc08a187bf6861c337f85` |
| 68 | `theorem` | [Finite.isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/finite-iswf.md) | 488 | `result-track:56cfb6367d5ebfe433f36ebecc7752eb7b3100eeb3dfc48bd4160ee314e971f0` |
| 69 | `theorem` | [isWF_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-singleton.md) | 490 | `result-track:0b3b734b3d87303ad29aea06567aadadee21a8f2c43d9259b1f93bd95ea0c52f` |
| 70 | `theorem` | [Subsingleton.isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subsingleton-iswf.md) | 492 | `result-track:efdaa0e0dc217389d194f8026ca685885f182a14156c10c76bf8b25d904ef87a` |
| 71 | `theorem` | [isWF_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-insert-source-edition-2.md) | 495 | `result-track:ee71f6979a90979bbf7cd65d323549360b0b69c0d1b882b4e2251c40a5de696e` |
| 72 | `theorem` | [IsWF.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-insert.md) | 498 | `result-track:662218d387b8557024ad10ef48ad393a235757ccd05d3d6426ae1d4acfd9c333` |
| 73 | `theorem` | [IsPWO.exists_le_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-exists-le-minimal.md) | 501 | `result-track:67c1ff42fb27123220eecec7b5fcea00525eac6ef676c4c4052875a4f83b4f0f` |
| 74 | `theorem` | [IsPWO.exists_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-exists-minimal.md) | 511 | `result-track:d9f0700de1b5e5b47fae78a157f7e9e0dc82b51ce346524fc22a956cba036c76` |
| 75 | `theorem` | [IsPWO.exists_minimalFor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-exists-minimalfor.md) | 517 | `result-track:3eba0a1d17d9ae970f402aeeb823b80939fea1052ed2c402e3062581ae8dd30c` |
| 76 | `theorem` | [Finite.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/finite-wellfoundedon.md) | 529 | `result-track:7a9f2d5d55398f54fc3773c94299e857592071835fca205a14e98dc7653a26a8` |
| 77 | `theorem` | [wellFoundedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-singleton.md) | 534 | `result-track:1e0bd78b56b0bc0e0b59dafb5554bf59b2b0002713ca2ea94e17d40c7a1b8c25` |
| 78 | `theorem` | [Subsingleton.wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subsingleton-wellfoundedon.md) | 537 | `result-track:a89e86cd0a9944f6977a1fbdfdb4cdacc2970da3739e2f244fc520f9ab7aefdd` |
| 79 | `theorem` | [wellFoundedOn_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-insert-source-edition-2.md) | 541 | `result-track:87c7aaaf8d166b236b373cd9980fd40ee22280bb3827bd712da4092d75f849e3` |
| 80 | `theorem` | [wellFoundedOn_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-sdiff-singleton-source-edition-2.md) | 545 | `result-track:c887fe3ae3a4df5dff1ceabed44df8301fe6fc62c42ad28981d9e5cfbdc5e2b7` |
| 81 | `theorem` | [WellFoundedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-insert.md) | 549 | `result-track:24a0d8c97cb93b77497e2b98563019738f0cedb0c194fc35b9826cdc7b4b41f6` |
| 82 | `theorem` | [WellFoundedOn.sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-sdiff-singleton.md) | 553 | `result-track:b4d8c5ca6e34acf16532fb6b210624c8e90c417a52c9264c746412a3d2ad63b9` |
| 83 | `lemma` | [WellFoundedOn.mapsTo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-mapsto.md) | 557 | `result-track:f32c1ce57d3b45458872e49b869714184a97c7756168c652e35641e02f544ece` |
| 84 | `theorem` | [WellFoundedOn.exists_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-exists-minimal.md) | 563 | `result-track:eeae0b3dc484f60b846724edb7abc91caac27df26611232c5fe66a030fb384eb` |
| 85 | `theorem` | [isPWO_iff_isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-iff-iswf.md) | 575 | `result-track:f2593d47ba40247171c4157df76d94faa64d5ea61d984f3113b0ebec2a7732a5` |
| 86 | `lemma` | [IsPWO.of_linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-of-linearorder.md) | 585 | `result-track:1e7c07ebc53f08b897c8d8e84f0aff9f8708136df867550cf44dd17f5499f600` |
| 87 | `theorem` | [partiallyWellOrderedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-source-edition-2.md) | 597 | `result-track:8061fbdcbad60a21288529f79508ba05bcfb451e86fc2bde038bba4c143bf74b` |
| 88 | `theorem` | [isPWO](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo.md) | 602 | `result-track:a27d7fa571d8f7d1cb7efa30099d8444ac85912e9e1ceca6fce0d36de394d2e4` |
| 89 | `theorem` | [isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-source-edition-2.md) | 606 | `result-track:3982fc17eda40e6f1a616bd57bb73b091fe274e30ea4693295f85ec6805b43a3` |
| 90 | `theorem` | [wellFoundedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-source-edition-2.md) | 610 | `result-track:edac50d9dcdc32df3726915462f64de93cb4b947ec6de8c97c8ed5c8019654dc` |
| 91 | `theorem` | [wellFoundedOn_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-sup.md) | 615 | `result-track:a74fbe1c47ebcf55d65ec109816fed94933bb297091fecb8ba56558d2f2e9d16` |
| 92 | `theorem` | [partiallyWellOrderedOn_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-sup.md) | 619 | `result-track:1f8afe8106d7efead70ef5aa17587688789da1e8a56c0644001c1ce04eb4aa6b` |
| 93 | `theorem` | [isWF_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-sup.md) | 623 | `result-track:6307e35eadb076c29f6aa8bacba0c8fd07465a0ccde20d053563cc5af9cb0a57` |
| 94 | `theorem` | [isPWO_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-sup.md) | 627 | `result-track:13a1d7244fabf24cac7270897aaa61d0cd6f0cf8283f2c4d402b0de33fbc20d9` |
| 95 | `theorem` | [wellFoundedOn_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfoundedon-bunion.md) | 632 | `result-track:c45b0ee92a71ea8c9575f9be96ddfaa0d91696a5f34f101a6b7a81561709d590` |
| 96 | `theorem` | [partiallyWellOrderedOn_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-bunion.md) | 637 | `result-track:9ed4c008cc2a5dc4869e77d0c5a6fbd7a176374e3edfb2d0563a4d532626030a` |
| 97 | `theorem` | [isWF_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-bunion.md) | 642 | `result-track:7b0c3031ae30dfc2372f79eb38554e28ccee30a6f39b17ae31e43defc0b1da4b` |
| 98 | `theorem` | [isPWO_bUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/ispwo-bunion.md) | 647 | `result-track:9354b682cd6af2680560143f0c4d1eafb4fbfad4e17fe34c74c1075379f01464` |
| 99 | `def` | [IsWF.min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min.md) | 660 | `declaration-track:7d117b128fff25a98f14c3065ff4ec8518ccadfacc3991e9cd0b8879e202bd63` |
| 100 | `theorem` | [IsWF.min_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-mem.md) | 663 | `result-track:3ec992ce13294543cfb17b7afd12f1d6d8ada3f2f0c666735913ade86f2bc62d` |
| 101 | `theorem` | [IsWF.not_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-not-lt-min.md) | 666 | `result-track:fc6f20df400e22bce23ab6780bb95f5b3cda9babe19e2f018783696778510d99` |
| 102 | `theorem` | [IsWF.min_of_subset_not_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-of-subset-not-lt-min.md) | 669 | `result-track:c9f0ded2b1dbb258388fcac69d71438d674f05b9288f2d0c5ca0da5582132d3c` |
| 103 | `theorem` | [isWF_min_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-singleton.md) | 674 | `result-track:a6560eaf90ba984e99d7623888d74252b857eac83d849310c13304d74e77d1d8` |
| 104 | `theorem` | [IsWF.min_eq_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-eq-of-lt.md) | 678 | `result-track:1b3fd08e06cc397f818b5a9a8de90ebcba115022c7f7b52c22aadac09911d2e1` |
| 105 | `theorem` | [IsWF.min_eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-eq-of-le.md) | 690 | `result-track:273cec5db46b9ed05ed60db8aea63d33065b5bbbc47309f8cae34e115b9f3ee4` |
| 106 | `theorem` | [IsWF.min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-le.md) | 701 | `result-track:7dcf6165ef900d5811dabdcd4b85b7f89b5f1476079948772cc38c764a4b3779` |
| 107 | `theorem` | [IsWF.le_min_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-le-min-iff.md) | 704 | `result-track:eddc187af67fa3d791e74a859df3635c60535a322fc73cf11ddea84ce40db62d` |
| 108 | `theorem` | [IsWF.min_le_min_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-le-min-of-subset.md) | 707 | `result-track:3c6149bd602caf402e46642ea1b0bb39b34928f0928f5edb6902352dba75b6cb` |
| 109 | `theorem` | [IsWF.min_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iswf-min-union.md) | 711 | `result-track:0115d5ed004a4dc43b0ab6c6ea16840d65bb177d20ac15b76f1b89e3bcb7f03d` |
| 110 | `theorem` | [BddBelow.wellFoundedOn_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/bddbelow-wellfoundedon-lt.md) | 730 | `result-track:65cf3641e9ce97cc26c0b144f1060600778b73ca13c7e6fa6c59757deaf51848` |
| 111 | `theorem` | [BddAbove.wellFoundedOn_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/bddabove-wellfoundedon-gt.md) | 738 | `result-track:7a8a6587a2a12d2bfef7befd1e96dc89a1ecaad5c98a360a2090477aecfe823f` |
| 112 | `theorem` | [BddBelow.isWF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/bddbelow-iswf.md) | 741 | `result-track:19c0a6f1d69b68d87691c67f2e578eaa9fedc4275c10ec6f4781704833d96a71` |
| 113 | `theorem` | [bddAbove_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/bddabove-preimage.md) | 750 | `result-track:ab7210f3ed252a3c55248253834946a8652dddc92fb29035efb2b0bc63e70f78` |
| 114 | `theorem` | [exists_notMem_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/exists-notmem-of-gt.md) | 762 | `result-track:9ae6b7ca2a329fb8df092ed7b5a1ab4cbb5e8bcf0db925dbc0ccb4e7e86b261b` |
| 115 | `def` | [IsBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/isbadseq.md) | 774 | `declaration-track:5922c2327eed6e077817c43ff28b807d9ed1a35edf7228f5e7923bffd3e4605f` |
| 116 | `theorem` | [iff_forall_not_isBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iff-forall-not-isbadseq.md) | 777 | `result-track:57520caea989c22d89317715bff20f43f3e6c180db2bfa905379e999c8181f21` |
| 117 | `def` | [IsMinBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/isminbadseq.md) | 784 | `declaration-track:3dd950a69bf1e9718686a9c4ec4f5f58bc616989d8980e6a7e14dff5eb86b0e0` |
| 118 | `def` | [minBadSeqOfBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/minbadseqofbadseq.md) | 790 | `declaration-track:dd715a70c6a3b237e2ce859383741cd9e9f40c7d6d82338204f5d5d2aceb36e1` |
| 119 | `theorem` | [exists_min_bad_of_exists_bad](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/exists-min-bad-of-exists-bad.md) | 801 | `result-track:add765297f3803bdbb5199d40d3c30619579cece22dc9f43307db7ca3ba35e79` |
| 120 | `theorem` | [iff_not_exists_isMinBadSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/iff-not-exists-isminbadseq.md) | 824 | `result-track:937518473da820b14822985e06c3283bf7412576df07abd1e739b2a98f10a1f0` |
| 121 | `theorem` | [partiallyWellOrderedOn_sublistForall₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/partiallywellorderedon-sublistforall.md) | 836 | `result-track:f6d376e4bc27e79337ab24ed70b7bd40922ccba7714ab69c56d36dfdaeaa4efd` |
| 122 | `theorem` | [subsetProdLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/subsetprodlex.md) | 872 | `result-track:58e1972ca8e29ee868b7f870739583a475525bf4baf98e9e22c8751449ca9aa7` |
| 123 | `theorem` | [imageProdLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/imageprodlex.md) | 903 | `result-track:643e74b70d4f705f6a6035d3d9d51e422d00d242f0e661e735463ff722a329a1` |
| 124 | `theorem` | [fiberProdLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/fiberprodlex.md) | 907 | `result-track:05fc7a085844b013bc128992c597e0de305ea3918a5b3db030bd4ecef9d962b4` |
| 125 | `theorem` | [ProdLex_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/prodlex-iff.md) | 921 | `result-track:3431a2bbcbb15e4d7bbb4f0bbb657559743b034316f37c713e16666af03c437f` |
| 126 | `theorem` | [WellFounded.prod_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfounded-prod-lex-of-wellfoundedon-fiber.md) | 933 | `result-track:9c1390bde5a1a1108ced9e38836a057da445905f30c649e92b508761f5ffb1c2` |
| 127 | `theorem` | [Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/set-wellfoundedon-prod-lex-of-wellfoundedon-fiber.md) | 944 | `result-track:c54da60a726b2872ab36512e720f37d4ab57449d08c98970cda5a27ce33ee876` |
| 128 | `theorem` | [WellFounded.sigma_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/wellfounded-sigma-lex-of-wellfoundedon-fiber.md) | 958 | `result-track:d8054d2fb16c86f4b4d6c1679d9378e6b71cd47932fc2d460d488023403e8c3c` |
| 129 | `theorem` | [Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetPublic.lean/declarations/set-wellfoundedon-sigma-lex-of-wellfoundedon-fiber.md) | 972 | `result-track:a097d85c6ae30103a9a0ac23a587ada869f250a39e26535065459f0f14586473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6666da14bb69bdccbbb58ea543a8d47d7490a72490eafdcca721a1aa63949d94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
