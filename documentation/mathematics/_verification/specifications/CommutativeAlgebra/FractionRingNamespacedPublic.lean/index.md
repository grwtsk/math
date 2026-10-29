# Verification target: Fraction Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2c0d188183e955f15d59a427ae4405ad72efd52",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2c0d188183e955f15d59a427ae4405ad72efd52`.

Source path: `GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean.json)

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
| 1 | `abbrev` | [IsFractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isfractionring.md) | 62 | `declaration-track:09b401abdd85e885eca9de4619a8b3da2a55722cd3dd5c00253abe347145cf86` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 65 | `declaration-track:d885186fa58f7fae2b2d55724364d5a52476672268315313239fd9c86c47c87f` |
| 3 | `theorem` | [IsFractionRing.of_algEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isfractionring-of-algequiv.md) | 68 | `result-track:757ad342ceadbcd88e6de9ce3b42b0aabade53de929af9059796ac5810c12f09` |
| 4 | `instance` | [Rat.isFractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/rat-isfractionring.md) | 74 | `declaration-track:6626cd36d36d268fa7a5bf168c5e0b4fcd96a51931f2ee974277e31cd02a32e0` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 90 | `declaration-track:6b56364ae13f3dbe572328b2214ca8379d7007f58dd360569f8115c91c2e83d3` |
| 6 | `instance` | [NNRat.isFractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/nnrat-isfractionring.md) | 100 | `declaration-track:88977c29ee6e4dc52781c5952204ca6209ea5c41d18d1440363af2972671cd52` |
| 7 | `theorem` | [of_field](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/of-field.md) | 109 | `result-track:3618a5c1b79c66afc95d6317f212b5854528e28d629b03d074673cb19ca50906` |
| 8 | `theorem` | [of_ringEquiv_left](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/of-ringequiv-left.md) | 130 | `result-track:740e6e4353fdfe8b688f0389078fdeb9241149c8db08c257ae3adb64f1757421` |
| 9 | `theorem` | [to_map_eq_zero_iff](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/to-map-eq-zero-iff.md) | 141 | `result-track:4e66263063f84e545fdbc942f66f5f3e11bd73e909e9e64b516bbd7f179a4ad7` |
| 10 | `theorem` | [injective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/injective.md) | 146 | `result-track:7d1b722e39f91cfb522eba06d6db7b85e1afd522ee9ffd817387429418275952` |
| 11 | `theorem` | [nonZeroDivisors_eq_isUnit](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/nonzerodivisors-eq-isunit.md) | 150 | `result-track:14b78a16a765e3a34df5859fc898c12270b269f2508fb174f198c07dbed5c5ef` |
| 12 | `def` | [algEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequiv.md) | 160 | `declaration-track:41bcd21b3073e234d414bc124868194b239980a75feef7b9a4f0f91aa31d6a8a` |
| 13 | `theorem` | [idem](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/idem.md) | 164 | `result-track:dae2d26ee1150187deebaa651a7f1ab88bb0520440f151c4f757115ad30df6a2` |
| 14 | `theorem` | [trans](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/trans.md) | 168 | `result-track:14145af7f037c0eede64062edb6796f9ac3be2a69651a5ccac094851220a0f25` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance.md) | 172 | `declaration-track:3797906eefe150cf27cc0f97b0915a6d040b19dbc803a194f1f1f36047ca2627` |
| 16 | `theorem` | [self_iff_nonZeroDivisors_eq_isUnit](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/self-iff-nonzerodivisors-eq-isunit.md) | 177 | `result-track:a79520a0be2968d790d571cf23042654e5627e3648bbfcf72cc8289a6ca27b6d` |
| 17 | `theorem` | [self_iff_nonZeroDivisors_le_isUnit](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/self-iff-nonzerodivisors-le-isunit.md) | 181 | `result-track:eb61b49bce1f401bd201eb2328d094b01f876218b37f41499ae8e06959239acf` |
| 18 | `theorem` | [self_iff_bijective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/self-iff-bijective.md) | 185 | `result-track:be155f5a8627b09ec28ffdfbcdff1a1d75a2ddf848ff0c97a21591650f21083f` |
| 19 | `theorem` | [self_iff_surjective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/self-iff-surjective.md) | 189 | `result-track:f3ed9994c02f9253f39628985930f77ac1268e9b6570256e9a7293affc38a56b` |
| 20 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/coe-inj.md) | 196 | `result-track:2a54c75386e7a355143eed269fe73671c2d2e8a02cd2138fd94b7bb5aee6ed05` |
| 21 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 199 | `result-track:55db3bac97414b3dc1c93fac7a4c5947e74f632ed024574c229b229bb21a87a6` |
| 22 | `theorem` | [isDomain](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isdomain.md) | 208 | `result-track:280d81cbda3f6e9caf960331e2fe7659852c86c0460cf310b111294f6c4f8451` |
| 23 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mul-inv-cancel.md) | 220 | `result-track:36e806c2ad62437dfe562bed24e418345da92b54a671a14cf76a64d0c92d810a` |
| 24 | `abbrev` | [toField](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/tofield.md) | 234 | `declaration-track:295e361fccc4464081594395eb48968931ac1c652532473bb6c56097688b4c81` |
| 25 | `lemma` | [surjective_iff_isField](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/surjective-iff-isfield.md) | 246 | `result-track:8a56b6b1d9b62c3aff1c1d3d9501430443dd43944530985d17cfc455e92a2b9f` |
| 26 | `theorem` | [mk'_mk_eq_div](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mk-mk-eq-div.md) | 259 | `result-track:61ec8ae1aff5a3b68e319003606c398451be09d8041d91cf14b67288bdffb498` |
| 27 | `theorem` | [mk'_eq_div](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mk-eq-div.md) | 267 | `result-track:7cf8db66b8ebbf9bd27a18ad6f47f9bab961512c192732cd4e5dabc6a0a3100e` |
| 28 | `theorem` | [div_surjective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/div-surjective.md) | 271 | `result-track:a3e6b5dc0c8660b92db1fb6bf1c356f6115d29d4a845bbf3d366cfa310e6dac2` |
| 29 | `theorem` | [isUnit_map_of_injective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isunit-map-of-injective.md) | 276 | `result-track:b174d78a08f015dbcc6d9cb06b60a7c66af1dccbc1e6a604dd4b1df4c49934ce` |
| 30 | `theorem` | [mk'_eq_zero_iff_eq_zero](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mk-eq-zero-iff-eq-zero.md) | 282 | `result-track:5f7df439267bb3c350dd9c0da079ba777589d42c9fdb107d1f7ed8169cfb6eb2` |
| 31 | `theorem` | [mk'_eq_one_iff_eq](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mk-eq-one-iff-eq.md) | 287 | `result-track:8912a5f1b7b8562b539abbdddf9e6b3d2d0ae028f87542885887696b9947fb8e` |
| 32 | `theorem` | [of_algHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/of-alghom.md) | 296 | `result-track:891f5cf4ab0bbfe6fa91d60bc25c737f94bc73cc37f68fb05eed5b67ffb1de8d` |
| 33 | `theorem` | [algHom_commutes](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/alghom-commutes.md) | 310 | `result-track:9290487e84500bf66fce854bd723d6c44048f6770ca48f477c73c83ca78acf78` |
| 34 | `theorem` | [algEquiv_commutes](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequiv-commutes.md) | 316 | `result-track:238e87139aaeba2f2a2720c5a3dc2a361db8cb80048cce0496c7b03a2d97af1f` |
| 35 | `theorem` | [closure_range_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/closure-range-algebramap.md) | 327 | `result-track:3a12d532ddea90a102f3459ea0ab12976a50d23b4f82f2bdc044dd3653236ba8` |
| 36 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringhom-fieldrange-eq-of-comp-eq.md) | 336 | `result-track:0794a9057079da166f3b3505599288ca5f744dcc063278239e5f0e805bc3f8e6` |
| 37 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringhom-fieldrange-eq-of-comp-eq-of-range-eq.md) | 344 | `result-track:bfce15137d0a01ebe3b44825a0dd7397379d902166489af66f73e7946637f756` |
| 38 | `def` | [lift](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift.md) | 358 | `declaration-track:4b0cb81559f560c670141ccce212a1a585633f00d1385b48ed4c670c7ceb4e50` |
| 39 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift-unique.md) | 361 | `result-track:d1b117cefe9a7fa462f4102fa337a9aefba2bdf77bf92cf4c3762169a75428d2` |
| 40 | `theorem` | [ringHom_ext](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringhom-ext.md) | 366 | `result-track:06563db75d07e584a2c9f72c13beabb55de522d335b60d8a27a570dcb9ea8229` |
| 41 | `theorem` | [injective_comp_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/injective-comp-algebramap.md) | 372 | `result-track:76b068c5cdcb4b6f39b47469846833e77790024954d187c2791ca151221d6163` |
| 42 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/liftalghom.md) | 383 | `declaration-track:fc33d4a0aa5227d4404533349a21dc272b3ef987ed107928052905e6749551e2` |
| 43 | `theorem` | [liftAlgHom_toRingHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/liftalghom-toringhom.md) | 386 | `result-track:7de3148c64bd64b891cb2910b4b1d1559acde74865dfa1edb01e938d360b9ac6` |
| 44 | `theorem` | [coe_liftAlgHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/coe-liftalghom.md) | 389 | `result-track:4573c3b7af730e33a32202a386ecc9b5228e9b5fb62ca5ffc42172d40a050869` |
| 45 | `theorem` | [liftAlgHom_apply](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/liftalghom-apply.md) | 391 | `result-track:8bd7e1e9dfeb9a134fb689cf5a4aba751ac429cbd34a496a5b8ba3ea89b7aa69` |
| 46 | `theorem` | [lift_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift-algebramap.md) | 400 | `result-track:fb8597f30943516d1e3890e961792d4e7596655e0b899204f3628d1b5e1a176d` |
| 47 | `theorem` | [lift_fieldRange](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift-fieldrange.md) | 405 | `result-track:040d40d4ffc5b93bf4997f638693cb41e08454b417193579708d3358bdb874d0` |
| 48 | `theorem` | [lift_fieldRange_eq_of_range_eq](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift-fieldrange-eq-of-range-eq.md) | 411 | `result-track:00695846412659cc76588967d70149eadb6f998159d5b57919dabc51a1bfc5b9` |
| 49 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/lift-mk.md) | 420 | `result-track:c0e600714c2b32f2d59c5de74c763bf3c151ae4ac486333f14a5f7cac2380bfe` |
| 50 | `def` | [map](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/map.md) | 427 | `declaration-track:f2dbf8e5322cf838fc7a58fd243dd89b4404aada5efbaf1ec972eea49cba243d` |
| 51 | `def` | [ringEquivOfRingEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequiv.md) | 444 | `declaration-track:235c93681f334a035cbfb6ac61c95ace3b313606088029ad6c2a30992fcc1be6` |
| 52 | `lemma` | [ringEquivOfRingEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequiv-algebramap.md) | 447 | `result-track:231a6c4e837833d36d0be19408b530e89e38fee81e439982ec5b506f0c6f8356` |
| 53 | `lemma` | [ringEquivOfRingEquiv_refl](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequiv-refl.md) | 452 | `result-track:f97f08257608055d4b019993ca980db139f6652145963525b32f911a55247237` |
| 54 | `lemma` | [ringEquivOfRingEquiv_symm](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequiv-symm.md) | 456 | `result-track:cebbe955fd0f7154bb114d496476fb3c05915e06e9f71877e48658b748c68a16` |
| 55 | `theorem` | [ringEquivOfRingEquiv_comp](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequiv-comp.md) | 460 | `result-track:d4c15a140fefb6a83144c3ce001d4b922fd7d8f4298349fa0bed7c54f2623d4f` |
| 56 | `def` | [ringEquivOfRingEquivHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequivhom.md) | 472 | `declaration-track:4ee927b30581383bbe1dc3716ac3818108207c59ac982d9da74bc4f99170c96c` |
| 57 | `lemma` | [ringEquivOfRingEquivHom_apply](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequivhom-apply.md) | 478 | `result-track:f06c9288ad837c05db7aba1a971037828be24f29e9ae53928fa7394b9669576d` |
| 58 | `lemma` | [ringEquivOfRingEquivHom_injective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/ringequivofringequivhom-injective.md) | 482 | `result-track:c22fe118ced044268d5c5c25d70229c64b4fef9435f87454b7a908d55003d3c9` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 494 | `declaration-track:d424df20c0e515dfae3638deee4021593e2e4606a1b0b418f2c4e0c1386d242a` |
| 60 | `def` | [semilinearEquivOfRingEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/semilinearequivofringequiv.md) | 500 | `declaration-track:14a380d9f7e27d903eeb2aa3018f66e1ddfd9ba1a66144717ab3e4b9522aee52` |
| 61 | `lemma` | [semilinearEquivOfRingEquiv_apply](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/semilinearequivofringequiv-apply.md) | 505 | `result-track:b7d02f85e862d95e04d252d07ee92e006a27eee2714cb4b34215dd29109aa1bf` |
| 62 | `lemma` | [semilinearEquivOfRingEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/semilinearequivofringequiv-algebramap.md) | 510 | `result-track:fcc04fef7d48265688862b93713dd92fd1bef6077a8b20425a93e99c0222f27d` |
| 63 | `lemma` | [semilinearEquivOfRingEquiv_symm_apply](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/semilinearequivofringequiv-symm-apply.md) | 515 | `result-track:3736938223ddd756b7e4aa73f76a4528d54cf6c21e3c06fd7eae966529aafbad` |
| 64 | `lemma` | [semilinearEquivOfRingEquiv_comp](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/semilinearequivofringequiv-comp.md) | 519 | `result-track:a41521137204988c2ca0c93e9890c38c34ce062ae3389d002596dc05dc40a1cb` |
| 65 | `def` | [algEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequivofalgequiv.md) | 543 | `declaration-track:cd6ee11e9115fa645e0bdbe1fc1acaf4a132b15c99b54095af8172bd7c461d8d` |
| 66 | `lemma` | [algEquivOfAlgEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequivofalgequiv-algebramap.md) | 548 | `result-track:9f9540a9b3a34cb79610f214137836a751cbfd763e4ffef1ae96527a49840138` |
| 67 | `lemma` | [algEquivOfAlgEquiv_symm](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequivofalgequiv-symm.md) | 553 | `result-track:a899db78fea38e1087a5222c139779aab0603f33ee8d94b5d4ca862702b03c36` |
| 68 | `def` | [fieldEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequiv.md) | 574 | `declaration-track:16a7b6d807a80bd35d30613249b85062039c666e4495df6efde8a79ff707c64b` |
| 69 | `lemma` | [restrictScalars_fieldEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/restrictscalars-fieldequivofalgequiv.md) | 581 | `result-track:1c3b94fa1af85c0f188b07030e2b1e8c90dbea32fa4689c76220fb2f98f06120` |
| 70 | `lemma` | [fieldEquivOfAlgEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequiv-algebramap.md) | 588 | `result-track:605fc94b02787f1d2d50beec9014a9026a4c382aae1aaea003a05b43078f7431` |
| 71 | `lemma` | [fieldEquivOfAlgEquiv_refl](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequiv-refl.md) | 594 | `result-track:2ee9ef31c18ab0e9e8cb902efb8f9ddcd5abbeda4a2c40b468de77e4e3c81840` |
| 72 | `lemma` | [fieldEquivOfAlgEquiv_trans](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequiv-trans.md) | 600 | `result-track:ce7bceb484b8619013d89bbf09cb4a6caaf8e5f82446d13b132c74c4730fb707` |
| 73 | `def` | [fieldEquivOfAlgEquivHom](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequivhom.md) | 619 | `declaration-track:88392be1ae9a9f46b5ae8aae4b9675b207df872f2a98e567abed5493156a115e` |
| 74 | `lemma` | [fieldEquivOfAlgEquivHom_apply](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequivhom-apply.md) | 625 | `result-track:6d0fcb3d0e218bc861185359295856d1d3bf7d760da750d43c4004844cdc0c10` |
| 75 | `lemma` | [fieldEquivOfAlgEquivHom_injective](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fieldequivofalgequivhom-injective.md) | 631 | `result-track:f6dffced1d2189754e80b958ba69bbfb6a7883757a3ae62bd51e4f84208036e0` |
| 76 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isfractionring-iff-of-base-ringequiv.md) | 639 | `result-track:2e294b62a3ca2e0898377334af1a4e21c35d2dfe7986d41a39afe3063bc94cdd` |
| 77 | `theorem` | [nontrivial_iff_nontrivial](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/nontrivial-iff-nontrivial.md) | 648 | `result-track:c2a3cbcd3a282fc2b7bfb64f6b1560b9f2d63a49558efd6fb58991a5785a33b8` |
| 78 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/nontrivial.md) | 655 | `result-track:1c9d05be2afbafac2ab43e2d0946540d2bf5e5e461d3808c288eacbb2003988d` |
| 79 | `def` | [mulSemiringAction](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mulsemiringaction.md) | 667 | `declaration-track:b33d5d9f66ca7a10d314e0b3335485e5aeda926f3258478664e7dd48102db710` |
| 80 | `instance` | [smulDistribClass](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/smuldistribclass.md) | 674 | `declaration-track:120e57d5b5e642fec96898dd9d734795ce7e0b598b556af66c8e9d14e6b2615f` |
| 81 | `theorem` | [faithfulSMul](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/faithfulsmul.md) | 685 | `result-track:9a6a2b5e0500f4eccd2b0517bc2f4d710eb71ec2f371dea5f2b6271e09742ebd` |
| 82 | `theorem` | [smulCommClass](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/smulcommclass.md) | 688 | `result-track:fc6db459ad3d21de3d910a2775625bfb527a7f91fe90fa590c892c3ffcba4322` |
| 83 | `theorem` | [fixingSubgroup_range_algebraMap](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fixingsubgroup-range-algebramap.md) | 700 | `result-track:6a38e12f4b2b8689a8a89f088e23aa0c9ef7c1ad80c84468163b672820bd1cfe` |
| 84 | `theorem` | [algebraMap_injective_of_field_isFractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algebramap-injective-of-field-isfractionring.md) | 717 | `result-track:8b5f533008b54abfdbfb42b780aa389a98cbbe9364ad69471c760fe0f6fdcd9b` |
| 85 | `theorem` | [FaithfulSMul.of_field_isFractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/faithfulsmul-of-field-isfractionring.md) | 724 | `result-track:c00a2836ebd1ba1f3614d8d212286721d17a19f15e32136426910fb40c7f5e9e` |
| 86 | `abbrev` | [FractionRing](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/fractionring.md) | 741 | `declaration-track:f3fddf2e4b6852f9a002120c13df5d1caea8c70ef6cac35dbc86ab9a7a621523` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 746 | `declaration-track:b489414d01fa3154086e1a3a91837cdbbc47d6e240585ac8dbf651debf743b15` |
| 88 | `instance` | [unique](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/unique.md) | 748 | `declaration-track:8e38ec11e972064793232f75bfa62f32fd24e3a044c4b5eba80ebc6e4d4c78f6` |
| 89 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 750 | `declaration-track:3d28d9954d5bf5a32dd0b3e0a2bab3defcb6276384337529c13750094ca4f685` |
| 90 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 753 | `declaration-track:5ca110f3f61e53fcff096f5e6e74b9fdd0d2553820c346ba3c23faffedf17bf5` |
| 91 | `instance` | [field](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/field.md) | 762 | `declaration-track:528ed91f6598ef9fdd3215f7ecd525ddc5a01525abe50d1b03a13e7232f09d99` |
| 92 | `theorem` | [mk_eq_div](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/mk-eq-div-source-edition-2.md) | 765 | `result-track:cf7650774c3317c64dc62817ad0a4b0959aa523b9dcd1f1b0ec188bfca26c151` |
| 93 | `abbrev` | [liftAlgebra](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/liftalgebra.md) | 777 | `declaration-track:9f791ca2b2be5dcc4e803897197d827021496c8f9d40a82942819b3404de8413` |
| 94 | `instance` | [isScalarTower_liftAlgebra](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/isscalartower-liftalgebra.md) | 783 | `declaration-track:2e4a850fc62842e8b9fbc81b6a2c52533437d25b0c68b0d6201c9d98e122e13c` |
| 95 | `lemma` | [algebraMap_liftAlgebra](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algebramap-liftalgebra.md) | 788 | `result-track:b859b3a80fd8efdf106f02ef6bf6b45a92799022a40b701488c47116a388f6f5` |
| 96 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 793 | `declaration-track:406343dc828ccd50a753095e4c184cd3b14539307f646a453391e8e863558b68` |
| 97 | `def` | [algEquiv](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/algequiv-source-edition-2.md) | 801 | `declaration-track:ef282586deb92ce5982e7b9431e779f8b5f7943897178e8681d2c25c8cb19c8d` |
| 98 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 805 | `declaration-track:8e1b2a3c9048377ed73dfa9654433137c431e571bc89dd371dd7979e325f1a5b` |
| 99 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 814 | `declaration-track:608e7586a6052a4f529b3f7ac3cb3430f1472e2a87a95eaedc3f347fe3d3a187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61d2a0e2f79df4ddc173534c7dfe969cda6e2c68607556c170152e701a1db84b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean","GRWTSK/_verification/specifications/Algebra/FractionRing/Variant069bf6fc85d183eaa180b3c729bd1f3b9fc8566694f008ff2419538176d373b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
