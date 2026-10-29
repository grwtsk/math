# Verification target: Mv Power Series Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9fcebc259a8e3954bf5d670cdccf87863cd6e2",
  "lexical_observation_count": 145,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9fcebc259a8e3954bf5d670cdccf87863cd6e2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean.json)

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
| 1 | `def` | [MvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mvpowerseries.md) | 86 | `declaration-track:802e117a4c3f4ba9f0bd5032a2ecdaf2e8b9fe4eba5109b1ed178e66a3a77547` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-6.md) | 95 | `declaration-track:61b1b2ee8cb04dd06336525f6e4db4dfa2868c40c5d4e152ff08c40e979c7d89` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:56364f054b7e029d7861e567359afbc0aa53bb0ac00ce4ef670b7999380a853e` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-10.md) | 101 | `declaration-track:a2e972ab57d3a7633a5613ed39c67df2220e870fc8feb3dddd8eb3c30b8dfd5d` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-13.md) | 104 | `declaration-track:bcad97f876e6ade01333de01e2e43c4b9d726afbe6befffc74b8c83ede6e9500` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance.md) | 107 | `declaration-track:19400e90794106c1a726928e12cb1399a70137f28860cc79a26a09957457f286` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-8.md) | 110 | `declaration-track:9bd56c973aadccba1822c4da135b2741ffc1b205c45ba54f2954101785a59c02` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-9.md) | 113 | `declaration-track:9ce8da1580f128dba2be3e51786c6febc7fcf4b145928eb93dfa46edc11f2062` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-18.md) | 116 | `declaration-track:fae4c6c3be4897da04196942ccebe3fd24a268a682ab36558549e5f151ac3770` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-15.md) | 119 | `declaration-track:d1c155f423258df51f7e3ea8c01bc36e402271c1e80f0da915033b063bfff4cc` |
| 11 | `def` | [monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial.md) | 132 | `declaration-track:5a87634c241c877bc435d193f53d0072e5acee50b17e31e3fa0721ce5f1cb9a6` |
| 12 | `def` | [coeff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff.md) | 137 | `declaration-track:4883728d0d1f595dd0b720b0e5ec26a6f63c57c81e42c36241457859c1fabf5a` |
| 13 | `theorem` | [coeff_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-apply.md) | 140 | `result-track:a59060d82dde9c1b3b1de828b4d9baac8e4a8da8d0411e9fb27f22cfcefdda50` |
| 14 | `theorem` | [ext](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/ext.md) | 145 | `result-track:7eae7e7d8e5f8b6f7be028a6aa8639ca0da37971d3bef97f0a79b62c6d78bd0b` |
| 15 | `theorem` | [monomial_def](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-def.md) | 153 | `result-track:da48791c9014130416f6b55c0f7eed5ffb84d19e4be598697036418937165550` |
| 16 | `theorem` | [coeff_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-monomial.md) | 160 | `result-track:ec1413f686272a2013319cb19ae73670efbfa0a28c1fdfdd478ab302286cbf74` |
| 17 | `theorem` | [coeff_monomial_same](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-monomial-same.md) | 166 | `result-track:a665bcd00726d03ce0a86ccfc1e2818b31a9c87ae44d2f994aa49bb415eeb8f7` |
| 18 | `theorem` | [coeff_monomial_ne](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-monomial-ne.md) | 171 | `result-track:eba1555d1bb056178d569091112d008c8d7caad309802e16c037b91f0d7627fb` |
| 19 | `theorem` | [eq_of_coeff_monomial_ne_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/eq-of-coeff-monomial-ne-zero.md) | 176 | `result-track:6234109185ed3be071ea3afebc4c68eb38128dddba7a2adf103197cf72144a93` |
| 20 | `theorem` | [coeff_comp_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-comp-monomial.md) | 181 | `result-track:77fad448e129d2e051c38e97b2d529fd10df43c26b36be4b83cee139e75dcf87` |
| 21 | `theorem` | [coeff_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero.md) | 185 | `result-track:004ea88dc049f9ab30b9e5a30b984fbac620a936bc88cc5a6a1be14d7ed41abd` |
| 22 | `theorem` | [eq_zero_iff_forall_coeff_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/eq-zero-iff-forall-coeff-zero.md) | 188 | `result-track:dd267e1979b1985faac5292b6153dc600e405d662775b071430eeb254d643a85` |
| 23 | `theorem` | [ne_zero_iff_exists_coeff_ne_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/ne-zero-iff-exists-coeff-ne-zero.md) | 192 | `result-track:289944a11c6bd7c575b235f86233e47531e9672176bcd0ff070db11097eca4fd` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-16.md) | 198 | `declaration-track:d662f457a9350c0ac01a22c5473f9d462bfc87e8657a325ed417f1a3a6981f19` |
| 25 | `theorem` | [coeff_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-one.md) | 201 | `result-track:b3bdfee8619813a58f76d3e632b1ca1d7d5464d00165edbaf3d29759542f9cf0` |
| 26 | `theorem` | [coeff_zero_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-one.md) | 204 | `result-track:fb7259730da34c9bbfcde4dbc00f6c11e2d83f38d81bb14f6b0532dc81efb275` |
| 27 | `theorem` | [monomial_zero_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-zero-one.md) | 207 | `result-track:61c06928c0aa22b8a42635c80a1aa6612c782965bb1f3a85802d6c1f6daee703` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-14.md) | 210 | `declaration-track:c4c4947e4172f6665b174fdcb54c9fac43cd93012a4b6d931fcc7a0d8184cc0e` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-5.md) | 215 | `declaration-track:5c8b031364360e5c0fc15da34e7f943ce6302dc8e66bc6a0d407dcb14789da9e` |
| 30 | `theorem` | [coeff_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-mul.md) | 219 | `result-track:87dc3b43ead9e41e0f808edc1e5e270c58efcb0c70ad8f360ae45ab1e0631dfd` |
| 31 | `theorem` | [zero_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/zero-mul.md) | 224 | `result-track:afbfd9a6410102438059e895e3012c471d9da6950f67acd7b4a913df174af29b` |
| 32 | `theorem` | [mul_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mul-zero.md) | 227 | `result-track:52fe83790f31fab81456f0455789b097186dcdefa1cf2ad365120f46c69ae628` |
| 33 | `theorem` | [coeff_monomial_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-monomial-mul.md) | 230 | `result-track:07aab60fae5083b253a05136e198e9df6f2bd4240f7089587ad39ef4db3b6bee` |
| 34 | `theorem` | [coeff_mul_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-mul-monomial.md) | 241 | `result-track:33f0f7474c8a103dbfd55c3a19103c5ba517c1974de2aa3a11c7ead5f14e925f` |
| 35 | `theorem` | [coeff_add_monomial_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-add-monomial-mul.md) | 252 | `result-track:51c62c7b683ac48d3064690704683cb4a40d21cf451d2636bafdf3a745c6f96f` |
| 36 | `theorem` | [coeff_add_mul_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-add-mul-monomial.md) | 257 | `result-track:3e135da823b270c8e2dc9baf19c3ba473c3eaed0f4464daee9eaa054560e0102` |
| 37 | `theorem` | [commute_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/commute-monomial.md) | 263 | `result-track:6ec8b294824a421002b5da44a7839a3d0aeec38e0dc7a453ed7cba123d2d78e1` |
| 38 | `theorem` | [one_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/one-mul.md) | 272 | `result-track:963d9da12ce6612a9ba4695a8c0a726e4e931acd68ac272d13bfa373e1a83722` |
| 39 | `theorem` | [mul_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mul-one.md) | 275 | `result-track:b6094fd5bbd35d77188b657b3bee6204080773ddd20afe7dcba4b451e256675b` |
| 40 | `theorem` | [mul_add](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mul-add.md) | 278 | `result-track:4dc3c069ea8d467fce92ff0cbd91cc8ed3063e8608e40269f4092f5f04682d80` |
| 41 | `theorem` | [add_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/add-mul.md) | 282 | `result-track:bd39ebddc33f8f63822ad4a9bf322e881ced009f609cc484d834957e13046f95` |
| 42 | `theorem` | [mul_assoc](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mul-assoc.md) | 286 | `result-track:4deb46fa41d779bb8f6d4b1ad9673e447a2d7b368f467e2b90607a7735fc6e48` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-17.md) | 293 | `declaration-track:daf5b1bb4055b91f4151ac853ed9b347217d3ce168c272bf22e2c4aafaec15fd` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-2.md) | 304 | `declaration-track:20ef29c5311504f7f0de286172fc7a25cae49e23195496d3cc138d3ac45e2c60` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-3.md) | 311 | `declaration-track:3e6a57548c8e027d8d47eaad89232ed41033e8e43336fbc3a68d192c72d2e7ea` |
| 46 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-12.md) | 313 | `declaration-track:af0f31165ae7c73bcb739a8933eb03c4dd8213cb075816d3d02f749366a823ab` |
| 47 | `theorem` | [monomial_mul_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-mul-monomial.md) | 319 | `result-track:7af21f5f3c6ff7f45b8a29e6128d4bf07dba166fafe4f4cbf3276b59d63e56c4` |
| 48 | `def` | [C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/c.md) | 334 | `declaration-track:5974b106cf615b6e66157b623cb109a0d748f6eb376f6c50e52545ac7c10ffb5` |
| 49 | `theorem` | [monomial_zero_eq_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-zero-eq-c.md) | 341 | `result-track:9b2b6d7ab9ad7a0615b91fd872a71a664534aae2c287db30daf92bbfcb05c729` |
| 50 | `theorem` | [monomial_zero_eq_C_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-zero-eq-c-apply.md) | 344 | `result-track:238375ea33fb2c8b3f684637bab5600eb134ddca0d1f6cf84bada221cb835d18` |
| 51 | `theorem` | [coeff_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-c.md) | 347 | `result-track:1e65e3fdc9310c4b569c80f44fa98940ca137f23395e72846ed7ca018b60761e` |
| 52 | `theorem` | [coeff_zero_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-c.md) | 351 | `result-track:9b70405a73933a769c4d0a53dfc9652599d7d707c98921e7855ca3c382a88725` |
| 53 | `theorem` | [coeff_C_of_ne_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-c-of-ne-zero.md) | 354 | `result-track:7add2b93da3f99a5d7d4a5b4424804ef12b0acce87142d87ea6dada7325d26a1` |
| 54 | `theorem` | [coeff_add_single_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-add-single-c.md) | 359 | `result-track:053d74c839d1b8e4d9904979a46f3270677f234ac481407c2603b6edd6fd4eff` |
| 55 | `theorem` | [C_injective](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/c-injective.md) | 364 | `result-track:90c8d22b983cb68bb29c164f37fd984bec90832989724bd1ef4ca6bbce67b40d` |
| 56 | `theorem` | [C_surjective](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/c-surjective.md) | 368 | `result-track:afed29535797e2e78ba7ed223f6da840616b3bdaaea80955ab8d1fe7976524a8` |
| 57 | `theorem` | [C_inj](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/c-inj.md) | 371 | `result-track:0591a5f429ceff79a0c3124e1b57461e2fa8135dbc6df90a011d2ec0d86896cc` |
| 58 | `def` | [X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x.md) | 374 | `declaration-track:c94d56dba42ed977ebe5ada860bdac323da56c2c9a20c16e07892908b6fd0015` |
| 59 | `theorem` | [coeff_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-x.md) | 377 | `result-track:9d054f0b5db72c1df279f7d319a4cf7febf52be52495e4a53559276cebc764cf` |
| 60 | `theorem` | [coeff_index_single_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-index-single-x.md) | 381 | `result-track:b9c07006207a7f237a3e9600c7f0118d5bbdaa90b3ab890e4d117dd5aabf3817` |
| 61 | `theorem` | [coeff_index_single_self_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-index-single-self-x.md) | 386 | `result-track:bb6e219710a7be907fc0c06b9b067233be154c6ae6e28397e2cb686e99e66ddf` |
| 62 | `theorem` | [coeff_zero_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-x.md) | 389 | `result-track:c275059bb6a2d6267ff5e212d6402e0a3542a98759a8897d4b579959ffeff0b7` |
| 63 | `theorem` | [commute_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/commute-x.md) | 395 | `result-track:ba54d770c5e877db6550d964c225b0040722ad6d668492f49032330eaf45851b` |
| 64 | `theorem` | [X_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-mul.md) | 398 | `result-track:d45e10d0d26b2667543c118522c588a52341517cec225568f922bd637731f62a` |
| 65 | `theorem` | [commute_X_pow](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/commute-x-pow.md) | 401 | `result-track:52654b294aa28c59217f98c509f637e54f73b7cbf6523ad34599f870c1653509` |
| 66 | `theorem` | [X_pow_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-pow-mul.md) | 404 | `result-track:6193322455d2178a3ed05a188267573935d85996defd5839cd0155b6e2421663` |
| 67 | `theorem` | [X_def](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-def.md) | 407 | `result-track:84c6d428a7c71a57eed0c7680dc3761481a1869ed835dd8718b97ae04056f31b` |
| 68 | `theorem` | [X_pow_eq](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-pow-eq.md) | 410 | `result-track:dbed51c9ca38d32ee5e33d93b75748d9a14a7aa0cf82d53bf5bb5eaa7f5219e3` |
| 69 | `theorem` | [coeff_X_pow](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-x-pow.md) | 415 | `result-track:ec5a76439fe32ec1de07222fdbecb953d27f4bb7a8eece7f6d783564f1155132` |
| 70 | `theorem` | [coeff_mul_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-mul-c.md) | 420 | `result-track:96ee5e7583909c0738e2f00e7ddc4ecef7175f3ff243baae4204713ccaa67eb8` |
| 71 | `theorem` | [coeff_C_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-c-mul.md) | 424 | `result-track:1c7f123af264527dde995b7e1580be2438ca0c76b54df58f705c45feaf9eb63b` |
| 72 | `theorem` | [coeff_zero_mul_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-mul-x.md) | 427 | `result-track:32133a2442520e65f5c209013645eb340d4f4bd72f43a5f643c4d1cf432719fc` |
| 73 | `theorem` | [coeff_zero_X_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-x-mul.md) | 431 | `result-track:afee51877339fa8ba656b696de6705cf94008d60d8afc75aab41857a742f0331` |
| 74 | `def` | [constantCoeff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff.md) | 435 | `declaration-track:f7677efa54c8bc35454f6f3b9bda786151aeeea8fb39e30ed7371720a18b3798` |
| 75 | `theorem` | [coeff_zero_eq_constantCoeff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-eq-constantcoeff.md) | 443 | `result-track:e6e7d71dc210c2083cfc5405ec2f4e88ae5633cafa9ee05e681764f5a513ed2b` |
| 76 | `theorem` | [coeff_zero_eq_constantCoeff_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-zero-eq-constantcoeff-apply.md) | 446 | `result-track:c3dda4852daf0a01e3eb74fef2c0d494787e0c1c57f7d2ea077cd402b1a6b7ae` |
| 77 | `theorem` | [constantCoeff_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-c.md) | 451 | `result-track:2dedb642951bde543d1efa390309bde0f1d8d939f53b76e3dde25d7c14b7f856` |
| 78 | `theorem` | [constantCoeff_comp_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-comp-c.md) | 455 | `result-track:25bc5fca1792c5bd3b9bfb2054a1954f0a089de8228f39e4adc78d1498a770e8` |
| 79 | `theorem` | [constantCoeff_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-zero.md) | 459 | `result-track:cfd6fa2be735713fc079a532588b42755072396268ffcaa94df6d6e713984426` |
| 80 | `theorem` | [constantCoeff_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-one.md) | 463 | `result-track:995589b1f5d7f3e6d361b2e00486cbf293ce06869854209a66bbb600940db8d0` |
| 81 | `theorem` | [constantCoeff_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-x.md) | 467 | `result-track:e731265614aaa27edf0b6a5e56de3d2c80cf56648435f78aaaa5e1ab9d171e43` |
| 82 | `theorem` | [constantCoeff_smul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-smul.md) | 471 | `result-track:da92f133c03cab12342154786882c1ac18deeb6a774432807eb56a60735d4e6a` |
| 83 | `theorem` | [isUnit_constantCoeff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/isunit-constantcoeff.md) | 477 | `result-track:0606567e76178b7a654c310321c4062c3037958dd8d7c5316831d3d6af1a4f1a` |
| 84 | `theorem` | [coeff_smul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-smul.md) | 482 | `result-track:44262fb03334f89eb813c8ff0b4e8adeb8bccc1859231bc0d054a149baa90da3` |
| 85 | `theorem` | [smul_eq_C_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/smul-eq-c-mul.md) | 485 | `result-track:f398ff354d387d4b07504ce8317f66ae94bd9c556d8eafb81d2c78b3877a292e` |
| 86 | `theorem` | [X_inj](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-inj.md) | 489 | `result-track:a1c670c9b259a8527c070760605519433c2b556f61af3f2eee923306287c1794` |
| 87 | `def` | [map](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map.md) | 513 | `declaration-track:b803baf5df6be0cc00bf16d3b330011b5eaebf1ac35f8c16f27b1f62b633b887` |
| 88 | `theorem` | [map_id](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-id.md) | 535 | `result-track:876b1f2b433c8fd48a0a5d7a52ef742c7fafa57e9f161a16bfa9312c29a12578` |
| 89 | `theorem` | [map_comp](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-comp.md) | 538 | `result-track:e43e09cc4d4f236a91a6fb0294fc169376fb772f02667ce448ced6f6d7e401ec` |
| 90 | `theorem` | [coeff_map](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-map.md) | 542 | `result-track:9c5441d70b1e552057f3d580a2b1a1a77a34cf07b91e2790395136a15038e4de` |
| 91 | `theorem` | [constantCoeff_map](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-map.md) | 546 | `result-track:4398d87193ac628ac64faea72b3b4d6f05ffdea338e9ef8661a5bb71a0b056e6` |
| 92 | `theorem` | [map_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-monomial.md) | 551 | `result-track:b4c0375d9f8e6991a895175e3d8f50293b98f02cbeff5de4687ebf96cd24a9a9` |
| 93 | `theorem` | [map_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-c.md) | 557 | `result-track:d18aba741d9efdd36754cfdbfa5273ae2993da7c232fcd9b8009be8875202ab9` |
| 94 | `theorem` | [map_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-x.md) | 561 | `result-track:fbdab98abf4aa28bf43595f1e1c9e66fdf626925017ce9b2f9f8eaf7a63ab638` |
| 95 | `theorem` | [map_map](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-map.md) | 564 | `result-track:c3a56112d63737834091b63fddb846f5fca8dd24dcabec02765f895ca299072f` |
| 96 | `def` | [toSubring](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/tosubring.md) | 579 | `declaration-track:83b094596042d865eb45711a4250c19f48002f6d98bfb1e9a2f40ed72891ba9f` |
| 97 | `theorem` | [coeff_toSubring](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-tosubring.md) | 582 | `result-track:5f323bbc225e9230c72514eaea9143617e31c88d299620daf6f51836c59448f0` |
| 98 | `theorem` | [constantCoeff_toSubring](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/constantcoeff-tosubring.md) | 585 | `result-track:adacdc14e3c88a63751841622ff56d15beb77975bde3ead6ac8db90172eca624` |
| 99 | `theorem` | [map_toSubring](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-tosubring.md) | 588 | `result-track:ca3dd0a78bb503a7c384a99fcf65bbeaa1c0bf9a8483543cb2dbc723c2418a90` |
| 100 | `theorem` | [map_eq_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/map-eq-zero.md) | 593 | `result-track:781bf744d9d49a84a4dbe41cb6d33ec148c6ec085709297c22adc5a6f95f53d3` |
| 101 | `theorem` | [X_pow_dvd_iff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-pow-dvd-iff.md) | 604 | `result-track:17dddc11709776554cb2d09c2bb8cbf0d047288804c8ce829af5cb759b13281e` |
| 102 | `theorem` | [X_dvd_iff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/x-dvd-iff.md) | 658 | `result-track:59164d6478c8ad44d0bee92f905f5dbaf72ec335571363f5965b696f81080828` |
| 103 | `theorem` | [coeff_prod](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-prod.md) | 675 | `result-track:e101b86be817d5da74f078a51e272b0cad4abc28fc7c5f08133f27eeebadaf56` |
| 104 | `theorem` | [prod_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/prod-monomial.md) | 710 | `result-track:b9e475e20afe026e4e29980943bfc22b92ac6e7cdd99d3bc035b8557d4db3515` |
| 105 | `theorem` | [coeff_pow](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-pow.md) | 718 | `result-track:ded80208a6ba16f646d87513ec832021a60d07fcb8b801aa3a895a6dd4aaa73e` |
| 106 | `theorem` | [monomial_pow](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/monomial-pow.md) | 726 | `result-track:e98f9522228cc93a2fa1146e606873297559c881aebd0b972d428cc53abea41b` |
| 107 | `theorem` | [coeff_eq_zero_of_constantCoeff_nilpotent](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-eq-zero-of-constantcoeff-nilpotent.md) | 734 | `result-track:8719e5512487a89ecb0a54307acda51376e7701d7f42a81423f515799b9b8ab1` |
| 108 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-7.md) | 777 | `declaration-track:7822879e2ca14f2aa2bc4049238e4d4029753d9a99d4d5282eed8371a8232be5` |
| 109 | `theorem` | [c_eq_algebraMap](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/c-eq-algebramap.md) | 786 | `result-track:522dbd206d8310f8693e0dee09e367b97f5bcbd1f987fe1f43d77ca88810c3b0` |
| 110 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/algebramap-apply.md) | 789 | `result-track:37ce23eac2f51acf10908539975c34be823754a96dcaaacca0a4d45938694fe9` |
| 111 | `def` | [mapAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mapalghom.md) | 795 | `declaration-track:698f90d37d3bb1f3014302399980a1ca23cdb013ddf4275b8660102db6f74e91` |
| 112 | `theorem` | [mapAlgHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/mapalghom-apply.md) | 802 | `result-track:877459071e78b5a6fa66e47d36ffc6afeab57815066e350072632b20e45ef630` |
| 113 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/instance-source-edition-11.md) | 805 | `declaration-track:ab5cb5bbb07533ff8471b8bf8ed527a001c3bf43a17766514c23a4d966d6db54` |
| 114 | `def` | [toMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/tomvpowerseries.md) | 830 | `declaration-track:521832d1091d6a9dab097469a064b401c9aed5966ee56cdf0de14454880da3f0` |
| 115 | `instance` | [coeToMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coetomvpowerseries.md) | 834 | `declaration-track:ce48bbf82566ac6d7040d8cae308ba0a9e915ace23888dc0fa82348513c79e78` |
| 116 | `theorem` | [coe_def](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-def.md) | 837 | `result-track:0b6275a5b432217888e3a0dbfae7af177313c1f9ec786808751615dd91a61b19` |
| 117 | `theorem` | [coeff_coe](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coeff-coe.md) | 841 | `result-track:53acfa518a023454b853666596a556b250455e30fbeaaf17838b55525862d415` |
| 118 | `theorem` | [coe_monomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-monomial.md) | 845 | `result-track:912f3764a96739971c62b528096bc53739807901c94a1bc5d7c26397f44cfe90` |
| 119 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-zero.md) | 852 | `result-track:254ae0cbc8f497454db578715774afaeaa78c16641d8feb68fb1b6d6ef5119a6` |
| 120 | `theorem` | [coe_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-one.md) | 856 | `result-track:8aba89569036eef51ba6506aa6c92771086a260f78a0dd61ae460d4afa23291e` |
| 121 | `theorem` | [coe_add](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-add.md) | 860 | `result-track:9e49ad3549ba6bab32ba926af80238c9ee0fd547da8e3e3caad83c67425034dd` |
| 122 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-mul.md) | 864 | `result-track:42ad884777ef1317a476d9c89f391a939a0e93a34a391367aecb48e05bb85653` |
| 123 | `lemma` | [coe_smul](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-smul.md) | 870 | `result-track:47e62426fec87b8b0d6e7fc383339e826b34660377202eea3e56a78521a220fb` |
| 124 | `theorem` | [coe_C](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-c.md) | 874 | `result-track:5228352756df6a4071e82f6a6a7ba7682be12b312c339b16a736fa9ba735a6e5` |
| 125 | `theorem` | [coe_X](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-x.md) | 878 | `result-track:e6032548d45858e8e8696b4a8fc98ff718039b6accc5eb883508512bc5aba773` |
| 126 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-injective.md) | 883 | `result-track:63f37c287f22ffd5a206900c9d79039c9f800c6fcf6bcf8874e6d604f0eab010` |
| 127 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-inj.md) | 891 | `result-track:0595d31e97de95e765129a93247912df9d08f5a882694fa930a3fab68ba1d776` |
| 128 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-eq-zero-iff.md) | 895 | `result-track:a0c29c7443dafb19080d02a6e51539be26e2b2f3f6e956a37c0691b9fa43d0ae` |
| 129 | `theorem` | [coe_eq_one_iff](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-eq-one-iff.md) | 898 | `result-track:a0cdc0a478d7830507523578be60418a075ab5081e547f191608a95119adfbba` |
| 130 | `def` | [coeToMvPowerSeries.ringHom](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coetomvpowerseries-ringhom.md) | 903 | `declaration-track:58bc7554a7b76c9b567191bf54fb46205a52048507c16e7e2bc3e52b853067ae` |
| 131 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coe-pow.md) | 911 | `result-track:87592d4e695b55feb91ea170a15dfc725b560b88087833bbb2d1600aadaf5829` |
| 132 | `theorem` | [coeToMvPowerSeries.ringHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coetomvpowerseries-ringhom-apply.md) | 918 | `result-track:f09e2032055cd6cea721efb985c25f6aca6bafdd17bfef6ee954adbea16158e6` |
| 133 | `theorem` | [_root_.MvPowerSeries.monomial_one_eq](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-one-eq.md) | 921 | `result-track:e5ae9f11b6870258f59dd64461250f27f79258c8a73e2c01e0c93bda9a524058` |
| 134 | `theorem` | [_root_.MvPowerSeries.monomial_eq'](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-eq-source-edition-2.md) | 928 | `result-track:5f9aab2b9178d01761268183b11ed04e7a674f778fb8ceb4d729993ff4f07cd5` |
| 135 | `theorem` | [_root_.MvPowerSeries.monomial_smul_eq](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-smul-eq.md) | 935 | `result-track:4bc67aa77292c723d9c199069d2a13394d7dd25bd9b1011e8ad2b6271de7d881` |
| 136 | `theorem` | [_root_.MvPowerSeries.monomial_mapDomain_apply_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-mapdomain-apply-one.md) | 942 | `result-track:ce17bddd747b82831f86955801f61e44329d1fedfd7b5dd7c5badc881294a8e9` |
| 137 | `def` | [coeToMvPowerSeries.algHom](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coetomvpowerseries-alghom.md) | 954 | `declaration-track:603e0774d85ce6104a02f64c8a1055111e1fa7de44f9b63ec4b75fe3be240bfd` |
| 138 | `theorem` | [coeToMvPowerSeries.algHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/coetomvpowerseries-alghom-apply.md) | 959 | `result-track:2e6a0dcb0ec15091cb8881cc0408217224ff94821ed95324406c840b28bff626` |
| 139 | `theorem` | [_root_.MvPowerSeries.prod_smul_X_eq_smul_monomial_one](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-prod-smul-x-eq-smul-monomial-one.md) | 963 | `result-track:707c8fa151261065cc0517ba68490e2191b6ca184ce3434da8ba28eec6b30bcb` |
| 140 | `theorem` | [_root_.MvPowerSeries.monomial_eq](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-eq.md) | 977 | `result-track:52658bdc88a6ebcd6bee8c2e492beaacb2c0a47bcf9d0b12aebd297ca14ff579` |
| 141 | `theorem` | [_root_.MvPowerSeries.monomial_smul_const](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/root-mvpowerseries-monomial-smul-const.md) | 982 | `result-track:b038d8897822b5f02a3cc0108c368b164e181ead08a8aabc469032b6cc94b5bd` |
| 142 | `instance` | [algebraMvPolynomial](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/algebramvpolynomial.md) | 998 | `declaration-track:2e32f0d5cc2633e45c262f4575a501d4a84f470fd0e72f8bc6cfe62b56f6a362` |
| 143 | `instance` | [algebraMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/algebramvpowerseries.md) | 1001 | `declaration-track:5b5c4d143c2b5a17a43a083f9a95a7b4f5a2d7112ccaa2aeae22db7eccba8a50` |
| 144 | `theorem` | [algebraMap_apply'](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/algebramap-apply-source-edition-3.md) | 1006 | `result-track:db884b3c9321e50548f34af7d2faf8eb2c50dcbb883476a138016d85bc7356ee` |
| 145 | `theorem` | [algebraMap_apply''](../../../../CommutativeAlgebra/MvPowerSeriesBasicPublic.lean/declarations/algebramap-apply-source-edition-2.md) | 1010 | `result-track:96a485c119549c0a02702b1d5bb5948bde5849f648b94d6ff454b49798245ba3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=681bb7bcb0abdbf6baabcb23d0cab6eabb5482d39a66a18b9253beba25a4412a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
