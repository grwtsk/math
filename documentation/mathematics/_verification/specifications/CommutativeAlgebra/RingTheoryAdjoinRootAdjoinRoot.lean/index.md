# Verification target: Ring Theory Adjoin Root Adjoin Root

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30ac02ac2ad92d33765b0ebb6d36bbeb2383fd1e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.QuotientNoetherian` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdjoinRoot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/adjoinroot.md) | 64 | `declaration-track:0b7b81b00e5e5e7f76fcec5272d9398853c8933d718e440b93372fd3d0be66d7` |
| 2 | `instance` | [instCommRing](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instcommring.md) | 74 | `declaration-track:eeb415b864f0c3d007acd90acebd37875d5f8c1055b7cacadd5e3994198fb8c7` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-5.md) | 78 | `declaration-track:a98fe6e48c2b042bb4d8e73b4faec0f5cfc23339562ecc5c2479e27d7332c46c` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:63ff37cc4c14525548676326941218ae15a678c5f03ab07c1168da7adc3e01a9` |
| 5 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/nontrivial.md) | 84 | `result-track:8f4cf234e41b2d8bc9d1b0853981c88390210e9c3cd0a9394b546d70b9796957` |
| 6 | `def` | [mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk.md) | 93 | `declaration-track:a7cbb559fc4baf75f1d3ec6885a18a16fd5be1d38f76914a23d5365779845313` |
| 7 | `theorem` | [induction_on](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/induction-on.md) | 98 | `result-track:988818f6b30f1522af7c7fa5c6ca0a9b1e5f85af313cf8a7eefa9d93a01b06a2` |
| 8 | `def` | [of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/of.md) | 104 | `declaration-track:500fd8f4f4eb47fd9ae66d725655f2bb4dcfbced56458fe0e82bd59b4d0f87e8` |
| 9 | `instance` | [instSMulAdjoinRoot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instsmuladjoinroot.md) | 108 | `declaration-track:097cbcf515fa5eb366cdfb075f8fe0b34463aa30dd7ad5e62a79fc8bf7061635` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:5307bb11832a4b4a938fd7c47effe37a89f31e27bcad8b0f2a2cf4d0be7f9379` |
| 11 | `theorem` | [smul_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/smul-mk.md) | 115 | `result-track:07c411a09ea2d344b7e086b87ddc128ee68bc0a5709d7b631e8ce1b6e0f22379` |
| 12 | `theorem` | [smul_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/smul-of.md) | 120 | `result-track:d38533a2c25563aa5088e608af0989cd16bf27f766593728b5c4133a2bfe370f` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-8.md) | 124 | `declaration-track:ff4c50b1d7b50949a122da9afa046e33264b180fcbed3587ba2b578e715f196f` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-7.md) | 129 | `declaration-track:efccea1df5f1d64cba0089335597d59d9a18a9b05c56f2336b5d9e88836de66d` |
| 15 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isscalartower-right.md) | 134 | `declaration-track:cdc2685d541072525032ee60bd582da398f3907ba23f701e14020dd9d1790cd7` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-6.md) | 139 | `declaration-track:de8f70609af5ca2f9057081ea4ffa4e5e5c79d00223199225cbfda4cb1e59283` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance-source-edition-4.md) | 143 | `declaration-track:7176d04b85642ef7baa51fb19d38b59ea41ff1ede5b1d5ad231a45aaab8046b6` |
| 18 | `theorem` | [algebraMap_eq](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/algebramap-eq.md) | 147 | `result-track:911b99b2b6e6af1793fada24c2f10cb06e25f7e9c9c2ab4ba6f9db052b3fe86b` |
| 19 | `theorem` | [algebraMap_eq'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/algebramap-eq-source-edition-2.md) | 153 | `result-track:f9f2e17a6c12c61a5dbabe3ef61919f827099db26f7260d82f363187ad852136` |
| 20 | `theorem` | [finiteType](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/finitetype.md) | 160 | `result-track:87e3ed2fca4dc92be3785b80f1434e4ec9be3089181fcf6329ee17903b2a0155` |
| 21 | `theorem` | [finitePresentation](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/finitepresentation.md) | 164 | `result-track:84c6d81a06a96ad8ea7940c6dc7310f1d68cb29ee72a4e70c24f600d9740fd5f` |
| 22 | `def` | [root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/root.md) | 169 | `declaration-track:086a707350d549bc2e9b17594b07f2b2a95375003877da9a42e68c57674223c5` |
| 23 | `instance` | [hasCoeT](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/hascoet.md) | 175 | `declaration-track:a475e87d28c63226bc0b5d1eec0d8be81e3a3534b1b4246ead641747ecefc9cf` |
| 24 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/alghom-ext.md) | 182 | `result-track:acb770c3d245bc6afa7e9d775c788d86c03273f4a28218ff43990660aea15b2d` |
| 25 | `theorem` | [mk_eq_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-eq-mk.md) | 188 | `result-track:4dbe0d820203fedcb11108c65c267d8393c1a42189969350e795cc6a9cb1c109` |
| 26 | `theorem` | [mk_eq_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-eq-zero.md) | 193 | `result-track:2d6a2593ae2080d0375bb1437d2fc0f19e8483ace8a71a78b144f660bf04df4a` |
| 27 | `theorem` | [mk_self](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-self.md) | 198 | `result-track:0e1e15eadd266621bcff2dec1482a4f4f14a41798d15e1f5b39ed0af2c7167c3` |
| 28 | `theorem` | [mk_C](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-c.md) | 203 | `result-track:de62405e1bce3096f9e8daa8ef2b245aee35cb7e14ab1f7bdfb4054949993f5d` |
| 29 | `theorem` | [mk_X](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-x.md) | 209 | `result-track:5cd7c27b83a8fca6de2bfe3cf8da8c3b67d24f3d7f01e57726b25f0ffb04171a` |
| 30 | `theorem` | [mk_ne_zero_of_degree_lt](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-ne-zero-of-degree-lt.md) | 214 | `result-track:e196663d417d09f7aae862f13f51a1fd32afdf78bac8871212bc23595f8e1160` |
| 31 | `theorem` | [mk_ne_zero_of_natDegree_lt](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-ne-zero-of-natdegree-lt.md) | 219 | `result-track:e8a59a8fc310abb2bc2f9394f6d02957bde12e08364a2b47e8e9c6ac8228e8c7` |
| 32 | `theorem` | [aeval_eq](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/aeval-eq.md) | 225 | `result-track:ed4d104fdeaf2a140bced79b751c21e47ddc52b4800814caa30529cd0e3053dc` |
| 33 | `theorem` | [adjoinRoot_eq_top](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/adjoinroot-eq-top.md) | 237 | `result-track:d393c5d8fccee3812a2fbdeded1c274784d3aad8216934ab1e8aad17d748b618` |
| 34 | `theorem` | [eval₂_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/eval-root.md) | 244 | `result-track:fd458ff838f2fcd8697649d95c10a4304e97c413a66e05b4a05f3d3351de469c` |
| 35 | `theorem` | [isRoot_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isroot-root.md) | 248 | `result-track:362a48367b2b1896ac05ba2af31a0f294d4a54904519824ef06096685eb1860b` |
| 36 | `theorem` | [isAlgebraic_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isalgebraic-root.md) | 252 | `result-track:13b89707bc16285d337bd054a8008dde4b966524d25ab210aa10404a891e3851` |
| 37 | `theorem` | [of.injective_of_degree_ne_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/of-injective-of-degree-ne-zero.md) | 256 | `result-track:69fefced9d567eec8abc21b45da53320dcac8270e3cf15601b2222e118fca7c9` |
| 38 | `def` | [lift](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lift.md) | 272 | `declaration-track:c419e038e47386aa447da2eaf55f3695df39680ec10ad77c5e36926f8633b241` |
| 39 | `theorem` | [lift_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lift-mk.md) | 282 | `result-track:2430b4aed5c6ff331b1ea20e41675fa17112ce4573e6180b1533d567aac16584` |
| 40 | `theorem` | [lift_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lift-root.md) | 287 | `result-track:a9203d28bc4a68b91258e636ce8aee39297b7e8f5d26306b7b07e33ea10cc7ae` |
| 41 | `theorem` | [lift_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lift-of.md) | 291 | `result-track:37a75ed83d1363168b6e2276cc88eafa4df34aec403d41fce44043d39920e39a` |
| 42 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lift-comp-of.md) | 295 | `result-track:28201aa7232780bb4d4602f385827d111823f1db0d43e6230a36b586c4374634` |
| 43 | `def` | [liftHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lifthom.md) | 303 | `declaration-track:848db3678cb60ae41c20900fea5c80a1233cc423dedfad97ced1cef11efa363f` |
| 44 | `theorem` | [coe_liftHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/coe-lifthom.md) | 309 | `result-track:5470b6a5d9317eb8f371c8ac2bc2851a44928c4e55397bd0657e78deccbde82d` |
| 45 | `theorem` | [aeval_algHom_eq_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/aeval-alghom-eq-zero.md) | 315 | `result-track:e17932fe41021a181885ac117d69041411a9520be033434d4f2d4180318ba45f` |
| 46 | `theorem` | [liftHom_eq_algHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lifthom-eq-alghom.md) | 322 | `result-track:dfcec80511aa46485ab25364eac60c9407a713782c747e423b34ff58dfe33d19` |
| 47 | `theorem` | [liftHom_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lifthom-mk.md) | 333 | `result-track:9b1c09000a3f086beadaff5ad4ecb379dc6a3df8d9f457a5b95cc6a0c1b04723` |
| 48 | `theorem` | [liftHom_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lifthom-root.md) | 338 | `result-track:9af09efb08e0c09e0f84ab193f0b038243e97c3b993c7f543da2f13e56d9af3b` |
| 49 | `theorem` | [liftHom_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/lifthom-of.md) | 343 | `result-track:0e7457c074b24cc3c895a6079dd614e40f2f62023e86c4b1aaef21219240b3d0` |
| 50 | `theorem` | [root_isInv](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/root-isinv.md) | 350 | `result-track:7b1edc5c1918428c45495832fc0028d335293718c22acc864e1be8c88e1708ca` |
| 51 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/alghom-subsingleton.md) | 355 | `result-track:33592506fe816025be52e42c0629487d3c9829db9cd2421f4f5bf0a520a66366` |
| 52 | `theorem` | [isDomain_of_prime](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isdomain-of-prime.md) | 370 | `result-track:972c6086ff1b1192ccabfbbaa7669f52a306835488a4da507d3c2be49cb2d2d4` |
| 53 | `theorem` | [noZeroSMulDivisors_of_prime_of_degree_ne_zero](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/nozerosmuldivisors-of-prime-of-degree-ne-zero.md) | 375 | `result-track:9ed85fbe568c6b3dbf7857c278469a44172419d98a3536aa9b67149411828ff1` |
| 54 | `instance` | [span_maximal_of_irreducible](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/span-maximal-of-irreducible.md) | 389 | `declaration-track:4b14dc5d1a3ee03dba05a10c5203cc825de65283516f10a4ecc172a769da1827` |
| 55 | `instance` | [field](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/field.md) | 393 | `declaration-track:804291b1380bacc5e8203475b3c0586f4736747a0444a8cdb5a598322ea2d52c` |
| 56 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/coe-injective-source-edition-2.md) | 412 | `result-track:ed141c6bf0860bf32c3994d5e2b7d498a9eaa7e16464f7e62929fd8d6e3463ed` |
| 57 | `theorem` | [coe_injective'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/coe-injective.md) | 417 | `result-track:85058ea35c1c56fb076b420d224efa8cc56316846f04dcfa23c5551f0733c28e` |
| 58 | `theorem` | [mul_div_root_cancel](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mul-div-root-cancel.md) | 423 | `result-track:e950f426ec85b6f395f0f049e570106b3300841bc37a637baf93c2f545c46197` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/instance.md) | 432 | `declaration-track:09eb7207c1fa538f34e941da87e4d967d05e3d1267fca9e3ff912ca1dd57fcb5` |
| 60 | `theorem` | [isIntegral_root'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isintegral-root.md) | 441 | `result-track:95dc911b9c99184c5aa57861c08192e312eb568d2f4231681372e5a5ca389ff4` |
| 61 | `def` | [modByMonicHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/modbymonichom.md) | 448 | `declaration-track:149adafea81729d6a96643bfc6a53d1e7cfedeee0c7ce4da0568d4d13929562e` |
| 62 | `theorem` | [modByMonicHom_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/modbymonichom-mk.md) | 456 | `result-track:404a5f48b337090150e2f2c08a7f601d1fd523ab07d29a5ff024fdb938f56c27` |
| 63 | `theorem` | [mk_leftInverse](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-leftinverse.md) | 461 | `result-track:a015c742c29ba85f88d64b5cd5495ac282ba7b79e6244090fa9a16d87f798379` |
| 64 | `theorem` | [mk_surjective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/mk-surjective.md) | 469 | `result-track:bfe3369221eb99694d9b2869baf7ba3081cdaf4258e247ff8738b5a065dde9e3` |
| 65 | `def` | [powerBasisAux'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasisaux.md) | 475 | `declaration-track:3a141a259fe9c20a4a4cc757bd3fd97f37761951bf82c95b3bc38b16a72bb8f1` |
| 66 | `theorem` | [powerBasisAux'_repr_symm_apply](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasisaux-repr-symm-apply.md) | 505 | `result-track:8b9c4dc129cfe2383cb148d7d5acd51bf250bb652504eef7351b7915f4da5f7a` |
| 67 | `theorem` | [powerBasisAux'_repr_apply_to_fun](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasisaux-repr-apply-to-fun.md) | 513 | `result-track:78eab71c2f173c97bc98ce63b66fc212d4270e6ca80183c7b6979d73a0c3cac5` |
| 68 | `def` | [powerBasis'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasis.md) | 521 | `declaration-track:0f4d7a576866038fa88c1525c977a85855de2f5b74af113150d3655c2c32b300` |
| 69 | `theorem` | [isIntegral_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/isintegral-root-source-edition-2.md) | 540 | `result-track:ffd0f30d77ac48fa02e7a6ad8d5c53acfccf83b8612eba74135c07032a7aaf17` |
| 70 | `theorem` | [minpoly_root](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-root.md) | 544 | `result-track:a701c463293b4026ce90b480cf86982fc5ebe1efc939d818a8aea169cfd04cd2` |
| 71 | `def` | [powerBasisAux](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasisaux-source-edition-2.md) | 566 | `declaration-track:69b777bf48ecb3bb5f21fc919c019037ae1cccc11e388d3176abfe46728522f2` |
| 72 | `def` | [powerBasis](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/powerbasis-source-edition-2.md) | 587 | `declaration-track:3ae0cf96a9e34a983316f34ea313e4785dde5bca85f112b5ba414a721318d610` |
| 73 | `theorem` | [minpoly_powerBasis_gen](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-powerbasis-gen.md) | 594 | `result-track:1ded75d3879056adac678b8bb533071728dfa6505a9846cbd429617e83c20ef7` |
| 74 | `theorem` | [minpoly_powerBasis_gen_of_monic](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-powerbasis-gen-of-monic.md) | 599 | `result-track:a2099c652a602fb492c6d3b2f3f34d665cf8246f8b13d378aa6f1e45d172be97` |
| 75 | `def` | [Minpoly.toAdjoin](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-toadjoin.md) | 618 | `declaration-track:88ef695bfde5bd4aa3f4a4a00f7fb7541e3e1244b04772163f1146c5dcb63f6d` |
| 76 | `theorem` | [Minpoly.toAdjoin_apply'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-toadjoin-apply.md) | 625 | `result-track:8133360fc321d198e4b550d40bb2a9813ebe487f914fa2dfff933a6bbc60431d` |
| 77 | `theorem` | [Minpoly.toAdjoin.apply_X](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-toadjoin-apply-x.md) | 632 | `result-track:29e0bf7e1e0e772dcb4f3e067567bd7161875f9e884e4c03af59de539e98f4ee` |
| 78 | `theorem` | [Minpoly.toAdjoin.surjective](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/minpoly-toadjoin-surjective.md) | 640 | `result-track:6f65d7e60d13b635fca5133e7e592854f013b5e37f48b4ebc589d7f79e668bc5` |
| 79 | `def` | [equiv'](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/equiv-source-edition-2.md) | 663 | `declaration-track:c9532e00b8d637c2359a74ffee973f31024009e1880d11d4ab3b5bcd6f9f86e4` |
| 80 | `theorem` | [equiv'_toAlgHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/equiv-toalghom.md) | 679 | `result-track:aecb8c93f09ef50c04b60873ffbadc6e4519dd65c392b3aa2c9e0cd8702018f7` |
| 81 | `theorem` | [equiv'_symm_toAlgHom](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/equiv-symm-toalghom.md) | 685 | `result-track:ca2a2a492df0e70111dd705d72643f7b5711b3eb3602a9eb147a3bb9526b2084` |
| 82 | `def` | [equiv](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/equiv.md) | 700 | `declaration-track:3e989dc604c38147e92e7ac8bbcc8f181cd4f8bb983ad201bb7f6d444044bf2b` |
| 83 | `def` | [quotMapOfEquivQuotMapCMapSpanMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapofequivquotmapcmapspanmk.md) | 728 | `declaration-track:105a8ac7271cf227b202d0333f9c8d9c0a2c0cdad0eaf56e9ebd5b31067e2ebf` |
| 84 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapofequivquotmapcmapspanmk-mk.md) | 736 | `result-track:f55bba60b35196e327b7e824d70c0debe096c330e28307d30fafdd2580c80cf3` |
| 85 | `theorem` | [quotMapOfEquivQuotMapCMapSpanMk_symm_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapofequivquotmapcmapspanmk-symm-mk.md) | 743 | `result-track:a2ddbbc7234b9f03de83f40ec904757543ce381be2d67cc191764ca7466dbf53` |
| 86 | `def` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk.md) | 754 | `declaration-track:daca41cef0aab835b6586982d0030404d5bf348b61e826db4428cb891c9fe056` |
| 87 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-mk.md) | 763 | `result-track:f0f917a6bdc2bc210c6b7d03ca766eb054cf43a0bf48007736ec2b5892781780` |
| 88 | `theorem` | [quotMapCMapSpanMkEquivQuotMapCQuotMapSpanMk_symm_quotQuotMk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotmapcmapspanmkequivquotmapcquotmapspanmk-symm-quotquotmk.md) | 771 | `result-track:f43ff391b3c606fb858edb2358140a85a626500ce2156e669b7074248775c0cb` |
| 89 | `def` | [Polynomial.quotQuotEquivComm](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/polynomial-quotquotequivcomm.md) | 781 | `declaration-track:30f97a52b8618a4397d22324dfe34a8b983920f0ae2e7ecccd8c2e7968ae1038` |
| 90 | `theorem` | [Polynomial.quotQuotEquivComm_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/polynomial-quotquotequivcomm-mk.md) | 792 | `result-track:cebfcbb70b4ac7bd5fae596468feaaeb3ac348f7a35d4a38228a35ab6036759d` |
| 91 | `theorem` | [Polynomial.quotQuotEquivComm_symm_mk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/polynomial-quotquotequivcomm-symm-mk-mk.md) | 801 | `result-track:4e70c202bbc95d261d7ad53b5930c17a4e0f395cf22236271ee63a68c262d695` |
| 92 | `def` | [quotAdjoinRootEquivQuotPolynomialQuot](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotadjoinrootequivquotpolynomialquot.md) | 811 | `declaration-track:00aa6a04d9cbea6860c6fadd25e34e451d95f910a5ba7591b6b68b8a6ccb164a` |
| 93 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_mk_of](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotadjoinrootequivquotpolynomialquot-mk-of.md) | 822 | `result-track:5e64def852dd6faf234777a92ba5afe9d6daaab4b629249783cce73b86756241` |
| 94 | `theorem` | [quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotadjoinrootequivquotpolynomialquot-symm-mk-mk.md) | 830 | `result-track:f42137eef9d58e3ec4b3b3872ef3eae8833c59abc2f51b9d6603d8b226f3e464` |
| 95 | `def` | [quotEquivQuotMap](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotequivquotmap.md) | 845 | `declaration-track:94565f01834468fec366060eef9b893fba69928050edf495afecafd210715d87` |
| 96 | `theorem` | [quotEquivQuotMap_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotequivquotmap-apply-mk.md) | 861 | `result-track:bcf71a814c0710e22742f1d80cf06f63ff1490aa5a8ffd847af029f6651d2736` |
| 97 | `theorem` | [quotEquivQuotMap_symm_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotequivquotmap-symm-apply-mk.md) | 868 | `result-track:10a6114ca58087946d115bc4a321076a6c90e9c18cf5c17725322b21e5042542` |
| 98 | `def` | [quotientEquivQuotientMinpolyMap](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotientequivquotientminpolymap.md) | 889 | `declaration-track:1d08d2536e94d7a57984db786d9fe427fbacd5a1741bc11d98a9694eacace77d` |
| 99 | `theorem` | [quotientEquivQuotientMinpolyMap_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotientequivquotientminpolymap-apply-mk.md) | 910 | `result-track:8754d8fc8a7703f4e7d603fc030f0f65479db0630d077a6b147638dc03273d8d` |
| 100 | `theorem` | [quotientEquivQuotientMinpolyMap_symm_apply_mk](../../../../CommutativeAlgebra/RingTheoryAdjoinRootAdjoinRoot.lean/declarations/quotientequivquotientminpolymap-symm-apply-mk.md) | 921 | `result-track:b056e7a714fd2824a1e41308847a87d3798b84b7a67a0c1ca55a28ecf3c7cf3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b55d0f2a2e8f0f29a7a5e3611f570ca58b178b4018f8b03e200e307b6e37f920 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AdjoinRoot/Variantcb172d78baf8d3a247b02f624846917b59941dac59d9e0943687f981502ff9e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
