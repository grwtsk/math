# Verification target: Wrappers Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485763032ad6a3b75cbf9cb4f97a27fc9327745e",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/WrappersEdition1.lean/index.md) · [Full source](../../../../Combinatorics/WrappersEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485763032ad6a3b75cbf9cb4f97a27fc9327745e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Labelled` — import line 15; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Profiles` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [data](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-source-edition-2.md) | 27 | `declaration-track:5b3c355b107346b08705e5581b3a640e65cc7d68cac993cb2de5a7323e33b727` |
| 2 | `theorem` | [erase_data](../../../../Combinatorics/WrappersEdition1.lean/declarations/erase-data.md) | 35 | `result-track:55fcb6125d5f8316817dc5543d334c5cc47fb8983b0576f4998ca6be163da9bc` |
| 3 | `theorem` | [data_rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-rename.md) | 38 | `result-track:2852b96e207493d9d87b0999e996550a70f285897fa51be5255df40b1730722a` |
| 4 | `theorem` | [data_subst](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-subst.md) | 42 | `result-track:0b2a3952d59348d5492846b7520ed5826b039432b666e186b8adb0bf4aeebed6` |
| 5 | `theorem` | [data_instantiate](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-instantiate.md) | 50 | `result-track:f67eaf17ba7a4f9d8ea099b660b7ae5a1ab5728fcef8c549400087ee7eb4585f` |
| 6 | `theorem` | [data_allData](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-alldata.md) | 56 | `result-track:3b021b6d8be06ba2bda1c89d532de0308fe36bd3e5becf1798b78e5ea06d0e2c` |
| 7 | `theorem` | [data_wellModed](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-wellmoded.md) | 64 | `result-track:459f96deb2061dcece6e0b57119aa8d488fe6822abbbb83dbc4ee9c7b59f4a1c` |
| 8 | `def` | [arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-source-edition-4.md) | 80 | `declaration-track:af6dc542839800ae924d2fda45864f608552cbaa334d8122fd2e9f5c960a48fd` |
| 9 | `def` | [constLam](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam.md) | 82 | `declaration-track:704008a6b32c79503df429d889d2a9f6adb1670b83cc6e70752ac73de28140fb` |
| 10 | `theorem` | [arrow_rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-rename.md) | 84 | `result-track:6253dbb622fd19ac5a7a725bb2ce42f8af894378bb31a08c359dc13e34d002f1` |
| 11 | `theorem` | [arrow_subst](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-subst.md) | 89 | `result-track:5e0c82241ee40b99dd4cb62cb0d04c074432f6fea0891136a0232a1cd48fb36d` |
| 12 | `theorem` | [constLam_rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam-rename.md) | 94 | `result-track:be1e46cd3166c721fe072e1d18ffb9aa1cc07e45f7675c9aa3fc441788fdea03` |
| 13 | `theorem` | [constLam_subst](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam-subst.md) | 99 | `result-track:8ae746974645fe4effd04576583c3e85cf91f533845f4cc3bed1c7f64631107d` |
| 14 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersEdition1.lean/declarations/instantiate-raise.md) | 104 | `result-track:8711038665b624704634043e49ad00e85f3271f38af160f58c76498fae26b18d` |
| 15 | `theorem` | [data](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-source-edition-3.md) | 110 | `result-track:604b57461715ef1dccaed6a4156d8730787037f860912e8fbc2a9c2a4460ff8e` |
| 16 | `theorem` | [data](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-source-edition-4.md) | 124 | `result-track:ecceb9ea9d818f1da7f2c32b620a3a03030f8785f50b9c756ea5f775d8bbdb36` |
| 17 | `theorem` | [data](../../../../Combinatorics/WrappersEdition1.lean/declarations/data.md) | 134 | `result-track:5a8978a15e023b6aa767461b30cfe8be80d09ab431b4b524da33ae612a655879` |
| 18 | `theorem` | [arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow.md) | 149 | `result-track:02b39acf4c77411471b3a7e78da9ab58487c900ec03f20215e9ef5ca9b33594d` |
| 19 | `theorem` | [constLam](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam-source-edition-2.md) | 153 | `result-track:87a3519f27af74a0e7ef0bbaf232c725471a80af38b19b4a14434e2d1b08155f` |
| 20 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-arrow-source-edition-2.md) | 158 | `result-track:815fbe0d42ed9085058a7f613b41c9f29f0cc66b0926936dcb242a497e0310a2` |
| 21 | `theorem` | [data_subst_congr](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-subst-congr.md) | 166 | `result-track:79e57c5f964f2a5746b70ac5386f4762180cda09f2e5ebe6d73b0853df40a4a1` |
| 22 | `theorem` | [proof_instantiate_irrelevant](../../../../Combinatorics/WrappersEdition1.lean/declarations/proof-instantiate-irrelevant.md) | 194 | `result-track:7081c16b515e7ef067c9e09c7737e42dbb3e58414c42f8c2a09d8f16baa634a5` |
| 23 | `theorem` | [raise](../../../../Combinatorics/WrappersEdition1.lean/declarations/raise.md) | 203 | `result-track:b17e0a390ef699e4962e443e8f1f6070be5d47666f8262a1cae9f121677c7f41` |
| 24 | `theorem` | [arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-source-edition-2.md) | 207 | `result-track:1158fd24b992fd46635051531c7c56afede8101baa1ef33d7e8e5f5f763fda82` |
| 25 | `theorem` | [constLam](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam-source-edition-3.md) | 210 | `result-track:8ad1c79111400ff74c581330029b36e8ee763809b61c0af286cc8617614abce3` |
| 26 | `def` | [SortedAt](../../../../Combinatorics/WrappersEdition1.lean/declarations/sortedat.md) | 216 | `declaration-track:e282e704f18a00eb0c773863b29e2bfabc932e0788f18d2e2fd431e7eb7e8b64` |
| 27 | `theorem` | [mono](../../../../Combinatorics/WrappersEdition1.lean/declarations/mono.md) | 221 | `result-track:1dd25d0601f5b5b8b98bff75d059a8b717499ed74365ad84beb0e18f60f820af` |
| 28 | `theorem` | [arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-source-edition-5.md) | 224 | `result-track:f5e13c83c8267396b80b5db1df679f077bcfcd7a13ef81fe33773ef0b73cb3ce` |
| 29 | `theorem` | [raise](../../../../Combinatorics/WrappersEdition1.lean/declarations/raise-source-edition-2.md) | 230 | `result-track:fcfb4e5ecfc4859ae4e2c58006e7de2b4f52e29113fc484af2d76990e96e3732` |
| 30 | `theorem` | [positive_cancel](../../../../Combinatorics/WrappersEdition1.lean/declarations/positive-cancel.md) | 236 | `result-track:34c7cebead31b2d7ba9d9ef372a0570729db6207ef8505a710a8045087aae9c5` |
| 31 | `theorem` | [append_right](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-right-source-edition-2.md) | 252 | `result-track:35123bb0c78e3d940d585d078010662998edeea29ddf3fe361db3e0a98e5b651` |
| 32 | `theorem` | [append_left](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-left-source-edition-2.md) | 257 | `result-track:a461a2dbef82a9069531a103db6c30d6ddae4969b3d13a82a3cb088778fb1288` |
| 33 | `theorem` | [append](../../../../Combinatorics/WrappersEdition1.lean/declarations/append.md) | 271 | `result-track:f3a736fe6706d5f89762e0db9e00eda2ff2c50c20c568f2a692c5a6b15d140ca` |
| 34 | `theorem` | [append_right](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-right-source-edition-3.md) | 283 | `result-track:47a09efa3b560856cde27b0fa926c5b053bd5bf363f21b746214e60cfe3abf19` |
| 35 | `theorem` | [append_left](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-left.md) | 289 | `result-track:07f0d2a508aa8612f3e047866f0f3dbb0af97eaa46284bd402dbf9e6346dcb25` |
| 36 | `def` | [HasWitness](../../../../Combinatorics/WrappersEdition1.lean/declarations/haswitness.md) | 297 | `declaration-track:b168f713d26fd4e4773d3f705a5d20bae7d28c4c77b7c06c3f764d67adcd262d` |
| 37 | `theorem` | [append_left](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-left-source-edition-3.md) | 302 | `result-track:ca5732b6fe6c159d1274c27097112f907f8900b7d4b68b2ede09b3cd44ceca67` |
| 38 | `theorem` | [append_right](../../../../Combinatorics/WrappersEdition1.lean/declarations/append-right.md) | 306 | `result-track:24b1352ce6a30a6aeeb7ba5d6452790e10aef34610d637102e89e11da1b57b29` |
| 39 | `theorem` | [witness](../../../../Combinatorics/WrappersEdition1.lean/declarations/witness.md) | 313 | `result-track:31bb3a30dd75b5b41760d483d40f474b0309d767170dbaefa43b485955e0cdfd` |
| 40 | `theorem` | [finite_witnesses](../../../../Combinatorics/WrappersEdition1.lean/declarations/finite-witnesses.md) | 322 | `result-track:7ceaefd0e4a5884d9229f06d4f2efd459887cd3c4b257861c48f20cc05ffc144` |
| 41 | `structure` | [DataWitnessContext](../../../../Combinatorics/WrappersEdition1.lean/declarations/datawitnesscontext.md) | 340 | `declaration-track:f3b9d397ecda4c9b47a79ad40d49c8ced32784f0880d6ddbbb2b5af3a52004b9` |
| 42 | `theorem` | [data](../../../../Combinatorics/WrappersEdition1.lean/declarations/data-source-edition-5.md) | 350 | `result-track:ee75c5be81b0c601605f7ede0719b17c91b0bc727efd5a1599a5e2c52e95adc1` |
| 43 | `def` | [DataWitnessContext.ofFeasible](../../../../Combinatorics/WrappersEdition1.lean/declarations/datawitnesscontext-offeasible.md) | 357 | `declaration-track:710dce601506dcf218e077ccad7056ff15750821be077958413ca7867aee9efd` |
| 44 | `theorem` | [negative_even_suffix](../../../../Combinatorics/WrappersEdition1.lean/declarations/negative-even-suffix.md) | 381 | `result-track:63821c732a0e71cd9732329d45b532120fd42f22976ef3fbfd29e801fb59ffc5` |
| 45 | `theorem` | [restrict](../../../../Combinatorics/WrappersEdition1.lean/declarations/restrict.md) | 395 | `result-track:4b6160cc9e3f79418222828fd13505a5318072b2ea104d9ea6b1874b53922e9b` |
| 46 | `theorem` | [all_parities](../../../../Combinatorics/WrappersEdition1.lean/declarations/all-parities.md) | 411 | `result-track:05114e699e6837956c84123a626d5cd98de761f0d604a92596f2906184f9943d` |
| 47 | `theorem` | [restrict_path](../../../../Combinatorics/WrappersEdition1.lean/declarations/restrict-path.md) | 420 | `result-track:68c653f69fda14e2d853255cc0fbcc7e96442c220bddd6b277922776befecaad` |
| 48 | `theorem` | [return_parity](../../../../Combinatorics/WrappersEdition1.lean/declarations/return-parity.md) | 426 | `result-track:cc94e032176525c29ca9affc187c058f0a005c14e112a3ead47aef9fd25ed4b7` |
| 49 | `theorem` | [negative_routes](../../../../Combinatorics/WrappersEdition1.lean/declarations/negative-routes.md) | 435 | `result-track:25a04a62c8c0e89c5593cc7ba080b0f62fd4c887557abde5e14bdd92f5cc600f` |
| 50 | `theorem` | [channel_paths](../../../../Combinatorics/WrappersEdition1.lean/declarations/channel-paths.md) | 471 | `result-track:3e1d5964483cfe0d3b93dc612e9856f36023d9b2490dfe2d85697f9f815a8ccc` |
| 51 | `structure` | [Embedding](../../../../Combinatorics/WrappersEdition1.lean/declarations/embedding.md) | 516 | `declaration-track:a189fda7cc3fa01a0657d06fe404c9449b3e2188507c28d7144a4658416074cd` |
| 52 | `def` | [refl](../../../../Combinatorics/WrappersEdition1.lean/declarations/refl-source-edition-2.md) | 530 | `declaration-track:cc07b39405e8c49aafab9c2866f609777d4ca8f141e39700b4208e7b60073760` |
| 53 | `theorem` | [typing](../../../../Combinatorics/WrappersEdition1.lean/declarations/typing.md) | 537 | `result-track:85f2dde5f5714c12e8390d9f21c5224e4c398e91e0b1a11ce289fb293f2c7096` |
| 54 | `theorem` | [moded](../../../../Combinatorics/WrappersEdition1.lean/declarations/moded.md) | 541 | `result-track:a2b6f2784711c8437410d91c1a6362e0d50da3b22788a459fc22cb08dfb8d064` |
| 55 | `def` | [comp](../../../../Combinatorics/WrappersEdition1.lean/declarations/comp.md) | 546 | `declaration-track:b8298735ffea15202c11bfed55469ee82d4288e379fe02ff7d32029087a99029` |
| 56 | `def` | [cons](../../../../Combinatorics/WrappersEdition1.lean/declarations/cons.md) | 556 | `declaration-track:a5ac72c912b0e9130c0c41f003b73b6c902ee66bb24e711b0d2d7289e31cfad7` |
| 57 | `def` | [lift](../../../../Combinatorics/WrappersEdition1.lean/declarations/lift.md) | 565 | `declaration-track:f28d815824e1d2beae5493254fc15137e7dcfc93baa965d604800367b672adb4` |
| 58 | `theorem` | [proof_cons](../../../../Combinatorics/WrappersEdition1.lean/declarations/proof-cons.md) | 584 | `result-track:b3892435f4b0ca74830451b464035a8e2229314f4cf090cb68e4c68223e293dd` |
| 59 | `theorem` | [AllData.wellModed](../../../../Combinatorics/WrappersEdition1.lean/declarations/alldata-wellmoded.md) | 597 | `result-track:9aa9645860a5a308490d438487dd34367a0c26afc9bb532ccd3b63ff3ad9846a` |
| 60 | `theorem` | [Target.arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/target-arrow.md) | 611 | `result-track:b2dccebbcaecaeac27215d06e95bff3ae948fa8266e4403ad3d4f83167a15334` |
| 61 | `structure` | [WitnessFamily](../../../../Combinatorics/WrappersEdition1.lean/declarations/witnessfamily.md) | 620 | `declaration-track:37dd4fd1122b8f3f72783eae791ca8e79c436d844b6f2505fea412e2a2158bf8` |
| 62 | `def` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename.md) | 638 | `declaration-track:0b5b0826dc1aedfb28f8688a69cae274d261c91ae726bdcbca014bc6a5b03708` |
| 63 | `theorem` | [exists_family](../../../../Combinatorics/WrappersEdition1.lean/declarations/exists-family.md) | 649 | `result-track:8b0874a81622414d5e359a0087d77b36622681609922ff1311e5a0e436131e46` |
| 64 | `def` | [Transfer](../../../../Combinatorics/WrappersEdition1.lean/declarations/transfer.md) | 673 | `declaration-track:89eec85eb72be35383b2bc9991f58dc1120a40a9e5f069769696fe641277a39d` |
| 65 | `theorem` | [refl](../../../../Combinatorics/WrappersEdition1.lean/declarations/refl.md) | 681 | `result-track:6128d98afcdfb5aca9b9cb9a313d62dbeffa673717654532a5458239c9c03ae7` |
| 66 | `theorem` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-2.md) | 685 | `result-track:55ef12d882f6ba77006d75f5c230de7f62abdd4b8255c173ba48fb55bfdd950e` |
| 67 | `theorem` | [trans](../../../../Combinatorics/WrappersEdition1.lean/declarations/trans.md) | 693 | `result-track:ce7d6224f96625ac4736cf1799d2f366fb1718a53141752beea8b06b0afc2efc` |
| 68 | `theorem` | [positive](../../../../Combinatorics/WrappersEdition1.lean/declarations/positive.md) | 701 | `result-track:7930c0229b892d6b4ebe9c52383b0d13bf28efad1511c5c0673c44ee86654d7e` |
| 69 | `theorem` | [converter](../../../../Combinatorics/WrappersEdition1.lean/declarations/converter.md) | 714 | `result-track:ffb0c4c985c4a38e40dfa7c0840bb17d124e79c0db0eaf320050a09bbf9f96e8` |
| 70 | `def` | [Proves](../../../../Combinatorics/WrappersEdition1.lean/declarations/proves.md) | 733 | `declaration-track:c9f41f114ae0887e4a9f7261d283f79b206106414b5231f364415efe69aa11c7` |
| 71 | `theorem` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-3.md) | 739 | `result-track:8dd3c361c755515652071a20a5ceb9f30a0dcc9faa2f863e93d67c4a40eb5824` |
| 72 | `theorem` | [of_var](../../../../Combinatorics/WrappersEdition1.lean/declarations/of-var.md) | 744 | `result-track:56fef91c63928225dcae3379d617371f448af0ff336b789808512740dcd3436a` |
| 73 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-arrow.md) | 748 | `result-track:4d1fda36b9619334c5c63c6f24a86726527c846fa8fac776a7629f21ea78334f` |
| 74 | `theorem` | [constLam](../../../../Combinatorics/WrappersEdition1.lean/declarations/constlam-source-edition-4.md) | 754 | `result-track:fa62e513422b894fc8e579bc7dd836f6094e521fdab4d66c8c2a38dbe6e88b25` |
| 75 | `theorem` | [prove](../../../../Combinatorics/WrappersEdition1.lean/declarations/prove.md) | 765 | `result-track:ff51f5b730fd792e8b86f2af74da892b2b5ef55e07c4ef3d46f146b940197947` |
| 76 | `theorem` | [of_proves](../../../../Combinatorics/WrappersEdition1.lean/declarations/of-proves.md) | 770 | `result-track:fb19a856f0bf3b891d5fc0b1961c6847ab3ad52712c0eb02fb95335db158a9e7` |
| 77 | `theorem` | [abstract](../../../../Combinatorics/WrappersEdition1.lean/declarations/abstract.md) | 775 | `result-track:1cfd5e62cb8e89d639dbf6882acbdd3970e85d8b61ffa365369423a2ad2e17ec` |
| 78 | `theorem` | [apply_to](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-to.md) | 783 | `result-track:0423b54e78f0548d007df889c373aa60507dd54fdc594a6cef68a142c1b54c63` |
| 79 | `theorem` | [apply_to_proof](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-to-proof.md) | 796 | `result-track:c317a156ae63444efd405bad7dba83ad5f0d7509aa5c9f8c00887771e4fb3286` |
| 80 | `theorem` | [edge_profiles](../../../../Combinatorics/WrappersEdition1.lean/declarations/edge-profiles.md) | 808 | `result-track:d924ec24e1b5c00b10d2919b1c70fa0bc6919125fb32843989273599add032e1` |
| 81 | `def` | [Carries](../../../../Combinatorics/WrappersEdition1.lean/declarations/carries.md) | 818 | `declaration-track:033f52a796adfab12d571c4a08b0c868e2ff367f6818397d8581368a50f93682` |
| 82 | `theorem` | [carry_edge](../../../../Combinatorics/WrappersEdition1.lean/declarations/carry-edge.md) | 829 | `result-track:63e8bc3dec89baa7cc09302a9657082c57eab09a8c8569060eb717a7e25e34c6` |
| 83 | `theorem` | [carry_path](../../../../Combinatorics/WrappersEdition1.lean/declarations/carry-path.md) | 873 | `result-track:f850e312eabca40610c45f6d9fc741a367ea909bad209bd34340bb0b4a71290a` |
| 84 | `theorem` | [terminal_transfer](../../../../Combinatorics/WrappersEdition1.lean/declarations/terminal-transfer.md) | 895 | `result-track:8ed31cd5145af4608d73ac7cfaac88547c1b1ee8079ca8fd0c52bba117bbce8c` |
| 85 | `def` | [TerminalProfile](../../../../Combinatorics/WrappersEdition1.lean/declarations/terminalprofile.md) | 925 | `declaration-track:01eaadf9e1ed202534c4d029896bcfbe2f111c77acc1ad0994d666e25f631d88` |
| 86 | `theorem` | [TerminalProfile.feasible](../../../../Combinatorics/WrappersEdition1.lean/declarations/terminalprofile-feasible.md) | 929 | `result-track:698cfcdd491f00c51161fb01000d16d78ab819d54f3021c39640f04b7a1baa82` |
| 87 | `theorem` | [finite_terminal_network](../../../../Combinatorics/WrappersEdition1.lean/declarations/finite-terminal-network.md) | 941 | `result-track:b95fa6f51ad274dfb97a0ac2c9f15d024349d93dcf8d44d87910e1178a9505f3` |
| 88 | `theorem` | [terminal_network](../../../../Combinatorics/WrappersEdition1.lean/declarations/terminal-network.md) | 966 | `result-track:42c821f5d954617206665a10a6871f78c3bb688d96bba71f3cf9d77acabce754` |
| 89 | `def` | [ProofParity](../../../../Combinatorics/WrappersEdition1.lean/declarations/proofparity.md) | 982 | `declaration-track:d36e3083324a8a40808c5c54a4d92e772cfda80acf5681c03f80a76d79c6b689` |
| 90 | `theorem` | [refl](../../../../Combinatorics/WrappersEdition1.lean/declarations/refl-source-edition-3.md) | 1003 | `result-track:d803a5693483d538273105b8a73e6f94cecf4c26fa26a7f6f57baa56a74392fe` |
| 91 | `theorem` | [positive](../../../../Combinatorics/WrappersEdition1.lean/declarations/positive-source-edition-2.md) | 1009 | `result-track:a8e932f96b8eb13aaababfd08c1a2f4302d6ba05ea29347777546cb1806a1225` |
| 92 | `theorem` | [negative](../../../../Combinatorics/WrappersEdition1.lean/declarations/negative.md) | 1040 | `result-track:e50cf1a1c1f19915ed63bccd627beb501f26bda1f1f2ba24e34d5a724f756fec` |
| 93 | `def` | [Continuation](../../../../Combinatorics/WrappersEdition1.lean/declarations/continuation.md) | 1083 | `declaration-track:6a73972703c30db9309e6409a62d5d0553d65e0d95a3bb2db9eb31b1ef2d8646` |
| 94 | `def` | [StableExtraction](../../../../Combinatorics/WrappersEdition1.lean/declarations/stableextraction.md) | 1093 | `declaration-track:6811389b6de18bde42b0d529c6175fb739ef7256e14bc611ae55edb735c5ed8f` |
| 95 | `theorem` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-5.md) | 1102 | `result-track:ba2558d3a10281e4b9105b8597441731c9aca6ee6c7a8e25b47dfdea6fa2ff1e` |
| 96 | `theorem` | [project_pi](../../../../Combinatorics/WrappersEdition1.lean/declarations/project-pi.md) | 1116 | `result-track:f9167cbe4ce68f2c8f2671a2b93b9af8445858b6cd0f3f7febefccd424c7cf7d` |
| 97 | `theorem` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-6.md) | 1142 | `result-track:d8c8c061b67f2b10fb80fccba99d5f9066c4e726232a0ab6f2572fbb5723e13c` |
| 98 | `theorem` | [terminal](../../../../Combinatorics/WrappersEdition1.lean/declarations/terminal.md) | 1150 | `result-track:107ce2a3eb629e4cdcadd8df1f5432dcf3b4820f075864936a22e60855382aad` |
| 99 | `theorem` | [product](../../../../Combinatorics/WrappersEdition1.lean/declarations/product.md) | 1162 | `result-track:5957534455c02f08694451c87c5de51d146c9a762b3aa44449ed5c24c5d3504a` |
| 100 | `theorem` | [arrow](../../../../Combinatorics/WrappersEdition1.lean/declarations/arrow-source-edition-3.md) | 1203 | `result-track:651a71a95b8fc0deb14b00970d78b935e5d51b7e46e5429a612f1a6035d26e56` |
| 101 | `theorem` | [into](../../../../Combinatorics/WrappersEdition1.lean/declarations/into.md) | 1216 | `result-track:bad5455bc3643dd84acd4988b1ce3e70d7571422a9c45d52fa40cd24659e3c14` |
| 102 | `theorem` | [down](../../../../Combinatorics/WrappersEdition1.lean/declarations/down.md) | 1223 | `result-track:0a70eb7ce557fb37a3a889b098fdb45a83746c74d443d55f4313c8a1a6ce960d` |
| 103 | `inductive` | [ProofWrapper](../../../../Combinatorics/WrappersEdition1.lean/declarations/proofwrapper.md) | 1240 | `declaration-track:3cfbb11da4b20af3d3ddeb6dcd3e3c27266d238291052a11b8b0081fb70cccb3` |
| 104 | `def` | [apply](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply.md) | 1249 | `declaration-track:df9d5ae418845335d9480e5bf6e9f95181d51aa58cb6044a5c4999c652eb3732` |
| 105 | `def` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-7.md) | 1256 | `declaration-track:e0a2b01e72142f32dd7f94458e3022e8e63090914d5c4ff2a9d6b5ec16c4774f` |
| 106 | `def` | [subst](../../../../Combinatorics/WrappersEdition1.lean/declarations/subst.md) | 1263 | `declaration-track:26521dc3bb8807ed77f84a28e67ae0ae0e9d84e51185e011e5d79a3adf85b7b5` |
| 107 | `theorem` | [apply_rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-rename.md) | 1269 | `result-track:62f42869c53f5eb22d126f352ad83c9f606d8aab0a1ab67242eb30a6489274c0` |
| 108 | `theorem` | [apply_subst](../../../../Combinatorics/WrappersEdition1.lean/declarations/apply-subst.md) | 1274 | `result-track:09d4acb902b5aa6ea0b87aa706f6f40522116cff65cd405c296ef8f20fcfa8e3` |
| 109 | `def` | [containsNegative](../../../../Combinatorics/WrappersEdition1.lean/declarations/containsnegative.md) | 1280 | `declaration-track:dff678220ba4cc0074ee3f994eb004e9c836901b059b79fb6717c5d92617a283` |
| 110 | `theorem` | [rename_id](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-id.md) | 1286 | `result-track:88bf94afcd948678a1187f08b050ff0218ac089393900a9a28c289d0b6a0112a` |
| 111 | `theorem` | [rename_comp](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-comp.md) | 1290 | `result-track:7b760f0fb3c8df782e19bec24175ff9091a02ee19a0c03b364a779cbf04ec1aa` |
| 112 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersEdition1.lean/declarations/instantiate-raise-source-edition-2.md) | 1295 | `result-track:b4fce72cdb6005569d2e94dc9b20971fcba61e16567ebdd775601bac7ddd02dd` |
| 113 | `inductive` | [Formed](../../../../Combinatorics/WrappersEdition1.lean/declarations/formed.md) | 1302 | `declaration-track:c676a7535be6a1425284dea89c00433b999a17328da7548426e8a79960041ce6` |
| 114 | `theorem` | [rename](../../../../Combinatorics/WrappersEdition1.lean/declarations/rename-source-edition-4.md) | 1316 | `result-track:959f386dd88d5704a257868bd8a737de46f60bf8d4e103b53d219e90d907e6eb` |
| 115 | `theorem` | [edge](../../../../Combinatorics/WrappersEdition1.lean/declarations/edge.md) | 1326 | `result-track:ceaca1869fea7f5f747e8c3b6c55d78708a503b03aafb5a3b9da548abf3bc54d` |
| 116 | `theorem` | [path](../../../../Combinatorics/WrappersEdition1.lean/declarations/path.md) | 1334 | `result-track:a7e83dc5d9224cd356f81b407cd8d2551c6844138a3bc924a4c900656a4a7430` |
| 117 | `theorem` | [sound](../../../../Combinatorics/WrappersEdition1.lean/declarations/sound.md) | 1346 | `result-track:449622bae5dc193e09f1e2840aea9d246438712af8a4dece1c086d6cdcc7c6b5` |
| 118 | `theorem` | [stable](../../../../Combinatorics/WrappersEdition1.lean/declarations/stable.md) | 1375 | `result-track:9c7f8683eaa3124e1ebfed87620fe3c5f974a527da9c1186f54d47f6a94ab4f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dd161ce7d04e71f6fc728f579850c65a1a7ee8c970d5bfbfba12a3ea1383137 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
