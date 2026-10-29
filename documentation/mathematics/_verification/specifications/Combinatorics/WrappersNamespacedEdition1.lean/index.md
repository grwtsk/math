# Verification target: Wrappers Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbb50677e757e04c4b623b6cf9cbe50243cb9894",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/WrappersNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/WrappersNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbb50677e757e04c4b623b6cf9cbe50243cb9894`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean.json)

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
| 1 | `def` | [data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-source-edition-4.md) | 34 | `declaration-track:dde12f7e9dcdf4a361cbe86d7a1a3eac34248d189ff0ca506a6c0c92cfcb0c87` |
| 2 | `theorem` | [erase_data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/erase-data.md) | 42 | `result-track:2a26fda3608cb6b95780d5afd915ddfd318adc937146f51a4a42f82e12f03e14` |
| 3 | `theorem` | [data_rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-rename.md) | 45 | `result-track:9d21991e42718d2bb94e1c2de19d5a4949a0f9e5701b6f767f361d890bd9ad66` |
| 4 | `theorem` | [data_subst](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-subst.md) | 49 | `result-track:600f9d7efad9273da835c5ef967c9f73b4cc046561e022b8e40562bf27126b4a` |
| 5 | `theorem` | [data_instantiate](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-instantiate.md) | 57 | `result-track:93e10bd12beb14095ab6ceef9fbc6ad01bca0966c897f2ed0541847f4eb38119` |
| 6 | `theorem` | [data_allData](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-alldata.md) | 63 | `result-track:e2ad27feb1e1277be3417e224ca1ba7a04e3c98b924199c777729b02ad2aa492` |
| 7 | `theorem` | [data_wellModed](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-wellmoded.md) | 71 | `result-track:187797be3b7c63992ebf9d187b478026db54898663964ba51f21d70970922d0d` |
| 8 | `def` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-source-edition-5.md) | 87 | `declaration-track:b56b106fdcb51a487475442002c3421886f744e01b111d38fe2c7a1d86b72f1e` |
| 9 | `def` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam-source-edition-3.md) | 88 | `declaration-track:a425754de2b108c96cb0d1690f92ce7ffd84e7e60ca26fa742568db4bb1c958f` |
| 10 | `theorem` | [arrow_rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-rename.md) | 90 | `result-track:0e1464afc405deec7dfebc7a5f5082783d3b37a24d01d795ece2433addb2984c` |
| 11 | `theorem` | [arrow_subst](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-subst.md) | 95 | `result-track:06eeaf085c5d3f4791821badc5ee8c26c901af507bc1d8cb0d03efede34fdd55` |
| 12 | `theorem` | [constLam_rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam-rename.md) | 100 | `result-track:1feb9abb9b25bdaf402cd32178fe1c99a0543b1f1fa22808fc2d5605fc0cdf08` |
| 13 | `theorem` | [constLam_subst](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam-subst.md) | 105 | `result-track:c5231a34a4a0d66273fee525606ead09d69e38b3ce209685f501cfc7d08c922a` |
| 14 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/instantiate-raise-source-edition-2.md) | 110 | `result-track:55fdeeec5ef337807309e14043590abd72c63070fe40387cb3987d54a1d6110c` |
| 15 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-source-edition-2.md) | 116 | `result-track:9b9493eeef1f16209199df9d66bbb5b470e23d5ae10343d17ccaf6c4b2d5a4ff` |
| 16 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-source-edition-5.md) | 130 | `result-track:e612c771d195977dbd427bbabfd97741efe2bf093ef644d93dad52bb2616fe79` |
| 17 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-source-edition-3.md) | 140 | `result-track:b6318bb0fe4a476759023a9c60b08c0c25466a123e11c89f2621ea1313c81e0b` |
| 18 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow.md) | 155 | `result-track:02f6fd041991e5b2067f6fc3dc638e4d724e30edfee590482f499beeea3ef4dd` |
| 19 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam-source-edition-4.md) | 159 | `result-track:b8924e204467bb8360b6a940c8ded35951eadfb48d0fb8cee18d1169226876f0` |
| 20 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-arrow-source-edition-2.md) | 164 | `result-track:e6c4901449b154ee73592d552a7beb6e01b9d2ae6d8da302e981598576af40de` |
| 21 | `theorem` | [data_subst_congr](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data-subst-congr.md) | 172 | `result-track:1b3796cfba4a6f37fe6876d98bba88db73da891f06da4bbb0d83607b709e82d9` |
| 22 | `theorem` | [proof_instantiate_irrelevant](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/proof-instantiate-irrelevant.md) | 200 | `result-track:d9ef9cf5ed2c1ee8666d45b6da4246cbbd2eceadb987ade30d7b750bae742013` |
| 23 | `theorem` | [raise](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/raise-source-edition-2.md) | 209 | `result-track:80be801937c8dee8fad70a0ed11a0c4dfa8aeb7aa79237d71c9e5aca8ef2a57f` |
| 24 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-source-edition-2.md) | 213 | `result-track:09aae3e0a063637f34e3dae30c923a4f78df1163d81cc464d73906811c118a2e` |
| 25 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam-source-edition-2.md) | 216 | `result-track:790c1c495b1bf000b59c9655d40e0e6d3644ac69feebdc7349dbd52dfaffcc23` |
| 26 | `def` | [SortedAt](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/sortedat.md) | 222 | `declaration-track:ac8a8c1640baea39a5df7de207a8014f4656bfe942ca2c3201435a112e3de168` |
| 27 | `theorem` | [mono](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/mono.md) | 227 | `result-track:e701661ae67c906364dfc45db2a8d9c617881bc30d9602141f7caa186f36dad9` |
| 28 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-source-edition-3.md) | 230 | `result-track:2fa4016a9185eec15c87c8fbf8c32ae6c1ed66e195e4ec61f32f02c18fc6ebe4` |
| 29 | `theorem` | [raise](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/raise.md) | 236 | `result-track:1a80da5a1bdfe276a486547685fa6dd110e0990e9f49352e944bcbe1d68a543f` |
| 30 | `theorem` | [positive_cancel](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/positive-cancel.md) | 242 | `result-track:8517f8215e14095df3304227b11084968c43a6349cacead9611aa08b865c9edb` |
| 31 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-right-source-edition-2.md) | 258 | `result-track:3c75d0c0d503f2b9e6b94f184b3c950032c64f7cc8ac89284709761258a6c62e` |
| 32 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-left-source-edition-2.md) | 263 | `result-track:db3ada3c4cc7ac47536aab2972fb6f747b0a1faf83487588911b83be562c0ffa` |
| 33 | `theorem` | [append](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append.md) | 277 | `result-track:6e4814352293a79f4d43ae82a8a8ae0714cf08346411cb812054fdd8d87b6737` |
| 34 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-right.md) | 289 | `result-track:1ec6dd43fd97fbd5a3f60146dec1ead9d3353ac8bb1a33c4dff2b7c04453d39b` |
| 35 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-left-source-edition-3.md) | 295 | `result-track:e2c3394fdf1963d367261e3ff67cc353cc6937c0a409ab9050d9c25c953f5d96` |
| 36 | `def` | [HasWitness](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/haswitness.md) | 303 | `declaration-track:252440f232c22447e9ce1cf5f4e2d15583bc2ca2610f47cfa1b51dd423d41a6a` |
| 37 | `theorem` | [append_left](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-left.md) | 308 | `result-track:3b543553c6e652d20441e68e0d454df5d76ea52fbe0e214babf7661f02df450a` |
| 38 | `theorem` | [append_right](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/append-right-source-edition-3.md) | 312 | `result-track:4eaa82494ea156aaee9402b19493502a2d95b94cc7dbf0034ab2e8f510b94171` |
| 39 | `theorem` | [witness](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/witness.md) | 319 | `result-track:e1379c1bbfdbc86d64896acab96ec80644c05b1e813bdc4a429be894dbcc085b` |
| 40 | `theorem` | [finite_witnesses](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/finite-witnesses.md) | 328 | `result-track:30805fb13517b1151ca337e6fd25aff6513468c39d86e39d97dfc0e2e7321a91` |
| 41 | `structure` | [DataWitnessContext](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/datawitnesscontext.md) | 346 | `declaration-track:fdea874f23bf9e47ef9f10770657ea26103366ad97e4ffbdf99b5c98a2a93258` |
| 42 | `theorem` | [data](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/data.md) | 355 | `result-track:27b92c2b3e3d75eb0b606947a95d286b074cab4614c172ff825b204a24d2465b` |
| 43 | `def` | [DataWitnessContext.ofFeasible](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/datawitnesscontext-offeasible.md) | 361 | `declaration-track:612cd934707f1a6b19cd2738475c187aafef620179f41870499b4e86cfaf30e6` |
| 44 | `theorem` | [negative_even_suffix](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/negative-even-suffix.md) | 385 | `result-track:1378d9e5d2a61bc70af69330ae8fb92fd740a4da51d997515c774daa06ea739b` |
| 45 | `theorem` | [restrict](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/restrict.md) | 399 | `result-track:f0b89e350f97e5fcbaa9b050ff6acb55c492e08eac1a8d07604d52daed1d0dd4` |
| 46 | `theorem` | [all_parities](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/all-parities.md) | 415 | `result-track:30f919f17ffe1d322b516f70b3a433337062e7dcf158bece1d73f77ba120e1de` |
| 47 | `theorem` | [restrict_path](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/restrict-path.md) | 424 | `result-track:4be4e7ef8d0cfbeeab472b882618a5acb98d3fc9668ca322f284dabbeee58737` |
| 48 | `theorem` | [return_parity](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/return-parity.md) | 430 | `result-track:f885809e98ceb6fb717242ec783efa15d9b195b93b990ac2f3704412fa931d78` |
| 49 | `theorem` | [negative_routes](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/negative-routes.md) | 439 | `result-track:370a6968f9023b5b835a99a2251fefc49912cfed6caa1661b9b2e2e8e1e12ed0` |
| 50 | `theorem` | [channel_paths](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/channel-paths.md) | 475 | `result-track:97a3d74ba229942724b59de4cf0f5b062408bb4cb6bc5401e8471f865294b931` |
| 51 | `structure` | [Embedding](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/embedding.md) | 520 | `declaration-track:c93d1d11ca7f350a6a955edb45bbb1ed060fde679662eb6759096e7017145c15` |
| 52 | `def` | [refl](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/refl-source-edition-3.md) | 532 | `declaration-track:cf0f4da0967a857c43bb539c2c1b3b4119cc35b44dff64c594f387ea2d8881f5` |
| 53 | `theorem` | [typing](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/typing.md) | 539 | `result-track:595e4f6da9ffc5c50000ff1bc44f913062da7337f41f29db703d82e06b87469a` |
| 54 | `theorem` | [moded](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/moded.md) | 543 | `result-track:ebf3ecec3bd96bf6d203372d681c8ee181f2d0beaa600a0f73542ad2651fb0c3` |
| 55 | `def` | [comp](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/comp.md) | 547 | `declaration-track:97bbc6ad716eee107962abbf59c4c7d4acdba75c6415a3e2f859b7de975d2fbd` |
| 56 | `def` | [cons](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/cons.md) | 556 | `declaration-track:271d7bac84fbef3fa56d55c8594e3b76824969b057439c335f36b45f4c884d32` |
| 57 | `def` | [lift](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/lift.md) | 564 | `declaration-track:f5332fd050b7096c1c69d94fe65537b747e359f40e0b5a515c69d7981de0fbed` |
| 58 | `theorem` | [proof_cons](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/proof-cons.md) | 583 | `result-track:6e227241c2febfd9c7673d389d1a76990f7142bfa7b8dad082efe17ec2503411` |
| 59 | `theorem` | [AllData.wellModed](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/alldata-wellmoded.md) | 596 | `result-track:4250c880ac58e86e4a3dd7b683b1fbb00c0a6a648a5f29dbd75251613fd769ec` |
| 60 | `theorem` | [Target.arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/target-arrow.md) | 610 | `result-track:af9ef05420e8e8e7be917a350184b63b364f534d26deb45746fb3121211943cb` |
| 61 | `structure` | [WitnessFamily](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/witnessfamily.md) | 619 | `declaration-track:69e003dddcc9f866ca8f0f1a9ecfe113075ffe0fca4e792158a25fc484dca5bf` |
| 62 | `def` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename.md) | 634 | `declaration-track:19c65c10a9df259d8383b3472e1861b79dd5f9b1bd9e4ea4ec0d452ba69cd192` |
| 63 | `theorem` | [exists_family](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/exists-family.md) | 645 | `result-track:62c2178295440df5776f313e66d7d4d1fbd24e6a1c7eeb9ebd307b0516a64183` |
| 64 | `def` | [Transfer](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/transfer.md) | 669 | `declaration-track:c8b6de6a5c15a32562e6c797944d554ee9064dbba2a9d8ac42d634dc3943c875` |
| 65 | `theorem` | [refl](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/refl.md) | 677 | `result-track:0099ea76226b72c56070e2b5309c2b4e7b5744d16c0d62c553942c542b8822b9` |
| 66 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-2.md) | 681 | `result-track:30fc04ef9d3a11954a19835701ac0b615c6b43db56fd5e9ed297b17cd3477758` |
| 67 | `theorem` | [trans](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/trans.md) | 689 | `result-track:6d3e4c40b75d3e37379f9c31cb1841e99797293823825eebdf2bc0c2ea37fed2` |
| 68 | `theorem` | [positive](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/positive-source-edition-2.md) | 697 | `result-track:b8c8eb2f3576da8eb1c298a37596f17ad5429881fb3bb26349b1321a74e15ddd` |
| 69 | `theorem` | [converter](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/converter.md) | 710 | `result-track:bd8ed0548e2267edcde4a0947de1c95b0c4de5baa00b6f16c31212f25731280d` |
| 70 | `def` | [Proves](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/proves.md) | 729 | `declaration-track:98ce9554bd5192407a82abc2c071cf1cdfc2330e78a8e2a94176b47048b01c28` |
| 71 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-6.md) | 735 | `result-track:95b2bd1db6f658bad58957b7387b979c24ae4f4ab7152225f0b95396acef19f6` |
| 72 | `theorem` | [of_var](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/of-var.md) | 740 | `result-track:a10026e129d6890f3b10a67d53d447c3a9a68dd4b405339803ef59762c838658` |
| 73 | `theorem` | [apply_arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-arrow.md) | 744 | `result-track:20ad4b7a16b1d3c2ef349a193e2cd58885d8b5e59416a29a3593877832a77e69` |
| 74 | `theorem` | [constLam](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/constlam.md) | 750 | `result-track:4c93c6a65108a52c939dfaca6f7ebaa6547555d3d5e4e49c469a11aeadd2f58d` |
| 75 | `theorem` | [prove](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/prove.md) | 761 | `result-track:3fe9646784edb72c21ca4152fbbb588d69734b7a777feefce8d00a3edaf2cebb` |
| 76 | `theorem` | [of_proves](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/of-proves.md) | 766 | `result-track:991b67396470beb873c3e3cfd5c6cf345bc7a62794bb2e14d6ce33375282e9ff` |
| 77 | `theorem` | [abstract](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/abstract.md) | 771 | `result-track:9d19370b097d23aea26f35f1c24cd6a8ff5f6f80d400d6edab7429fe01c1f683` |
| 78 | `theorem` | [apply_to](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-to.md) | 779 | `result-track:281c60cf74a56d22e0dc3f762fd74eaca105a0cc879808745c89a5a1284d16aa` |
| 79 | `theorem` | [apply_to_proof](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-to-proof.md) | 792 | `result-track:f04e47c96a80184ea50b7948c2e5810c2963b9dd68dcef47963fe0086f3e8c11` |
| 80 | `theorem` | [edge_profiles](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/edge-profiles.md) | 804 | `result-track:70c2392c3238a9620a5648f579f4cb5dbc693935952e764412aee7a51adb3d60` |
| 81 | `def` | [Carries](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/carries.md) | 814 | `declaration-track:ce82b8397a6b9631053b2435d2b2d1aa0a1336ad8f176eb4c531f35bbffaedce` |
| 82 | `theorem` | [carry_edge](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/carry-edge.md) | 825 | `result-track:226190511fd249579e4d6c5282c42cdca86b8459dea5e09415eaea9324711b51` |
| 83 | `theorem` | [carry_path](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/carry-path.md) | 869 | `result-track:0e9049a5cf7453975244f3fe1468a278c66c1e7ee8246a49feb8b47e0020d4bf` |
| 84 | `theorem` | [terminal_transfer](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/terminal-transfer.md) | 891 | `result-track:6408ad3d1dfd3ecbedcef98a57b7991785b2f44413bb12738680adbc75123a15` |
| 85 | `def` | [TerminalProfile](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/terminalprofile.md) | 921 | `declaration-track:b3cc37b8645d40268eae22720a830f0a7096472974fded5ac31d87f6abc31951` |
| 86 | `theorem` | [TerminalProfile.feasible](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/terminalprofile-feasible.md) | 925 | `result-track:f89372ebebb49ae7657bf84274e6315fb3cf8e50337b4063a088eeea6330da33` |
| 87 | `theorem` | [finite_terminal_network](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/finite-terminal-network.md) | 937 | `result-track:0191b27e9afdc7c0676bab82cd6eca953595be0d45dc58387e26323030e2b210` |
| 88 | `theorem` | [terminal_network](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/terminal-network.md) | 962 | `result-track:be1627bb6ea316796d9192f74e38c42d8a2df885bd6f024bcda4695292f6e467` |
| 89 | `def` | [ProofParity](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/proofparity.md) | 978 | `declaration-track:1185af8ff96703d6bd5ca7bc7d22902ef26e60b94e2d6ed5f2f0a557ed4dfcd4` |
| 90 | `theorem` | [refl](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/refl-source-edition-2.md) | 999 | `result-track:6e866c4865896da1ed5f4db2106e2f2fc7d2956897d384d6fb4e377dab9877b2` |
| 91 | `theorem` | [positive](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/positive.md) | 1005 | `result-track:2a9b9b6aa5d134419af3e9cc7a3e761df659495456a7fe1f41b675a8c88c4416` |
| 92 | `theorem` | [negative](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/negative.md) | 1036 | `result-track:621aafab9a9aeda8387695dfccfeb1b56deff6735cecf6fe432e3b97b2ed685e` |
| 93 | `def` | [Continuation](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/continuation.md) | 1079 | `declaration-track:67285eac0574d9ddca8e34bf81dd45ae0d13b20eca732b1746dedce6a5a181ad` |
| 94 | `def` | [StableExtraction](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/stableextraction.md) | 1089 | `declaration-track:f3b60b1f6b7f51cee77591d03c0e6e7572610b09d26082dee0cae870523f3a0b` |
| 95 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-7.md) | 1098 | `result-track:a58e8e0ef92cc367743f8934a29b5e88a097beae8501a99271cd007a470811a2` |
| 96 | `theorem` | [project_pi](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/project-pi.md) | 1112 | `result-track:55d4341569c35a286b487775979d9d47bd072fcd1d2a8ebdbe945ada32c81a8e` |
| 97 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-3.md) | 1138 | `result-track:41591e6079184c05d36f3add51764ac5678d23e9d7233f514728c038ba4ce8f6` |
| 98 | `theorem` | [terminal](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/terminal.md) | 1146 | `result-track:a98fccabef14f52cca8f95681620b673d459a49174da7d85e741de3c6b786ece` |
| 99 | `theorem` | [product](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/product.md) | 1158 | `result-track:c9da98c419073d5bdbeccd72016b22e34b309690f4e472bad3690844efc94856` |
| 100 | `theorem` | [arrow](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/arrow-source-edition-4.md) | 1199 | `result-track:84fcccd845e527b4116a33a8e83dcb6cdbf5031c21f6ffb62375aa11f25a6553` |
| 101 | `theorem` | [into](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/into.md) | 1212 | `result-track:0cd8eb42da3222f75907b8103b59824d7eab5d8f975081dda670b11818b475b4` |
| 102 | `theorem` | [down](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/down.md) | 1219 | `result-track:e64ff0207410256136809a6075600f09cd2392ac7f0111cb27a4ef7b07540aa1` |
| 103 | `inductive` | [ProofWrapper](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/proofwrapper.md) | 1236 | `declaration-track:a0b65b419423355ba3dee1c241fc3a3c39df4066825eadc852480037885cb91e` |
| 104 | `def` | [apply](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply.md) | 1244 | `declaration-track:9468bdb0a64c9ecd719ee5ca5a4e66a551144a447514bdafdfff3432c4f962af` |
| 105 | `def` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-5.md) | 1250 | `declaration-track:6b8bc14b4f17d64572d933f6668ed88a12a6530572e104adfbb67df2bd53f2ce` |
| 106 | `def` | [subst](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/subst.md) | 1256 | `declaration-track:ac861a76060aafa5d43c544a2273712c7a9a7e78b6decc7dd8390a5b8ae0c50b` |
| 107 | `theorem` | [apply_rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-rename.md) | 1262 | `result-track:3ebd771cec60c18a0ee7d371e5d07479bd7efb25811137b1440e21ec47c8fbdd` |
| 108 | `theorem` | [apply_subst](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/apply-subst.md) | 1267 | `result-track:e3a29624152c898ef58bdf6a729058381c9665e1625aa6fd2255b2fed2fc5c1c` |
| 109 | `def` | [containsNegative](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/containsnegative.md) | 1272 | `declaration-track:b63894f6b0ca53a06e21279870a2b08417470893aafbfb43b196fc8a0910f353` |
| 110 | `theorem` | [rename_id](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-id.md) | 1278 | `result-track:092748a67eb012df8569bfa8caa3fdaaf40eafe5986e3fb331674db277c0d971` |
| 111 | `theorem` | [rename_comp](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-comp.md) | 1282 | `result-track:21f3374bdf3656e053d9f345dfa96249f562314eb1f25aa4d0a2ee95b9abd313` |
| 112 | `theorem` | [instantiate_raise](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/instantiate-raise.md) | 1287 | `result-track:3fe973f9ccd5ac1a9b9fda1de7019be1fd17d355e9c6c317d03fc34c2bf7b51b` |
| 113 | `inductive` | [Formed](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/formed.md) | 1294 | `declaration-track:ec3bc8c2b0db0ea5666c800e5559724fdbc66483c01be4b3eb7d5ae752431163` |
| 114 | `theorem` | [rename](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/rename-source-edition-4.md) | 1308 | `result-track:4cfae3fc5e57ba47cd019a2de85b6d6815a50134ddacd244248e2d2125c35f94` |
| 115 | `theorem` | [edge](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/edge.md) | 1318 | `result-track:a7e439f6c6778ae6c89825c80abea7111ba387fbd6232a9bdfdd28b7fda4f4ef` |
| 116 | `theorem` | [path](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/path.md) | 1326 | `result-track:58203df0c4d5f0379c497d48c489dd148003ee59467415f55c9d11605a0ef286` |
| 117 | `theorem` | [sound](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/sound.md) | 1338 | `result-track:ff435ef6160dbfe1b522f3c2254a1efa8d9d6571a845028ed712c61c7f0105a6` |
| 118 | `theorem` | [stable](../../../../Combinatorics/WrappersNamespacedEdition1.lean/declarations/stable.md) | 1367 | `result-track:95e5d4bd47296ce78cd771df09464bd2b7d4e218f91100fffcebd8be6b646938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f18eaa9ab31cfb28fc4394b31e043235de43984bcd30f627751caced062c5d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
