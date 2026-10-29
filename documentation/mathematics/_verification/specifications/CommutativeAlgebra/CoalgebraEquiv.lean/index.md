# Verification target: Coalgebra Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fceacb1e3816cbae7ca1ff9a08194f34dc6b1ab",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fceacb1e3816cbae7ca1ff9a08194f34dc6b1ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Hom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coalgequiv.md) | 30 | `declaration-track:e16265ae4553d4cfa0c5d727aff5b7808fa3338f1a62b7c1281be0eb79185f39` |
| 2 | `class` | [CoalgEquivClass](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coalgequivclass.md) | 42 | `declaration-track:3f0c236ccdb5db72580bf6f5598b18ade75c843bd69ed072d49dd66964750716` |
| 3 | `def` | [toCoalgEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tocoalgequiv.md) | 54 | `declaration-track:9cde750379546d31e5c1459f24baaa728a33b8d279e7896db824be35d6270d0e` |
| 4 | `instance` | [instCoeToCoalgEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/instcoetocoalgequiv.md) | 58 | `declaration-track:e01d33717bc19d98ab2b14f27994acded35ad0fc6cdd17e3aa157f78331b43e5` |
| 5 | `def` | [toEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/toequiv.md) | 74 | `declaration-track:0ff1d220444f09cc39c1bd57cc02e5b08807dc4c4083d6b023c39b5c2b683959` |
| 6 | `theorem` | [toEquiv_injective](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/toequiv-injective.md) | 76 | `result-track:50bf12a42dffaab4d47d60615ffe1f7cb5562ac9c893ef2779460c7577173359` |
| 7 | `theorem` | [toEquiv_inj](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/toequiv-inj.md) | 82 | `result-track:1eddc8175f153adea8480e0941ba840b83a2890315593c71fd957943bd713a45` |
| 8 | `theorem` | [toCoalgHom_injective](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tocoalghom-injective.md) | 85 | `result-track:4dd59acc8de29613ff34d8303f9fbd3bec26ccf97ac4b980a8abe670cc100363` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:40200dde1ce9317509caab739aecabf4856f0eccd129ecfdb9829f338a577167` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/instance.md) | 95 | `declaration-track:31913b4c0d6bab915db1a6ac485e66e74760ebd8439c04dc340b2d1f5e459b51` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/instance-source-edition-3.md) | 99 | `declaration-track:9eced3c60c09f3359d21ba79891f48592006400ece14cdc7b27bdc2392c12ad5` |
| 12 | `theorem` | [toCoalgHom_inj](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tocoalghom-inj.md) | 106 | `result-track:12093cfbd2487e34e45d0be533a59cfb422ed5833ab00dadb2b758b78269e416` |
| 13 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-mk.md) | 110 | `result-track:7d1d87bc1db1231133de2d18bfeb32aff83e3002bc3dcdbde69c2b9da12ab552` |
| 14 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-coe.md) | 123 | `result-track:38bb5da0e7a33e17cf88eec117a19b0927bea09680cc7d821a29a5142d98c013` |
| 15 | `theorem` | [toLinearEquiv_eq_coe](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tolinearequiv-eq-coe.md) | 127 | `result-track:d15806e12a510e75ac26a96d7dad8a61a11ae0eb0bddee3ad886fe9fc4754f2f` |
| 16 | `theorem` | [toCoalgHom_eq_coe](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tocoalghom-eq-coe.md) | 131 | `result-track:688dc8c0878a40fedd88d609efd2912e09b13c3e6da96375b93bc8c243a915e1` |
| 17 | `theorem` | [coe_toLinearEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-tolinearequiv.md) | 135 | `result-track:75a21dd4b282871c530f50ebe3d264d8a5ab5e5db7807912a4650cef834c6fe5` |
| 18 | `theorem` | [coe_toCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-tocoalghom.md) | 139 | `result-track:f9d4fe65f27f1d6423c24b563f951781fc4dc166f45490a0f71a8da914754c00` |
| 19 | `theorem` | [toLinearEquiv_toLinearMap](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tolinearequiv-tolinearmap.md) | 142 | `result-track:b93bd24a4758a74d5fa0ddb7da30dc5976cca4c2fb9663230ce28aa430d4056a` |
| 20 | `theorem` | [ext](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/ext.md) | 150 | `result-track:f8a6cbbc26d868a12e7211246335dfd31173d9ae6028686e1abd206f37273ee8` |
| 21 | `theorem` | [congr_arg](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/congr-arg.md) | 153 | `result-track:e9557dfbe1ab1f7d6e2877401007041a029a7c44172ad88ef1b0933ff1a04bac` |
| 22 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/congr-fun.md) | 156 | `result-track:a557a7b690d9ae81fe3c41dfcb37da937e34d3001da94e8d2262432c9835a84e` |
| 23 | `def` | [symm](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/symm.md) | 163 | `declaration-track:c0123476ba684ff31f9441cad403097cea300c1b8160d773505e6cfeda711ce3` |
| 24 | `def` | [Simps.apply](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/simps-apply.md) | 175 | `declaration-track:728e3455503a34d2a97f8bb2fe5f249e5c9265c2ff1a0366da2cd08607b97a58` |
| 25 | `def` | [Simps.symm_apply](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/simps-symm-apply.md) | 181 | `declaration-track:cfbbd8d479a35d3d68ccfd3c9403f0db3fab58ce4379b9b0b517c1df8647663a` |
| 26 | `def` | [refl](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/refl.md) | 192 | `declaration-track:6f05e3f43a6b019d568f0a2df289cb606337695df1897a6138e98015896be6b1` |
| 27 | `theorem` | [refl_toLinearEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/refl-tolinearequiv.md) | 196 | `result-track:2b063c2bf27c86835c2da7c3541a737364daed42844256dd40da0cac1e618025` |
| 28 | `theorem` | [refl_toCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/refl-tocoalghom.md) | 199 | `result-track:5b184d89f5a108e75905694d1bbe9c94a6ef7473b6ca2ec1731b630560e1d35b` |
| 29 | `theorem` | [symm_toLinearEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/symm-tolinearequiv.md) | 203 | `result-track:921555e82e65424ece62e2d45660bcb3613f087a85ed921a0fae7fd1e17140c0` |
| 30 | `theorem` | [coe_symm_toLinearEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-symm-tolinearequiv.md) | 206 | `result-track:1491ba16a0ac90fee56c06192a513ed8f65d8fa83a6652e542c7ca96f8d10c50` |
| 31 | `theorem` | [symm_toCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/symm-tocoalghom.md) | 210 | `result-track:9fe37f45a9d22d731f4679136e420672072cd00aafa807ee471d02bf4dc92337` |
| 32 | `theorem` | [symm_apply_apply](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/symm-apply-apply.md) | 214 | `result-track:63c763e4f0ee0cdb97c56650e30f37dbe9eaa4f9bcc05644dc93fa60250cc591` |
| 33 | `theorem` | [apply_symm_apply](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/apply-symm-apply.md) | 219 | `result-track:e06245db285051a9b95e5cdc97864cd147abd66ff73d8498661bc767ede3c224` |
| 34 | `theorem` | [invFun_eq_symm](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/invfun-eq-symm.md) | 224 | `result-track:aad3b42d989512969eaf930891d98fd825b661a1c2ead86d42a8421cbdf97fb8` |
| 35 | `theorem` | [coe_toEquiv_symm](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-toequiv-symm.md) | 228 | `result-track:dd97045275480f88737ac3a44856daaba008bd2ebdbb4a9f68deb7b596e2154c` |
| 36 | `def` | [trans](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/trans.md) | 235 | `declaration-track:b1f951f20c5bb5a58f6388b909d37224bdc2474b7999d55491fa22936ef3daca` |
| 37 | `theorem` | [trans_toLinearEquiv](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/trans-tolinearequiv.md) | 238 | `result-track:d57f1c0c1bcee0e4a0edc5e0a09bc4d6c1ded5587ee6522abb5c78a3d18f4651` |
| 38 | `theorem` | [trans_toCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/trans-tocoalghom.md) | 242 | `result-track:e9eab3c511485fc14f4d88023e352ba9ac5c507a656eb72a192292d77075284e` |
| 39 | `theorem` | [coe_toEquiv_trans](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-toequiv-trans.md) | 246 | `result-track:1ffb833a43a660193e75be8992197be7be38465e8e1c0c26ca3a3647be617748` |
| 40 | `def` | [ofCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/ofcoalghom.md) | 250 | `declaration-track:0cf0e54801f19edf395cf2466a6df16d77b8908120ffceade276539cf627dd5e` |
| 41 | `theorem` | [coe_ofCoalgHom](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-ofcoalghom.md) | 259 | `result-track:7736737e0ee0c97e155324485339187900793923f68baa28fb3a245f2b18fa7c` |
| 42 | `theorem` | [ofCoalgHom_symm](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/ofcoalghom-symm.md) | 263 | `result-track:8ea25a1440fbca1fb5910f23c3b00bf2acd375d5facb6fb4d2c69398cb5c5819` |
| 43 | `def` | [ofBijective](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/ofbijective.md) | 271 | `declaration-track:92b4db581a413f82eb3a10aabd85b1971bc997ea4311928fa06d5454f805edf2` |
| 44 | `theorem` | [coe_ofBijective](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/coe-ofbijective.md) | 277 | `result-track:785d04db9c17997114ebeabd1ece938f3cff250befee1f04851fdd1f46ec3b4d` |
| 45 | `def` | [toCoalgebra](../../../../CommutativeAlgebra/CoalgebraEquiv.lean/declarations/tocoalgebra.md) | 287 | `declaration-track:ba08e56380e8d13b86cdb24a6bf8f8969cd3bf995ed15c5b21da1b053cf9f6ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a391ccc1912bf97f94d2aaef1e778479541bfab5a4fe3bc38b2655bee12d66c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
