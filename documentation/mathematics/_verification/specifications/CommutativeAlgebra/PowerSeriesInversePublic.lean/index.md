# Verification target: Power Series Inverse Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaec95803dbec7ee3e249fd418ac60e8e7dec58a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant2471a7e23b47aea8bbf55374ad691cad3a104944da63df90d753477837f1770e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaec95803dbec7ee3e249fd418ac60e8e7dec58a`.

Source path: `GRWTSK/Algebra/Inverse/Variant2471a7e23b47aea8bbf55374ad691cad3a104944da63df90d753477837f1770e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant2471a7e23b47aea8bbf55374ad691cad3a104944da63df90d753477837f1770e.lean.json)

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
| 1 | `def` | [inv.aux](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-aux.md) | 52 | `declaration-track:b393088dee5689e5184a459f61e8c2588fc46e132f3cd8567baf6e271cfbfa60` |
| 2 | `theorem` | [coeff_inv_aux](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/coeff-inv-aux.md) | 55 | `result-track:57f5cd5258b7abb872469d099960a5c8a5130b4c102efbdad1fdb65f9057f468` |
| 3 | `def` | [invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/invofunit.md) | 84 | `declaration-track:84e3ab9d6f86e8680144654ec4cce5137d5e6050113e39bfc57782557cad1ad5` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/coeff-invofunit.md) | 87 | `result-track:539c3dc24db72bb6924f3768cee19dd536d12babb4a0c4150eff586c93b0ef1a` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/constantcoeff-invofunit.md) | 97 | `result-track:2526f012f51186b08e4bb571643786746201713a8ea53f70e3d4b354d601bac7` |
| 6 | `theorem` | [mul_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/mul-invofunit.md) | 102 | `result-track:be66cf99d93f6159c1a217f2f44916b65d633da4c4255d5ac85f3ee3e681d980` |
| 7 | `theorem` | [invOfUnit_mul](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/invofunit-mul.md) | 107 | `result-track:67b78283132bd7207146c0af7b7f1fb233e9f12ec1541642c59b1d2e1fed9e7e` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/isunit-iff-constantcoeff.md) | 111 | `result-track:5610bc01d129656e12ac3af9c1af9df7e499d2b8c3599b6d9c6c1a07dbaaeef4` |
| 9 | `theorem` | [sub_const_eq_shift_mul_X](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/sub-const-eq-shift-mul-x.md) | 116 | `result-track:a35d408cb608b25c07d7394f2fac92ed04ddff2a78c66a03c795d359e4525a56` |
| 10 | `theorem` | [sub_const_eq_X_mul_shift](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/sub-const-eq-x-mul-shift.md) | 120 | `result-track:5a63aac72110592ae1cc9b9a5913d7fd567458cf16f17b789cad333d0f2086b2` |
| 11 | `abbrev` | [inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv.md) | 131 | `declaration-track:4750a21b1b8422242baf95b0032ff76206e3f81135e2403746e3bfac23c900d8` |
| 12 | `theorem` | [inv_eq_inv_aux](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-eq-inv-aux.md) | 134 | `result-track:8be9b6e7b315284bf62fd58f2ec2e7340322c5e3d52fd274b91c31aa86cda752` |
| 13 | `theorem` | [coeff_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/coeff-inv.md) | 137 | `result-track:32df56b561c80bdd64973a1e962f44591e6c7ce47849952fd85811ae088a303a` |
| 14 | `theorem` | [constantCoeff_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/constantcoeff-inv.md) | 147 | `result-track:c2ea7856f62b42689813a6ba93803a4c46bb645a8e4dd60565787c3d88a3dde0` |
| 15 | `theorem` | [inv_eq_zero](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-eq-zero.md) | 150 | `result-track:3a9ac55e349f77bbd809f1229a347e7611fe83a6e1388c8f9a8f04554be94bea` |
| 16 | `theorem` | [zero_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/zero-inv.md) | 153 | `result-track:08550e6c2090df9cd480f5b6c860e3cb1243761abccad9387270d776ab5eeaae` |
| 17 | `theorem` | [invOfUnit_eq](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/invofunit-eq.md) | 157 | `result-track:1d14f43da96f5f0d1b6e17f18dfc4cf0683bbe725b9503350f317d590a94348b` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/invofunit-eq-source-edition-2.md) | 162 | `result-track:75ef0eb6f1b2f753fad526b5f49158b68b737c16599db3c709102aa957c5a00d` |
| 19 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/mul-inv-cancel.md) | 167 | `result-track:2f04ab601c9563811af50397d58095f3eabb8ed0a5702bc170be6cd3746bb791` |
| 20 | `theorem` | [inv_mul_cancel](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-mul-cancel.md) | 171 | `result-track:f7ed3d2758ff383f4354672092df636e481ad90d8885e80078253d2172945ff0` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 174 | `result-track:d57127cdae255349ef90fb645881eb07f424ffd0d44f8c33f5d9af96120c9af2` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/eq-inv-iff-mul-eq-one.md) | 178 | `result-track:9746b586cbda35dec461f68b6fb6df5d970e0bcfe412a12e98e6eec70618a282` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-eq-iff-mul-eq-one.md) | 182 | `result-track:9c393c903be4d7a7409140f7e504998bbf0ad63a6b1fd71b629682497743274e` |
| 24 | `theorem` | [mul_inv_rev](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/mul-inv-rev.md) | 186 | `result-track:d5f2a95f34815f98542c3cb55fb84d163b0812cceff1716340cc9d2d871a62fc` |
| 25 | `theorem` | [inv_pow](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-pow.md) | 189 | `result-track:59e0b5e82d155819791dedf3d549cb5ff5af25da89f709c1656dc9f042d71c4a` |
| 26 | `theorem` | [C_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/c-inv.md) | 193 | `result-track:325bd586f14eea9b135d524e7c1931e65ca06254e6997392227c5074bb83c976` |
| 27 | `theorem` | [X_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/x-inv.md) | 197 | `result-track:d7b6e096c3953ff8faae88f85dc956f4feff75a78477e8bfa11912b067ea6b0c` |
| 28 | `theorem` | [smul_inv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/smul-inv.md) | 200 | `result-track:dc936e0b98f09c649ecebf648cee18a7a058baf84711b38059273a8d0698f356` |
| 29 | `def` | [firstUnitCoeff](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/firstunitcoeff.md) | 205 | `declaration-track:fd29bdff7387e5aee5a52b15a756bd670b6c3f1a297b92163e59816cafcf0814` |
| 30 | `def` | [Inv_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-divided-by-x-pow-order.md) | 214 | `declaration-track:81398792a7b5fa25a5c276f7d7b90a000881ebb006af33165ff2e862478b9f4c` |
| 31 | `theorem` | [Inv_divided_by_X_pow_order_rightInv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-divided-by-x-pow-order-rightinv.md) | 218 | `result-track:6cb9d77b667479e92f05f452fb2494c60da4bb72ecba6525f0c13f0ed9c9ea2c` |
| 32 | `theorem` | [Inv_divided_by_X_pow_order_leftInv](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/inv-divided-by-x-pow-order-leftinv.md) | 223 | `result-track:79044cbe85106b0d9fe4a3c1db41a13bfad50b4e4b6d0cab20b8743f9c4797d4` |
| 33 | `def` | [Unit_of_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/unit-of-divided-by-x-pow-order.md) | 231 | `declaration-track:c620dc93134a261af9a3ab3441acdf3ff91858138dfc86bf21ec7329dfa408a1` |
| 34 | `theorem` | [isUnit_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/isunit-divided-by-x-pow-order.md) | 239 | `result-track:7c676abeca5fa6c7079292d7c04c318874a4f321a7b740826609cadb5ad6243a` |
| 35 | `theorem` | [Unit_of_divided_by_X_pow_order_nonzero](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/unit-of-divided-by-x-pow-order-nonzero.md) | 244 | `result-track:fc5faabd796c3241dfbd22508e48b57af1af7c91e68d11c01e6537614f865f66` |
| 36 | `theorem` | [Unit_of_divided_by_X_pow_order_zero](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/unit-of-divided-by-x-pow-order-zero.md) | 249 | `result-track:809a006a4e614bc45e1ee0e21ebc5c9b8a264ac5f073b074aaddb7ebed4fa197` |
| 37 | `theorem` | [eq_divided_by_X_pow_order_Iff_Unit](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/eq-divided-by-x-pow-order-iff-unit.md) | 252 | `result-track:b37fae9685bf435ad7037b93fe8910e5fe0c89a2925ed1e66c945883ec6ae0a9` |
| 38 | `theorem` | [map.isLocalHom](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/map-islocalhom.md) | 267 | `result-track:e994b85267c12b4bdf0afe77d1ab8de4fb88ced5a3d9089515fc8c4a5d14b567` |
| 39 | `theorem` | [hasUnitMulPowIrreducibleFactorization](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/hasunitmulpowirreduciblefactorization.md) | 278 | `result-track:32965e1341b025c08461c1f2c39203365579b21dd5251f89df0bef0e93a203fc` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:b239fe5f7d7274f14b25f6dedba992c6f8dba395a9363ec69f7eafe454b485a7` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/instance-source-edition-2.md) | 291 | `declaration-track:8e82c3928cbcc9acea778b0b08746d012dc679cbd5d4a1a5b9fc29485e6af18a` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/example.md) | 294 | `declaration-track:8c1f513c7a64cc9293a4a2c5ae42cf67ce68cd70f16847796ba2f6a15589c17e` |
| 43 | `theorem` | [maximalIdeal_eq_span_X](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/maximalideal-eq-span-x.md) | 297 | `result-track:de8609cac9462474f3991b03b70a5ed15ae214c3afc3336a34430647ef733ee4` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/instance.md) | 317 | `declaration-track:50b6c384430f6d06ca772589f7a04c265a9ed3b4574316e4cde8394bd2d713cd` |
| 45 | `theorem` | [normUnit_X](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/normunit-x.md) | 331 | `result-track:f202a4234ad7385f90228f58b0bd313fb1d39951cb7442abd41a17e38f181fbc` |
| 46 | `theorem` | [X_eq_normalizeX](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/x-eq-normalizex.md) | 334 | `result-track:8dea805785e5d49bc9df573ac7998aec75b9c8b932125b345cd6396a06c60d22` |
| 47 | `theorem` | [normalized_count_X_eq_of_coe](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/normalized-count-x-eq-of-coe.md) | 340 | `result-track:0236db89bf3996bf8fb704ce04b61422a8d672db9567cd4a51cd709766b79050` |
| 48 | `theorem` | [ker_coeff_eq_max_ideal](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/ker-coeff-eq-max-ideal.md) | 353 | `result-track:273c0b3f0860aa824f332257862928830357c9e41f55a1118ee911cc6510cf0d` |
| 49 | `def` | [residueFieldOfPowerSeries](../../../../CommutativeAlgebra/PowerSeriesInversePublic.lean/declarations/residuefieldofpowerseries.md) | 359 | `declaration-track:6aa4670769e3bd4a16cb895fe40f61170148f03d087b1112206b3e88185d4cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0eb8ae28b2075b078a6faf281a23950cc66e7ceb3e1ebceef729cface777485 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inverse/Variant2471a7e23b47aea8bbf55374ad691cad3a104944da63df90d753477837f1770e.lean","GRWTSK/_verification/specifications/Algebra/Inverse/Variant2471a7e23b47aea8bbf55374ad691cad3a104944da63df90d753477837f1770e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
