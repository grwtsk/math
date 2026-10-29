# Verification target: Adjoin Root Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "870174478a633a7310d14045a12f42991fba1dc1",
  "lexical_observation_count": 158,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `870174478a633a7310d14045a12f42991fba1dc1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean.json)

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
| 1 | `def` | [AdjoinRoot](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/adjoinroot.md) | 70 | `declaration-track:c1e6b408d42ec4e3e06bcdeeb4ac4adbd9a13df3cc2ee58d445be7b8024669bf` |
| 2 | `instance` | [instSMulAdjoinRoot](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instsmuladjoinroot.md) | 81 | `declaration-track:6665d19c79611ebf3f3492f0f54bba30fcdfbcd02a5f10bffe4b80cc0f824c68` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 84 | `declaration-track:51ca222f8c8712b90ea7292ae8a756b47b5481556cf3ed9c6163906de8c4463b` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 89 | `declaration-track:e5c1c07cf7c8752500278684738c9d27fa7052a7f24c3eaa7becd47eeeae6c37` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 92 | `declaration-track:a7fb45ec38e7e307d0bbb62dba66e181a7d98290d472bd90d0a44525e37a046f` |
| 6 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/nontrivial.md) | 95 | `result-track:a69851a90504f8f3e04123ebd9871215c0a08d6b1ed14a41b229f016ce0a9657` |
| 7 | `lemma` | [nontrivial_iff_of_monic](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/nontrivial-iff-of-monic.md) | 102 | `result-track:6ebde9fdacc0961b929554e1ca75a19646977423f241c8b93090d523eb3bf7ef` |
| 8 | `def` | [mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk.md) | 107 | `declaration-track:2c942abbd0a2d1aa032efcb0e596fb36fbdf9d72bcb0f5afd67c83699867ac02` |
| 9 | `theorem` | [induction_on](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/induction-on.md) | 111 | `result-track:93c220d3419f4ca0c038ffe2807268bfe68caf28f1dbd2296932dafb670a4811` |
| 10 | `def` | [of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/of.md) | 116 | `declaration-track:5e28da8266936c05da505195c313a2fd75a55ca9ef1ba1029a9fc776cf6c7d60` |
| 11 | `theorem` | [smul_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/smul-mk.md) | 120 | `result-track:a45c01df373cdfa0401a9b11d7f479066b6aabc3cdc6a52a6b34b46c87d7ecea` |
| 12 | `theorem` | [smul_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/smul-of.md) | 124 | `result-track:5b3679476109fb3ea6f9bf14b326db5119d927f467d2961769536c6300357da7` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:35c1231a57bb14b6ea2ec8acd65b2cb259d5881e3195194818ce6d88ddee2956` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 132 | `declaration-track:c7f96c740328be4105c5182615e2fb30921043084a4712762f71c691a1244ed1` |
| 15 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isscalartower-right.md) | 137 | `declaration-track:ca61dc74fefc63209ef277e8a59ce77c3fc678e88e2c3b9926f4623a736ee688` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance.md) | 141 | `declaration-track:09ef6681327b432d0f9157ccabdb06046f9460764ede8227fe9fde96df26e5d5` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:2cc5314721e53b6d6769f713f5c3b2d67de4416e80960dd86665e2da19f92455` |
| 18 | `def` | [mkₐ](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 152 | `declaration-track:4cf764644c92ec1b3db606d137c4efe1f460fe8a74c5e6d77276c563b9ab6fe0` |
| 19 | `theorem` | [mkₐ_toRingHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-toringhom.md) | 155 | `result-track:15a04da39feb06f4783b0b46ac84db6bdd739cfbec32f2738033d21ee9fac209` |
| 20 | `theorem` | [coe_mkₐ](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-mk.md) | 157 | `result-track:cc15a41d0d2a30aee57f3c3ce4fe726ac7917c1bdd109404b6f95de4e285d420` |
| 21 | `theorem` | [algebraMap_eq](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algebramap-eq-source-edition-2.md) | 160 | `result-track:cb166e70f9b02f4ce518e19ec6a1decdb49212e7f5f2e18091abf28363ba7e89` |
| 22 | `theorem` | [algebraMap_eq'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algebramap-eq.md) | 164 | `result-track:83cc1838c71437f3e7d132361c8bbe9248489933f23da096b0aba87fca4006dc` |
| 23 | `instance` | [finiteType](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/finitetype.md) | 168 | `declaration-track:9ec60456968b564a52a0fcf84af760edfa5d37fec7d84e394486b6e2ba713d77` |
| 24 | `instance` | [finitePresentation](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/finitepresentation.md) | 172 | `declaration-track:4dd7f4b1cffafaa36cf366ba0ea8cf7a729cc2bd4a22c7060211a79ca6230171` |
| 25 | `def` | [root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/root.md) | 177 | `declaration-track:a51954a1794ef09cb7f392fee8e8eab97254b07107d52107977bc56800d4512f` |
| 26 | `abbrev` | [ofAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/ofalghom.md) | 185 | `declaration-track:e8f764994cc6bda15e347de2fc08c570d62c9986ea8236f4a4d535d42a0ae1eb` |
| 27 | `lemma` | [toRingHom_ofAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/toringhom-ofalghom.md) | 187 | `result-track:baf77aa623267fa0eef7d07d3ba91e16c97af5469f97f11b553783494aa65d67` |
| 28 | `lemma` | [coe_ofAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-ofalghom.md) | 189 | `result-track:9642e6988aace65fde1500d28674cab112d8a3a30a5b0dfb4ac7823ac47d06b4` |
| 29 | `lemma` | [ringHom_ext](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/ringhom-ext.md) | 194 | `result-track:f37320bfc7791eb53723030e18acb4653a4ce51e0fd76b0db580389c622a3650` |
| 30 | `lemma` | [algHom_ext'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/alghom-ext-source-edition-2.md) | 202 | `result-track:d25197390514546f09b5bee02b2f055d428d8832b61b139b49b8fdb2eb603415` |
| 31 | `instance` | [hasCoeT](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/hascoet.md) | 211 | `declaration-track:b3929b2c4959e59bc74701e240e1e3171e126a42a9655de14cd1a677045ce627` |
| 32 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/alghom-ext.md) | 217 | `result-track:ac437fa2736524b4f5551d70e20c8cc8d8c2aac4cfd886f0f7a5f7b04dd91bcd` |
| 33 | `theorem` | [mk_eq_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-eq-mk.md) | 222 | `result-track:e3ee576f28fee58fc1db8c9aa055a4b5db1a2b86e0879d9a1043fb2634c2b642` |
| 34 | `theorem` | [mk_eq_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-eq-zero.md) | 226 | `result-track:ecf35640ec317b6d1d7cd4bab3b82e53505ea4f103557bcdcda9c1727a0e2c6c` |
| 35 | `theorem` | [mk_self](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-self.md) | 230 | `result-track:f3c0dd338cf4992d2cea35bb75eb7d8c18c72aacb60fbda7f3f5bc93429c20b4` |
| 36 | `theorem` | [mk_C](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-c.md) | 234 | `result-track:8edf2475466310a2ba093e1322a5a43788dab2ce6e3b74e7270e5c08656252ad` |
| 37 | `theorem` | [mk_X](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-x.md) | 238 | `result-track:3a6bb8e6bdbc21757bb308cfb11df7cb39728da7bdf9a38ba28b74a72083cde6` |
| 38 | `theorem` | [mk_ne_zero_of_degree_lt](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-ne-zero-of-degree-lt.md) | 241 | `result-track:209e5c8544f779651e5ecf335820ed5062758dc2b3f0a76d2d6521080d05770a` |
| 39 | `theorem` | [mk_ne_zero_of_natDegree_lt](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-ne-zero-of-natdegree-lt.md) | 245 | `result-track:71b10a75e3bb564741396c9e9f5d58a1815c07fbf096f0763c23b30f2701ef65` |
| 40 | `theorem` | [aeval_eq_of_algebra](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/aeval-eq-of-algebra.md) | 249 | `result-track:59194ee7aa4889831b6932dc208bc635821e060495460255ebf71e0c6a15b8da` |
| 41 | `theorem` | [aeval_eq](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/aeval-eq.md) | 260 | `result-track:483e18b8ccfb8eb1babbcdf0af56b90bfd26dca9099b3e40bb5c316a8d0f17d6` |
| 42 | `theorem` | [adjoinRoot_eq_top](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/adjoinroot-eq-top.md) | 263 | `result-track:f6d07bae0ac5a14a6e050a0bc0afdd74a2303ac2dd4614edc8d3b3ba97368881` |
| 43 | `theorem` | [eval₂_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/eval-root.md) | 269 | `result-track:780b751ff5494aa57a855fd349f73f847b3394fe2c706e9b5c0b152766ded17c` |
| 44 | `theorem` | [isRoot_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isroot-root.md) | 272 | `result-track:00174a0f79a7410091660b62276edb1506dc255e651aea0ec726052a17bd7143` |
| 45 | `theorem` | [isAlgebraic_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isalgebraic-root.md) | 275 | `result-track:545f712d024d6f7b4f8ae75229b86c1f36ea4283f1b65846ee4895786144f114` |
| 46 | `theorem` | [of.injective_of_degree_ne_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/of-injective-of-degree-ne-zero.md) | 278 | `result-track:21044a3cf6ed05581c8750cb6f16edf81a690e0e92b1439caa33c58a1f449d1b` |
| 47 | `theorem` | [of.injective_of_monic_of_degree_pos](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/of-injective-of-monic-of-degree-pos.md) | 290 | `result-track:a1507cda3d5f61dae9db949c886e5f436f2d2c9b21cf69724b007d4a5e9722e7` |
| 48 | `lemma` | [faithfulSMul_of_monic_of_degree_pos](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/faithfulsmul-of-monic-of-degree-pos.md) | 296 | `result-track:7c6a46ab08b0d8e3a6ba820839220becb6adfa2ffd7ef2d9f4e47e07ac70a161` |
| 49 | `def` | [lift](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/lift.md) | 304 | `declaration-track:e8f7b86e8f39d66545b36fbac0252354fcf080fd78cc888f7904ea4be2f61abd` |
| 50 | `theorem` | [lift_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/lift-mk.md) | 313 | `result-track:51c29857a9342776c6fdf8cad92b47c7f3f1f23df4b9e057ddc16889d9d59dac` |
| 51 | `theorem` | [lift_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/lift-root.md) | 317 | `result-track:3f76feee9fed21a54b9397c1c5cdb4c46b01b6b79776b1198fd2b2be5232d62c` |
| 52 | `theorem` | [lift_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/lift-of.md) | 320 | `result-track:7ce3a97cf3ea38de88309a3dd2e3ac0b786afa91dce719302292e1298885153f` |
| 53 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/lift-comp-of.md) | 323 | `result-track:9bf51dc0bd98c99502a25f05c2912c5726fe7ff25e402f6b80a4ab3c2e79dc8c` |
| 54 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/liftalghom.md) | 331 | `declaration-track:cd2dafa9164aec184f1e2e43caf44f17251bc040642563f3c5be9b530c105626` |
| 55 | `lemma` | [toRingHom_liftAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/toringhom-liftalghom.md) | 335 | `result-track:6d71a45c5cd87e1d1afa8c6f94093661101678208f9254bdad80226ea65ad30b` |
| 56 | `lemma` | [coe_liftAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-liftalghom.md) | 338 | `result-track:61096374e57f6f4d315ddd0560679fd0ed39e929486fccac513506fc1c019114` |
| 57 | `lemma` | [liftAlgHom_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/liftalghom-of.md) | 342 | `result-track:e6ef4224aaa74368e6c384b513c061217751a179967dab2124fc740cf4ce0033` |
| 58 | `lemma` | [liftAlgHom_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/liftalghom-mk.md) | 346 | `result-track:afd789d36e936b3bc28973ee7e3bc9cc260b370494e18028b1e2b586c8a969ce` |
| 59 | `lemma` | [liftAlgHom_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/liftalghom-root.md) | 350 | `result-track:74f0f0fabc69d0525ee85ee937047fb5dfac9b0f51d4f518a335c2c7801f5b61` |
| 60 | `theorem` | [aeval_algHom_eq_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/aeval-alghom-eq-zero.md) | 359 | `result-track:72969f226abe795b0e138aa0c87382f4bc263de1e3c3cb24f0bbf34d9d99cbd3` |
| 61 | `theorem` | [liftAlgHom_eq_algHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/liftalghom-eq-alghom.md) | 366 | `result-track:ab1d6d5e959678a3cc158c5218c61bbe2d1c5625f79bc9a825f84ae334218316` |
| 62 | `theorem` | [root_isInv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/root-isinv.md) | 376 | `result-track:cad625ea8665e39f1045c58c57d42f05b053f19949c6d4ed4bde0145760d9293` |
| 63 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/alghom-subsingleton.md) | 380 | `result-track:381b0ebc0494e9218c06ef9981ce2044bd377d07c0e73a9e154c3677af977e2f` |
| 64 | `theorem` | [isDomain_of_prime](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isdomain-of-prime.md) | 392 | `result-track:44aa74bac66bc481d2d9e4c89463d518d0cf42371421d74cc82d9c30e1fd55f5` |
| 65 | `theorem` | [isTorsionFree_of_prime_of_degree_ne_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/istorsionfree-of-prime-of-degree-ne-zero.md) | 396 | `result-track:3e40d8db596a8cfa4d70fa6637ae882e6bea4f1b7f6e9ae42b85a0cc236e6087` |
| 66 | `def` | [map](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/map.md) | 410 | `declaration-track:f238ccfc59299d10c02d5af7a66f05b07075847b68a124263b741f9b662f3451` |
| 67 | `lemma` | [map_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/map-of.md) | 413 | `result-track:80b81799598580642cf7db01296258a5b5d98cfd45fe95c190d60bbf3793fee9` |
| 68 | `lemma` | [map_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/map-root.md) | 416 | `result-track:91be856a0c120c7f0cbd5440f3fcf16ba21d094e48b5470e1c356fe88c44e006` |
| 69 | `lemma` | [map_comp_map](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/map-comp-map.md) | 419 | `result-track:3b69e9c148fd759a8896149e94eba07d1ddd62efb7dc4acd941a4f5fc0dc6bd6` |
| 70 | `def` | [mapRingEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mapringequiv.md) | 425 | `declaration-track:f7e1d47e8908aa02b46b9f33868a0df198167f739bcb3361756153b5c538a6de` |
| 71 | `lemma` | [coe_mapRingEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-mapringequiv.md) | 433 | `result-track:9e92acf5202bf2536dd7a5943ea811cb8f2199efca2651e7c9f57cd8dbc298e1` |
| 72 | `lemma` | [symm_mapRingEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/symm-mapringequiv.md) | 436 | `result-track:1c4b60f3fafb6a47e04babfff856a02eb5e82b32506b4ef275112e1127bf4638` |
| 73 | `def` | [mapAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mapalghom.md) | 443 | `declaration-track:6e10b523ceec48b326faa8c6a54885b45e8f37476c30004ac3b6d65dd5e8159e` |
| 74 | `lemma` | [coe_mapAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-mapalghom.md) | 448 | `result-track:337d72e8a28e16f246611409c7d3ebba5e9bd148959f3955061f2e656f40ce0f` |
| 75 | `lemma` | [mapAlgHom_comp_mapAlghom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mapalghom-comp-mapalghom.md) | 451 | `result-track:97a0f1c3feadfe71212d5c7ec7c6fac51e992dac8955fdbea23b3033026b9551` |
| 76 | `def` | [mapAlgEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mapalgequiv.md) | 460 | `declaration-track:e06ce6e9fb54c0a7f0bfb06d7a2ccc50e3af8ead4f8b5674f517a34853335879` |
| 77 | `lemma` | [coe_mapAlgEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-mapalgequiv.md) | 471 | `result-track:90d1720e6f7492ebb2c66cbd4d153c38932e982ab171d6739b3a72d8dcb3a8a8` |
| 78 | `lemma` | [symm_mapAlgEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/symm-mapalgequiv.md) | 474 | `result-track:4eed481d79c51069ba3379d9cdf19c81108ae91977d3440a8b2d6c9630a46aa4` |
| 79 | `def` | [algHomOfDvd](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/alghomofdvd.md) | 485 | `declaration-track:c4268b88341a6d9f8f895ab18fef966f09107c1241cc909a36715355738e3c32` |
| 80 | `lemma` | [coe_algHomOfDvd](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-alghomofdvd.md) | 488 | `result-track:0a73ab348896c2ed5575903aab05736dd5b4d7e9cb46637db5e88d16d136217d` |
| 81 | `lemma` | [algHomOfDvd_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/alghomofdvd-root.md) | 494 | `result-track:ce633219e2e7fc62c9a019f03e2ece8ac3550dce06cd34e71915c95a6e1b100e` |
| 82 | `def` | [algEquivOfAssociated](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofassociated.md) | 500 | `declaration-track:68fa671b14d9bf470e29b748a59afd46fe9a6435ff13500ae8b33fd306dd81a0` |
| 83 | `lemma` | [coe_algEquivOfAssociated](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-algequivofassociated.md) | 503 | `result-track:0debdf01856ce679e0471a6773ab63ed5dde055881dbc81564a4698c5511aa46` |
| 84 | `lemma` | [algEquivOfAssociated_symm](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofassociated-symm.md) | 506 | `result-track:8b79def0af594d3af9c9924e8edb0a41435888d28d778322c825a4d513435079` |
| 85 | `lemma` | [algEquivOfAssociated_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofassociated-toalghom.md) | 509 | `result-track:9395605601f9b13c8b5ac18a277778843b80b7949f8536095220ad645763956e` |
| 86 | `lemma` | [algEquivOfAssociated_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofassociated-root.md) | 513 | `result-track:fbfb29f20796365de9e57184baa05e839fe8b825fe37b5563b58fd78e5fa5a4e` |
| 87 | `def` | [algEquivOfEq](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofeq.md) | 520 | `declaration-track:0d0d8e462e80ca2d5c68233b38bb8128e59f21492f20c0b7e50bd7d23c1a277c` |
| 88 | `lemma` | [coe_algEquivOfEq](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-algequivofeq.md) | 523 | `result-track:bc0da07a202b82b3cc52a8912ba23867967392cc8550eb539296e8980787de01` |
| 89 | `lemma` | [algEquivOfEq_symm](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofeq-symm.md) | 526 | `result-track:0ced8c3c23d8caa6a212f9d9d279e10f6cba4d889b98c1755c9412c2ef8c9982` |
| 90 | `lemma` | [algEquivOfEq_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofeq-toalghom.md) | 529 | `result-track:70f8adac2bcb589c10777bd5a9086230430996a3f1a8b572eb9eba4c8d44ed41` |
| 91 | `lemma` | [algEquivOfEq_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/algequivofeq-root.md) | 533 | `result-track:906a85b506b871c08b28ea3362772da143068efd58d05c9a07990b3a18051bfc` |
| 92 | `def` | [compAlgEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv.md) | 541 | `declaration-track:9ea7aab003316f61231c7021c9587f025aedce11a9bba6e2367587d8135b6aee` |
| 93 | `theorem` | [compAlgEquiv_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv-of.md) | 582 | `result-track:eb9e450ddf1edd91ab5d97fa4950ba1e554276d97ce9607900927bb5df3f8328` |
| 94 | `theorem` | [compAlgEquiv_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv-root.md) | 588 | `result-track:e1cea1a3cb37fe0c94503a09e0cadcc04db081dc517be79d1103f73757cb3e99` |
| 95 | `theorem` | [compAlgEquiv_symm_of_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv-symm-of-of.md) | 593 | `result-track:0cab9f862517893eb7e57ba85ab2bbd44ef8a45db08e9a28557871cb389ef420` |
| 96 | `theorem` | [compAlgEquiv_symm_of_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv-symm-of-root.md) | 598 | `result-track:254876876254388fd515890aba28173d5e27e63a3797a53a89d378234e18de0b` |
| 97 | `theorem` | [compAlgEquiv_symm_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/compalgequiv-symm-root.md) | 604 | `result-track:3fcf6e72eed35b5fea7dfa261ac2b23fe1296a3d89022a3cfcdf071c968bf624` |
| 98 | `theorem` | [isField_iff_irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isfield-iff-irreducible.md) | 616 | `result-track:3900934822d1356596e9ba87812985794cd52df56bf55950bf77ae23d5f16569` |
| 99 | `instance` | [span_maximal_of_irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/span-maximal-of-irreducible.md) | 620 | `declaration-track:7bf9cc7a726cc703c9f5362e7d905e0fa1b79ccbaf051f6aea54f45a7cd3d970` |
| 100 | `instance` | [instGroupWithZero](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instgroupwithzero.md) | 623 | `declaration-track:7ba72cf17806e0df30749254100e4c300fd14d03b8b926ba190a157e48bb0a3e` |
| 101 | `instance` | [instField](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instfield.md) | 628 | `declaration-track:9cf7a34502e79a1a7a4949d2fa04e7ab99f72beedb88583bf798847540912167` |
| 102 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-injective.md) | 645 | `result-track:4a9b6f3564639154dab99439b15aaee3928b21eaa4e881e9dc2c870941e32b6a` |
| 103 | `theorem` | [coe_injective'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/coe-injective-source-edition-2.md) | 649 | `result-track:7abc0774388be98c2eeef4c7f7226ba3368ca954cfafa376274da31bd11dddd3` |
| 104 | `theorem` | [mul_div_root_cancel](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mul-div-root-cancel.md) | 654 | `result-track:be48a462b8e7b7e3ba6d07961ba1cb3dce85a65df27d314a791ae048187a3dcb` |
| 105 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 662 | `declaration-track:5542ab6ff1d570b29c56b55c8ce726d70a2267508000fcfeb7fdc9c0fad49739` |
| 106 | `theorem` | [isIntegral_root'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isintegral-root-source-edition-2.md) | 671 | `result-track:39e6b8d50f85420ef95db3be97833372e2ef8fb04f52e77e48728aa7b250495d` |
| 107 | `lemma` | [isIntegral_of_monic](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isintegral-of-monic.md) | 675 | `result-track:21b4b6fafa5e17b2ddb58fc5f91b6111154c9cfd5431b5c34b700ae5ab0e014e` |
| 108 | `lemma` | [isLocalHom_of_monic_of_degree_pos](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/islocalhom-of-monic-of-degree-pos.md) | 680 | `result-track:25d29f3596f2ac543bf1281d81e067f73a9b930c7578cad890c0713b3693f80a` |
| 109 | `def` | [modByMonicHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/modbymonichom.md) | 688 | `declaration-track:07288da94f7622c23d1bcc4429310a7099509f88365ebdbcb3f8920d865cadd7` |
| 110 | `theorem` | [modByMonicHom_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/modbymonichom-mk.md) | 695 | `result-track:ce14f472573e358e3749c57712eaef5591544dd016160f0fa48870ee795f7355` |
| 111 | `theorem` | [mk_leftInverse](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-leftinverse.md) | 698 | `result-track:04a0b439ea13818b6d7693450c949959f167912f1328c5dd2c73653bef432d48` |
| 112 | `theorem` | [mk_surjective](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/mk-surjective.md) | 704 | `result-track:74a2bc9d4965ec1c4c69d8a4d289c831fa25c2e64cf8d1b840e3f549cad4feac` |
| 113 | `def` | [powerBasisAux'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasisaux-source-edition-2.md) | 709 | `declaration-track:bfe98cfb84b905e1b589a991a54d08529b81414dc8947bd5e7f0a0d6e82cd566` |
| 114 | `theorem` | [powerBasisAux'_repr_symm_apply](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasisaux-repr-symm-apply.md) | 735 | `result-track:ac9d41cbc9edf898fd79c875459fd062bfa85769f408a452a2110aa0507723ba` |
| 115 | `theorem` | [powerBasisAux'_repr_apply_to_fun](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasisaux-repr-apply-to-fun.md) | 742 | `result-track:d169f30543c5582c4bdc43d39847bde7756dad502eca45466ad650ba27bade27` |
| 116 | `def` | [powerBasis'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasis-source-edition-2.md) | 749 | `declaration-track:78103380f8db17a16460fd29b868e47b090351ae56558ba9b55f742b63d2e08f` |
| 117 | `lemma` | [Adjoin Root Namespaced Public](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/free-adjoinroot.md) | 764 | `result-track:e65c89f78a0f7ad7947763d0d5e2ffd43bac6d4ca1026d270d5c3792b161e04b` |
| 118 | `lemma` | [Adjoin Root Namespaced Public](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/finite-adjoinroot.md) | 767 | `result-track:b8a8c1d263f6b37ffd34002c9a55a73934663cf2186de1de55d3ce6bc09bd7e5` |
| 119 | `lemma` | [Adjoin Root Namespaced Public](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/free-quotient.md) | 771 | `result-track:36fd109afaf954dee6f8f93c35299e7e71e01f02c14d97247bc723b441facc26` |
| 120 | `lemma` | [Adjoin Root Namespaced Public](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/finite-quotient.md) | 776 | `result-track:f037ab517b676a164be241031a06b093eef8cb428e2c1186cea82414aed0a008` |
| 121 | `theorem` | [isIntegral_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/isintegral-root.md) | 782 | `result-track:114075f3bad59c3fc9b61b6e3fa1499c7ec8a0b4166e0206b6c9803a31cc951f` |
| 122 | `theorem` | [minpoly_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-root.md) | 786 | `result-track:cff0afd90458260f5e7a9968203c9a0e3396f14610cf2aa484de7d98d35a9681` |
| 123 | `def` | [powerBasisAux](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasisaux.md) | 806 | `declaration-track:4d4e9c69199be866c2c5c6eae7297d4ad7384311d3bad8dc973f55e77b6aa244` |
| 124 | `def` | [powerBasis](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/powerbasis.md) | 826 | `declaration-track:0ddb2dfa46f1df2d661983782b256abdc623f30e4bb6df7a0b0503ffff74ff9a` |
| 125 | `theorem` | [minpoly_powerBasis_gen](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-powerbasis-gen.md) | 832 | `result-track:dbf193b7c4e9f5fc18f67eccd883a12fc62056aa239da204205e88756c7cb818` |
| 126 | `theorem` | [minpoly_powerBasis_gen_of_monic](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-powerbasis-gen-of-monic.md) | 836 | `result-track:6059458f2bda2e6329efe88f0190cec9fc0a6193338c3ee273dcdb1d4b6fc00e` |
| 127 | `theorem` | [Adjoin Root Namespaced Public](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/finrank-quotient-span-eq-natdegree.md) | 843 | `result-track:cf0ce466cecddea75a9ca0463bc0c05d5428f672af39202063dfa47e546be4b4` |
| 128 | `def` | [Minpoly.toAdjoin](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-toadjoin.md) | 865 | `declaration-track:4205acea296d8b10c50457f7e381542f17de17142530bab4fe576e5a47fcc4ef` |
| 129 | `theorem` | [Minpoly.coe_toAdjoin](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-coe-toadjoin.md) | 872 | `result-track:19d66dc345008112ae68cef032626fc43c923d3265bec15cbeee9bf9fec749ea` |
| 130 | `theorem` | [Minpoly.coe_toAdjoin_mk_X](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-coe-toadjoin-mk-x.md) | 877 | `result-track:5a606647bcaa94ec5ca363915da309968a873dc97b8c455ccc5a12c6ce9259b3` |
| 131 | `theorem` | [Minpoly.toAdjoin.surjective](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/minpoly-toadjoin-surjective.md) | 881 | `result-track:f1a7250651c57524598cf4271792816ef4d221f09c033d45683b5da5077db63f` |
| 132 | `def` | [equiv'](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/equiv.md) | 900 | `declaration-track:3587b8935306c511376fcbf2a2a1443d7d29a6484ce1134a6dd71fb50bfb7588` |
| 133 | `theorem` | [equiv'_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/equiv-toalghom.md) | 914 | `result-track:d480f593e137a71780e8edc7c96f9c219100a4e25fc8d4d84cd0eaa3f68fdde3` |
| 134 | `theorem` | [equiv'_symm_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/equiv-symm-toalghom.md) | 920 | `result-track:407a128f3533270c939436497ea249a3ddb1557c5c39a34a765a6296283c389a` |
| 135 | `def` | [equiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/equiv-source-edition-2.md) | 932 | `declaration-track:80b046a69c39b1447bd68d99e96c88f0e2c2bc6e2fba5ebdd7130880b4c1d35f` |
| 136 | `def` | [quotMapOfEquivQuotMapCMapMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapofequivquotmapcmapmk.md) | 960 | `declaration-track:a80d0784bdc97cecda3195c5c04b6ca0b2f55fba01c594678c9d0d8b3fafeb33` |
| 137 | `theorem` | [quotMapOfEquivQuotMapCMapMk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapofequivquotmapcmapmk-mk.md) | 969 | `result-track:31dae9f683f14380bd4f050366edebdb8b27572eab19cc47cabd360e3db31377` |
| 138 | `theorem` | [quotMapOfEquivQuotMapCMapMk_symm_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapofequivquotmapcmapmk-symm-mk.md) | 978 | `result-track:38bcb73ec125f888b567b12922d4fef8c32f8995aac3686d53924fa65278eee4` |
| 139 | `def` | [quotMapCMapSpanMkEquivQuotMapCQuotMapMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapmk.md) | 990 | `declaration-track:6ae56236eda4c3176008859ada38710b69b2b651afc50b11673d00b164d1d1fa` |
| 140 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapMk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapmk-mk.md) | 1000 | `result-track:54bb53044c8d50f8872b439092cc079e31475495ede32988d6e2b6972d62c09a` |
| 141 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapMk_symm_quotQuotMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapmk-symm-quotquotmk.md) | 1009 | `result-track:3645371742b5ce36eab8e6983bb3ec60bfdd7dd8d96b6831019c34044d192ba8` |
| 142 | `def` | [Polynomial.quotQuotEquivComm](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/polynomial-quotquotequivcomm.md) | 1021 | `declaration-track:59aa56dd50463f4b4f41e3f3c069f1364648f180902176a09840afddd1f94b8d` |
| 143 | `theorem` | [Polynomial.quotQuotEquivComm_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/polynomial-quotquotequivcomm-mk.md) | 1031 | `result-track:d2cfdc6e0d1b93affb1bf7878628377c9c6bd19fb7ba3ec4351400c8b5dd0d72` |
| 144 | `theorem` | [Polynomial.quotQuotEquivComm_symm_mk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/polynomial-quotquotequivcomm-symm-mk-mk.md) | 1039 | `result-track:43c26070659af0fd83ddd963cf4c6dd18680d0dcbc096e5a3ca9ce2e6309bf4d` |
| 145 | `def` | [quotAdjoinRootEquivQuotPolynomialQuot](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotadjoinrootequivquotpolynomialquot.md) | 1048 | `declaration-track:1c0307f4b74e18176f0370727f6ff8adfc295e2f0402af8b0ea5b6967f2e4820` |
| 146 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_mk_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotadjoinrootequivquotpolynomialquot-mk-of.md) | 1057 | `result-track:afcd7d1ace3f49b27c7e2754b92aadabfbb97c867e54fd8fa396e71aeada0c43` |
| 147 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotadjoinrootequivquotpolynomialquot-symm-mk-mk.md) | 1063 | `result-track:7bd8137343833f57b8034dec54e157b8864b3dbd5600fd581facc3c107b511bd` |
| 148 | `def` | [quotEquivQuotMap](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotequivquotmap.md) | 1077 | `declaration-track:3f818b0b2a09e7f682fed5ab162fb2a09bb495338f35c9a7ca1150f6f320ffd3` |
| 149 | `theorem` | [quotEquivQuotMap_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotequivquotmap-apply-mk.md) | 1090 | `result-track:39626f67110e851d18a38b8c34bcf8cd8f25b69c37e80812b6ac1f0d28c6e011` |
| 150 | `theorem` | [quotEquivQuotMap_symm_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotequivquotmap-symm-apply-mk.md) | 1096 | `result-track:24eb6105d01c33793a8ed1be20855e285e692301eba2e7ec77ce4ac59353eb2c` |
| 151 | `def` | [tensorAlgEquiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/tensoralgequiv.md) | 1113 | `declaration-track:74b131f93f44314e56fc6c89db6e7e6bfa3054fe858594f157d0940e5f9faed4` |
| 152 | `lemma` | [tensorAlgEquiv_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/tensoralgequiv-root.md) | 1133 | `result-track:30cfb65761337932861211fab2ee54d1dbb30a5ef3868fd5f246f6e9419057fc` |
| 153 | `lemma` | [tensorAlgEquiv_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/tensoralgequiv-of.md) | 1136 | `result-track:838981e0ff91e16d5296807528ae6efff2dd96b8694ee2ee9133526f4f0a624d` |
| 154 | `def` | [quotientEquivQuotientMinpolyMap](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotientequivquotientminpolymap.md) | 1152 | `declaration-track:53b56a2453dafb7ea3037353536813cae868480fe8414147e14f1d84dc072da5` |
| 155 | `theorem` | [quotientEquivQuotientMinpolyMap_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotientequivquotientminpolymap-apply-mk.md) | 1172 | `result-track:a760ec2233b729f8921a341f34d8b026cbf3cd768a13b2a57e82d74b4d6dbf87` |
| 156 | `theorem` | [quotientEquivQuotientMinpolyMap_symm_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/quotientequivquotientminpolymap-symm-apply-mk.md) | 1183 | `result-track:56cbcf585d33227385ae358b66af785a1a31f0887aa9955826169750ea086144` |
| 157 | `theorem` | [Irreducible.exists_dvd_monic_irreducible_of_isIntegral](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/irreducible-exists-dvd-monic-irreducible-of-isintegral.md) | 1195 | `result-track:2693376d351ca143c16de9671a4882a1a37de9560b49e71d25c4e662077c7186` |
| 158 | `lemma` | [Polynomial.Monic.exists_splits_map.](../../../../CommutativeAlgebra/AdjoinRootNamespacedPublic.lean/declarations/polynomial-monic-exists-splits-map.md) | 1205 | `result-track:81cf45a2d3e0520f1cb3a1e67729fbe7badb4436c7ab7f7bf1b2dbc282228ea6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53ce18a376d4e00f6fd1dadf54e45fc232fe4c15e982071e9964f37c839c0ef0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
