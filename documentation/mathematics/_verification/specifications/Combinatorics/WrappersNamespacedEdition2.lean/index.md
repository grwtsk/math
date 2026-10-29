# Verification target: Wrappers Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c90ab9be21ba33b599b1c4ffbd3bdb50765531de",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/WrappersNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/WrappersNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c90ab9be21ba33b599b1c4ffbd3bdb50765531de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Prod` — import line 19; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Labelled` — import line 20; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Profiles` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-source-edition-3.md) | 35 | `declaration-track:85a982f1d3139e707498bd340497a72ae9b41d0475da09e991fcffd9dc3cebd4` |
| 2 | `theorem` | [erase_data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/erase-data.md) | 43 | `result-track:357403b6a9a7616b3afce9b6602e1a36bd81328aae80546417c971efa5b1f1b5` |
| 3 | `theorem` | [data_rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-rename.md) | 46 | `result-track:f35a06d3052c748673129edca88be1c178b198091d8d1cabc5df0414724fcdc4` |
| 4 | `theorem` | [data_subst](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-subst.md) | 50 | `result-track:a7170e551219fbce83cdb3e8b2fb742ac5792546b1b4c3a1a5824b882d64830a` |
| 5 | `theorem` | [data_instantiate](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-instantiate.md) | 58 | `result-track:d24dab64aaf7f7219496b2201744a4d95ea1bf4d45ce7cee8aacb128e2bdae52` |
| 6 | `theorem` | [data_allData](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-alldata.md) | 64 | `result-track:8b589dd5633753d206a1a8c8059940c15266f6b727c95d033efe551161206115` |
| 7 | `theorem` | [data_wellModed](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-wellmoded.md) | 72 | `result-track:7642f34e30e5b6e7d30fb290c9041dde89ed3e96e1f5c1db622e7f1a0cc38475` |
| 8 | `def` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-source-edition-4.md) | 88 | `declaration-track:9d805c7c5d0431fa405f1ba867fe33a79a8ec75b67e07eaca51b390a09fbfdea` |
| 9 | `def` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam-source-edition-3.md) | 90 | `declaration-track:c5558bd79c0d3bdce6161eb55d3203b847f8a19c66f493a1121fdc59a4fb570c` |
| 10 | `theorem` | [arrow_rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-rename.md) | 92 | `result-track:4fe441b4b87925ffad387dba1c5398ee1a6f5091b5107de9cbe652671a85a744` |
| 11 | `theorem` | [arrow_subst](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-subst.md) | 97 | `result-track:38b73fa8f5789953489321ce12803f90e8b6dded50306c10c721bf8a78646886` |
| 12 | `theorem` | [constLam_rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam-rename.md) | 102 | `result-track:8dece6b7e6136711f8ca91da004ca781ff9f7776ccd8d11439c6fdce900eb347` |
| 13 | `theorem` | [constLam_subst](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam-subst.md) | 107 | `result-track:db3915cd652a67387be4051c70f06baab04c301acf9257c4e94d2d0073064c23` |
| 14 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/instantiate-raise-source-edition-2.md) | 112 | `result-track:923505e6d1779e64265b674ffff2cd95257715849b96cf61829d23efa10691af` |
| 15 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-source-edition-2.md) | 118 | `result-track:6b722bc4fdcf1257aed0d0c9fe943599eff7d6f9ab95828e804fee5e8227f8ea` |
| 16 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data.md) | 132 | `result-track:5a1c9f8d7feb1fd94531012a3aba3edf13ad54aa62d61511cabd4b0d21e921f0` |
| 17 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-source-edition-5.md) | 142 | `result-track:bfb7e381dfd40c1c695c797cb64225073698880cb13e93a754b809fe5a05282a` |
| 18 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow.md) | 157 | `result-track:1a8d0002fc385c55a3d2a5edd0877aba98b217e94d64bed929bd6c5d98972222` |
| 19 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam-source-edition-4.md) | 161 | `result-track:f1831a728488281d254a7a19dda29c709aaad4f0fcdb2374117dc4faf14a315c` |
| 20 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-arrow-source-edition-2.md) | 166 | `result-track:ddddade5421bdec60afd2890dfaa52d8fd9b04ce562b562ae6f5fd3bf32e5344` |
| 21 | `theorem` | [data_subst_congr](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-subst-congr.md) | 174 | `result-track:2d29fc7cfc9cb0d07cf713aac7811496e715e449fec06ea8015accd370724dc9` |
| 22 | `theorem` | [proof_instantiate_irrelevant](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/proof-instantiate-irrelevant.md) | 202 | `result-track:e28e1f89631e958062ad4cb4a7537d2f4c328e9bf9f67f2ca74efd1b057bffaa` |
| 23 | `theorem` | [raise](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/raise-source-edition-2.md) | 211 | `result-track:b1b7f33b28d16487cd94488a74af0c58c3f84b5b389a82dbac5999e1f3a9795c` |
| 24 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-source-edition-5.md) | 215 | `result-track:ed5e9f05bbd4353532f985ca52c9185ff2329f152329c5f97291d75b87cd58a1` |
| 25 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam.md) | 218 | `result-track:407d5ca6d489f800d7959c67622eb66644ffae61cef2741685bcffeaf4fe9bc2` |
| 26 | `def` | [SortedAt](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/sortedat.md) | 224 | `declaration-track:59b9a65ec2d9b2b9927489112d49293bbb414b9bdca87fe59745e3304f78e11f` |
| 27 | `theorem` | [mono](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/mono.md) | 229 | `result-track:9b56767be38fc3e0b1f8d0a0648f85d3cece7389920378b96ece6b43a5b9f3eb` |
| 28 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-source-edition-2.md) | 232 | `result-track:1dcdfb293cacaea74273e8468a33cd380713bc25b758094c045d25b3845d5700` |
| 29 | `theorem` | [raise](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/raise.md) | 238 | `result-track:6f28ac96038d4a7893d5bee8ff2afaaaa808ea42b5a3e85be30b2b75759b0984` |
| 30 | `theorem` | [positive_cancel](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/positive-cancel.md) | 244 | `result-track:587ab89df34f913ffbaec643ea5f42d5aa3db21ca4ce65befc57c80ee70793a6` |
| 31 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-right-source-edition-2.md) | 260 | `result-track:df57b0c5215850daf1c8d1372ee81dcaa59c594e1b2961a03ce8b3a91842f810` |
| 32 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-left-source-edition-3.md) | 265 | `result-track:e71099430c939928e1d4f9c647bf144b6c33fa84865533335a5682df7df85e22` |
| 33 | `theorem` | [append](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append.md) | 279 | `result-track:95af776cc9785efed7d5142774720959c351300ab97dda52a5f7e63dab2d528c` |
| 34 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-right-source-edition-3.md) | 291 | `result-track:feef872ea4765760ba534bbafebff0076cba4bc8b1e98f688b84e0c3a2928a95` |
| 35 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-left.md) | 297 | `result-track:42a5711e050cd9ff3711de06acb5c67942cbb0adcf911d8a6b39fbb08084b207` |
| 36 | `def` | [HasWitness](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/haswitness.md) | 305 | `declaration-track:94e9c7d244abc1b2564511296f76da758a6f1c9c7b3dad863d5f019d844fa354` |
| 37 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-left-source-edition-2.md) | 310 | `result-track:8e85f513ec61dc94ae2ff5dd978aa1ac125d398972657a448bb17a947792c7aa` |
| 38 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/append-right.md) | 314 | `result-track:356c9280931338f4a84a0ef9a957a398b7e6b822100e39133b864699f26ac402` |
| 39 | `theorem` | [witness](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/witness.md) | 321 | `result-track:38288c3c89228b332c63f28275d02028bc03af86ab12fa3daab74d7a72eddd0e` |
| 40 | `theorem` | [finite_witnesses](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/finite-witnesses.md) | 330 | `result-track:aad2e823b2e5013afb9497504d9c5baa6dc67d7bc120a48dc793386a53d26854` |
| 41 | `structure` | [DataWitnessContext](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/datawitnesscontext.md) | 348 | `declaration-track:c61264a0173838cad05a904c4c5a17c86211871c1eb9e0503ac15ce58fb8a384` |
| 42 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/data-source-edition-4.md) | 358 | `result-track:9ac1adca90ef92d547228797d1380e5c6d42f2f3018e74c3fa914fa2cf83ef85` |
| 43 | `def` | [DataWitnessContext.ofFeasible](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/datawitnesscontext-offeasible.md) | 365 | `declaration-track:809de133a17a29364db40c3105f2f127c67efa07844cdc37ebb016c56e2b010b` |
| 44 | `theorem` | [negative_even_suffix](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/negative-even-suffix.md) | 389 | `result-track:81cf415a4519becf2bb27d1546e7c8a161f898cc521a06f035698f6be6aa1d9e` |
| 45 | `theorem` | [restrict](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/restrict.md) | 403 | `result-track:42bd6e6c36036b874b4a35cd9020aec9f1b1fd4cf8e523f62426ba83ca3aa17b` |
| 46 | `theorem` | [all_parities](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/all-parities.md) | 419 | `result-track:18c7f6a02e90ca12a32bd84ebd7d1f8c3e2214065e8f1392091824e0d84d9183` |
| 47 | `theorem` | [restrict_path](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/restrict-path.md) | 428 | `result-track:fb048fba667f68893e9eb11039d321e40addc80be53a8a1667c436f13e2d9d1d` |
| 48 | `theorem` | [return_parity](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/return-parity.md) | 434 | `result-track:8b5cc7be833cdf666f7063e1b75df3fcd46315ef0f50d25de0acdbcc1114219b` |
| 49 | `theorem` | [negative_routes](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/negative-routes.md) | 443 | `result-track:a3543cd6e89fe033ebd078ccb64645fd289f6fb509506d822e08b1825c032d72` |
| 50 | `theorem` | [channel_paths](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/channel-paths.md) | 479 | `result-track:73251aa1ef9071fad234d0a23ceb8b149bd21d7404610e6363c1ff6707e04719` |
| 51 | `structure` | [Embedding](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/embedding.md) | 524 | `declaration-track:83012cf0c1de77ac8092b73c0fe72ca930b486e6d2b95814d3599f0bb7b38b35` |
| 52 | `def` | [refl](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/refl-source-edition-3.md) | 538 | `declaration-track:5f41ac9b5720c104d04a711f18dc51233e76afe2a747d36ca1d6c9fa5ae44f08` |
| 53 | `theorem` | [typing](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/typing.md) | 545 | `result-track:28c17d58323de7e6b0697d6545c0d82515d6b7cd86e74b4f012877c55832fb78` |
| 54 | `theorem` | [moded](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/moded.md) | 549 | `result-track:44c9d58fc019234c72c71b17c14b751d00c888d9b9d8c2555841032742cda551` |
| 55 | `def` | [comp](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/comp.md) | 554 | `declaration-track:2c901172a83c9cb91f800b431e9fc8a76e49fb92e84fe9e6e0791b10c125af42` |
| 56 | `def` | [cons](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/cons.md) | 564 | `declaration-track:4b88ddca00e717b66a16de92e77ffbf5f32c1cbf7d0cb7986649c16585125b4f` |
| 57 | `def` | [lift](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/lift.md) | 573 | `declaration-track:1796dba53c2c9f3c7b58a8a816e6022d3e3395e04bca1b93ff138b1d44110d5d` |
| 58 | `theorem` | [proof_cons](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/proof-cons.md) | 592 | `result-track:3bd127ae501d6be733f90b8abe3c58f002c45040bf80ccde31399ba6c8a4ff05` |
| 59 | `theorem` | [AllData.wellModed](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/alldata-wellmoded.md) | 605 | `result-track:2a523a8600b3b758fa82d9c002cbbc2ef51797261fac772f38abda3d171cfb72` |
| 60 | `theorem` | [Target.arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/target-arrow.md) | 619 | `result-track:f483f5fc28ec61a0a42c1150b93e2bdbcb9ae2cc3854184ef12d8c4f9aad2834` |
| 61 | `structure` | [WitnessFamily](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/witnessfamily.md) | 628 | `declaration-track:9f032db1bf599a65890e5291ac77bea3bab7995cc0259e072f6ef334b9133c70` |
| 62 | `def` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-7.md) | 646 | `declaration-track:e764ecd64c42da551e05dbc5631734d6595d1acf56e8c661d82388a8f39c1c5b` |
| 63 | `theorem` | [exists_family](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/exists-family.md) | 657 | `result-track:88e5046e5c5f4bff09c7d94b4fc8d8b72047818f59b549153cf75f41289fb464` |
| 64 | `def` | [Transfer](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/transfer.md) | 681 | `declaration-track:6249b9ffbd4a6ed3d55a1124e2a3f3911c1d68c2ba1c5661b1069a8b1054ff0e` |
| 65 | `theorem` | [refl](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/refl-source-edition-2.md) | 689 | `result-track:5e23014deba658dfb80d3f23a59e4b81e70f6b36ad1b56f7c30509c6cb4af7cf` |
| 66 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-4.md) | 693 | `result-track:8b44db155fcf7e7c4678727f7692b2f1b0bcc35a2e1c7633b3633ce13520c8a7` |
| 67 | `theorem` | [trans](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/trans.md) | 701 | `result-track:5b7d972c1447686cab889e2fe0ed5c76eed4ea0bbd6e061f4c23ff92a0ff3df4` |
| 68 | `theorem` | [positive](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/positive.md) | 709 | `result-track:62571966932cf3800b7f8f29992dfce555e278c0b2a01f370a6f130604575d62` |
| 69 | `theorem` | [converter](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/converter.md) | 722 | `result-track:319007c6eb0e7a97aaf7e02250d3632415050afa6b53c208504a37f7de407890` |
| 70 | `def` | [Proves](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/proves.md) | 741 | `declaration-track:eb29ab9583dba82e66dbe04c6a22c00a106fe6abb15ffada00ce869658712068` |
| 71 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-6.md) | 747 | `result-track:e58997ac9b0fa3069e0c582c05582e41607c4d14ab3e6d655bddf05303d84189` |
| 72 | `theorem` | [of_var](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/of-var.md) | 752 | `result-track:b5d5549787e27aee2fa99739bde367ea95a3d75c850309ac05e99e070a150c3d` |
| 73 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-arrow.md) | 756 | `result-track:838f8eb0e3930ac20fffd14b705f13e2a5d11664309865bbee1ee10bc2e858f4` |
| 74 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/constlam-source-edition-2.md) | 762 | `result-track:895c1c530d71461f26b26243a91db2ca0d976bfb1ed15e9a15193a3f72f0ff0f` |
| 75 | `theorem` | [prove](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/prove.md) | 773 | `result-track:122ba0efa059927056c6e8023eeb285f2b7e4403f8ac196b97c822dd1ad46eb2` |
| 76 | `theorem` | [of_proves](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/of-proves.md) | 778 | `result-track:bad135cdd950c5f905a4474d3b96bf0e8b583ca647b5df2ee4682baa4a598502` |
| 77 | `theorem` | [abstract](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/abstract.md) | 783 | `result-track:bea9a25ca092a28032d7c78beb5b53a83360b89dbcf4966c30c4c4ac577821e0` |
| 78 | `theorem` | [apply_to](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-to.md) | 791 | `result-track:edaa60db524a8b2252714e33c8bd6fd37a79eb504deaad4e1fb178657ad1c17c` |
| 79 | `theorem` | [apply_to_proof](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-to-proof.md) | 804 | `result-track:07c9f773450726a66a343ea0f6d99fd47a7030e993f0f784f6fc2296e27c8ade` |
| 80 | `theorem` | [edge_profiles](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/edge-profiles.md) | 816 | `result-track:f2c7a3c76e7e9319fd453f294c876a15c07306a27c29d0164dbe0216d5c63b4e` |
| 81 | `def` | [Carries](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/carries.md) | 826 | `declaration-track:e6ebaed723d965d6f125d8535bef560f12576ebe13c4fdc877b5294b36d1b06a` |
| 82 | `theorem` | [carry_edge](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/carry-edge.md) | 837 | `result-track:67d727b610bdb9edb1d14faa43e4e4d17d755bc0afefe199559298896618fcf7` |
| 83 | `theorem` | [carry_path](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/carry-path.md) | 881 | `result-track:2427bc071e1a6350a0f92b9daa28ddad5e86fccf4ef769c67fa687fed84f3cb0` |
| 84 | `theorem` | [terminal_transfer](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/terminal-transfer.md) | 903 | `result-track:5364cecbd9a89e77e8805dbadb478841c061ceb3200e276d50c402ba42668edf` |
| 85 | `def` | [TerminalProfile](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/terminalprofile.md) | 933 | `declaration-track:9442b06594e8ab75863059aa3c34ce4e80b4be3bb64d89612b29009f97a0df68` |
| 86 | `theorem` | [TerminalProfile.feasible](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/terminalprofile-feasible.md) | 937 | `result-track:a335fa4936cc1d072e8b816a46e8cab42ecf6fc2fd53f5dabccaf2b610b7a147` |
| 87 | `theorem` | [finite_terminal_network](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/finite-terminal-network.md) | 949 | `result-track:891790fe4e82c984b376182e87900e237bea6779fedaad240cd149b3e7df4341` |
| 88 | `theorem` | [terminal_network](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/terminal-network.md) | 974 | `result-track:0f85268f1c04e5e01794f709f5e100abde976c8c4cd0cd958ee000abd7a6e216` |
| 89 | `def` | [ProofParity](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/proofparity.md) | 990 | `declaration-track:ad84bb8bf0ec4a0a6037bc7bb0fe8345c9ff61a742313e4f7d971cee0637f4bf` |
| 90 | `theorem` | [refl](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/refl.md) | 1011 | `result-track:5056c214144ef056047e5373500ea4cd5b4e419f820dbfe1301eb9f2da19c7d4` |
| 91 | `theorem` | [positive](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/positive-source-edition-2.md) | 1017 | `result-track:e752e7e4d1564de8c201c48249db5a2770463a24cd2ae33ac9f745c7c84d1fe4` |
| 92 | `theorem` | [negative](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/negative.md) | 1048 | `result-track:715d1a0fee22d8aa63c2099789a770e708d7a187a0aae26983c4edf43aaf7541` |
| 93 | `def` | [Continuation](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/continuation.md) | 1091 | `declaration-track:683b41c44ecce0d57f369e96452e9984caf20a63c13c6dabe9581a46072dda19` |
| 94 | `def` | [StableExtraction](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/stableextraction.md) | 1101 | `declaration-track:2fe009620b490c7e5df1b901e8e77c3bafac952b752ab3462ef81aa3289f7ef2` |
| 95 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename.md) | 1110 | `result-track:13e63a4f6109aa5223562ad2fc593e845cd1caf0033c76e62a63c1fdfad1dc7f` |
| 96 | `theorem` | [project_pi](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/project-pi.md) | 1124 | `result-track:1c40b33a85a17f9e0b77eaf41cdac25a2d7fda24e416b7bedfbad6684cef9ca1` |
| 97 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-2.md) | 1150 | `result-track:1530742538572e8bf13da73c1aaee5071a55a1b7fb77af27e45f56a1343e0de8` |
| 98 | `theorem` | [terminal](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/terminal.md) | 1158 | `result-track:5bcb10a616e3a00a6ffcb32014ceb231225a88b7bc32eff10b574a4b4469dab4` |
| 99 | `theorem` | [product](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/product.md) | 1170 | `result-track:66f3f631625cc7dc443bab8dbe45b8c8148ccc4e2da9ed5be6f8ddd6a8e9f903` |
| 100 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/arrow-source-edition-3.md) | 1211 | `result-track:26c0bfbbb021c3b35af216809c21e6b983f93b7e33ba873bb94059c6366b83f7` |
| 101 | `theorem` | [into](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/into.md) | 1224 | `result-track:58c5eae9ab1cab023542aad30665e958d13d2333097181214df7a34016f7c37b` |
| 102 | `theorem` | [down](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/down.md) | 1231 | `result-track:306f169d1d5c8c327fc3273ce55f9741f8225b3f962681edf05f6c3724ca0486` |
| 103 | `inductive` | [ProofWrapper](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/proofwrapper.md) | 1248 | `declaration-track:9d1252a295c5e5122d5ed475f1425beecf1cc4bdc7d46a1fdc945f427b94e059` |
| 104 | `def` | [apply](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply.md) | 1257 | `declaration-track:f680a98b0eb6752c53ce04f67530c5bf5ad85a6428e12e82454e3e0b0a076fe6` |
| 105 | `def` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-3.md) | 1264 | `declaration-track:66d5c41ad154366d4521ce6a54bb3dc65a30ebedf85190f6c6e9aed6fe0d5ec1` |
| 106 | `def` | [subst](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/subst.md) | 1271 | `declaration-track:2b62b2a1574071f3b74c278ff1cff14a8cc383d2922bd4812c8110b9962c087e` |
| 107 | `theorem` | [apply_rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-rename.md) | 1277 | `result-track:34a3e9dd5ba9d583ac61ba3f12c6b66006fa531df5f952a9117da42f382dc071` |
| 108 | `theorem` | [apply_subst](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/apply-subst.md) | 1282 | `result-track:34f6eaf6d8e3bf6703ae7cc05b77049821ccbc69e396ed1ffd0d787691cd6360` |
| 109 | `def` | [containsNegative](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/containsnegative.md) | 1288 | `declaration-track:aa3c426321e59d2e9fb0fe77543ecd1d5c84214252593683601ec3c152bddcce` |
| 110 | `theorem` | [rename_id](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-id.md) | 1294 | `result-track:2d3bdfca8adbcac3de5cf0653f44688f67a77844ede5182e4b15601ea0e97b69` |
| 111 | `theorem` | [rename_comp](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-comp.md) | 1298 | `result-track:ef93d3fab3134c806aedb714f823e9119fa0bdc2c70ecf121b2f8eaf401b05d7` |
| 112 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/instantiate-raise.md) | 1303 | `result-track:4c4ebce8d37828ac0acd632621a9f13e585fa6e772720ff9a0309643bfe218bb` |
| 113 | `inductive` | [Formed](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/formed.md) | 1310 | `declaration-track:3190fd3b9a78a1dba4da59d2963840169661e7d2f0fde472098775e8fc82ead4` |
| 114 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/rename-source-edition-5.md) | 1324 | `result-track:c08827fdcce68d6aa7d86733c5b991ce1a5a7c775ae62cff6aa307abc4bda5d0` |
| 115 | `theorem` | [edge](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/edge.md) | 1334 | `result-track:82a69d7deb3b06af0aa27b87560c6119c914e7b95bce92052cb6b7b2996b6fe2` |
| 116 | `theorem` | [path](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/path.md) | 1342 | `result-track:91268eea9886a0261ed1f9fcf27806ca1c2b62c39f77365510ab6343f7d58c15` |
| 117 | `theorem` | [sound](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/sound.md) | 1354 | `result-track:a88eed5b859a8cd5c71eb070d9470414402341d6798e989e9f8aaa78d7be226d` |
| 118 | `theorem` | [stable](../../../../Combinatorics/WrappersNamespacedEdition2.lean/declarations/stable.md) | 1383 | `result-track:e613770bf34ee32bc6dfbe96dc0da5849a5e5cdc03011018e0e95a71874fbe38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e0a5e4f2183ff040b90277dbe1eb9319c9668988b9ff963aed32e66e11395de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Wrappers/Variantf654f69ae44de6015b175699f5db81df1ed3d10a8e6534d68816827c2bf550b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
