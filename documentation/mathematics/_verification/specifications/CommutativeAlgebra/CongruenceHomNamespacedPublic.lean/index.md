# Verification target: Congruence Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1013e724ba6516769caa820a77dd75ffc2a276d",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1013e724ba6516769caa820a77dd75ffc2a276d`.

Source path: `GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean.json)

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
| 1 | `def` | [ker](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ker.md) | 69 | `declaration-track:4aaea12df9d693cf0d0379874119daba1117c4c370de7f21108f98a53c154265` |
| 2 | `theorem` | [comap_bot](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comap-bot.md) | 71 | `result-track:8216c3364df3c6b9904e07b0dc53020964111425b373f99c22e4ea0f9056b2bd` |
| 3 | `theorem` | [ker_apply](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ker-apply.md) | 75 | `result-track:3ce3a1a663aa9d122ce90dced29a41386a199728f9088712c455c028e9771a56` |
| 4 | `theorem` | [ker_mk'_eq](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ker-mk-eq.md) | 79 | `result-track:cca05eae1fa9d4237e73f929ddceb36f8f13669590606d5aae385b04a2c9c589` |
| 5 | `theorem` | [ker_comp](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ker-comp.md) | 82 | `result-track:7a9534ebf20cb13fa82257fee198314fdd37423d148ff980ba7316c1dcd46932` |
| 6 | `theorem` | [comap_eq](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comap-eq.md) | 86 | `result-track:e0e502c307340a773dfdc33cfa1ac26487c5682c4cc64fd7c4ec93e9f636ebe3` |
| 7 | `def` | [congr](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr-source-edition-2.md) | 92 | `declaration-track:47eb4aec515faa370a51c6c821dda55cab6e88533477395686814006d122422f` |
| 8 | `theorem` | [congr_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr-mk-source-edition-2.md) | 98 | `result-track:9d720b1a3f8313f150566184b35e25cf842c68dc15aa759079d3a73efa58d89b` |
| 9 | `theorem` | [congr_symm](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr-symm.md) | 101 | `result-track:1e557259ae3787a0c845ca614f210bbceb8b958da17a085622edf335b369273a` |
| 10 | `def` | [mapGen](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/mapgen.md) | 109 | `declaration-track:73ecac481bf4ca7a07dfd379e8dbfb8c15a027fca30c81e715848cfa391c8d13` |
| 11 | `theorem` | [mapGen_eq_map_of_surjective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/mapgen-eq-map-of-surjective.md) | 115 | `result-track:e811da8d7ef24fe8e8fac1ef281383a654c979aaee4a6663d97b8d03b4568abf` |
| 12 | `theorem` | [mapGen_apply_apply_of_surjective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/mapgen-apply-apply-of-surjective.md) | 135 | `result-track:7f763db6e85d73412f29fe9972ddf4f84ec73d49afed8681f9a8c3c9d84825e8` |
| 13 | `def` | [correspondence](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/correspondence.md) | 145 | `declaration-track:eb5e5c3fd6253ecd479c2b12b15369a0d413dab95eabe62ee112a1f22974b60b` |
| 14 | `def` | [lift](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-source-edition-2.md) | 172 | `declaration-track:2b9189809f921c9aa5c4e17b8accd9b2e1f7827ad063247835f0bddca74baf72` |
| 15 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-mk.md) | 180 | `result-track:6505b5bbcccf53b54119ffedfb12b645edf9ef38d4da7d5bcd22c03674610920` |
| 16 | `theorem` | [lift_coe](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-coe.md) | 184 | `result-track:1279c4d507b58759dd6acca31aff7037c61efbb313ff2653c44dea934e45b3fb` |
| 17 | `theorem` | [lift_comp_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-comp-mk.md) | 188 | `result-track:8794d9428502c07605c7642b7d126f12d8ae287a4f2062ce7d504bce8776dec2` |
| 18 | `theorem` | [lift_apply_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-apply-mk.md) | 193 | `result-track:cbd0ad02f926780c5ad92a2de07a8ca4db70fc34e7f1bbe4b7bcea8856d8a877` |
| 19 | `theorem` | [Quotient.hom_ext](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotient-hom-ext.md) | 200 | `result-track:08223443758297a455873034239df88787edfc30e81b4fecb89c4790cedaa689` |
| 20 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-unique.md) | 204 | `result-track:f1a3e8ebe23509f45b2ba2ded0e13b827a61cba08f94c5223f4f3c3bc2588ca4` |
| 21 | `theorem` | [lift_surjective_iff](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-surjective-iff.md) | 210 | `result-track:00f5cb93ad6881c128c6f3ebd634f2a26a85fea5be56cf54231772c429bc0e44` |
| 22 | `theorem` | [lift_surjective_of_surjective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-surjective-of-surjective.md) | 217 | `result-track:256a71a6a36785b7cd6cc6b89608ff55ebf7372a74c6acf99b12b8f2f0485ffd` |
| 23 | `theorem` | [lift_injective_iff](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-injective-iff.md) | 223 | `result-track:f7ab309a50c57db5334c918653786072c5691dbaec33a020770007c66a83f5b1` |
| 24 | `theorem` | [lift_bijective_iff](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-bijective-iff.md) | 229 | `result-track:bd32a9f9dc3a2aa6299e78a76fa2df9b94c7647587d78ed1af13a27bf6093ddc` |
| 25 | `theorem` | [ker_eq_lift_of_injective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ker-eq-lift-of-injective.md) | 237 | `result-track:fcc6c00e5a7cdde8e4e95d8200d6e8f17feb3954d649b170003aaed29fb3c4f8` |
| 26 | `def` | [kerLift](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-source-edition-2.md) | 243 | `declaration-track:f90d0facc68d8f3958084d5f1c15bedc9dd7971012601ddff0a03fb71c273c6b` |
| 27 | `theorem` | [kerLift_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-mk.md) | 250 | `result-track:93e4dd3370472c1231b31b404a1b1ae0ea78af6299e5c826bc1e83ea4b470b37` |
| 28 | `theorem` | [kerLift_injective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-injective.md) | 254 | `result-track:2cc35e866d78964484be336895350505a225985197433ea8b96e95a824c0ef44` |
| 29 | `def` | [map](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/map.md) | 260 | `declaration-track:b903269955d5be0b200287c560e3169a8a2499f6127009cc1867ec90edf89343` |
| 30 | `theorem` | [map_apply](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/map-apply.md) | 266 | `result-track:b56d8e70a8d3f356f7fd177c5c7502f4f3506b8f384bcb93c448a356f667aa02` |
| 31 | `theorem` | [rangeS_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ranges-mk.md) | 278 | `result-track:0c35fe9a4f4d760502309e4c70a08f3c8493f04a2fccad6a9f06728cd654449a` |
| 32 | `theorem` | [rangeS_lift](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ranges-lift.md) | 286 | `result-track:dbb08a3543203d7b21825432f84e2bdcfaa7fc988295d1c7f8e2e2aeb6e300c6` |
| 33 | `theorem` | [rangeS_kerLift](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/ranges-kerlift.md) | 292 | `result-track:8a4f1b69bccefb1b17a17d080dfb11fb0971d97cce34f1571d5f7210d9fdb695` |
| 34 | `def` | [quotientKerEquivRangeS](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivranges.md) | 299 | `declaration-track:52b65e03a7132ae49519b25e2001681d3edd22e2a8d33f4cb8480ad232febc70` |
| 35 | `theorem` | [coe_quotientKerEquivRangeS_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-quotientkerequivranges-mk.md) | 304 | `result-track:d2fb8c976a7759d94c0d181dbbb900523beefecb2bc5d445732cdebdeaf55ffd` |
| 36 | `def` | [quotientKerEquivOfRightInverse](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivofrightinverse.md) | 308 | `declaration-track:dd7648d3e205888c4047e2dafd25d03e7171fc0bd336f10a2b6e79186ec5b842` |
| 37 | `theorem` | [quotientKerEquivOfRightInverse_apply](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivofrightinverse-apply.md) | 313 | `result-track:e2369adf56d32a3c108502a82671c23892712a4ad06dadeffe2a651a9cdcf1ce` |
| 38 | `def` | [quotientKerEquivOfSurjective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivofsurjective.md) | 322 | `declaration-track:cc726f9a44ab560d6e4f9bf6274054cad2d38af3cfc57a6ccf87dbcb0bc824cf` |
| 39 | `theorem` | [quotientKerEquivOfSurjective_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivofsurjective-mk.md) | 326 | `result-track:ff8407aa2b2ea5b032b97e4b52431e9836c71c395926db25cd3f331051c75106` |
| 40 | `def` | [comapQuotientEquivOfSurj](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivofsurj.md) | 332 | `declaration-track:0d505f4cc0c0f014cc4b1e40d771e0963f59e0589fc6683edc0e577041f56774` |
| 41 | `lemma` | [comapQuotientEquivOfSurj_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivofsurj-mk.md) | 340 | `result-track:d66773ebd827e94272b80bd7aa3037ce5a5d4319221faadf84ff24f65bf405a8` |
| 42 | `lemma` | [comapQuotientEquivOfSurj_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivofsurj-symm-mk-source-edition-2.md) | 345 | `result-track:fb2a0c4f230592b00c06ab3a355d759bff4a811e52f976ea7e33df2a72a4d362` |
| 43 | `lemma` | [comapQuotientEquivOfSurj_symm_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivofsurj-symm-mk.md) | 353 | `result-track:ef382fd893688c7cbbd4b7d510ae4b3a5bbc2b76abdb8b212c29ec0371a28860` |
| 44 | `def` | [comapQuotientEquivRangeS](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivranges.md) | 361 | `declaration-track:47f769259ce0595452a95b851f67667987bf9924c9682d2df82c1f6be5181802` |
| 45 | `theorem` | [comapQuotientEquivRangeS_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivranges-mk.md) | 366 | `result-track:128b179e7f167b693e23c19aa8358ffaeef81713c3272e3a74aec20c0f63256b` |
| 46 | `theorem` | [comapQuotientEquivRangeS_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivranges-symm-mk.md) | 371 | `result-track:a8e54b321896455fa533ff1ee834a88a83307fbf3ee474418fb88e95584acb82` |
| 47 | `def` | [quotientQuotientEquivQuotient](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-source-edition-2.md) | 378 | `declaration-track:ca41d01706062dc2b6843d77ae5f8925b59d671b78fa10cac9ab738649638425` |
| 48 | `theorem` | [quotientQuotientEquivQuotient_mk_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-mk-mk.md) | 390 | `result-track:0298e94bef33d575722dd562c6e905a0e1c9209747acef4ae5639df0d5d3a78e` |
| 49 | `theorem` | [quotientQuotientEquivQuotient_coe_coe](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-coe-coe-source-edition-2.md) | 393 | `result-track:b0bf20996d8bf1a87fbb6ca9dbf8df9168146f98b27552fbda322555d277d9e5` |
| 50 | `theorem` | [quotientQuotientEquivQuotient_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-symm-mk-source-edition-2.md) | 397 | `result-track:50efec4384df0176e327cef2659daa9857d878879f68f6d14b56a7f34b6c47ac` |
| 51 | `theorem` | [range_mk'](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/range-mk.md) | 409 | `result-track:29a0cc05b6be1bdecf977a008221d997dabdc0dc7e6bc551206373c2b0d7cebe` |
| 52 | `theorem` | [range_lift](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/range-lift.md) | 417 | `result-track:b7537a64b7cf554bcaa333e3b0e28ede4a23b0bdfb8ac036d810c997bebf9d26` |
| 53 | `theorem` | [kerLift_range_eq](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-range-eq-source-edition-2.md) | 423 | `result-track:58e1ddf4fc4a5d219fdb0f4f5859c7d1178a6da3a048525430d867e8827182a4` |
| 54 | `def` | [quotientKerEquivRange](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivrange-source-edition-2.md) | 430 | `declaration-track:ee540008b48d676a98dd4af9ed1c54f32c8d10a38cf50266cc0ca61d67fd26b5` |
| 55 | `def` | [comapQuotientEquivRange](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivrange.md) | 435 | `declaration-track:0f857f28a5d9b30a40d4e197eb91cad3e627c5fe291fee47e73ea7f1ab5bff79` |
| 56 | `theorem` | [comapQuotientEquivRange_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivrange-mk.md) | 439 | `result-track:3b7e7f9f44d6efc21e9101adde1792cf45075aafb8862a6b4c6031f432f6c130` |
| 57 | `theorem` | [coe_comapQuotientEquivRange_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-comapquotientequivrange-mk-source-edition-2.md) | 444 | `result-track:7080300952a5563bb887bb130ceb5c9cb77a1584f637a9aad63100137c89938d` |
| 58 | `theorem` | [comapQuotientEquivRange_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivrange-symm-mk.md) | 449 | `result-track:62a0713febd9d343792dc9cf7092588e831152959f61a14d68114e1cb78a7848` |
| 59 | `def` | [congrₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr.md) | 468 | `declaration-track:0789b1895461244b0a2f0edfa8a92cd9b48dccc090f6bcbea3939a0b20765030` |
| 60 | `theorem` | [congrₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr-mk.md) | 474 | `result-track:95e48e794244952f5f44978786c9d7caf75cbf073931f36ee5e6a0a98fbb3d23` |
| 61 | `theorem` | [congrₐ_symm](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/congr-symm-source-edition-2.md) | 478 | `result-track:9c65d2dab0612f9ff56b8e4834682931722b997741ca1c6fa4214f0386a8a823` |
| 62 | `theorem` | [range_mkₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/range-mk-source-edition-2.md) | 483 | `result-track:4eb6b15c9fa3c69ec48fb7705cab25c2130d9f339d4aa8aaa60d445ec9a3f36f` |
| 63 | `def` | [liftₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift.md) | 489 | `declaration-track:104b448bf6ddbaad4c57a8cb19e32cf356232f50d82d54f7427cc867f0f7327a` |
| 64 | `theorem` | [liftₐ_coe_toRingHom](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-coe-toringhom.md) | 494 | `result-track:1ca280ec7f8b24eb91d55ee6f11ce83801c9e83c4e691d62b6f3a067f3c19f3b` |
| 65 | `theorem` | [coe_liftₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-lift.md) | 498 | `result-track:8e94f0da089d89edbaad96699a0ec2db49d75e0fb0323eb52ee580368d77a77c` |
| 66 | `theorem` | [liftₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-mk-source-edition-2.md) | 502 | `result-track:c9a34bca11bbea45e593f6377a33ffb3aa1b9e4e97bea726d54d63681d698a7d` |
| 67 | `theorem` | [liftₐ_range](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-range.md) | 509 | `result-track:4e60387e27932ad170d2edeb3cea6ca48db1016a993ed368afb18dc7b77267da` |
| 68 | `theorem` | [Quotient.hom_extₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotient-hom-ext-source-edition-2.md) | 518 | `result-track:c03406f9b8ca207569d95fddd93862caa3d8c31eb426013be99cab110757b34e` |
| 69 | `def` | [liftₐEquiv](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/lift-equiv.md) | 524 | `declaration-track:7282fa897f41f72f02369afbc328b78bac8c643f7fea0fad596f28a8f1f14d2e` |
| 70 | `def` | [kerLiftₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift.md) | 531 | `declaration-track:32256b7cb117c0ab9f66424d7f641938b2da06056c2b6d3ffaeb030d7865f172` |
| 71 | `theorem` | [kerLiftₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-mk-source-edition-2.md) | 539 | `result-track:b810977297dc0abe1beb63a8811ccc061b4b8fe2eff1043e7c92bee4a568fbd6` |
| 72 | `theorem` | [kerLiftₐ_injective](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-injective-source-edition-2.md) | 543 | `result-track:a9d8d2a923ace412e140bedc39254eed75eb3e3355d4b834f3850253fca57026` |
| 73 | `def` | [factorₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/factor.md) | 550 | `declaration-track:c0c66850ad162b1dded9449a777ce6529a7fa49067c429528224d90e7cbcd1c0` |
| 74 | `theorem` | [factorₐ_apply](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/factor-apply.md) | 557 | `result-track:442ab2667299c62d17d448cf7b77b9942536012a71202ea5251419b6b6fae66e` |
| 75 | `theorem` | [factorₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/factor-mk.md) | 564 | `result-track:cee8ecca3375aa73fc13da2895994f00956e2ff587e9a25bdb9ef2e286e18281` |
| 76 | `theorem` | [mkₐ_comp_factorₐ_comp_mkₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/mk-comp-factor-comp-mk.md) | 568 | `result-track:8b994d229f91ff316eb71ba3e8d25025e784ffcd982e8a729206bc3acf9ccbed` |
| 77 | `theorem` | [kerLiftₐ_range_eq](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/kerlift-range-eq.md) | 574 | `result-track:1c1c1036f32e1b8a8e230ae8c748c4e6879a051c288931698223950b438c802d` |
| 78 | `def` | [quotientKerEquivRangeₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivrange.md) | 581 | `declaration-track:0c28fbbb5ced61f7562ce3a879c5d0c75233a27d500453a0a6b1604fd34d5037` |
| 79 | `theorem` | [quotientKerEquivRangeₐ_mkₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivrange-mk.md) | 586 | `result-track:6e86397f10e98282e651636d97acfaa379c3f4ea580dc3a582107d7f2e28b221` |
| 80 | `theorem` | [coe_quotientKerEquivRangeₐ_mkₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-quotientkerequivrange-mk.md) | 591 | `result-track:fb814169f3f9f8b16730427d2692f08dfb92aceeb38b70abad2946f6bb7888ac` |
| 81 | `theorem` | [quotientKerEquivRangeₐ_comp_mkₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientkerequivrange-comp-mk.md) | 595 | `result-track:9820e3a168f15c14dd0ca0fbf70d39af4262f418bdc58f9ccd6ed46cc445cc36` |
| 82 | `def` | [comapQuotientEquivRangeₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivrange-source-edition-2.md) | 600 | `declaration-track:ff1fbfa2590ac74d87723a805a4114a99ab70be0561e046a0d79b75ca5f19bd6` |
| 83 | `theorem` | [comapQuotientEquivRangeₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/comapquotientequivrange-mk-source-edition-2.md) | 604 | `result-track:b794c3021c5ef3e43d9f870f8ccc6d351a2d1e9b87a1cc150a07302d46b5020c` |
| 84 | `theorem` | [coe_comapQuotientEquivRangeₐ_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-comapquotientequivrange-mk.md) | 608 | `result-track:168107e4c4e8bb4900e3a2df6d14195dc4e00269b98c1c7dcf39bd4198dd2e55` |
| 85 | `theorem` | [coe_comapQuotientEquivRangeₐ_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/coe-comapquotientequivrange-symm-mk.md) | 613 | `result-track:1db952d45802b43e4650f1fedeb3769f6e851e12cf9f912afb35afac1e297c47` |
| 86 | `def` | [quotientQuotientEquivQuotientₐ](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient.md) | 621 | `declaration-track:ba801d49e2298de5d6967b36fb927e473c59f0c40a601aa0250635cdfe0426cb` |
| 87 | `theorem` | [quotientQuotientEquivQuotientₐ_mk_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-mk-mk-source-edition-2.md) | 627 | `result-track:401e462af53831d99361e532fcade952a45b74ba7377138bf0b8c674f00b0d70` |
| 88 | `theorem` | [quotientQuotientEquivQuotientₐ_coe_coe](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-coe-coe.md) | 631 | `result-track:4122ccb81e46713850e945571c033ea3e38ae4a2e5fd2a50feb147e0cbbaf80e` |
| 89 | `theorem` | [quotientQuotientEquivQuotientₐ_symm_mk](../../../../CommutativeAlgebra/CongruenceHomNamespacedPublic.lean/declarations/quotientquotientequivquotient-symm-mk.md) | 636 | `result-track:01877f48f4b9d234ed03af8d31a1f732973264e8c0b3ccae29e000cf60b453c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32b2f5717afa767132962953ed080484b975ee29424e6f1f30960b960ae05f75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean","GRWTSK/_verification/specifications/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
