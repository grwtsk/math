# Verification target: Legacy Public Utf8 Byte Size

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07241117e21f517ee652003bb0949a4cabc10774",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07241117e21f517ee652003bb0949a4cabc10774`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [utf8ByteSize'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/utf8bytesize.md) | 21 | `declaration-track:de08565f89ff102cc3b6c70afefde03a5549984a4e82a34d2034fc68fde5f83d` |
| 2 | `theorem` | [utf8ByteSize'_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/utf8bytesize-eq.md) | 28 | `result-track:c24537062261f084b1b013127400d32ad94b188c975ddc8410ed99522226d909` |
| 3 | `theorem` | [set_next_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/set-next-add.md) | 42 | `result-track:a35f1d0a3afb40b3841288412bcc9b94dbfabf9082dc9503bb336baf5d0628cc` |
| 4 | `theorem` | [mapAux_lemma](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/mapaux-lemma.md) | 64 | `result-track:2403f1fd06b7feeee17f1cfc6defe377e028acf464f56c383d962afbef7bbef4` |
| 5 | `def` | [Legacy.mapAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-mapaux.md) | 75 | `declaration-track:3383b96fa3baa2e20e7c77bbefa64e2efc7a6def66a83217f83fd303a790aa35` |
| 6 | `def` | [Legacy.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-map.md) | 96 | `declaration-track:996c16e09d574259b7e0082b99b312d6835de72573b13e88d1f0ff82ae58dca6` |
| 7 | `def` | [Legacy.drop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-drop.md) | 113 | `declaration-track:e6a1198b08b9c821e34c0b8ed29fd2f51f41acd1fff6d98d1ded7b977cdfe26f` |
| 8 | `def` | [Legacy.take](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-take.md) | 131 | `declaration-track:fc8eb9b1200526962760dacb69167e63ea8a7e41632f42e194ebebb16207e880` |
| 9 | `def` | [Legacy.takeWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-takewhile.md) | 148 | `declaration-track:be6f8e50284968ee654fdf763186567a57f3b3364188d8424c4ad172ec321799` |
| 10 | `def` | [Legacy.dropWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-dropwhile.md) | 165 | `declaration-track:cf08feca48cfa642f1c526e277dc8f3c2bb3f6a5dc82cdd23f2873a6d50d2572` |
| 11 | `def` | [Legacy.foldlAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldlaux.md) | 175 | `declaration-track:14c41fd89f5309921a6c640f1c9038b39053caf0a64791e63781e18bf451f030` |
| 12 | `def` | [Legacy.foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldl.md) | 196 | `declaration-track:675d921037f5494243c87e4ef45257771788dc3e9f31908b0fe62fc1a7df455b` |
| 13 | `def` | [Legacy.front](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-front.md) | 210 | `declaration-track:2e91949dfae650c99afb8b7a41b16fc6e8852ba4652c1476249ce7d5eb9b9cd7` |
| 14 | `def` | [Legacy.back](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-back.md) | 224 | `declaration-track:e8e9e6fb2c0864e697beff60ca6031712b9961f46d4287d2b9dfecbfeeff604e` |
| 15 | `def` | [Legacy.posOfAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-posofaux.md) | 234 | `declaration-track:68c277ed1e765670476123d37c75ff366268656234c793e9a3a8bbff9f4207ac` |
| 16 | `def` | [Legacy.posOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-posof.md) | 256 | `declaration-track:2e2e53a794d9f956f02395fdad19609d76b6050e995f567213aed36151491026` |
| 17 | `def` | [Legacy.revPosOfAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-revposofaux.md) | 266 | `declaration-track:fee65bc4befc8600561e6e9cc473ef47c7854eb7566e16a20f2d7c9b60b604da` |
| 18 | `def` | [Legacy.revPosOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-revposof.md) | 288 | `declaration-track:c041533a3d265a7accfb049d3d70656b9a7ea3f7c83b31c62b71a14b3c43606c` |
| 19 | `def` | [Legacy.findAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-findaux.md) | 298 | `declaration-track:de8637df6a2a0ed7c4f8d53a620b541df8e6a8f7ba9b2d8070501f969b243d4d` |
| 20 | `def` | [Legacy.find](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-find.md) | 321 | `declaration-track:36b319c4883f3db49bdffec5f64fb4874c816cc14a4cc7e4033e54591ae45c98` |
| 21 | `def` | [Legacy.revFindAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-revfindaux.md) | 331 | `declaration-track:a95659234f8b723a05bcdb7c9bb768f7864d153b9aebd31cf33da16039a39a2e` |
| 22 | `def` | [Legacy.revFind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-revfind.md) | 353 | `declaration-track:167154373726b871ba70070e0c5aa4f8e77a4a315df9f5f25717960284fcb672` |
| 23 | `def` | [Legacy.foldrAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldraux.md) | 363 | `declaration-track:26b101839f69f0a91ab619785441c81b87e0a13ef25661547d5d680b349e86df` |
| 24 | `def` | [Legacy.foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldr-source-edition-2.md) | 387 | `declaration-track:81e16ef23b1090af5ba6c5b2d850472be6e9850b1726b6ed3ab407a91896ed2b` |
| 25 | `def` | [Legacy.anyAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-anyaux.md) | 397 | `declaration-track:b50b23e99b2046428031c4365de6d5a2a35ef5a20207fa10aacbac974beb6a6d` |
| 26 | `def` | [Legacy.any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-any-source-edition-2.md) | 422 | `declaration-track:8514e511030aeedeaea62a4dcc93d9c265bf4c0f1f21d8231e76066fd1c03ee4` |
| 27 | `def` | [Legacy.all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-all-source-edition-2.md) | 439 | `declaration-track:f54ba7a6ad84c9561907b593b480d25de628d38732540984a8fdafcc26f4e3d1` |
| 28 | `def` | [Legacy.contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-contains-source-edition-2.md) | 454 | `declaration-track:d795a068d6e476d56c733250af07aad59efe0cc73fa7b8291e1ada715645f13c` |
| 29 | `def` | [Legacy.foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldl-source-edition-2.md) | 469 | `declaration-track:b71576ac687639e87a7b687cf57afbe1e63df288e42b37dcb5baf8613b65fb13` |
| 30 | `def` | [Legacy.foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-foldr.md) | 481 | `declaration-track:2729066e0cea71182aef09480bb8294789ca36b6e65e99a626ad863f90c1137f` |
| 31 | `def` | [Legacy.any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-any.md) | 494 | `declaration-track:2acca40b001fa1351904effb51975b9687485fe1ca101675bee54c7b3dc2385f` |
| 32 | `def` | [Legacy.all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-all.md) | 507 | `declaration-track:83901d2b06147b5478d43104133fe2b4b2c44f240ef9e17ca420a09b7e469f65` |
| 33 | `def` | [Legacy.contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LegacyPublicUtf8ByteSize.lean/declarations/legacy-contains.md) | 517 | `declaration-track:41e0fd84e1bf684b6ae6cf2c7c9dc5e588352cade4c0a5b79775ff08bc7e9f8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18bd5ac1c257da49197c711bacdccb5b6886580b9ea45e24f4656e712c685d8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
