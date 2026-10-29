# Verification target: With Seminorms Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29add66c8674a30a5ef18385952993ea554cea6a",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variant0f97991a272a813536f687ce011a6444b2fb858ea89ab07ed1120b189594841f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29add66c8674a30a5ef18385952993ea554cea6a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variant0f97991a272a813536f687ce011a6444b2fb858ea89ab07ed1120b189594841f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variant0f97991a272a813536f687ce011a6444b2fb858ea89ab07ed1120b189594841f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SeminormFamily](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily.md) | 75 | `declaration-track:fef1a393238a3225c88e3cd20456b50c7f6480e5ee36cbf3ee517b7162ee40e3` |
| 2 | `def` | [basisSets](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets.md) | 83 | `declaration-track:6c766a16e213fbe2046d3875504eda40e90da08c288680d4fa79304282cbfa8f` |
| 3 | `theorem` | [basisSets_iff](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-iff.md) | 88 | `result-track:fe7964e1745f52f6e2e25681fdf24f0b91bd31eebc8603e7016029df0defd7a7` |
| 4 | `theorem` | [basisSets_mem](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-mem.md) | 92 | `result-track:1f1150ecfc04288e53aecddefc3c450e2d1e532b85d9415ad2444f316ec56e99` |
| 5 | `theorem` | [basisSets_singleton_mem](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-singleton-mem.md) | 95 | `result-track:8960949697aa9812e4b9e295cef658e6fc684d3906b0a10ae73d048c3b81b8b6` |
| 6 | `theorem` | [basisSets_univ_mem](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-univ-mem.md) | 98 | `result-track:1ff197f2228e9323346c9f979410e55a52bffb6a28165acdeda5f0ee159ab06d` |
| 7 | `theorem` | [basisSets_nonempty](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-nonempty.md) | 102 | `result-track:1477e19905ebe83b4ffecfd9d2868cb7d6951b089e2ea0e2f427abb421aa2bd4` |
| 8 | `theorem` | [basisSets_intersect](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-intersect.md) | 105 | `result-track:35380eaaee685acb3aee9b29f5d2ad5c51319aad8b25e6c18eaf7baf4728e09a` |
| 9 | `theorem` | [basisSets_zero](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-zero.md) | 121 | `result-track:0f2640d0bb2da20e4fa4ac0ede30c6ab9cc67c64d22ba3bbbf34788f04b7f44a` |
| 10 | `theorem` | [basisSets_add](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-add.md) | 126 | `result-track:61e972ff97b3d4bedcfb236e19b3d5a1640632c30bc41847eb9725da8c3e067f` |
| 11 | `theorem` | [basisSets_neg](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-neg.md) | 134 | `result-track:d5c5f98d88e694e48536b357120588de216dd4bdfe313b8a791ded51a0c95677` |
| 12 | `def` | [addGroupFilterBasis](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/addgroupfilterbasis.md) | 142 | `declaration-track:d5091c374db4b9102357f7843e5bb430fa485674cb8659b3b60eae2a893c435e` |
| 13 | `theorem` | [basisSets_smul_right](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-smul-right.md) | 146 | `result-track:3781f0a732cc48cb827cb33d6fa5ea6f1dc37209d4817194c6bf1f6c1e2d1b8d` |
| 14 | `theorem` | [basisSets_smul](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-smul.md) | 158 | `result-track:17b56acb9e2e9883494ad5da54bfc79381dc439fa849a8de76b5827c313baeb9` |
| 15 | `theorem` | [basisSets_smul_left](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-smul-left.md) | 168 | `result-track:d6fba59021d186534c509a3ede74af4cb89a3d22d5b53891cf9a527069717871` |
| 16 | `def` | [moduleFilterBasis](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/modulefilterbasis.md) | 181 | `declaration-track:3829fd7d57f17f610b2828ad11ec53f888e54a985e821e870a601e1f57876a18` |
| 17 | `theorem` | [filter_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/filter-eq-iinf.md) | 187 | `result-track:feeabede680ce4d5e38567a446e0bba32d72161f28ccabe954798f45ae59582f` |
| 18 | `lemma` | [basisSets_mem_nhds](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/basissets-mem-nhds.md) | 207 | `result-track:206651f9a05708d25e22869f790cc20114d034a49e137e05602a0ed331036052` |
| 19 | `def` | [IsBounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/isbounded.md) | 233 | `declaration-track:59be0f8463f4d1934595c0d3e42377f3c0578aa5a54c736f06cee8d33a50b808` |
| 20 | `theorem` | [IsBounded.of_real](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/isbounded-of-real.md) | 236 | `result-track:6d4c7dba498d9b92474d742aa1c25b89e94842678c6988a357144e66567c31f9` |
| 21 | `theorem` | [isBounded_const](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/isbounded-const.md) | 245 | `result-track:ef8a4b4161035970e2647cf01b6b23febf47d247875807211ee7d58fcda02619` |
| 22 | `theorem` | [const_isBounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/const-isbounded.md) | 250 | `result-track:fec9c2864a45f80b6b86f7ab51af4a54da00f9d25275c3141a053f70d0964989` |
| 23 | `theorem` | [isBounded_sup](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/isbounded-sup.md) | 258 | `result-track:49de3fb14591e5592b33cda011f2444a1f2c7941d58eb8983e65b14d88196fb3` |
| 24 | `structure` | [WithSeminorms](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms.md) | 284 | `declaration-track:ba6b863c63df0e3d57f93bcc513c34454d811b1ae45d27e12e327ec0371b7183` |
| 25 | `class` | [PolynormableSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace.md) | 293 | `declaration-track:223c88b4b70ef5df1a4c7c9183ffdda670dad7697e13537fb9d85d893527a842` |
| 26 | `theorem` | [WithSeminorms.withSeminorms_eq](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-withseminorms-eq.md) | 296 | `result-track:71d7efc2169c3fa51530f452701e6c0fc3fddc887d8e232d1669525d781d3555` |
| 27 | `theorem` | [PolynormableSpace.withSeminorms](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-withseminorms.md) | 304 | `result-track:2f540f0d498a76074c3f3418f4b09668de00850b6492e0a9192dc921980a64a9` |
| 28 | `theorem` | [WithSeminorms.isTopologicalAddGroup](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-istopologicaladdgroup.md) | 308 | `result-track:6cb044eba94417352206707c612d7335ce56a92fcf601b0f8611da28a359caca` |
| 29 | `theorem` | [PolynormableSpace.isTopologicalAddGroup](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-istopologicaladdgroup.md) | 319 | `result-track:d57a6e2e2df64fbddfc77058d672ec3bd1e885973e30b23afc163621f883c822` |
| 30 | `theorem` | [WithSeminorms.continuousSMul](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-continuoussmul.md) | 323 | `result-track:2a5892ea0333b1175b5764196163444c28c86144437d4ea48a0f975dddae9dd9` |
| 31 | `instance` | [PolynormableSpace.continuousSMul](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-continuoussmul.md) | 329 | `declaration-track:e88a58b0e4187844b507988400623f76bcaebf556de19156890a28633e4aaf1f` |
| 32 | `theorem` | [WithSeminorms.hasBasis](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-hasbasis.md) | 333 | `result-track:27f85fa423c7599388aee15150083046b56fa2cebc9758005a369df7c0cb2659` |
| 33 | `theorem` | [WithSeminorms.hasBasis_zero_ball](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-hasbasis-zero-ball.md) | 338 | `result-track:06904e93b7cf1c81978326dc566ffb48c266085f17b0433442d94fb1906647e8` |
| 34 | `theorem` | [PolynormableSpace.hasBasis_zero_ball](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-hasbasis-zero-ball.md) | 346 | `result-track:23cb86b9573cf140fd058ad69328a09ee4d2e22b67a28883a9bad13eefdd4019` |
| 35 | `theorem` | [WithSeminorms.hasBasis_ball](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-hasbasis-ball.md) | 361 | `result-track:86381459639c4759ec30029cebc8e9b481971f851a984f983ddab332fc143ebf` |
| 36 | `theorem` | [WithSeminorms.mem_nhds_iff](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-mem-nhds-iff.md) | 375 | `result-track:148558f3e78a9c07ecb25c1f482a76b0eeb0408b5fb18af53c4ea02e4949fba3` |
| 37 | `theorem` | [WithSeminorms.isOpen_iff_mem_balls](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-isopen-iff-mem-balls.md) | 381 | `result-track:12820a6b832b943d93386f36d1024cb1c6fa46577f48b70048becc041e387ad8` |
| 38 | `theorem` | [WithSeminorms.T1_of_separating](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-t1-of-separating.md) | 389 | `result-track:9e7cc4f808491a38076e2014dae2696fdd033fdd6c7ba7f7e43428fe51103ed1` |
| 39 | `theorem` | [WithSeminorms.separating_of_T1](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-separating-of-t1.md) | 400 | `result-track:26ad0d247a85857c39765462ce0529b37b76f17a9150caaf5fa8ed3acf1af8c3` |
| 40 | `theorem` | [WithSeminorms.separating_iff_T1](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-separating-iff-t1.md) | 410 | `result-track:ce2321f5faf982fd6153815492d622285c4eb5e5a77f3246e2fcabfb92812201` |
| 41 | `theorem` | [WithSeminorms.tendsto_nhds'](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-tendsto-nhds.md) | 426 | `result-track:df00c42856e27e37b8334ebf3570d866230d9ca1224ea8eeed7ce32575d294de` |
| 42 | `theorem` | [WithSeminorms.tendsto_nhds](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-tendsto-nhds-source-edition-2.md) | 432 | `result-track:f804ce2e3723074ff095d5783e2eff9ed9b1aa47a0505178b0a6b3d86ce7a1de` |
| 43 | `theorem` | [WithSeminorms.tendsto_nhds_atTop](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-tendsto-nhds-attop.md) | 442 | `result-track:13a9d83d6245055772b57e07e5ab8cb7e57fa6696114ec44a9236a6c98526d36` |
| 44 | `theorem` | [SeminormFamily.withSeminorms_of_nhds](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-withseminorms-of-nhds.md) | 458 | `result-track:3a8d501158a888aa168f32c4e3c87affd1be3fd0361a9889115266f2f72abfd3` |
| 45 | `theorem` | [SeminormFamily.withSeminorms_of_hasBasis](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-withseminorms-of-hasbasis.md) | 465 | `result-track:795af0cec2cb8ba91060520b9f4421bf4d4ba89115504bfaae7bc75ea2508345` |
| 46 | `theorem` | [SeminormFamily.withSeminorms_iff_nhds_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-withseminorms-iff-nhds-eq-iinf.md) | 471 | `result-track:e4ad1be2efde33e5404f0942990672e1e5d6e76d3194c4f6c75ed9aa30e3829d` |
| 47 | `theorem` | [SeminormFamily.withSeminorms_iff_topologicalSpace_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-withseminorms-iff-topologicalspace-eq-iinf.md) | 480 | `result-track:59020d9ed57be23640697a939123d1a47e3ac9c8615f8aa962c19f96c916238a` |
| 48 | `theorem` | [WithSeminorms.continuous_seminorm](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-continuous-seminorm.md) | 490 | `result-track:8516975c16c729aef6e1dfbfa4c2c7c359514ef2077a26d176eeaff0f61c0c30` |
| 49 | `theorem` | [WithSeminorms.toPolynormableSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-topolynormablespace.md) | 496 | `result-track:1dd69a93bb0bd1fe064f46aecd785fed6fb87ef83a49a69cefb45e8e21a5844c` |
| 50 | `theorem` | [SeminormFamily.withSeminorms_iff_uniformSpace_eq_iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-withseminorms-iff-uniformspace-eq-iinf.md) | 515 | `result-track:563bfa5525bbc880fc0bfc76eac342e97767b9cddac3832a4e63179a5a650015` |
| 51 | `theorem` | [norm_withSeminorms](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/norm-withseminorms.md) | 529 | `result-track:e60536316d15d8ea3400a9f4762620b1114139726828f8cf8ddaf4fa0e431781` |
| 52 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/instance-source-edition-5.md) | 535 | `declaration-track:abde6329d1e6bda4bb15fb57c6eaca0de68f05a05dcb0aac70a63285ddc496ad` |
| 53 | `theorem` | [WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-isvonnbounded-iff-finset-seminorm-bounded.md) | 547 | `result-track:7558d5857ba699466e5e3fdae9bf35158890981f6db94842322a47b29f9912d8` |
| 54 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_finset_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-image-isvonnbounded-iff-finset-seminorm-bounded.md) | 570 | `result-track:7a95cb9094e7bde6319750f9a414ace90ccbdb27d533d18cd54177310d32d924` |
| 55 | `theorem` | [WithSeminorms.isVonNBounded_iff_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-isvonnbounded-iff-seminorm-bounded.md) | 576 | `result-track:77719f54c48cf1c79c24536361d0f85381647cd7d268dca71280727370ce0020` |
| 56 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_seminorm_bounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-image-isvonnbounded-iff-seminorm-bounded.md) | 596 | `result-track:86ce90c740dce6b90f41dcef1d245df0b423e5d9f6eb991c5bccc3da8fa60eda` |
| 57 | `theorem` | [WithSeminorms.isVonNBounded_iff_seminorm_bddAbove](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-isvonnbounded-iff-seminorm-bddabove.md) | 601 | `result-track:14ead08b6be831fc342a39406704ecbc28bc719c5707f4399fc2f6e052e522ac` |
| 58 | `theorem` | [withSeminorms_iff_mem_nhds_isVonNBounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-iff-mem-nhds-isvonnbounded.md) | 615 | `result-track:12050af4f018746f64599a8325375be8bec9a06772a2c5625ac4bb8d204b349f` |
| 59 | `theorem` | [continuous_of_continuous_comp](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-of-continuous-comp.md) | 682 | `result-track:c929e18aa7be037734e60efe6b5ee1052a85097c1e0aa8f5d0f519ac769d0a7c` |
| 60 | `theorem` | [continuous_iff_continuous_comp](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-iff-continuous-comp.md) | 696 | `result-track:4dded7fe48eb19273ec6d7701ac8abde7602abdf2f9e43d489eb07a1b0049d48` |
| 61 | `theorem` | [continuous_of_isBounded](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-of-isbounded.md) | 704 | `result-track:3604fe93bed1ca010208d7a5ab93a5dab156beb478338d00d7f306372e849876` |
| 62 | `theorem` | [continuous_normedSpace_rng](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-normedspace-rng.md) | 717 | `result-track:31e5e58fdd44d23a92bdd528732ea33b0c0a9baf583affd294efc8874d002cd9` |
| 63 | `lemma` | [_root_.Seminorm.abs_le_of_le](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/root-seminorm-abs-le-of-le.md) | 724 | `result-track:405c0378ee4037a19deee094eb8a1262c527f11bb00a452e4e82af2fc3d723e0` |
| 64 | `theorem` | [continuous_real_rng](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-real-rng.md) | 729 | `result-track:39e55c7a77cdf298334a4260c4b69e2563b4a4a3553d9017dea08499004cd771` |
| 65 | `theorem` | [continuous_normedSpace_dom](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/continuous-normedspace-dom.md) | 739 | `result-track:e044dd466f6c6095dc38d0029b3898f1b6286cca31518810d9882836c45b46a3` |
| 66 | `theorem` | [equicontinuous_TFAE](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/equicontinuous-tfae.md) | 762 | `result-track:9f26c7fa1710454e002438bc1c13f1d8f78bc419f5bc0d68e787664173403932` |
| 67 | `theorem` | [uniformEquicontinuous_iff_exists_continuous_seminorm](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/uniformequicontinuous-iff-exists-continuous-seminorm.md) | 802 | `result-track:2f74506c0276f19d8adf612fc2b079d058e2bf5301632c5c8d8e7f4e6f396678` |
| 68 | `theorem` | [uniformEquicontinuous_iff_bddAbove_and_continuous_iSup](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/uniformequicontinuous-iff-bddabove-and-continuous-isup.md) | 810 | `result-track:f4b98c46fe40a2e5602dd97d45ed9878d58cf3bcc00b1dfa9815898d46ef49d2` |
| 69 | `theorem` | [congr](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/congr.md) | 835 | `result-track:2f9947e3e15b94a478a65fc3435a78eb59b73b60bbf034219042d0357939d369` |
| 70 | `theorem` | [finset_sups](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/finset-sups.md) | 846 | `result-track:862b41374bd56314be67dbb60e9aa3576e17e0f695eb5f5a28c620d0242979c3` |
| 71 | `theorem` | [partial_sups](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/partial-sups.md) | 858 | `result-track:c1e94930db5b61c9d32ebd1013ba83cc6c965eace0acaa92959a265db9a394c8` |
| 72 | `theorem` | [congr_equiv](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/congr-equiv.md) | 870 | `result-track:f078ec3a37cdf7b2a9ef2f9e7bb0dd8de72e6c48ba55e4eafdec8e4dc8ea33a0` |
| 73 | `lemma` | [map_eq_zero_of_norm_eq_zero](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/map-eq-zero-of-norm-eq-zero.md) | 892 | `result-track:66cc2c7ef25fd09a6aac6d95a2becdda0e43943188c6c85fb04e9ae36f7524d9` |
| 74 | `lemma` | [bound_of_continuous_normedSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/bound-of-continuous-normedspace.md) | 903 | `result-track:f8d65d9ab608487f45cdfa8b08c8760c83528fb61a3926b8d52444e6c9e21ba7` |
| 75 | `lemma` | [bound_of_continuous](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/bound-of-continuous.md) | 922 | `result-track:3b79589c5aa03907ad101e69cbd3a1149d2ce2406f66dbc1ba367a2b34167ad4` |
| 76 | `theorem` | [WithSeminorms.toLocallyConvexSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-tolocallyconvexspace.md) | 957 | `result-track:26e107094b3967d07df34560f1c48948c255383f43e304788f3f4bc4669698d6` |
| 77 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/instance-source-edition-3.md) | 972 | `declaration-track:515364bbb824e32f704d65f7bad0058c9acae6c0291bd8a10a28e8bc275e198e` |
| 78 | `theorem` | [NormedSpace.toLocallyConvexSpace'](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/normedspace-tolocallyconvexspace.md) | 983 | `result-track:27af5f2282487c860c3ed0a43b1f65151e07fbffc86a494a65443ff5766e47cd` |
| 79 | `instance` | [NormedSpace.toLocallyConvexSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/normedspace-tolocallyconvexspace-source-edition-2.md) | 989 | `declaration-track:87e2796b233fd48e16496fe5b4314875fbf567c35d72110654a7642c9a24332d` |
| 80 | `def` | [SeminormFamily.comp](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-comp.md) | 1001 | `declaration-track:f6149373804632719d1730ec1a1cd7b51dfcefed465441574a7068aa12e3b805` |
| 81 | `theorem` | [SeminormFamily.comp_apply](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-comp-apply.md) | 1004 | `result-track:2583b25b718e8b3655714b2446135fa018f6dfc4aefb42baefa646b36357db83` |
| 82 | `theorem` | [SeminormFamily.comp_smul_nnreal](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-comp-smul-nnreal.md) | 1008 | `result-track:6f023d396c1ba862fbe17e2b38330bce354b731a6a621ebb4231f06199b65749` |
| 83 | `theorem` | [SeminormFamily.finset_sup_comp](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-finset-sup-comp.md) | 1014 | `result-track:cc45f16137bfb33501e171313672b46d212b9538d0453d3e5448c154c43e5907` |
| 84 | `theorem` | [LinearMap.withSeminorms_induced](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/linearmap-withseminorms-induced.md) | 1022 | `result-track:0c638ec95125df5c982fdc9266ba2ad5c576c7801d828c370baefa60a15017fc` |
| 85 | `theorem` | [PolynormableSpace.induced](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-induced.md) | 1033 | `result-track:2adfe34d27ef8b191472e7f3c07f3f12734c6cfe02ae59d50f25e000b9b63063` |
| 86 | `lemma` | [Topology.IsInducing.withSeminorms](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/topology-isinducing-withseminorms.md) | 1038 | `result-track:2a0e0437b1edb20d0a770c5795d8fb3830658f6f23655dd31aaeea196e7a0dd8` |
| 87 | `theorem` | [Topology.IsInducing.polynormableSpace](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/topology-isinducing-polynormablespace.md) | 1044 | `result-track:87c41b78ef9a0d15d9b64d28a5ad177a5671850ca421787203beec90ea29b24c` |
| 88 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/instance-source-edition-4.md) | 1049 | `declaration-track:5a9e9ebf03ee125d1ce39a3220f24fc4daa585e3e352cabad29fd5c32b35b58b` |
| 89 | `theorem` | [Seminorm.bound_comp_of_isInducing](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminorm-bound-comp-of-isinducing.md) | 1058 | `result-track:1e82e54c9bf37a5a39340b9ca52b3125f92a2df2b13fbc9dfecb3a15cd06ee11` |
| 90 | `theorem` | [Seminorm.exists_le_comp_of_isInducing](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminorm-exists-le-comp-of-isinducing.md) | 1065 | `result-track:bee2f2b3d7703177b8b4e70ad88a2a1e015289b5a6406a308e35b78f7f196354` |
| 91 | `def` | [SeminormFamily.sigma](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/seminormfamily-sigma.md) | 1076 | `declaration-track:89ce5708c93ca651b5e95af261152a2001d338fdb199729f9305e54e9a46b9f6` |
| 92 | `theorem` | [withSeminorms_iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-iinf.md) | 1080 | `result-track:297c527555b43177f015e1846dad0a6680f98b62785b0d14630c43419f91488e` |
| 93 | `theorem` | [PolynormableSpace.iInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-iinf.md) | 1091 | `result-track:1d4c23190173792f40e3efed2e3bf54b1ab9740cd065c2d2675997983b5bd973` |
| 94 | `theorem` | [PolynormableSpace.sInf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-sinf.md) | 1097 | `result-track:ccfabf4bfca4d9f227b89c9e00581ba91332272a4eb6dcd17f96cb6df290f6fd` |
| 95 | `theorem` | [PolynormableSpace.inf](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/polynormablespace-inf.md) | 1103 | `result-track:67947b3a4ec47fa35ef35da995f45161a7d657141bf2297260b599a7b1fe5732` |
| 96 | `theorem` | [withSeminorms_pi](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-pi.md) | 1110 | `result-track:6dbba48449a4e28e89202b110955fbca11dec1b1db11b9c3f741c888ba9f4e42` |
| 97 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/instance-source-edition-2.md) | 1117 | `declaration-track:3d003e454092bda7d9baba1b0ec0bb4207cc0a8cce03386b9c0e6f0082a6fac3` |
| 98 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/instance.md) | 1122 | `declaration-track:073a7751aa01b762a5db1e6a4c66fc13a6976129173df3a11739ad96b9d2ba71` |
| 99 | `theorem` | [WithSeminorms.firstCountableTopology](../../../../FunctionalAnalysis/WithSeminormsPublic.lean/declarations/withseminorms-firstcountabletopology.md) | 1137 | `result-track:b10ca0daafd9aab1567d89b2052d57e70f54f0494c418f837e6953ff90cb7ce4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5787a7d3cf0d4e14c8aae638dc826aa9c28a34f54574f4db433d2e1e36d2f75e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variant0f97991a272a813536f687ce011a6444b2fb858ea89ab07ed1120b189594841f.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variant0f97991a272a813536f687ce011a6444b2fb858ea89ab07ed1120b189594841f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
