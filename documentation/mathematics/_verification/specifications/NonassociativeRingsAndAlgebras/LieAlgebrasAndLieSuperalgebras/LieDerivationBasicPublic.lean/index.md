# Verification target: Lie Derivation Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a27ee20340c1624a30708ed0ca644bd1b32a3b6",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcee20d12daafe208db73f47b5448bc93fc88a0858005bb8700009935891021c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a27ee20340c1624a30708ed0ca644bd1b32a3b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantcee20d12daafe208db73f47b5448bc93fc88a0858005bb8700009935891021c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantcee20d12daafe208db73f47b5448bc93fc88a0858005bb8700009935891021c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LieDerivation](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/liederivation.md) | 45 | `declaration-track:ddd7ea6784014f7c056ea2f7a34661bb7b9f0b13525f14c5d845fef4acafb4b3` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:3e70060fdfbf9cf8a90cc8535ab2f1ded4c8b3d6b3500cd247ebb72ae0b80ce5` |
| 3 | `instance` | [instLinearMapClass](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instlinearmapclass.md) | 67 | `declaration-track:3338c6248561cd9f2202558532967ce32dbc6bc1546d056cd32c4286b1fd298f` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/tofun-eq-coe.md) | 71 | `result-track:e9f2cfda75613fe0900ea6ebb5e23e284385dc74f0e3103c431aff3959dfc71c` |
| 5 | `def` | [Simps.apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/simps-apply.md) | 74 | `declaration-track:5fe94f0f02154d633e8ca24cc9b5047c3bc8f4a304ccf29ed40dc1caf10eb87c` |
| 6 | `instance` | [instCoeToLinearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instcoetolinearmap.md) | 80 | `declaration-track:640a43fc5711913c2b02a94c46a2d7fdf162782adcfa83f17f34b8b98b14e8db` |
| 7 | `theorem` | [mk_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/mk-coe.md) | 84 | `result-track:9ecee94a0e33a8c81e72e0d1dbd2ac5a1a78b5bf74e90c4e142e6a95da9e342d` |
| 8 | `theorem` | [coeFn_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coefn-coe.md) | 88 | `result-track:62593229a6352d27d0737f5ae85b3353ee1ed12c2c020cd80857820f275eda61` |
| 9 | `theorem` | [coe_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-injective.md) | 91 | `result-track:e96e76345ac5871db3b3c3eb1f74a4a6ec3c5eaf992f4bc14ef85a17660c2e44` |
| 10 | `theorem` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/ext.md) | 95 | `result-track:4f6fa23ff5a99a465c16650ba3bf1e47953a2afa627138e527188220f8f889ee` |
| 11 | `theorem` | [congr_fun](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/congr-fun.md) | 98 | `result-track:c119c04e6e7983173eb176c311d776bc374c00916cb24ed14ae07157587e8169` |
| 12 | `lemma` | [apply_lie_eq_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/apply-lie-eq-sub.md) | 102 | `result-track:8be294f0d84ed075eae1eaab3a22127891ef95c4df4de52ae7922aa81c1183a6` |
| 13 | `lemma` | [apply_lie_eq_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/apply-lie-eq-add.md) | 107 | `result-track:d3f8a70ed3ea4f1a74cb8455269b599c23df7af24bdfa022298e1b8400d64263` |
| 14 | `theorem` | [eqOn_lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/eqon-liespan.md) | 112 | `result-track:12767543cc2444692951db9e4c0c0df3f3a0ce6e9ecd95e590fd7479d7c3d74b` |
| 15 | `theorem` | [ext_of_lieSpan_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/ext-of-liespan-eq-top.md) | 124 | `result-track:2fc64df4404fd0cd025b15ccb236e526491df040e8eb2a069b6da39d821d39cc` |
| 16 | `theorem` | [iterate_apply_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/iterate-apply-lie-source-edition-2.md) | 133 | `result-track:e8ca53f7242a4152e38de9e1e5f260c2a9a3c5575345de1a6e3223943a546526` |
| 17 | `theorem` | [iterate_apply_lie'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/iterate-apply-lie.md) | 145 | `result-track:5283b5e5e5c6a078ef8751a1173f33aabbd1bbe4182a83a03005cf54cb808e62` |
| 18 | `instance` | [instZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instzero.md) | 152 | `declaration-track:5cf75fe45478b39ba8e72f5fce3b2578d8b4da3e7caff442613eef3cee7ef1b5` |
| 19 | `theorem` | [coe_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-zero.md) | 158 | `result-track:5df2e524f736fbe9332a583cb561c21cbea8e0b3ff2aff85dab0db795b6ae7e4` |
| 20 | `theorem` | [coe_zero_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-zero-linearmap.md) | 162 | `result-track:d37d1aab34d3dea75b900fec34c54867f893f9fce3416cb37e1fa0c7b027247c` |
| 21 | `theorem` | [zero_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/zero-apply.md) | 165 | `result-track:5a34574556bd86b79200d3a0eaf6548cb5756f00dd95df4f90dc58347da20a43` |
| 22 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance-source-edition-5.md) | 168 | `declaration-track:d2cd31d0c6f56870530e49dc6a9e2ac51cab2f3d95b8cc2699714cc5fb629085` |
| 23 | `instance` | [instAdd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instadd.md) | 171 | `declaration-track:5b51e8753f97fa66e221d369a3d283cfb854f939caca775bc7b3c49ed823b994` |
| 24 | `theorem` | [coe_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-add.md) | 178 | `result-track:f0343774202deb5a3556f79f7fac57ffae2f602a9db515ac949f4ecd2c643a86` |
| 25 | `theorem` | [coe_add_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-add-linearmap.md) | 182 | `result-track:08675b93baf558b7cef8d2f19a2ce056761bd121ab8fca29f6aa4754ad8449c9` |
| 26 | `theorem` | [add_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/add-apply.md) | 185 | `result-track:93d6feb7298f818085c591f41382bb0af87c8cd9856ee4a24815b68ae0db2aa7` |
| 27 | `theorem` | [map_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/map-neg.md) | 188 | `result-track:ad841ab90e4a8f83d438c5c707d558937f457aa4264d31c29fd8bfe6282ff5d2` |
| 28 | `theorem` | [map_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/map-sub.md) | 191 | `result-track:0ca86f95e615a6872327388f75c19c5586b884be04da5a0be0984a227f7a0862` |
| 29 | `instance` | [instNeg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instneg.md) | 194 | `declaration-track:7452e1d6edf107dff62898498602d35c115d0fad5390a6c9ae62effd2a1c8e4d` |
| 30 | `theorem` | [coe_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-neg.md) | 201 | `result-track:2434f4a7d2a1186d4235d72e4e4d02b25cc27ecb3c27dddc7dceb5c8994c3dda` |
| 31 | `theorem` | [coe_neg_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-neg-linearmap.md) | 205 | `result-track:8208a96e464599674784dcca4464e9a0f2c87cb6694d016a6a132a7addf217bf` |
| 32 | `theorem` | [neg_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/neg-apply.md) | 208 | `result-track:ddeecbf1d98b95b3da01c56526e49d5efb282c3c2de8c90bfbb296b109f9e337` |
| 33 | `instance` | [instSub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instsub.md) | 211 | `declaration-track:245e61fd41624772b31db5b291a585e8c136a785cfcdbc836f943ec7a66de781` |
| 34 | `theorem` | [coe_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-sub.md) | 217 | `result-track:5bd719d6cc3a2c9bad3be345b02659566a000ead72d15b989a11fe35fc48c0ad` |
| 35 | `theorem` | [coe_sub_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-sub-linearmap.md) | 221 | `result-track:d3baf8ee307093a6a52cca074084ed1017e5a9198ea2c514b0c3c8449993169e` |
| 36 | `theorem` | [sub_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/sub-apply.md) | 224 | `result-track:a7015a0d3941d60832cdb27719fe4dbbf396562e91185458d334f41fcf4d588d` |
| 37 | `class` | [SMulBracketCommClass](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/smulbracketcommclass.md) | 230 | `declaration-track:6255115f1a148c30cc67755e15a091d63d27e2594c4919cdacd439b10e948ddf` |
| 38 | `instance` | [instSMul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instsmul.md) | 239 | `declaration-track:14c96537634083ab9a583ecb04df419e2fedcb0da1f92120a11fc414abb4c321` |
| 39 | `theorem` | [coe_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-smul.md) | 246 | `result-track:8cbb92465fed981650bb70878d6cbbb69cdb62ea48b41da7a43a69adfc5dd178` |
| 40 | `theorem` | [coe_smul_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coe-smul-linearmap.md) | 250 | `result-track:68fac150b29d1805630084fed3d48dd9fab2e03f87d34a948ab51a8bbe9480ab` |
| 41 | `theorem` | [smul_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/smul-apply.md) | 253 | `result-track:285953b1e624ae8d1c55bf9c52096e07bad01b6e59ae722561a3c4157377d8be` |
| 42 | `instance` | [instSMulBase](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instsmulbase.md) | 256 | `declaration-track:61939ece8b434bafcb525f0bd9a6b5a33d8f7ff7351248c1a54a3cb8bb265d44` |
| 43 | `instance` | [instSMulNat](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instsmulnat.md) | 258 | `declaration-track:66297d401db5d4b7bc796cf27cf483419bf088100532b937877f207fc6bda476` |
| 44 | `instance` | [instSMulInt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instsmulint.md) | 260 | `declaration-track:3c4c2b158517cd6fa010fd0ca017a722a2d4dc3675875bf17283b4e7bd465dde` |
| 45 | `instance` | [instAddCommGroup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instaddcommgroup.md) | 262 | `declaration-track:c0d969a3731f7b60faaa3ece8a4f81ffda8eaba13b1cb077c9a4d78a25398795` |
| 46 | `def` | [coeFnAddMonoidHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coefnaddmonoidhom.md) | 266 | `declaration-track:b3ba6b6536ac6c0ddbbe1b6e8101b8526a17f441c54eef86ac76d5c7aa33a0a0` |
| 47 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 272 | `result-track:c99eadfbb12038a740d47f35142b4089885a779ce991568c65175a9aed245ef9` |
| 48 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance.md) | 274 | `declaration-track:2df14a011c827718cc45e9dbfff172ab36da96ad556a4df4d29e2226d7c588a0` |
| 49 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance-source-edition-4.md) | 277 | `declaration-track:9df2b4ac3abe1223b194d1ea89b94fd716010a59a170c26c7b6da7eff09bac70` |
| 50 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance-source-edition-3.md) | 280 | `declaration-track:52ccb53b81e901f63655227f841b5e79cee7e968806259d3a322222af1a22714` |
| 51 | `instance` | [instModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instmodule.md) | 285 | `declaration-track:35396a627fe16683d560a6f1d16405bc36bb3f842516fadfa14a70694abed669` |
| 52 | `instance` | [instBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instbracket.md) | 296 | `declaration-track:0a28727dec1bfa5d38a2e01fca0c529cc2bbf7358952dd419e254a2a56ffb3d7` |
| 53 | `lemma` | [commutator_coe_linear_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/commutator-coe-linear-map.md) | 305 | `result-track:338b9c70d71d91139562eec52424f49fd5c3be90febe2b3e0f764299faa3b82c` |
| 54 | `lemma` | [commutator_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/commutator-apply.md) | 308 | `result-track:7b7c266bde816f55a249422b67306ec6e7bc2858dee21ca08feb7d5645d052e1` |
| 55 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instance-source-edition-6.md) | 311 | `declaration-track:ecf32fa49312eab4e96db7ce3bf18a7be41550d202a49ad554b227b8c6ff71dd` |
| 56 | `instance` | [instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instliealgebra.md) | 322 | `declaration-track:de1466317222f984db555b40e3bf3ef8129309060145e8aa1889406d64b8eb7b` |
| 57 | `lemma` | [lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/lie-apply.md) | 325 | `result-track:f0ab8a0ae820d7942901be77d555751b10f0e63df54c97e80aa93ec327eacde6` |
| 58 | `def` | [toLinearMapLieHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/tolinearmapliehom.md) | 338 | `declaration-track:e6b3b7c0aa3006f754f8fd9eff38226514f86b399199411ecb1b20b8a27c2079` |
| 59 | `lemma` | [toLinearMapLieHom_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/tolinearmapliehom-injective.md) | 345 | `result-track:b3cffe81ecde493e3ce4c9ad2fa59dea9dce48aaa612a412995c29e28edc2cdf` |
| 60 | `instance` | [instNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instnoetherian.md) | 349 | `declaration-track:c24395d85a4832a46e697237c7450f88247d29f5d6c47f6b7895cab50ccc32dd` |
| 61 | `def` | [inner](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/inner.md) | 361 | `declaration-track:e5467cc1e9e2387750e040b892c15a234967f1a3db42786489d8c27533332478` |
| 62 | `instance` | [instLieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instlieringmodule.md) | 368 | `declaration-track:5f4f536fcf10c9d81f892965578016ce889854c50761d70700cc3dea2c3874bf` |
| 63 | `lemma` | [lie_lieDerivation_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/lie-liederivation-apply.md) | 374 | `result-track:9ec4888cfb07cb05060ca828cb07d1706d4228affbc4c1ebf7c1c83a4ab29c9a` |
| 64 | `lemma` | [lie_coe_lieDerivation_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/lie-coe-liederivation-apply.md) | 378 | `result-track:80b5a7785b9ac144c148745e56e02e31d9b2647e67e4d6cbb52ef1a95d8c7f45` |
| 65 | `instance` | [instLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/instliemodule.md) | 382 | `declaration-track:3c5f3255e25f7e35a8b8df3362a7465a324f7e9581f39533d650c2997818f967` |
| 66 | `lemma` | [leibniz_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/leibniz-lie.md) | 386 | `result-track:647830e5fd6d6cdf13ea5ba6ec3ab5da1f9f500de54f93530c268e7232a23915` |
| 67 | `def` | [exp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/exp.md) | 400 | `declaration-track:85433c34a3ab151ba3a84e0fc8c5bfb71197c4d448f64b616e8ee1195fef4e57` |
| 68 | `lemma` | [exp_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/exp-apply.md) | 416 | `result-track:ba8ffa23f1bc9c33d864272ec98073e257b5b450ea3cb5cfb767cfde2e3b02c6` |
| 69 | `lemma` | [exp_map_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicPublic.lean/declarations/exp-map-apply.md) | 420 | `result-track:bbd5cdb6880d62d57829ed0b5af22ee21851cc1f569fb2b527e5d1d5294b0a3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe45a816bf440d77bf87c3bd1899ea644a0da0972fb271ac28c125451cba9ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantcee20d12daafe208db73f47b5448bc93fc88a0858005bb8700009935891021c5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantcee20d12daafe208db73f47b5448bc93fc88a0858005bb8700009935891021c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
