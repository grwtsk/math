# Verification target: Ring Theory Adjoin Root Adjoin Root Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0464c1179296fc28d15f00be3f8982bf8c70a7e2",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0464c1179296fc28d15f00be3f8982bf8c70a7e2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.QuotientNoetherian` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdjoinRoot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/adjoinroot.md) | 72 | `declaration-track:868ec23a074ec3617fb738d0c25362029b53b7262bc82c1ab6d75d56efd59ecf` |
| 2 | `instance` | [instCommRing](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instcommring.md) | 82 | `declaration-track:fba0cc2bad6d0cf6aae1d1798ca14a9039cfbefa2d6de7b77fae47534a20ce94` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-6.md) | 86 | `declaration-track:aaf01e563227da55e75061183c7cd746802b7b12a97743d3a965b58080884ffd` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-4.md) | 89 | `declaration-track:7b65ec894945180ffcd116e39ed2b038585c495d6ef67a88ddc1d61edcf73e0c` |
| 5 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/nontrivial.md) | 92 | `result-track:7770a7975bea8eba6bacf3f12fb3d0f749c0dbc691a25e97f5788964ee328878` |
| 6 | `def` | [mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk.md) | 101 | `declaration-track:5db4d3c1dd76bfd871720f868a36d9bf447941ab7bbb5c7b0a8164ddeb3cc451` |
| 7 | `theorem` | [induction_on](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/induction-on.md) | 106 | `result-track:ecd555de0c5a92885139cce6f467908ec443931ef7635b24de3fdee783a1f325` |
| 8 | `def` | [of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/of.md) | 112 | `declaration-track:754fef4d87053f553059d9494f240bbacb4831e187ca6a29163c50cda6e4a009` |
| 9 | `instance` | [instSMulAdjoinRoot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instsmuladjoinroot.md) | 116 | `declaration-track:ef390c7aadbda046a8c146f42620dd177b9fa8242a5dd03bfeea9d24b7339e46` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-5.md) | 119 | `declaration-track:806cdd84ff2d2a04f6288dbc15ef5746166c1a2634d79aeabc1a52ba9adfc948` |
| 11 | `theorem` | [smul_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/smul-mk.md) | 123 | `result-track:c03ab09999871d4b102192b111840726f50b95b02a56a54e565c74513295779e` |
| 12 | `theorem` | [smul_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/smul-of.md) | 128 | `result-track:c63fd1e427c02e59c88348f388a852eac76febfdb54c8f67a8f02b890b5c9947` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:35562903eb0772bddfcb70d7991ae009e48ed62a3fbbff620050075e64e2fb20` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance.md) | 137 | `declaration-track:0673c01d98e5243a0d31a6faa1f1dfd8cff75f76bb1aba099530417e98a2d54d` |
| 15 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isscalartower-right.md) | 142 | `declaration-track:5b760285fdcdbd43cc8dd24664c428b7d95fa42052614f18306bc8932e3990d1` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-7.md) | 147 | `declaration-track:dfd171297b39ec2b4ef1d8b0c4628480cd842c5c73d2cdc025475671a8674864` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:2656438fa56b1513f6908283a7fd7ae50eaab55fada42e1ff07d2a68f012eb49` |
| 18 | `theorem` | [algebraMap_eq](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/algebramap-eq.md) | 155 | `result-track:5ef988dbe32eadca5a89ec3fc4531229277d9bf6c9963243dc6adb8adee146ef` |
| 19 | `theorem` | [algebraMap_eq'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/algebramap-eq-source-edition-2.md) | 161 | `result-track:a0949f175bb9ccea467c4a62f411875d66bf1fc6d1903cba09fbcebace7c262d` |
| 20 | `theorem` | [finiteType](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/finitetype.md) | 168 | `result-track:f86fdaea07459d804b6ce41c6cffa5b2620f5df01fa5d3ff047dd4c5c2c828b4` |
| 21 | `theorem` | [finitePresentation](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/finitepresentation.md) | 172 | `result-track:a593fd2b1cc640299c8b5d8766a926728546c9455cba29e9d0685f9c25e4c186` |
| 22 | `def` | [root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/root.md) | 177 | `declaration-track:d7f1d9c8227342cdfbb8c4f088beaca34e5ec89dbce288da150c9fcc807139fc` |
| 23 | `instance` | [hasCoeT](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/hascoet.md) | 183 | `declaration-track:c0a739d7a64754e2a24290133ceb07153ab06c1d745fd4b8d542b7b2f92f805f` |
| 24 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/alghom-ext.md) | 190 | `result-track:b7c8592fafe8d151965d3fb7196fa53596b41b0c3015d3dc14757ffd9dc261c6` |
| 25 | `theorem` | [mk_eq_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-eq-mk.md) | 196 | `result-track:98730916329e5bd3271e6274e8b159a27f2734d1c92a980314b6e138ec2a1590` |
| 26 | `theorem` | [mk_eq_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-eq-zero.md) | 201 | `result-track:291dd3824f8e7f31b96cf03ff49f693e637274e6447cb83d6d4ad1d3f9879b1c` |
| 27 | `theorem` | [mk_self](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-self.md) | 206 | `result-track:1f595186710be8d3fff66d0a995d96e2cf582133dc06f8383bf758cd826db3cb` |
| 28 | `theorem` | [mk_C](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-c.md) | 211 | `result-track:34dd4e9a4ff7e19ab90744613e1c00d9517173a5a63a9a783acfb80cb178813c` |
| 29 | `theorem` | [mk_X](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-x.md) | 217 | `result-track:dc844dbd57e0cca3d6ede3f796ef4ba6b254955ff0edca4b2f9571ba935e7e93` |
| 30 | `theorem` | [mk_ne_zero_of_degree_lt](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-ne-zero-of-degree-lt.md) | 222 | `result-track:3096a58144f26bd4bd165abdc0d7fc24d3cfc37e60984bd43b79f9ba0c0b671b` |
| 31 | `theorem` | [mk_ne_zero_of_natDegree_lt](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-ne-zero-of-natdegree-lt.md) | 227 | `result-track:f44215b181ba54023275cd4cf7e1f790f1fa457686a6caf91a81b0e4fc52496b` |
| 32 | `theorem` | [aeval_eq](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/aeval-eq.md) | 233 | `result-track:bd21ffc1e6d8fbee6ac97b3a70067d0d5558c7bea5d79e301933881da65915bc` |
| 33 | `theorem` | [adjoinRoot_eq_top](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/adjoinroot-eq-top.md) | 245 | `result-track:e0920ea68749bb94cfff03e5d4472687c2751b709ab572b37d1f0a6710ae68c3` |
| 34 | `theorem` | [eval₂_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/eval-root.md) | 252 | `result-track:1c0282b52e385b77e2d33e2d3397ef56beb57e3a954d50b911e7cc9da8b3e772` |
| 35 | `theorem` | [isRoot_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isroot-root.md) | 256 | `result-track:67dd7ae28d663ff6e1be583a61856f2db320511442fa108379413d16c270e12d` |
| 36 | `theorem` | [isAlgebraic_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isalgebraic-root.md) | 260 | `result-track:b5f852023559ad958e1270a73281440b32fd04016d19924c14d1d0f36d4f9e76` |
| 37 | `theorem` | [of.injective_of_degree_ne_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/of-injective-of-degree-ne-zero.md) | 264 | `result-track:84aff3df23895dcca07db80d2992ac6902752804f1b1fc783a77390a54c20ec0` |
| 38 | `def` | [lift](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lift.md) | 280 | `declaration-track:727d3d4a34faf33566b91b9deb33e1657a2fc3b9aea7dc767d4b82d22d699e21` |
| 39 | `theorem` | [lift_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lift-mk.md) | 290 | `result-track:bbcc184fb68bb1681b79bf47d0ce03b0b236b417367209ada7903829c61a1971` |
| 40 | `theorem` | [lift_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lift-root.md) | 295 | `result-track:2409ba24bc5ec9ba238c16d6576ac974a0a3a6b4b3c5dfe3d5af8e61dfe3e78f` |
| 41 | `theorem` | [lift_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lift-of.md) | 299 | `result-track:fa48547b6ca6d8c495604a8f4ee4ec0c864c20728f73e9975e22342a52f54a3a` |
| 42 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lift-comp-of.md) | 303 | `result-track:0e37ad51cfcf13d4ab7a119ab1961f779e0609390e93b7bc6a2e9dc34a7ea97e` |
| 43 | `def` | [liftHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lifthom.md) | 311 | `declaration-track:b996cc0cb9dff946f898655c7a61a1c10564f98b619e0ffdbaf94f3b382de1b4` |
| 44 | `theorem` | [coe_liftHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/coe-lifthom.md) | 317 | `result-track:1d735572d2239fa34db940ccee0a68955a441a10c32daf475035f30b339ba867` |
| 45 | `theorem` | [aeval_algHom_eq_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/aeval-alghom-eq-zero.md) | 323 | `result-track:47f32f65f1e2d52ab1c527bca544e1b0de6f3840c348ad1d9da127fc929a5b5b` |
| 46 | `theorem` | [liftHom_eq_algHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lifthom-eq-alghom.md) | 330 | `result-track:46748c63fc2b72f4355f10b9ceda525ad1460a03ebd507b83ea11c7dc67f65e1` |
| 47 | `theorem` | [liftHom_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lifthom-mk.md) | 341 | `result-track:6d7fa621e1932ac650a415bc1baf54a24a459c34dbeecaeebff3c65fac54ffba` |
| 48 | `theorem` | [liftHom_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lifthom-root.md) | 346 | `result-track:4ff6d4d867d737da6409ad9680ee1d50509bbeb91f0ec396abf60b9280032560` |
| 49 | `theorem` | [liftHom_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/lifthom-of.md) | 351 | `result-track:f4ef423e14acf71feaa9aa1d27dd56f8dd63ed6f9dace52107fcc1d3e2ace418` |
| 50 | `theorem` | [root_isInv](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/root-isinv.md) | 358 | `result-track:79e0dda3314003eaf8435432f7d9f6cc8c8fc65715937b91a10d9f822b5c49da` |
| 51 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/alghom-subsingleton.md) | 363 | `result-track:df258e486a2776072ec5102dee9844c560d685506bf1a3e6b17e73b76850c56d` |
| 52 | `theorem` | [isDomain_of_prime](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isdomain-of-prime.md) | 378 | `result-track:2161832ef809660958a7afebd1954611f7a69e7aa88daa0f9f63b5ac0281317a` |
| 53 | `theorem` | [noZeroSMulDivisors_of_prime_of_degree_ne_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/nozerosmuldivisors-of-prime-of-degree-ne-zero.md) | 383 | `result-track:d5ab6e34d9dc1392ca7afecd92f6da6b49df28cf805741aebb741d75a4e52e66` |
| 54 | `instance` | [span_maximal_of_irreducible](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/span-maximal-of-irreducible.md) | 397 | `declaration-track:95455c4935847caaf49279654f87dafb3c0120de29e0a983a3f20602d4e15ce4` |
| 55 | `instance` | [field](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/field.md) | 401 | `declaration-track:d9f091bd057f84e9f4efea25af2645398e9fe0695e19df011c1847ca5c315c51` |
| 56 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/coe-injective.md) | 420 | `result-track:842bd01498da4d02df5b57d82a7d8dd2abb3ffd411a527410dd2cb2c5a9dd522` |
| 57 | `theorem` | [coe_injective'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/coe-injective-source-edition-2.md) | 425 | `result-track:8f986d35f38d4e1998400a1cc942e220bb819816475099230af76b94b1ea5113` |
| 58 | `theorem` | [mul_div_root_cancel](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mul-div-root-cancel.md) | 431 | `result-track:92f5593cd18f6037b4f6aaa70e8612c1ff438f1d1634f290046ee2bf73956117` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/instance-source-edition-8.md) | 440 | `declaration-track:f8407176ad2ab2e04fd6f7048a2b5e581dbe8757b667a76ea073a953700372e6` |
| 60 | `theorem` | [isIntegral_root'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isintegral-root-source-edition-2.md) | 449 | `result-track:6256d2c43e005e843b2f7be76b61b77f7ad5f01d328163516e06509a7099ddc0` |
| 61 | `def` | [modByMonicHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/modbymonichom.md) | 456 | `declaration-track:82bb775f128c8fcf854048ba715ae378e357a5438f3823bb1001811957d78724` |
| 62 | `theorem` | [modByMonicHom_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/modbymonichom-mk.md) | 464 | `result-track:21973b717ed348d65ab251917864cc060fa46e99146723c10a1967cf5bf55aea` |
| 63 | `theorem` | [mk_leftInverse](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-leftinverse.md) | 469 | `result-track:7c53e541b5eee5a8c12b86731af3c8dc9be41c6a844e5756d2e3212b2ab2e6e9` |
| 64 | `theorem` | [mk_surjective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/mk-surjective.md) | 477 | `result-track:fab284cdad98a89838b5ec670cb0748f58a9eff974e7c77b819f928d3f2e1558` |
| 65 | `def` | [powerBasisAux'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasisaux-source-edition-2.md) | 483 | `declaration-track:d765f681c4556e34e889901dba12ab57e5efbe5395c632b1e99098506c006026` |
| 66 | `theorem` | [powerBasisAux'_repr_symm_apply](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasisaux-repr-symm-apply.md) | 513 | `result-track:340307a165c346a01c42f77a2fde840da64f7120b5427b50346e25d68acd49de` |
| 67 | `theorem` | [powerBasisAux'_repr_apply_to_fun](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasisaux-repr-apply-to-fun.md) | 521 | `result-track:d8c50c9255af8598339c77de5f1b36147678c67d64eb1d43b92420b7cbcdee74` |
| 68 | `def` | [powerBasis'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasis-source-edition-2.md) | 529 | `declaration-track:c38857facfee4841d5098cc63bb93c58c4b24233d71dcac2580699a117aeac07` |
| 69 | `theorem` | [isIntegral_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/isintegral-root.md) | 548 | `result-track:1b2fdaf964a7d4a0baaaa17d98fedbc5c181d78e560a8eb48d6acc66b17af1e7` |
| 70 | `theorem` | [minpoly_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-root.md) | 552 | `result-track:e8db8757b5e5c6da0e4f405284dc9beaaca1c28a5d33f8b6c6f06573d7623711` |
| 71 | `def` | [powerBasisAux](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasisaux.md) | 574 | `declaration-track:a79e464375d7f424a53c9cecc36451d6f473a4eae82a4e282361d80c79628cae` |
| 72 | `def` | [powerBasis](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/powerbasis.md) | 595 | `declaration-track:352ab63ef8671b63795eec6e8234ecb090005009be1f5887d27b972aeb7a59c2` |
| 73 | `theorem` | [minpoly_powerBasis_gen](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-powerbasis-gen.md) | 602 | `result-track:171cb619b4d5294f935c4ec20a4814f0f97f950824c53ce122d448fc16120e01` |
| 74 | `theorem` | [minpoly_powerBasis_gen_of_monic](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-powerbasis-gen-of-monic.md) | 607 | `result-track:4bed63d2eb5297d46f03ce2f6b2a67894ca26a127b2165acf2bda66c3fad249d` |
| 75 | `def` | [Minpoly.toAdjoin](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-toadjoin.md) | 626 | `declaration-track:23e27ece92d975d1a46acb08fd3f70f69270c2a5f64b4cc861494c20853a5177` |
| 76 | `theorem` | [Minpoly.toAdjoin_apply'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-toadjoin-apply.md) | 633 | `result-track:550e257d30bf7fae9fc770f16c57b02a05fdd256ce6f384cbf84fdfcfcac8ca8` |
| 77 | `theorem` | [Minpoly.toAdjoin.apply_X](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-toadjoin-apply-x.md) | 640 | `result-track:3e0801f04c5cff85be136713fd97b39421195e35d89a3e579a80bb599fcf7f27` |
| 78 | `theorem` | [Minpoly.toAdjoin.surjective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/minpoly-toadjoin-surjective.md) | 648 | `result-track:6ac54ff4091f3bf81603e232b3815b4dc1b76dff2f138fd6ee706d0fa889d083` |
| 79 | `def` | [equiv'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/equiv-source-edition-2.md) | 671 | `declaration-track:dbac8cd688681b5312b3487e14d3a4f553b7986f47bb182d1fb20ed63717bcfa` |
| 80 | `theorem` | [equiv'_toAlgHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/equiv-toalghom.md) | 687 | `result-track:ba53ea846d76c4168721abc5a605cab73992450c1b2776253e6594c0400df370` |
| 81 | `theorem` | [equiv'_symm_toAlgHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/equiv-symm-toalghom.md) | 693 | `result-track:16fea2c56da3a253bfa9f69f976812a05db1f7db2e6692e58b4abe80bf6a35f1` |
| 82 | `def` | [equiv](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/equiv.md) | 708 | `declaration-track:953dcc27e1f54e9767bbbe6c57819271278a232007d6e888ff4bedd75b20b846` |
| 83 | `def` | [quotMapOfEquivQuotMapCMapSpanMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapofequivquotmapcmapspanmk.md) | 736 | `declaration-track:f8c2051de9519d076be92d88893edfcdbe1547a9543fc779a1c6b95038b8991d` |
| 84 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapofequivquotmapcmapspanmk-mk.md) | 744 | `result-track:59fdff5666d0c770f968df43d53022fcc366b1ce5f05b1342270a3fb57e6167e` |
| 85 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_symm_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapofequivquotmapcmapspanmk-symm-mk.md) | 751 | `result-track:9ce3d7502880e979cba0ce09c0b54d0ed4225a42b4eb93d3a37b2fcf9ddaea64` |
| 86 | `def` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk.md) | 762 | `declaration-track:94a8d28c8706495eaa528483157e4ebf1b981ed8d2dc0faf4ec0f2f7aa6a8c70` |
| 87 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-mk.md) | 771 | `result-track:d3e6ab157df60370e6061a84014dd940f359ab7d5ea4468159c12a9f336ac1ab` |
| 88 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_symm_quotQuotMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-symm-quotquotmk.md) | 779 | `result-track:5b6f43183d7ce30004c6a8fe7f9e25f73c4b5be59dc9e5fe528b22fe287e45f0` |
| 89 | `def` | [Polynomial.quotQuotEquivComm](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/polynomial-quotquotequivcomm.md) | 789 | `declaration-track:40ef372ad988ecd52b60e83d146ba066ad27200dcc09a29852efc22bd59e60c4` |
| 90 | `theorem` | [Polynomial.quotQuotEquivComm_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/polynomial-quotquotequivcomm-mk.md) | 800 | `result-track:43a6dd7d2579062f9543c218baaaffbd8d3e788ba621a7b5f5356170dba009c6` |
| 91 | `theorem` | [Polynomial.quotQuotEquivComm_symm_mk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/polynomial-quotquotequivcomm-symm-mk-mk.md) | 809 | `result-track:9764060095197b23eddc4086825b0a8554329dc939f503ee6b7204fadcf22573` |
| 92 | `def` | [quotAdjoinRootEquivQuotPolynomialQuot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotadjoinrootequivquotpolynomialquot.md) | 819 | `declaration-track:8346a034d5484aaf35352ef79542e430bf5c0ea8072ee3030efc6f8a0dc74e61` |
| 93 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_mk_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotadjoinrootequivquotpolynomialquot-mk-of.md) | 830 | `result-track:a95fc0f1f2a9394bc780673ba62a2a7f8755cda632372431b5ed1a33e0cdfa1c` |
| 94 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotadjoinrootequivquotpolynomialquot-symm-mk-mk.md) | 838 | `result-track:89f7eca3a4f4621e585e349b4f5e2ad8e2edb3616a3f2097b11ee3f2cbe0f4f0` |
| 95 | `def` | [quotEquivQuotMap](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotequivquotmap.md) | 853 | `declaration-track:093296c50edf559b4d4c25ac6d0be42f60d0eb9adae2d51db6d0fc9a1736c95c` |
| 96 | `theorem` | [quotEquivQuotMap_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotequivquotmap-apply-mk.md) | 869 | `result-track:244e285d6afe974ec2f69f78986826061fb14c291d27c86c1cf3add74f2c1361` |
| 97 | `theorem` | [quotEquivQuotMap_symm_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotequivquotmap-symm-apply-mk.md) | 876 | `result-track:c6a7afd5b98815407db48ddcf71945094e846a79be7cecdc7eabcdb751edd806` |
| 98 | `def` | [quotientEquivQuotientMinpolyMap](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotientequivquotientminpolymap.md) | 897 | `declaration-track:749ba02ef7bf71b070ac5091d6b51a5f8f74d66b7210438af2aa54f88d9f0023` |
| 99 | `theorem` | [quotientEquivQuotientMinpolyMap_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotientequivquotientminpolymap-apply-mk.md) | 918 | `result-track:9c4bedf62160161e816a5fbe455d61e318c3c79cf6f29ef4d2df5763bbd9a2b0` |
| 100 | `theorem` | [quotientEquivQuotientMinpolyMap_symm_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRootNamespaced.lean/declarations/quotientequivquotientminpolymap-symm-apply-mk.md) | 929 | `result-track:450614f0af603034cc8ed146463a0ff6cb9d26fc90187ae5e07e112fb16059c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=560e0b2f4ba745ef2b9ac44c4789d317c1ecfc4aebfcc40753cf4ed75f5c268a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
