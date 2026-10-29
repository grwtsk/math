# Verification target: Localization Basic Map Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62eaa62c115f533d629570cd23f1ba7db05ad97f`.

Source path: `GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonZeroDivisors` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocalization](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-source-edition-2.md) | 99 | `declaration-track:25b126eb2d7ae3480ca749dcd6b3eea41d4c700f3c03355909ab10a36e09e061` |
| 2 | `theorem` | [map_units](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-units.md) | 120 | `result-track:309cb4075d324aa1604a4ad483d3436f5ed4aa564807f1075884c176209294b3` |
| 3 | `theorem` | [surj](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/surj.md) | 125 | `result-track:175b65b9ac79d95191e62a2a5a3dcd63d7cad7a1b9c2f3374f0315ff4c13e183` |
| 4 | `theorem` | [eq_iff_exists](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq-iff-exists.md) | 130 | `result-track:dbf9fd3c8dc87521e47dd53ff8195501b96420e4c38a0fa5a3fe54f916256d0d` |
| 5 | `theorem` | [of_le](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/of-le.md) | 134 | `result-track:a3d9054ee34222f7805b1a8848fac3ab3343fb660a6b82e0b60f6313fe9acf37` |
| 6 | `def` | [toLocalizationWithZeroMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationwithzeromap.md) | 155 | `declaration-track:d236b1379bb39a82ece0cf29100b5b54aadfda9d8e9745231d24cd863c3972ce` |
| 7 | `abbrev` | [toLocalizationMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationmap.md) | 164 | `declaration-track:55d65b5e67220f41d1456c40a639e4812c85c84f94c91db9bd4fd98eb140f04d` |
| 8 | `theorem` | [toLocalizationMap_toMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationmap-tomap.md) | 169 | `result-track:1a64189d1c8aa50df826fa0e4c1f39ba38537332013801d9023f5d42ea1b9b3e` |
| 9 | `theorem` | [toLocalizationMap_toMap_apply](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationmap-tomap-apply.md) | 173 | `result-track:92f91e394554d8f856185c25933f1932af90471127129badcd7d43b4b364f7c5` |
| 10 | `def` | [sec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sec.md) | 183 | `declaration-track:892213e70a75bc2f82d1f14bc82cc22a19f0bc355a2f8d574f34f978967af989` |
| 11 | `theorem` | [toLocalizationMap_sec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationmap-sec.md) | 188 | `result-track:87215e5635b3791f2178d682a0c00d1a4fc27f7cca838145926a6ed7116eb614` |
| 12 | `theorem` | [sec_spec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sec-spec.md) | 194 | `result-track:228615d5ab1a310b9b0c4ba5e965dc15ad4023f38389ceb47ae890e6187b2438` |
| 13 | `theorem` | [sec_spec'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sec-spec-source-edition-2.md) | 201 | `result-track:4a53ae741f0ae841299585d5a95ec0735d36833527b468d480ccfd0fce357ea5` |
| 14 | `theorem` | [map_right_cancel](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-right-cancel.md) | 208 | `result-track:3f65d5331f70dd77fe337195e88d816ea8b18f19cf406da229e186fd9e4eb0dc` |
| 15 | `theorem` | [map_left_cancel](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-left-cancel.md) | 213 | `result-track:04cd7be30cda197ffbc46e2d6f2af5654b85e7425381702437e9bdd548cc88fa` |
| 16 | `theorem` | [eq_zero_of_fst_eq_zero](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq-zero-of-fst-eq-zero.md) | 218 | `result-track:5e343889391650fbb051659e1cd082c05a7cdcba04fccb7232f411e8bcc4e79a` |
| 17 | `theorem` | [map_eq_zero_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-eq-zero-iff.md) | 226 | `result-track:341a9712baa0bc5f5429d29f1d2dce86bee2baf7c74c671696b7b48867d6cd4f` |
| 18 | `def` | [mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk.md) | 240 | `declaration-track:81e1ad81e3fcf692b7a4522e371aee99509567c60cfadbf176905c9c90590daf` |
| 19 | `theorem` | [mk'_sec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-sec.md) | 245 | `result-track:824ee8b7a944423133846b3568b628f5957d4ace943f3b0390ed59769de883a2` |
| 20 | `theorem` | [mk'_mul](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mul.md) | 249 | `result-track:bee323a2cda26500bf4929215c1efcb7974656646df8ec8ab004d8667d46793a` |
| 21 | `theorem` | [mk'_one](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-one.md) | 253 | `result-track:8fdc01dbc01725435b00115171f11d1e7153a75b6525d69348634c7228bc87d0` |
| 22 | `theorem` | [mk'_spec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-spec-source-edition-2.md) | 258 | `result-track:7614223feca6a2a9240c5c05e5849e8a6ec857acf16e392f18af0d05ffcf947b` |
| 23 | `theorem` | [mk'_spec'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-spec.md) | 263 | `result-track:079ea13bc63c3f3d16b5e03ad59f4600daf5d3749f037b6acf01838ca7dfd40c` |
| 24 | `theorem` | [mk'_spec_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-spec-mk-source-edition-2.md) | 268 | `result-track:f66746f0561d044c710f812c833dc32e78646786b298192035809bd7d0a9a9dc` |
| 25 | `theorem` | [mk'_spec'_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-spec-mk.md) | 274 | `result-track:0e87e82f86b65a647843f13d3fa9ea3889b128334255ebb425ae4dbfc19af9b9` |
| 26 | `theorem` | [eq_mk'_iff_mul_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq-mk-iff-mul-eq.md) | 281 | `result-track:d50e695947d75a3d758f7742658873a18073de494d58cf600e2c1cb230c579cc` |
| 27 | `theorem` | [mk'_eq_iff_eq_mul](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-iff-eq-mul.md) | 286 | `result-track:073f30620ca07b0dbacbb608ccfff637f34dccf88e442603b47c2a6bb6f447c0` |
| 28 | `theorem` | [mk'_add_eq_iff_add_mul_eq_mul](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-add-eq-iff-add-mul-eq-mul.md) | 291 | `result-track:f46f03f860cbd8d434c10919204cb508f637ae5583451f89c9b4cd7862f82ff7` |
| 29 | `theorem` | [mk'_surjective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-surjective.md) | 298 | `result-track:1909f021987b37b1ae1352d4da92d4476063a046e47934cd6e951c1bc0452cfe` |
| 30 | `def` | [fintype'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/fintype.md) | 306 | `declaration-track:dbae4e5a2612962998efc732411a136ad057ce403a7c13c5c6893bfaf59c7db7` |
| 31 | `def` | [uniqueOfZeroMem](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/uniqueofzeromem.md) | 315 | `declaration-track:4544f5d97aff9413a488b489797cf5f3946ddaed1efe938ca34b7d10d6646212` |
| 32 | `theorem` | [mk'_eq_iff_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-iff-eq-source-edition-2.md) | 319 | `result-track:96c0c5d159db3f6fb5d67bc07048f7220e3cdafb9dea3125d8837f9f7f0d7168` |
| 33 | `theorem` | [mk'_eq_iff_eq'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-iff-eq.md) | 324 | `result-track:37bc047991520609c3336432149ed40af10258b06ccbf13ee2f8869fe0148d61` |
| 34 | `theorem` | [mk'_mem_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mem-iff.md) | 329 | `result-track:1b46f6ae14daf7e05a77f956d940e036ac5a8da65535e6e7a8ceed7b61c14977` |
| 35 | `theorem` | [eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq.md) | 339 | `result-track:1bb0c7d1ac7658e9ff5800594fe250b73040e43d124e5c8f299c790f3dee5099` |
| 36 | `theorem` | [mk'_eq_zero_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-zero-iff.md) | 344 | `result-track:e6ca1ee423064cb9bbd1ef2c2693cf077669837d19b9c09c74e60d6fde858c62` |
| 37 | `theorem` | [mk'_zero](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-zero.md) | 349 | `result-track:b04f385a7b34ef3859113770e5f98445dbe7956e76d49c7724974c79fbeffd66` |
| 38 | `theorem` | [ne_zero_of_mk'_ne_zero](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ne-zero-of-mk-ne-zero.md) | 353 | `result-track:3bbc7f36121b74f0b3977a5e9d3168c17cd11cb909f47dbbd1d75bc65ab3eaa7` |
| 39 | `theorem` | [eq_iff_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq-iff-eq.md) | 362 | `result-track:42c9c5e118180625c86dfc9cb56b8b6d5d406b2da7ec92510147aa3017a98d08` |
| 40 | `theorem` | [mk'_eq_iff_mk'_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-iff-mk-eq.md) | 367 | `result-track:6d353c6d90160a7f9acbbd2206a85695117a65cad6316e323c19eaec9267c49f` |
| 41 | `theorem` | [mk'_eq_of_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-of-eq-source-edition-2.md) | 372 | `result-track:b05bd03269911da556302da6d16a2e1ef0edced9a28e17676f734eab02e77b81` |
| 42 | `theorem` | [mk'_eq_of_eq'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-of-eq.md) | 377 | `result-track:665c098f9a8bd1657677b73c875937b1a2c4eef0199f41225c14a52a0c5b2a7d` |
| 43 | `theorem` | [mk'_self](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-self-source-edition-3.md) | 385 | `result-track:fbbf1e0b3127496596b7ce81bd66f2e065772b21275d44a13e05987f692704e5` |
| 44 | `theorem` | [mk'_self'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-self.md) | 390 | `result-track:34647efdb8411537c09ca19713dcec459d65355393004ddd4ab883de15596689` |
| 45 | `theorem` | [mk'_self''](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-self-source-edition-2.md) | 394 | `result-track:e54e4fb5794446144c78d7135fc1383fbb9f004460e9ad80c6dcdb121d2d2b83` |
| 46 | `theorem` | [mul_mk'_eq_mk'_of_mul](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mul-mk-eq-mk-of-mul.md) | 400 | `result-track:0fb39078d465a3b5a9a64c610f64d8bce091fc9f80cde92446bb209e8d7ab91b` |
| 47 | `theorem` | [mk'_eq_mul_mk'_one](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-mul-mk-one.md) | 405 | `result-track:cc17e50924f6b47a633855c981471b4b105aecfef995dc8a1bea21a4b4ae3f3b` |
| 48 | `theorem` | [mk'_mul_cancel_left](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mul-cancel-left.md) | 410 | `result-track:a24c8853dd4aafd71ed580f5405a4669b17611fb04963e4bd8788047054b0f6e` |
| 49 | `theorem` | [mk'_mul_cancel_right](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mul-cancel-right.md) | 414 | `result-track:bbc70c9517fdbc0d6c49e993864a482350106e8e495c0215ccd3bc98cc7bca9d` |
| 50 | `theorem` | [mk'_mul_mk'_eq_one](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mul-mk-eq-one-source-edition-2.md) | 419 | `result-track:53a37dce8795bd2222a1692bb4ad2440677e27afedc9fcc22130fd824c4647d8` |
| 51 | `theorem` | [mk'_mul_mk'_eq_one'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-mul-mk-eq-one.md) | 423 | `result-track:21c9ff88e3006a2e23fae6cc1b3b2120499be0f860a916f4f876d9d68880b37c` |
| 52 | `theorem` | [smul_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/smul-mk.md) | 427 | `result-track:6a982a679e0af0e70296bcb5e9328d82f036927b014142919851c14bf25d21d6` |
| 53 | `theorem` | [smul_mk'_one](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/smul-mk-one.md) | 431 | `result-track:122b7da4db9b075d85159da92ef7bc79970179c4dfec2d11fbb39585acd9afc8` |
| 54 | `lemma` | [smul_mk'_self](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/smul-mk-self.md) | 434 | `result-track:2628873c57e06c0a89af0cb1803e72498bca6bed0ed59d3b30bac0b83fb10a34` |
| 55 | `theorem` | [isUnit_comp](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/isunit-comp.md) | 442 | `result-track:4368f8c08c80532b7a3e3149a02e188c8054a352f19d8c1ed452f02fcd28f13e` |
| 56 | `theorem` | [eq_of_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/eq-of-eq.md) | 450 | `result-track:287a08937c463dbe22e6a0c35b8126a07aaee6104522b83d8a761b5a6a8608da` |
| 57 | `theorem` | [mk'_add](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-add.md) | 455 | `result-track:d8813a73690c587dca72f81e1dd779579cf6bc305bdca258e90227342449cb14` |
| 58 | `theorem` | [mul_add_inv_left](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mul-add-inv-left.md) | 467 | `result-track:5e5aefabfd40e68ea6e16dd423de6ee5125824651849a826975a87168370e3df` |
| 59 | `theorem` | [lift_spec_mul_add](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-spec-mul-add.md) | 476 | `result-track:be7ff25815f4c24bdf29fc4aeb8d746fe5d9e3e236c68aef733d9970e046f673` |
| 60 | `def` | [lift](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift.md) | 488 | `declaration-track:caee62a126386f919ce76ead1f63152bcf1555931f7305b2c2f9c03c207d1eb7` |
| 61 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-mk.md) | 509 | `result-track:2a1541537c867a29d35909acd918ccf92529a7ed2740d1b3fedd97ae59b24e3b` |
| 62 | `theorem` | [lift_mk'_spec](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-mk-spec.md) | 514 | `result-track:d3acf639a1342a1aaf94c0c37da9627873ba46476166bda698d58c34a0c89db4` |
| 63 | `theorem` | [lift_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-eq.md) | 519 | `result-track:75636030dbdb599d007e488dd7326adaf5102463c0aee2c81cbe42af34a136eb` |
| 64 | `theorem` | [lift_eq_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-eq-iff.md) | 523 | `result-track:21236aa702175286b17cfdc7dfa79878c0f0c522baab1cfc8ff854a7958cbc03` |
| 65 | `theorem` | [lift_comp](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-comp.md) | 529 | `result-track:ab2e01ce6c4a316e3eeffa62521dbcf9bfbf45aefd4968606d34ba984b63c8a9` |
| 66 | `theorem` | [lift_of_comp](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-of-comp.md) | 534 | `result-track:c7fa10d90bcc0ef9d895e7d9180f801e2d5b0ad3c2b6af873ff5a4428720450c` |
| 67 | `theorem` | [monoidHom_ext](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/monoidhom-ext.md) | 542 | `result-track:a6b202447910312744801cb3852e9fde7a88302123b9197ca657fd49ac8c32d1` |
| 68 | `theorem` | [ringHom_ext](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ringhom-ext.md) | 548 | `result-track:77c96bd56ebf4b882e827e5084dc403cc7dc6e82a0856178dac0f1691999d23b` |
| 69 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/alghom-subsingleton.md) | 555 | `result-track:a9867fc31aac3a44f7dc0d550cdc54505dafaf3a12ef696fc0e85d92f65e1d10` |
| 70 | `theorem` | [ext](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ext.md) | 563 | `result-track:5db36016438ac185c83e317777f99ff5a2977b6597f379af7ae4e64824bfb720` |
| 71 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-unique.md) | 576 | `result-track:80d54a2af99f88b86cccb25f31bd7f73f204ebd2b5e81dfb45b1acb18d4b66cc` |
| 72 | `theorem` | [lift_id](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-id.md) | 584 | `result-track:f8f6c1acc356f9967a60af64024035214200b25c815b9741f7bd65fab1648753` |
| 73 | `theorem` | [lift_surjective_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-surjective-iff.md) | 588 | `result-track:d76fb104b5aea643c3a13bd785018d5bbc2c31d65e714b3c604b24fa2a1bb28b` |
| 74 | `theorem` | [lift_injective_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/lift-injective-iff.md) | 593 | `result-track:b9e16f91f138425f94e786e7237e5a041abd6b9cfb0da7c93adc18af72325780` |
| 75 | `def` | [map](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map.md) | 614 | `declaration-track:bdf72650d477500f5dc6f02b558821307eda632386c51570edd967e3b8f6e564` |
| 76 | `theorem` | [map_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-eq.md) | 622 | `result-track:55c2df1008bca52872a71a3f8c63bb6eadc8a8691bff21f1f3904689f556d36c` |
| 77 | `theorem` | [map_comp](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-comp.md) | 627 | `result-track:8836cbeb4b7d40f48553ae53a0009161b67784941c338ad6ad10e442f0c08342` |
| 78 | `theorem` | [map_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-mk.md) | 631 | `result-track:e796ff867ce0f9185354826482d65a8c5167d995839258dad5e86ff08cf0aa70` |
| 79 | `theorem` | [map_id_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-id-mk.md) | 638 | `result-track:c4630bd0949eedbbdad58855bd5331a8cb8790ed9be6efe58b4aca2c095e96ba` |
| 80 | `theorem` | [map_id](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-id.md) | 643 | `result-track:1803d0dde6925e5524a8e28bd20e031e18c99fe1ed36209e13c6945e83412051` |
| 81 | `theorem` | [map_unique](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-unique.md) | 648 | `result-track:26367c7ffd93bd7920980c8ad23f451736792a250ae8fa1c1944f1eedbe2ddbf` |
| 82 | `theorem` | [map_comp_map](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-comp-map.md) | 655 | `result-track:856d903f9845eceec814c690b94069bd88ccc06157bc169f86178f140619ab55` |
| 83 | `theorem` | [map_map](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-map.md) | 665 | `result-track:1f17d60c3f0d3afc7155b5274f207904a34b95b194e99cf10b8d1cb22b741cb3` |
| 84 | `theorem` | [map_smul](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-smul.md) | 671 | `result-track:eb4cc205118d034748814995ed84bf38d3dd74de4f8c75b8e373de5d6fbebcea` |
| 85 | `def` | [ringEquivOfRingEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ringequivofringequiv.md) | 683 | `declaration-track:77853da2c3373220efe77e159db570c4fbe607d442df604ec4f53c112c61e69c` |
| 86 | `theorem` | [ringEquivOfRingEquiv_eq_map](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ringequivofringequiv-eq-map.md) | 703 | `result-track:45a2709044a83b7b3f169b6095f6f2892fc7f0deb538ecb9a6c2879289f1b2fe` |
| 87 | `theorem` | [ringEquivOfRingEquiv_eq](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ringequivofringequiv-eq.md) | 710 | `result-track:47163190966c0d514a3cf67d437b8fbb4a0530c8081e8175a2f728bc3088f1b9` |
| 88 | `theorem` | [ringEquivOfRingEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/ringequivofringequiv-mk.md) | 715 | `result-track:50bd1c99eaa453a89fd9adb3cebe37fcae9b82f1fd5026a25c482d35e9101349` |
| 89 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-source-edition-2.md) | 734 | `declaration-track:4674c57a25d27cfbd9dc798da554c7c7b602f985e925dbc7827f175290053fa2` |
| 90 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-mk.md) | 742 | `result-track:01a4cbd6027a8bc8962ac4e8bdc3ccc751a643700b347aec640c90736485479b` |
| 91 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-symm-mk-source-edition-2.md) | 747 | `result-track:3dd21c3fb25b4cf740727170f0995cdc8eaae693865d95ac246d85cea6a63396` |
| 92 | `theorem` | [isLocalization_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-of-algequiv.md) | 758 | `result-track:b4c2f08e46ec7e0f0bdcf81d0bd92c7c7c4dd2065d048523e6d8fbb3416ee8b4` |
| 93 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-iff-of-algequiv.md) | 775 | `result-track:cf596e47aed53f8f6044a9ad6df5a3bfaa5fe1cbb3d03db1c454c78f95b11b62` |
| 94 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-iff-of-ringequiv.md) | 780 | `result-track:af972097699209f75481f58227f498f77edc9bfd638620ce851de473d14fccda` |
| 95 | `theorem` | [isLocalization_of_base_ringEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-of-base-ringequiv.md) | 788 | `result-track:a3ce87e8c2971e312f30b39e3b5570e86383f019e3940e780cfb3220b75a159b` |
| 96 | `theorem` | [isLocalization_iff_of_base_ringEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-iff-of-base-ringequiv.md) | 812 | `result-track:753ad85b4cf09fe13e08f981c495d72954fc4a23c3e515bb98feef9d1bb1c120` |
| 97 | `theorem` | [nonZeroDivisors_le_comap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/nonzerodivisors-le-comap.md) | 833 | `result-track:da9d4df0f1fa48f0f2568e44acf2365593e8ea12b2dff3a5e1435855bcf19849` |
| 98 | `theorem` | [map_nonZeroDivisors_le](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-nonzerodivisors-le.md) | 845 | `result-track:e791df84d510d6e2170755b56819231ddfacf5a7581e28bd611949db042df6db` |
| 99 | `instance` | [instUniqueLocalization](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instuniquelocalization.md) | 860 | `declaration-track:1bcc4ab1f5a2e1a364d7380dc1a093c2bfff610f44f2fc973af267f0fff417c6` |
| 100 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-4.md) | 888 | `declaration-track:406385c3d39e9beb5a09ae6b43f127d720c980c99be6907c802364be435350e9` |
| 101 | `theorem` | [add_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/add-mk.md) | 891 | `result-track:565f3458820d1b6102201375b8c18e0822c63c37d8e00d4186da4e885ec608dc` |
| 102 | `theorem` | [add_mk_self](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/add-mk-self.md) | 897 | `result-track:ca1fc83fbcfaf033b55c079a9efcccf7f975972f14c581a85849c313888bdea8` |
| 103 | `macro` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/macro.md) | 904 | `declaration-track:b6d43be7b8ec93d32b2d7e15bad7ffab6d227ee3c9771bb8c58efdb63001d586` |
| 104 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance.md) | 912 | `declaration-track:00ca259d7469d32a3321be7ed2000559b80a00db07bc35b35c56b7990ffb1e7d` |
| 105 | `def` | [mkAddMonoidHom](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mkaddmonoidhom.md) | 942 | `declaration-track:58b269e88e0a26c4e55dbb476f414296246eec813ffb69b3f4e624ecd97a018c` |
| 106 | `theorem` | [mk_sum](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-sum.md) | 949 | `result-track:286cc25018971e9fd7a9ffc7faef7139f8d3f5de677b78b193d15bd65ea92c7a` |
| 107 | `theorem` | [mk_list_sum](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-list-sum.md) | 954 | `result-track:afb700b4a92c060ff7da1d183464fa3e406ff18f4a906403f5745ff59129f856` |
| 108 | `theorem` | [mk_multiset_sum](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-multiset-sum.md) | 958 | `result-track:6ba6f34586677db3aed43072cf5357a0aeb4188cd6ffa2ddefdca851a1bcbf95` |
| 109 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-6.md) | 962 | `declaration-track:cfca39ef4edd858c6e8c3fc00194621ec09a61425f7aba2fbabcc38d5b294b5c` |
| 110 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-5.md) | 973 | `declaration-track:c1f192d6f1498fd658d1b03190310156cc922a5934e3a718c5cfccb0e6e71ae8` |
| 111 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-2.md) | 978 | `declaration-track:28be91dbb82b9e1696685132574023021ef1fafca8fe0479c88fad8c2dd2817c` |
| 112 | `instance` | [algebra](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algebra.md) | 991 | `declaration-track:e723e5f0957943c899f677112caa25f79ed75793a0ccdb1937e66830fa6b4cc1` |
| 113 | `instance` | [isLocalization](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization.md) | 1016 | `declaration-track:0408208bf0c3b00d9fa1dd3446547b5474cd402a397f5327cf37f72eb492cca3` |
| 114 | `theorem` | [toLocalizationMap_eq_monoidOf](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/tolocalizationmap-eq-monoidof.md) | 1024 | `result-track:e6750579fb23dad82b79338be7783e12290b3dffe6fe2e90ea0d04389d5425c9` |
| 115 | `theorem` | [monoidOf_eq_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/monoidof-eq-algebramap.md) | 1028 | `result-track:655e4b051df2383e6e9bea50a855e8c51e2b2936f24cdabfe32abb30c260c90b` |
| 116 | `theorem` | [mk_one_eq_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-one-eq-algebramap.md) | 1032 | `result-track:dd53498bb5f4f3746e20e0b310ee08a8abf8eec8cd5150d80616d5c1748fcabc` |
| 117 | `theorem` | [mk_eq_mk'_apply](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-mk-apply.md) | 1036 | `result-track:bc78d38b34bce19d236011e330c568a1fff95713168307e33b6f434ae07ad699` |
| 118 | `theorem` | [mk_eq_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-eq-mk.md) | 1042 | `result-track:045573d9b99299038b64093e1afa6fb58afd3ebcffc6a88c39cee38f35ae2bd3` |
| 119 | `theorem` | [mk_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-algebramap.md) | 1046 | `result-track:e80af5b2ed02bcce628d5b15e9aeebc3e318a6fdaad7c12e29f3a517db62b0cf` |
| 120 | `theorem` | [mk_nat_cast](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-nat-cast.md) | 1051 | `result-track:7a05b0e98f50dee6cf115148571b299aa3be2464c0709b9970b243edd400f373` |
| 121 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv.md) | 1063 | `declaration-track:396ff1137aae90eb7ba3dd96495c2af84268db9218fe9f0c31bb2243547a26a0` |
| 122 | `def` | [_root_.IsLocalization.unique](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/root-islocalization-unique.md) | 1068 | `declaration-track:0d1e1341ddd46cb10d1b085fc0181758e932b39f0e9bda49a3ce820220b7e483` |
| 123 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-mk-source-edition-3.md) | 1077 | `result-track:8d95486f7ed8a9347bb130807564b898be9819a291d11936be5cdc22b1f2cc75` |
| 124 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-symm-mk-source-edition-3.md) | 1082 | `result-track:a9a0d6c9f38493e1da2d7c91e8ffe2518a4b26adfe4baf31ab3236e8ef77ac54` |
| 125 | `theorem` | [algEquiv_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-mk-source-edition-2.md) | 1087 | `result-track:789bb6de14331b2a63f2d6b681d546197ab5b7fb3d09bfa47b5fa95d40a47ecb` |
| 126 | `theorem` | [algEquiv_symm_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/algequiv-symm-mk.md) | 1090 | `result-track:0d20b791f3b76060e13ebd744062c44f5c2367541f869c3639eeca5ba80c21d4` |
| 127 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-7.md) | 1118 | `declaration-track:f0120eda1dfb74a5a7ec0c75c55be79b57d339265c1ce9ac8548b56f89149f5c` |
| 128 | `theorem` | [neg_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/neg-mk.md) | 1121 | `result-track:a1e48e474ff87759529b24f321dabf3144121f25e001ce53c8c466f63888c4ad` |
| 129 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/instance-source-edition-3.md) | 1127 | `declaration-track:322f57f0ddf9e10526deaf8dffc57da089b189fbab212b5e0cf2aac3c2cf6b8e` |
| 130 | `theorem` | [sub_mk](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sub-mk.md) | 1152 | `result-track:bb15afee93d4cd82dfb8161fab6a0b1417d7623b67ac835cf4cae6a482a183a5` |
| 131 | `theorem` | [mk_int_cast](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/mk-int-cast.md) | 1161 | `result-track:ded2ed8a24239e187e28e64ba65e1cb73ccdbeca724c44e7e5a3631098a59379` |
| 132 | `theorem` | [to_map_eq_zero_iff](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/to-map-eq-zero-iff.md) | 1171 | `result-track:89c2c1ebbff8c069a8f668c836bf6ef6ffb43c5b7c47e3cde0dcc1fdc4a1e23a` |
| 133 | `theorem` | [injective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/injective.md) | 1180 | `result-track:434a19171b70eb2512cadfd8d9b820568d3b3e4c1d6898ebb54ff9b3b56aade5` |
| 134 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 1186 | `result-track:6de206ca1fe563c9ed645894e11fb248182f6809d4c9d4be97862b02f12a1742` |
| 135 | `theorem` | [sec_snd_ne_zero](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sec-snd-ne-zero.md) | 1194 | `result-track:74823a5b24fa5842790ce3ead3fe169dff27b31a05fc30d441b8876d4588e974` |
| 136 | `theorem` | [sec_fst_ne_zero](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/sec-fst-ne-zero.md) | 1199 | `result-track:50ee635deb0934ab309d8b79de72ffe9a899120a36c96c9d7e7e03f443748fdd` |
| 137 | `theorem` | [map_injective_of_injective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/map-injective-of-injective.md) | 1211 | `result-track:9cd94c65cd6d00e4fa8a8c9be0528d481c287f98fda4d285fd486b7327229ded` |
| 138 | `theorem` | [noZeroDivisors_of_le_nonZeroDivisors](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/nozerodivisors-of-le-nonzerodivisors.md) | 1235 | `result-track:1721f4ae2765bbfce81c2464c5f5b3b61cb53bb3f2a3dee399cabb87142a7fac` |
| 139 | `theorem` | [isDomain_of_le_nonZeroDivisors](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/isdomain-of-le-nonzerodivisors.md) | 1255 | `result-track:da61b25dd3574da2fb5674f6fe256fb87f6d21cc0a6d95bc9c91db4e5c598a61` |
| 140 | `theorem` | [isDomain_localization](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/isdomain-localization.md) | 1269 | `result-track:d2dff32174c2442fe1ab12752abfbe7a34ea382e12746b89831169e41678e936` |
| 141 | `theorem` | [IsField.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/isfield-localization-map-bijective.md) | 1279 | `result-track:fe0067aee59f88121d5fce54499797f2bb7db4a62303fef8b9d12c752797027c` |
| 142 | `theorem` | [Field.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/field-localization-map-bijective.md) | 1291 | `result-track:3033612ba821cca63f09408e8cd939904bad7f4594f28fb9c1f041adc3ae76ae` |
| 143 | `def` | [localizationAlgebra](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/localizationalgebra.md) | 1321 | `declaration-track:b4ea5da1c0388619cfba9beb28cb1c175aaa61254a8e7ceaedae8321b858ec25` |
| 144 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-map-units-map-submonoid.md) | 1335 | `result-track:4847760fbb39a7ff38c10e8b703c224cb2b0e9e6f121a4de8f34d97f3a987c87` |
| 145 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-algebramap-mk.md) | 1341 | `result-track:383ba676499a1079df0ce4cf477f8767496504b1498357ab6f107192be78a90c` |
| 146 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-algebramap-eq-map-map-submonoid.md) | 1361 | `result-track:f3da8bef60cb741090a3308d3539983027b7631dc447cdec4be9a7e39fb30fa2` |
| 147 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid.md) | 1377 | `result-track:6d708122485a7ea4616c6b3ed401b906d41e52031fa73e6dc3bc192378b2905c` |
| 148 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/islocalization-lift-algebramap-eq-algebramap.md) | 1384 | `result-track:88c552fe0cae4549ddd93989cdf6c863f014f35a6952ca629460b383a4efbca3` |
| 149 | `theorem` | [localizationAlgebra_injective](../../../../CommutativeAlgebra/LocalizationBasicMapUnits.lean/declarations/localizationalgebra-injective.md) | 1396 | `result-track:eb9887395596c81fa04234544bcc8309a2edfd222f6a101dad8f1ebfe8f2dbdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cfafe4acc4ded0260419360dc9b8e882a83dedf1d5373619007a04da9c2c7a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
