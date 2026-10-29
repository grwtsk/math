# Verification target: Adjoin Root Namespaced Irreducible

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f26668d47bebe55f724e5c3ccb4337778ad23d",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f26668d47bebe55f724e5c3ccb4337778ad23d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Noetherian` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Quotient` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdjoinRoot](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/adjoinroot.md) | 69 | `declaration-track:6f6c2d69e3138b5f1448c7dbd34e44dfe479378ef4f6afee5847d2662efadbf1` |
| 2 | `instance` | [instCommRing](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instcommring.md) | 78 | `declaration-track:8dd1325c22b6826d37e233c85a6dfe14f199807de48c4605092f1f60887d4d07` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:640f9aa73b4373835974731e90cc8575b3e63654ee4bb0e3b8209d07c7bafd48` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-7.md) | 84 | `declaration-track:ec2c9ac4fd7252d40ed4e2a2e4350b0eb26354a97e9b938aa78e0f3fa47365be` |
| 5 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/nontrivial.md) | 87 | `result-track:db81f4a1c7cab152f695460ef683f7ebd62d32dcf8988698b2f02a4bf87d83ee` |
| 6 | `def` | [mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk.md) | 95 | `declaration-track:625f10e289eee7ff64f50782d6aec81daa5385401e36dd9db297cff9ecb56627` |
| 7 | `theorem` | [induction_on](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/induction-on.md) | 99 | `result-track:b4de6a6b6d09a764430c664995a84083e11fa8736b6e368639994607efc23348` |
| 8 | `def` | [of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/of.md) | 104 | `declaration-track:5c54c7c2794c27fd1476c840075e60fb01327ec629d0a1acc31640bfec3e211f` |
| 9 | `instance` | [instSMulAdjoinRoot](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instsmuladjoinroot.md) | 107 | `declaration-track:8b3e293a9780456718e215100b2e0ab17934c98fbc760db8f4629f814927062d` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:84d2abd38348acf3047b464cfdb17a2126920aca13c333189c2783f38afb6650` |
| 11 | `theorem` | [smul_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/smul-mk.md) | 114 | `result-track:02f7fa948b6002ef875b8a8a08b1c60c8450fb5369d6443fbce20dc156afaddd` |
| 12 | `theorem` | [smul_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/smul-of.md) | 118 | `result-track:1e9bb479f5e86635e0bd56a22ec136d7e0713da706af7d942d2493dac9b812da` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:bb5b8715a33b31b18dc27fc3579e696694e46685a1f38c2f736330f76e091e12` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance.md) | 126 | `declaration-track:3189dbb884d08b68d69d7967a9a6e070f670fc6ce5c454bcac332d2286a76fac` |
| 15 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isscalartower-right.md) | 131 | `declaration-track:08a0316971a046e0fd70a36fc260ab76b54acd61c8a4f017448bf3cdf7553143` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-8.md) | 135 | `declaration-track:fad678c24bca0cd0d5fb25ec2a562e6e8e3292232a428d9bfeb625adbef6d403` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-6.md) | 141 | `declaration-track:df81690f781aee50f2c167f1c111eb5202cb8e30693287065912d1fc032a7c10` |
| 18 | `theorem` | [algebraMap_eq](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/algebramap-eq-source-edition-2.md) | 145 | `result-track:70d54fcb931d6d7e19c806b693d69fb157e251fd51843d54ba96e97d5cc7cfa2` |
| 19 | `theorem` | [algebraMap_eq'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/algebramap-eq.md) | 149 | `result-track:437f321aa9e23d295bd683f1a59553cd56b00bbf0c186ed6e4eb44f4f17aee4c` |
| 20 | `theorem` | [finiteType](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/finitetype.md) | 153 | `result-track:a2f0f4e7bb054e3949fc1eadb3369e9fa35cfec31f535fbad2bab4d3ad3190a2` |
| 21 | `theorem` | [finitePresentation](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/finitepresentation.md) | 156 | `result-track:b1e0718e0edfb6465fe3ea4f4c902c63083806b160429c58691eab34111f8393` |
| 22 | `def` | [root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/root.md) | 160 | `declaration-track:39817e5d18f0481d89129ea364041396586803ec6031939ea3a4efbd25634775` |
| 23 | `instance` | [hasCoeT](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/hascoet.md) | 165 | `declaration-track:b5c304a5326553606b6097433680b7bbd9669d622b713f99b26d5b5d4e76826e` |
| 24 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/alghom-ext.md) | 171 | `result-track:16cbc66b4860e3e7e234ca189517b53dc25a5d293b6bb22e626faf5c0cf31abb` |
| 25 | `theorem` | [mk_eq_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-eq-mk.md) | 176 | `result-track:2814c9367cb27c86cc1ce220fe05858f549481f5cdeb322d41965a247ab09efa` |
| 26 | `theorem` | [mk_eq_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-eq-zero.md) | 180 | `result-track:cafe784daf4a5b14b5d8adedf2b6961249c111dd02b25254f5963d17534dc4dd` |
| 27 | `theorem` | [mk_self](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-self.md) | 184 | `result-track:67b7ad8a9fd05da52f33d93ecd3d786032036f20ad427baed1525d1f6d070238` |
| 28 | `theorem` | [mk_C](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-c.md) | 188 | `result-track:aff5877a64108051163aba8161be352a2f2e7e61ea457935fc768197027d3690` |
| 29 | `theorem` | [mk_X](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-x.md) | 192 | `result-track:1391c852bf8e5ad2f99abeaeb17a2aa7a14d4471f853e3a65f782832f30ef53d` |
| 30 | `theorem` | [mk_ne_zero_of_degree_lt](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-ne-zero-of-degree-lt.md) | 195 | `result-track:d0e9804e7cc5e941a58d745d001dd7da754ee9e14e425a03fc46abbf9c9de1c5` |
| 31 | `theorem` | [mk_ne_zero_of_natDegree_lt](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-ne-zero-of-natdegree-lt.md) | 199 | `result-track:b399b3c7a55f8cd718d8ff9454a8875196689ec78cda097eb3adf2f3739c8120` |
| 32 | `theorem` | [aeval_eq](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/aeval-eq.md) | 204 | `result-track:aae9aab6baa4795f1e66d86e8e7c3be417f64247e12ccb4c90423b33bcb161f2` |
| 33 | `theorem` | [adjoinRoot_eq_top](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/adjoinroot-eq-top.md) | 213 | `result-track:cce24fa07db9e9b3f1198dca5708676f2e12c81a7d70d4358a8c5504b9b9a1b3` |
| 34 | `theorem` | [eval₂_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/eval-root.md) | 219 | `result-track:ace7dec169b047061e89a2fa32b731d9b8b83837d2a60ff9b17e3c43acd5149c` |
| 35 | `theorem` | [isRoot_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isroot-root.md) | 222 | `result-track:462787f47501db0f1ac4db3e68aea63e068fd309175945ae34481ff64b4e86b8` |
| 36 | `theorem` | [isAlgebraic_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isalgebraic-root.md) | 225 | `result-track:e4ff9fd8d3d59824051d22247dd3988461fe5c34c254ef367e613eba7bbb4431` |
| 37 | `theorem` | [of.injective_of_degree_ne_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/of-injective-of-degree-ne-zero.md) | 228 | `result-track:3c4b40a1e9d7d296a69a6610c2407645939aac76186521b7e911c60fdf7095e7` |
| 38 | `def` | [lift](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lift.md) | 243 | `declaration-track:4c3a7e586e866ce88f2545ecc399b324a7cadb2d8ef5cb00dbf6396f468e677b` |
| 39 | `theorem` | [lift_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lift-mk.md) | 252 | `result-track:8287b1bb38b910278309af602fe3ad45466341ccec81f6241b7ce736bdd0e0d7` |
| 40 | `theorem` | [lift_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lift-root.md) | 256 | `result-track:139cb7c5d30ea88c1fb05dcd7f9b8b81bb380b2cd9bbc86c88875bec48dba5ff` |
| 41 | `theorem` | [lift_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lift-of.md) | 259 | `result-track:1d4f77c46177eeb2dd53645e68563b3925e0f1bdd13e93163790c059f2cf39f8` |
| 42 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lift-comp-of.md) | 262 | `result-track:edb1f2661ebcbc9115930e1ee0a2d3c9ba4bcc6ede600352eb8b48c486345214` |
| 43 | `def` | [liftHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lifthom.md) | 269 | `declaration-track:b18182eb668a88f4e163311536d99ef33842e00e128ee31838980a6bb6bedb67` |
| 44 | `theorem` | [coe_liftHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/coe-lifthom.md) | 274 | `result-track:d36908dffe678986c8576f283e427013f61fbd5aa5fcdb5dc341553ce4d734f4` |
| 45 | `theorem` | [aeval_algHom_eq_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/aeval-alghom-eq-zero.md) | 279 | `result-track:583343533bfba3b812dcb81c806b7452e647d180eceae53d83191a3a6b02b762` |
| 46 | `theorem` | [liftHom_eq_algHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lifthom-eq-alghom.md) | 285 | `result-track:34e40aab3ca5cc85fc25aa18c80310678bb194b359bbb02d0b95fe5953da4a66` |
| 47 | `theorem` | [liftHom_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lifthom-mk.md) | 295 | `result-track:4a16777bfc481d2fc18eef7d5943dea1e3476fbdc22bfc625298cc6aa2eaab4b` |
| 48 | `theorem` | [liftHom_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lifthom-root.md) | 299 | `result-track:7c59d94d8b61ac4bdb2167e2766d9bc4f952f60f0a3b21cfb317e882b38ad4b4` |
| 49 | `theorem` | [liftHom_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/lifthom-of.md) | 303 | `result-track:104b8bed7fdb92059ab26840f27a947139f7401d502c74eb02ab245d7bea62c4` |
| 50 | `theorem` | [root_isInv](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/root-isinv.md) | 309 | `result-track:7427141edd29b2608cb8bc9d597980169ba75c8cda77c21818b798f4a72b76e3` |
| 51 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/alghom-subsingleton.md) | 313 | `result-track:542b7573c73d9d164f342addcc082e8d0a74de4c33dbaaf8e76d2facbb742c78` |
| 52 | `theorem` | [isDomain_of_prime](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isdomain-of-prime.md) | 327 | `result-track:e8d8d39a2b29b9401d84c70ed6e0763ce297c263a6eed14fc1ef21627f3c4a64` |
| 53 | `theorem` | [noZeroSMulDivisors_of_prime_of_degree_ne_zero](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/nozerosmuldivisors-of-prime-of-degree-ne-zero.md) | 331 | `result-track:c6bd14ccdefab6244649e2d1d260d92ef5498eaa85262f6a01afe4a50eb73410` |
| 54 | `instance` | [span_maximal_of_irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/span-maximal-of-irreducible.md) | 344 | `declaration-track:c377a5d77b91a3b757b31827b8c0774face8a5ba070b2ce6c3c442ae73c31a89` |
| 55 | `instance` | [instGroupWithZero](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instgroupwithzero.md) | 347 | `declaration-track:8652bd475391d91db27a034c61d9e87127650fe176b04e25254e668eddb8c288` |
| 56 | `instance` | [instField](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instfield.md) | 352 | `declaration-track:972f241217aa51387984c1ea4eb00eec8fd135809cb30b1cb7d8383d4e294759` |
| 57 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/coe-injective-source-edition-2.md) | 369 | `result-track:64decc8ec7b9646433277a72d4449e578c5698d93e8c1c4689e4aa97b278e242` |
| 58 | `theorem` | [coe_injective'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/coe-injective.md) | 373 | `result-track:015bd7435872c548749fe9cdc8bf7f54d2ca483fef313c1df7a2bf3663ed08c9` |
| 59 | `theorem` | [mul_div_root_cancel](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mul-div-root-cancel.md) | 378 | `result-track:a7d9fb79850c407ff866beb6e90861888bf873e152716957f152e8fff81f477c` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/instance-source-edition-2.md) | 386 | `declaration-track:3746e2ecf97bbff111b5696b4e9b35027181860491992497fb39a07d8385e9f6` |
| 61 | `theorem` | [isIntegral_root'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isintegral-root.md) | 395 | `result-track:9062844a20dce576c94a9f12f629a2878c336eafc7640a991ff4a100adb9c612` |
| 62 | `def` | [modByMonicHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/modbymonichom.md) | 401 | `declaration-track:941a6754802cc592cc8d41f6852791159be335080c8a8a4ab83f1bb605eec40a` |
| 63 | `theorem` | [modByMonicHom_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/modbymonichom-mk.md) | 408 | `result-track:d2fe42fd8232178f7595bbdea11c1f38c955727cac2da26a4b4d7ea960e8f983` |
| 64 | `theorem` | [mk_leftInverse](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-leftinverse.md) | 411 | `result-track:b2002db95bca9838d26c3aff49859630e1c2b745b6469270bd3c5f715d1dde86` |
| 65 | `theorem` | [mk_surjective](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/mk-surjective.md) | 418 | `result-track:6fd436fd7edc7754e56caf8bcf4fad19fa1458dde1b3c5995a3f69fae9f00123` |
| 66 | `def` | [powerBasisAux'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasisaux-source-edition-2.md) | 423 | `declaration-track:ddd530bd79a72cb6e9e88f302d00acde1490ad183f173b75cd897cf0af1125d2` |
| 67 | `theorem` | [powerBasisAux'_repr_symm_apply](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasisaux-repr-symm-apply.md) | 452 | `result-track:5b329b79ae22932d74491892d69304f5baa2132f9f67eb65ea772feef3f39676` |
| 68 | `theorem` | [powerBasisAux'_repr_apply_to_fun](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasisaux-repr-apply-to-fun.md) | 459 | `result-track:6709debb08eb192b7214cc832dc7f373b4d13e1502f3bd6e10a2144da777329b` |
| 69 | `def` | [powerBasis'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasis.md) | 466 | `declaration-track:7d0b239fdc76784b2a9196081bc0915a34a182b878feacb16c57f0d307c8d619` |
| 70 | `lemma` | [Adjoin Root Namespaced Irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/free-adjoinroot.md) | 481 | `result-track:89adaeedb116d5394321a1699c1cf0968e79bc4a95b56f114db02df4248913e9` |
| 71 | `lemma` | [Adjoin Root Namespaced Irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/finite-adjoinroot.md) | 484 | `result-track:b96cdeb4858706f4194b7df71c097327b3c688dc1be87108e006407e853d8134` |
| 72 | `lemma` | [Adjoin Root Namespaced Irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/free-quotient.md) | 488 | `result-track:a0da55311a831929d09f658b027bddcfaa92878fecfc324dfecf71592f397e4d` |
| 73 | `lemma` | [Adjoin Root Namespaced Irreducible](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/finite-quotient.md) | 493 | `result-track:f33d454cae195cabe1c061e82fd94d82f6da18a51a0080cab70fccbb6ced3d74` |
| 74 | `theorem` | [isIntegral_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/isintegral-root-source-edition-2.md) | 499 | `result-track:c77c2bca5dc7a99173ee926b7bcf1ca7641443c0b2c2211bfcc1ee2d1ceb3ff4` |
| 75 | `theorem` | [minpoly_root](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-root.md) | 502 | `result-track:2b506bf8d1bb46d18b04db2bfd3ce4b6aee043bb0bc0807a1239771617c4c742` |
| 76 | `def` | [powerBasisAux](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasisaux.md) | 522 | `declaration-track:9ef076f5900ee6a802da63f8f21368f9dd09b35369a31ce7e0dbf1e1030d6084` |
| 77 | `def` | [powerBasis](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/powerbasis-source-edition-2.md) | 542 | `declaration-track:b72ef6b5c02a5ee781ca13ad155bb54e6e253961dc054bf33445c4ddbaa7a89a` |
| 78 | `theorem` | [minpoly_powerBasis_gen](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-powerbasis-gen.md) | 548 | `result-track:9cbbb2c58d799560938d508307a6e18c8a83273c8b154f333d0d30b4f4705b86` |
| 79 | `theorem` | [minpoly_powerBasis_gen_of_monic](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-powerbasis-gen-of-monic.md) | 552 | `result-track:dfe3c6988c3cc51f29b148aa4c04e5a0e5384f6fa3ae3f71cff7f3ae56a8d74b` |
| 80 | `def` | [Minpoly.toAdjoin](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-toadjoin.md) | 570 | `declaration-track:93ed3d268398aa12caa7f31289cfd9190dbbbb29a75822ab000f71721c66a0a1` |
| 81 | `theorem` | [Minpoly.toAdjoin_apply'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-toadjoin-apply.md) | 576 | `result-track:ae2ba8f7b9aae077eeb50ba054ea9ccee67fa7a5c352dc0f04f1635b10d75075` |
| 82 | `theorem` | [Minpoly.toAdjoin.apply_X](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-toadjoin-apply-x.md) | 582 | `result-track:52ca4654b625e62ef9f60c4995fcee53be23cd058e747ca59850c664c8015167` |
| 83 | `theorem` | [Minpoly.toAdjoin.surjective](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/minpoly-toadjoin-surjective.md) | 588 | `result-track:6caa47e9fc024c5a28d1622157e8cf6f81b13fbabd67e42b38bfc8e96af020bc` |
| 84 | `def` | [equiv'](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/equiv.md) | 606 | `declaration-track:12b5f464fd530b4c7b77dfc5969affd958dae73d1e8e34de4958aafeedf5800a` |
| 85 | `theorem` | [equiv'_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/equiv-toalghom.md) | 621 | `result-track:4688761762b04a97201dd389e93699b787ef1b30033fed3a1c97ed65b6f4c2dc` |
| 86 | `theorem` | [equiv'_symm_toAlgHom](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/equiv-symm-toalghom.md) | 626 | `result-track:25591f2f29cf61eef906f4280a40f3c68dcc69ebca57837ec0f27d3d283e4a53` |
| 87 | `def` | [equiv](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/equiv-source-edition-2.md) | 638 | `declaration-track:39d92ee48c0b76f85d96b2351cb788b898ea405a105ee1f9af5d5ef3b1ef1141` |
| 88 | `def` | [quotMapOfEquivQuotMapCMapSpanMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapofequivquotmapcmapspanmk.md) | 664 | `declaration-track:6bc9985b16ae29393a425dfddde83704eca1c97eb8751ecc14dce36bcef359fb` |
| 89 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapofequivquotmapcmapspanmk-mk.md) | 670 | `result-track:f38dad33753f7e2297c56911bc963750051199cda5ac478161ebe0097e62bb03` |
| 90 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_symm_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapofequivquotmapcmapspanmk-symm-mk.md) | 675 | `result-track:066a2caca3cd8ea29a58d780782e3dcc68e5c953261c71b47fad9f94d13886c9` |
| 91 | `def` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk.md) | 684 | `declaration-track:4ff47ba1357a252e07a9a541ad048c3564373b21e3a4e94b0498d3cb15408ed7` |
| 92 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-mk.md) | 691 | `result-track:5c54c7c4f8751d6ea56d72b9ef988f7766e3d0cd6153eb1c1544c18f9f56bce3` |
| 93 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_symm_quotQuotMk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-symm-quotquotmk.md) | 697 | `result-track:6391b0f20149c3d8480d51c9d66a5d7b7eb8265031b2bf015d10fcf9f1507a59` |
| 94 | `def` | [Polynomial.quotQuotEquivComm](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/polynomial-quotquotequivcomm.md) | 705 | `declaration-track:f935779227d20484b1b8c810d960bbe6e1c121317f37eec4a7687186d16dec69` |
| 95 | `theorem` | [Polynomial.quotQuotEquivComm_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/polynomial-quotquotequivcomm-mk.md) | 715 | `result-track:b5b2e6c7c0973662c984de2a5f1f5c03d6c8727660649cae915b430c405343d9` |
| 96 | `theorem` | [Polynomial.quotQuotEquivComm_symm_mk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/polynomial-quotquotequivcomm-symm-mk-mk.md) | 723 | `result-track:1825bfa705d0c789a30e258103073921d1103f0ac5587c1b7ff83aed29468af8` |
| 97 | `def` | [quotAdjoinRootEquivQuotPolynomialQuot](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotadjoinrootequivquotpolynomialquot.md) | 732 | `declaration-track:908bed9024eadff5a7e8ceacbe59e7e0b6083d5ab0e14a8ad02d3727de9b265f` |
| 98 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_mk_of](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotadjoinrootequivquotpolynomialquot-mk-of.md) | 741 | `result-track:1076d70128937b7aa40cb127a3b35bebb4131518f63bcf83baad516c5b4896ed` |
| 99 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotadjoinrootequivquotpolynomialquot-symm-mk-mk.md) | 747 | `result-track:0be7b2c13d06e18f9ee377f3f1bec10bfaf0fbf2b5fb8aa7160df72c3dc1dc44` |
| 100 | `def` | [quotEquivQuotMap](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotequivquotmap.md) | 761 | `declaration-track:b39fa1612047086cd45ec650f098281711ce88eef675a02da769a5c29afe7fc8` |
| 101 | `theorem` | [quotEquivQuotMap_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotequivquotmap-apply-mk.md) | 776 | `result-track:aa550f257e1ee7034536f5e34b187abf1b1828af34b9c11503ba43d1754af8df` |
| 102 | `theorem` | [quotEquivQuotMap_symm_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotequivquotmap-symm-apply-mk.md) | 782 | `result-track:a8f6ee4b4fe3980680d1ae54acbcc0bab17ddfb6da51f4849bb59eaa378ea489` |
| 103 | `def` | [quotientEquivQuotientMinpolyMap](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotientequivquotientminpolymap.md) | 802 | `declaration-track:11799b4224fffb3a963c55030a73b1a673942cb6f25980ea85af1cddfba84c67` |
| 104 | `theorem` | [quotientEquivQuotientMinpolyMap_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotientequivquotientminpolymap-apply-mk.md) | 822 | `result-track:734a72f640812bd9383c7b8cf42db01f9b7c0ee430172c3003a7c2f35c0eb2e8` |
| 105 | `theorem` | [quotientEquivQuotientMinpolyMap_symm_apply_mk](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/quotientequivquotientminpolymap-symm-apply-mk.md) | 832 | `result-track:d79d3d9bdca61b9a56b044632194314e45ecd3a311e07730595e2b57d0bf2076` |
| 106 | `theorem` | [Irreducible.exists_dvd_monic_irreducible_of_isIntegral](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/irreducible-exists-dvd-monic-irreducible-of-isintegral.md) | 847 | `result-track:38935aa9af5dc9c6f1febc6c07e99b5527b492a064f5d3a107904cbab8ccd202` |
| 107 | `theorem` | [Polynomial.exists_dvd_map_of_isAlgebraic](../../../../CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/declarations/polynomial-exists-dvd-map-of-isalgebraic.md) | 857 | `result-track:a3b91e772e7dd01ac8043ce78e7f6f78de159b12c2fdec39eac7af636a137cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d66e1cd2cef3ad6a8733b87b102eab411fa649dc160824194d74f566b819c3e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
