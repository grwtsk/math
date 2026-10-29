# Verification target: With Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "868a2d52c68dd3491abf1414b84702efca0ff30a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `868a2d52c68dd3491abf1414b84702efca0ff30a`.

Source path: `GRWTSK/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.NAry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/one.md) | 33 | `declaration-track:ca8df8f086741ef191133bab49d20c332aa0a301388770de64e5f78464e59049` |
| 2 | `lemma` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-one.md) | 36 | `result-track:88d5e04e577bd8cc1d20ee4106a1f36e687845f9ce4858c2abf9aa02e8c16d07` |
| 3 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instmulzeroclass.md) | 43 | `declaration-track:10c35b0eb6c0c6971a87c1d994e3330cbd46bc9ced9c6955d364e7d33f96f77e` |
| 4 | `lemma` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-mul.md) | 48 | `result-track:76b8b04ed1109167f207bc32b1fbfdfb88050748923f33608e9b7111d5add6bf` |
| 5 | `lemma` | [unzero_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/unzero-mul.md) | 50 | `result-track:d1a2eb91ad212c4c281271aa9050650ae5e0c98c1e62d0bd660d8b5888133477` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instnozerodivisors.md) | 54 | `declaration-track:da53a6f9a869e0342f0845c102612994fb56eb737e664053abf3a59a8ba1090c` |
| 7 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instsemigroupwithzero.md) | 58 | `declaration-track:c30f67345f985e8dd9fbc57390cbe63d05664ef392671ff3810b29b9929d3ba2` |
| 8 | `instance` | [instCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instcommsemigroup.md) | 61 | `declaration-track:cf0e6c715087f889d693ecf7a87d8eb8a59cbfd2630adc436ac67fd6bea81c59` |
| 9 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instmulzerooneclass.md) | 67 | `declaration-track:851b8757e7da09680db03b71960620c192a5c40d71c53e834c6339cd420d0485` |
| 10 | `def` | [coeMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coemonoidhom.md) | 73 | `declaration-track:ab71d215f696702c2219ba6914a4d1e83d6b5bc5d3ac79f6ca8b9b3863bc3bd9` |
| 11 | `theorem` | [monoidWithZeroHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/monoidwithzerohom-ext.md) | 83 | `result-track:4131a15acfa79e91dbe02cd3d4cd4ae2998578a3dabd06e3f671af1b1252b75f` |
| 12 | `def` | [lift'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/lift.md) | 92 | `declaration-track:f31afe073141e710a76df541b89dfbf3e09484c39a6f4618a5cfe4b4ec7b453d` |
| 13 | `lemma` | [lift'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/lift-zero.md) | 107 | `result-track:191194b76ba517d05d3633faa3dc16ce4fd7c68e059271a8644291c78ee27d7e` |
| 14 | `lemma` | [lift'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/lift-coe.md) | 109 | `result-track:8e5ce7a2a65379294d060d924f4ca9f79bd79ebfc73f72bd71ae46ac5b250d0c` |
| 15 | `lemma` | [lift'_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/lift-unique.md) | 111 | `result-track:f44cf85156fb3be46adf584664a8a11646dddc25e053683ca4e1e713bf09d405` |
| 16 | `def` | [map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map.md) | 120 | `declaration-track:1da52a17cb32f670e22402d804c877dca45114e3c680e236c571e24a8ff49e4e` |
| 17 | `lemma` | [map'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map-zero.md) | 122 | `result-track:40fb2e53371cd2b0874748a5a64ad0dbe9da3559d8ec28817539448427bee8d1` |
| 18 | `lemma` | [map'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map-coe.md) | 124 | `result-track:37d8babd72adac368affb7039c88c4fead8355f7d657cb5d7bf9d2c526d1e812` |
| 19 | `lemma` | [map'_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map-id.md) | 127 | `result-track:20fdbc6c81ca6bcba39a724152dc285062825d0521c7c9794251ce0993aaa5ca` |
| 20 | `lemma` | [map'_map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map-map.md) | 130 | `result-track:37b6180d536dd600d1f3864b414c3f31b795b5645d7e2b723cd99478c4b26cf0` |
| 21 | `lemma` | [map'_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/map-comp.md) | 134 | `result-track:824fe90e01b3919df3a5ff742e173b52d1eb986f7630476bb65345db5fe43782` |
| 22 | `instance` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/pow.md) | 142 | `declaration-track:ef47119ae384eef2b5642fa9e4c7397668fe4eadb621483de396a4536bf780a1` |
| 23 | `lemma` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-pow.md) | 148 | `result-track:a87dea73d019f1f03d59c972c640c46172567737c907dbd493812315c36a0ef4` |
| 24 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instmonoidwithzero.md) | 152 | `declaration-track:d1a199e3c5a9acab31f31e1aee86207eb26be213aa7c955448e6da853f52a4e3` |
| 25 | `instance` | [instCommMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instcommmonoidwithzero.md) | 161 | `declaration-track:0c7df954f3da278dbde75a1522c7bb9edeb32421b6391045a4b408da67ee6a38` |
| 26 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/inv.md) | 168 | `declaration-track:28df094ddc0ba21d36844446b723bbf03991b946f7d4c43abc3338c73632aa23` |
| 27 | `lemma` | [coe_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-inv.md) | 170 | `result-track:e680bad69dbdfaaf225381fc79315aa45452dbb7a57d930756cfde9794da228f` |
| 28 | `lemma` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/inv-zero.md) | 172 | `result-track:55f52cd4112d0d20eacf3d42d20d70daad908ef76e8222d6080461398c0f3686` |
| 29 | `instance` | [invOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/invoneclass.md) | 176 | `declaration-track:f8285915c9393759d5135e37af9876a76cc9a75516001d6ca8b1495b4d822b33` |
| 30 | `instance` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/div.md) | 182 | `declaration-track:f12d078984a3ed016a23da16e381aedbee4f0e9cfb991be5b9ae330cb49c746e` |
| 31 | `lemma` | [coe_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-div.md) | 184 | `result-track:70c175464f844997aad3910d15ae36d1423f919d53fe56c2657ede76df496861` |
| 32 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instance.md) | 191 | `declaration-track:b738b4933e650430c306a76e1c792ba2206464967b3d77176f628d671ec1449f` |
| 33 | `lemma` | [coe_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-zpow.md) | 198 | `result-track:2f3f66f6a536fa0f8ded6bf3fd0a47af855b0fd1cd92cb6756aad10add84e076` |
| 34 | `instance` | [instDivInvMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instdivinvmonoid.md) | 202 | `declaration-track:5c471f877ead76e2b55360f6d42a4731b7d264588d99506e30d8fc5d6b8f9711` |
| 35 | `instance` | [instDivInvOneMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instdivinvonemonoid.md) | 218 | `declaration-track:50209ce9132352cfeb49d52556ad60d4c12ef96856c9e86ce46253a1857a3d33` |
| 36 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instinvolutiveinv.md) | 220 | `declaration-track:0b990714815cd565e840235c5fa9886642b463c84cb505f6c89bc983b05ba315` |
| 37 | `instance` | [instDivisionMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instdivisionmonoid.md) | 223 | `declaration-track:13c19ab176ade4b614188a03e15fe9af3c1bee316849d5ebb6218d90a01aa65f` |
| 38 | `instance` | [instDivisionCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instdivisioncommmonoid.md) | 234 | `declaration-track:27c54e00628df253605492aa8af692098c20614ae8e022a94c07ab32da785852` |
| 39 | `instance` | [instGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instgroupwithzero.md) | 240 | `declaration-track:59100d7a1037c2d73abd2f4e641ea3eac666a7e25655e89095aa68c9f341c114` |
| 40 | `def` | [unitsWithZeroEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/unitswithzeroequiv.md) | 248 | `declaration-track:0270518b81477c7897de7b143a6454ec826e3865aecc41c4c113b834bceefd43` |
| 41 | `theorem` | [coe_unitsWithZeroEquiv_eq_units_val](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/coe-unitswithzeroequiv-eq-units-val.md) | 255 | `result-track:c4265b545e5232c33c7983965a104957db2ec214a886df610853ae7d0d587a6c` |
| 42 | `def` | [withZeroUnitsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/withzerounitsequiv.md) | 260 | `declaration-track:e9b3832ad464f32aa5a632d1fe15857e082a272d05cb9cd2eb8238d85ddf8e72` |
| 43 | `def` | [_root_.MulEquiv.withZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/root-mulequiv-withzero.md) | 270 | `declaration-track:5b7195f898f8517626e85ebab414ad0eeb7fcc40793b4559af2dce1c804c7ece` |
| 44 | `def` | [_root_.MulEquiv.unzero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/root-mulequiv-unzero.md) | 279 | `declaration-track:3f6b3b53309d6e59a542e8de0bda64ef4f7af0317fcd96a486b21bd600c63a7d` |
| 45 | `instance` | [instCommGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instcommgroupwithzero.md) | 294 | `declaration-track:69fae0e4d5b743ad809399839e09a371e9651b68a7a948a9e6e56f078e12679a` |
| 46 | `instance` | [instAddMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZero.lean/declarations/instaddmonoidwithone.md) | 296 | `declaration-track:71d297f13e2a288c5c9958219ad236c67d57dc94e753acb4fb63165da09eef37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8d036d744ef756fcc3de7d0a2991063a9e73ce66c4522b65d6f30ffa06a8061 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/WithZero/Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
