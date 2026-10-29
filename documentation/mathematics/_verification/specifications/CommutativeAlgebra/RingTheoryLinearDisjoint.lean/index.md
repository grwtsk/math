# Verification target: Ring Theory Linear Disjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a886cc903f25326c2f897be2725c45e598660bc9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.MulOpposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearDisjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Subalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Dimension` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Nontrivial` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LinearDisjoint](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint.md) | 152 | `declaration-track:768332bf6cd342ddb07bd64d1630a995e6df55bb0cc950eec55da6e97458fd7b` |
| 2 | `theorem` | [linearDisjoint_iff](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-iff.md) | 154 | `result-track:7602fe0a3edf9739f3a706eddf779bf1aee90183fa08afa8abac2f3a1d7b8408` |
| 3 | `theorem` | [LinearDisjoint.of_subsingleton](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-of-subsingleton.md) | 160 | `result-track:3a03fde2d21ff9852d6d1c0abac6c2a8089b89b2ae7e6aa7d32b966e4eab1aa6` |
| 4 | `theorem` | [LinearDisjoint.of_subsingleton_top](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-of-subsingleton-top.md) | 164 | `result-track:537db859f03395888b2d007a001ce90c2f864ff79d2926316b23f1caf6f73758` |
| 5 | `theorem` | [LinearDisjoint.symm_of_commute](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-symm-of-commute.md) | 168 | `result-track:ca6da542e9b2cf3a87434b0a6857d1789a7167e1d7e432e37ce7ecd1ebc80c78` |
| 6 | `theorem` | [linearDisjoint_comm_of_commute](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-comm-of-commute.md) | 173 | `result-track:7131ec177e99dadddb4c3a136e5cfe0ea0db73c2bc943db67dff5dfde2a8ebe5` |
| 7 | `theorem` | [map](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/map.md) | 180 | `result-track:08a61c48326e58a46dc31b59c81a23db4137e3221330d1965d7259109fd9bb46` |
| 8 | `theorem` | [bot_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/bot-left.md) | 187 | `result-track:1f3e1191f5dda1daa4277e8942c6fa5e771343a8cc03883145634c7930a0cf91` |
| 9 | `theorem` | [bot_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/bot-right.md) | 192 | `result-track:e9b0569b70b42238c65ec94e5b2f526faa61680c987425d4b44649299f7af9a3` |
| 10 | `theorem` | [include_range](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/include-range.md) | 198 | `result-track:4579836380542fa662c2b9fec5020e84017668746aa6d2ec9f31b7a7614016d3` |
| 11 | `theorem` | [LinearDisjoint.symm](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-symm.md) | 220 | `result-track:9ee439530036cf8f8b17866456d795ae725535cc48da9425836b627a8d542e6e` |
| 12 | `theorem` | [linearDisjoint_comm](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-comm.md) | 224 | `result-track:da2517ebd08cef8fff11d0c83597029dd9ef1d9ee70af6b34a332ce8dc0272aa` |
| 13 | `theorem` | [linearDisjoint_iff_injective](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/lineardisjoint-iff-injective.md) | 229 | `result-track:7141f3cf8993bdcb98bf922d82124c9e6497e2e0293a8404b0ca4e958d93eedd` |
| 14 | `def` | [mulMap](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/mulmap.md) | 240 | `declaration-track:02bd5500414aa17107634e845c881eab7e011df7e25f9dd7c3b6fd25d7dcd7d3` |
| 15 | `theorem` | [val_mulMap_tmul](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/val-mulmap-tmul.md) | 244 | `result-track:4a940a8f76b8b45cd6356a4e79560ae8e37f9096db754f8de0c8e4457fbc67e6` |
| 16 | `theorem` | [sup_free_of_free](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/sup-free-of-free.md) | 249 | `result-track:d29d68bcdf1977cf9e51492c302923924bf412617bd02fd3e619bb5d03d7c3d0` |
| 17 | `theorem` | [isDomain](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/isdomain.md) | 255 | `result-track:3cc11b495762e23051fc60658868bce8047e8ebfe09c534fed485dac162a44ed` |
| 18 | `theorem` | [isDomain_of_injective](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/isdomain-of-injective.md) | 261 | `result-track:6ded22e18ebae9c1c6bffe694fc69fc7513f14c2e004b4b1c6f4f93bcef961a1` |
| 19 | `lemma` | [mulLeftMap_ker_eq_bot_iff_linearIndependent_op](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/mulleftmap-ker-eq-bot-iff-linearindependent-op.md) | 281 | `result-track:98173f335b078d7647f5c2efd659239a73682ae9ec5b926de7c431377fe55a3a` |
| 20 | `theorem` | [linearIndependent_left_op_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-left-op-of-flat.md) | 305 | `result-track:1233262affd7fced6bca99c962001e28379dc6ad7e7840814b0aa532aa444e94` |
| 21 | `theorem` | [of_basis_left_op](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-basis-left-op.md) | 313 | `result-track:dc1f1f763f94c48be9824b0440de535f58c7566de600aa97d22b8a14f3cbef3a` |
| 22 | `lemma` | [mulRightMap_ker_eq_bot_iff_linearIndependent](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/mulrightmap-ker-eq-bot-iff-linearindependent.md) | 319 | `result-track:f34a6aa7a72879dbb75ec5a2dde4dd3b0639835d94c79307fee8de7c3fc67189` |
| 23 | `theorem` | [linearIndependent_right_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-right-of-flat.md) | 334 | `result-track:838450dfac3a4df0ebd0d65157741f971d6cd1f66d876b07bb36e975c9e45346` |
| 24 | `theorem` | [of_basis_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-basis-right.md) | 341 | `result-track:f7c5de20d2bf980013b0a1a85000fb8251c3ae1fd7c244a815af146901c47805` |
| 25 | `theorem` | [linearIndependent_left_of_flat_of_commute](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-left-of-flat-of-commute.md) | 350 | `result-track:6504515c5411bea3b80630ebdbc54f03d9407f9bdff3d63ee2bd6ce23311fe5a` |
| 26 | `theorem` | [of_basis_left_of_commute](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-basis-left-of-commute.md) | 357 | `result-track:d3c9c4f259f7f61dd802efb707da4c855c685a00bc91eb2a4f2fbaefcf806cdd` |
| 27 | `theorem` | [linearIndependent_mul_of_flat_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-mul-of-flat-left.md) | 367 | `result-track:d8938b18f427d0fb6695b372c6444f24a08b2256242c9fa2cfd08b036b363648` |
| 28 | `theorem` | [linearIndependent_mul_of_flat_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-mul-of-flat-right.md) | 377 | `result-track:dbd42b24ea2f216493e6ffc283b8822a4d8ef9a7a8599c51e041144e3b32533f` |
| 29 | `theorem` | [linearIndependent_mul_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-mul-of-flat.md) | 387 | `result-track:e0069bfe60ea7b0e5edfe1954339187bbde3e25cb1b8a5a0438eb53aa6d392f1` |
| 30 | `theorem` | [of_basis_mul](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-basis-mul.md) | 396 | `result-track:7d757c195e2c6a30f43651860b3dda5aae2cf4531ca9714d518ff2d4f5bbe49a` |
| 31 | `theorem` | [of_le_left_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-le-left-of-flat.md) | 407 | `result-track:14ef1a321d413a5046471305f39c7a1624597f76d33fff786993c2903dbdca4f` |
| 32 | `theorem` | [of_le_right_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-le-right-of-flat.md) | 411 | `result-track:fa8aca059649dbddeef5c71223894a1cf48ec5f0b8285283cfdea0a97a6b26ef` |
| 33 | `theorem` | [of_le_of_flat_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-le-of-flat-right.md) | 415 | `result-track:c7c93ad98f05cb2606102a574fa0f708eaf22a61f1b754e37e24ec2cafddd1e1` |
| 34 | `theorem` | [of_le_of_flat_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-le-of-flat-left.md) | 419 | `result-track:ac21e9d0f2397572c9be97773c6c2f76a3a339d9ea7e89dd06e5d1319c4ee193` |
| 35 | `theorem` | [rank_inf_eq_one_of_commute_of_flat_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-commute-of-flat-of-inj.md) | 423 | `result-track:e82d092818b109a20313e7de753b92667cdd41d355eef0fcbf4bf7c09ded5d6e` |
| 36 | `theorem` | [rank_inf_eq_one_of_commute_of_flat_left_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-commute-of-flat-left-of-inj.md) | 437 | `result-track:ad19817063d4321d0315ed8c88deeb78a3e6f59bcd23c11e7af280d13802212b` |
| 37 | `theorem` | [rank_inf_eq_one_of_commute_of_flat_right_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-commute-of-flat-right-of-inj.md) | 442 | `result-track:908ac174f37db4d20843f13aa4b5048c062c42dcb0ac46c2cd659a061114fbad` |
| 38 | `theorem` | [rank_eq_one_of_commute_of_flat_of_self_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-eq-one-of-commute-of-flat-of-self-of-inj.md) | 449 | `result-track:01c005afb68b7bf6be0309e8970ae0cbc221ea386345eca8bf382946b86ac969` |
| 39 | `theorem` | [linearIndependent_left_of_flat](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/linearindependent-left-of-flat.md) | 471 | `result-track:d27ee4720b24286d3d88bebbcfc74c928afcaaabc7294e4565de4ce497beb04a` |
| 40 | `theorem` | [of_basis_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-basis-left.md) | 477 | `result-track:819834311567cf96aea07baa41789ea1fa786b3d670206ee2b950670cc17e9ee` |
| 41 | `theorem` | [exists_field_of_isDomain_of_injective](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/exists-field-of-isdomain-of-injective.md) | 488 | `result-track:8bb0a4788a9ae74a68305de707c7fb983dbad4f45700f2c0834da2a8d1053d32` |
| 42 | `theorem` | [of_isField](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-isfield.md) | 504 | `result-track:88ac96586d4b8268fcd5501fa3bf2a66538bec2ecb37ab541b8eb661a8f42a75` |
| 43 | `theorem` | [of_isField'](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-isfield-source-edition-2.md) | 514 | `result-track:e481c69ccce8f3391205b8e141096545e5e3721c5efa36880578832039f07ff6` |
| 44 | `theorem` | [_root_.Algebra.TensorProduct.not_isField_of_transcendental](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/root-algebra-tensorproduct-not-isfield-of-transcendental.md) | 527 | `result-track:493715e0fa21b4e9d0ed78752d4e946a0223db01391f95bb330b0e109ba680bf` |
| 45 | `theorem` | [_root_.Algebra.TensorProduct.isAlgebraic_of_isField](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/root-algebra-tensorproduct-isalgebraic-of-isfield.md) | 577 | `result-track:8fb3f3e8fe06b4f8015e96f8b4ac4d8c905dc988d63067fa305d6d78c27ec7d2` |
| 46 | `theorem` | [rank_inf_eq_one_of_flat_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-flat-of-inj.md) | 589 | `result-track:f4cd7ef44c3d83e5074e84e2397bda1f12fece0e74c5bb4fb29a9586242d497c` |
| 47 | `theorem` | [rank_inf_eq_one_of_flat_left_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-flat-left-of-inj.md) | 594 | `result-track:fe8b625127f2dafe7e7b156b435be2f62d582972a896673640933dc1a4d6c8ca` |
| 48 | `theorem` | [rank_inf_eq_one_of_flat_right_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-inf-eq-one-of-flat-right-of-inj.md) | 599 | `result-track:df43afa41d88e3b1065add3e444e6121a28533cbbcc6c74d36f2fea22bcc9ce8` |
| 49 | `theorem` | [rank_eq_one_of_flat_of_self_of_inj](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-eq-one-of-flat-of-self-of-inj.md) | 603 | `result-track:7f871ce1061dca9db988efde81424d755d46c2efc7d324dbe696cee2c6282bc7` |
| 50 | `theorem` | [rank_sup_of_free](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/rank-sup-of-free.md) | 610 | `result-track:ff011ed4ff1118317049d131b497df076d086bbd38ae2535e03b9360148147f3` |
| 51 | `theorem` | [finrank_sup_of_free](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/finrank-sup-of-free.md) | 618 | `result-track:cbd7a4fe4f8d2389aa1ced6ef92df981fbf883bc4e0d6a1badf05554d1d70337` |
| 52 | `theorem` | [of_finrank_sup_of_free](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-finrank-sup-of-free.md) | 625 | `result-track:97a79a3e4254dd5cb51acac287ee227f1cfa41ce41ed7ae26f205c54307c142d` |
| 53 | `theorem` | [adjoin_rank_eq_rank_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/adjoin-rank-eq-rank-left.md) | 644 | `result-track:90d021c8651cd7a7433b4fae85a8620a6c7d1cddbf1691a8256b43e24c17cb83` |
| 54 | `theorem` | [adjoin_rank_eq_rank_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/adjoin-rank-eq-rank-right.md) | 656 | `result-track:a6a1d783b2918c697dcc7216036c7c20489d13ae698842f198d3b690dc398041` |
| 55 | `theorem` | [of_finrank_coprime_of_free](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-finrank-coprime-of-free.md) | 663 | `result-track:296de692309c040fc6a2b53a3b732f92655986e111481869ac8633a99001d111` |
| 56 | `theorem` | [of_linearDisjoint_finite_left](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-lineardisjoint-finite-left.md) | 689 | `result-track:91f86cc097fdbc40d9ccd89b2895251de7b153902a20b414d10cf726a8dc2232` |
| 57 | `theorem` | [of_linearDisjoint_finite_right](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-lineardisjoint-finite-right.md) | 718 | `result-track:604a4a009e4505294354507ad86c2517d974a333c790a5ef5081e828618bdbad` |
| 58 | `theorem` | [of_linearDisjoint_finite](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/of-lineardisjoint-finite.md) | 727 | `result-track:672656449d81dada0be258b31019777e7f6f6b1fa2f00776b721dc89c64b7219` |
| 59 | `theorem` | [inf_eq_bot_of_commute](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/inf-eq-bot-of-commute.md) | 747 | `result-track:d34e42e99b94ffffd96c851703011f9ec57d738e0697a52ab61f63a806725d12` |
| 60 | `theorem` | [eq_bot_of_commute_of_self](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/eq-bot-of-commute-of-self.md) | 751 | `result-track:3fe7370c0dc462bb263f247f8eb7dfc629ffeddf04079aaf944fe943d40d1249` |
| 61 | `theorem` | [inf_eq_bot](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/inf-eq-bot.md) | 768 | `result-track:644dc8de69c13ea6fa319e894de9c6ece73556275549377a8db0c4579a352a92` |
| 62 | `theorem` | [eq_bot_of_self](../../../../CommutativeAlgebra/RingTheoryLinearDisjoint.lean/declarations/eq-bot-of-self.md) | 771 | `result-track:ef5937e41d690c4bd4cdb0b57e9da881a4672547661cd215e7a0fcab46dc77dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=096499f375e342d9120cb5654f2b4c2b1701d1143d4a02a55636cb31f0336edf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
