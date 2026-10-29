# Verification target: Big Operators Finsupp Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "161b39bd362de13a636019a990cd0c8ec96561e6",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2d0b98ffe11c351ff0bd5bf4308833d8325d5cc30299a6b661bf39360b9a6e7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `161b39bd362de13a636019a990cd0c8ec96561e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2d0b98ffe11c351ff0bd5bf4308833d8325d5cc30299a6b661bf39360b9a6e7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant2d0b98ffe11c351ff0bd5bf4308833d8325d5cc30299a6b661bf39360b9a6e7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Ext` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Indicator` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod.md) | 44 | `declaration-track:b52aac1ded660fc22860c021e931fd3ea54e4e057658e5aad8dd45262277875d` |
| 2 | `theorem` | [prod_of_support_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-of-support-subset.md) | 50 | `result-track:e6b3768c9a7b1842aacf505178258d20538a17883f579cd21900ae7ea5dcff96` |
| 3 | `theorem` | [prod_fintype](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-fintype.md) | 56 | `result-track:db381dc21f9e0eedc75d921c2e8feef0a831a5e14c421bfba1db65d50c97d301` |
| 4 | `theorem` | [prod_single_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-single-index.md) | 61 | `result-track:bf1757f16910699c09f0520d0e7ed9b605f1fdeb347a581e1ae6938999769268` |
| 5 | `theorem` | [prod_mapRange_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-maprange-index.md) | 70 | `result-track:4d7edb27c236fc37b14ad7d5aa8f74129ccef7a17c02e9599d7e043b68a9b2da` |
| 6 | `theorem` | [prod_zero_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-zero-index.md) | 75 | `result-track:ab04d8eec30caf07851f6aaebbad54ab7e29d67188dd2af69deebf9cf66f09cc` |
| 7 | `theorem` | [prod_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-comm.md) | 79 | `result-track:9456c164b7a33e4d3079974bbecff4bbd5b4f4250218e3a25653ef4b715c7108` |
| 8 | `theorem` | [prod_ite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-ite-eq.md) | 85 | `result-track:419e803dcf63ad00231d7bfd171efba35c510c5bb3e6a8459ae4bbd17df940e5` |
| 9 | `theorem` | [sum_ite_self_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-ite-self-eq-source-edition-2.md) | 90 | `result-track:c9323e8f64d46da388e08fb3253db6565c29265857d2c2004a2c0b53f9be4180` |
| 10 | `theorem` | [if_mem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/if-mem-support.md) | 100 | `result-track:defe7d9778034fd08e5724fca2200b10035771b6bd115ff21796a784dbeb1835` |
| 11 | `theorem` | [prod_ite_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-ite-eq-source-edition-2.md) | 107 | `result-track:465b66bad755dc3f2490cffeed160f9dd7dfedffc9995a943c7d7bc67aee33f6` |
| 12 | `theorem` | [sum_ite_self_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-ite-self-eq.md) | 113 | `result-track:649bb55b8ef32bed85ecd4fa02ad47be46e4adeff2015c587b0cb365575f3dc3` |
| 13 | `theorem` | [prod_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-pow.md) | 120 | `result-track:1bbcede2cd6e835decd2ad3c5de2052f62e84b42298715108245c932daeed155` |
| 14 | `theorem` | [prod_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-zpow.md) | 125 | `result-track:c0d919f290746b6ddeefa277a8c86adf2031b7e19ba3c24c5c42aa594e723d0e` |
| 15 | `theorem` | [onFinset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/onfinset-prod.md) | 134 | `result-track:f59a9b934cc0520e7b090524a5c522c6025d6e1f244feb2cfa3817035aa0b203` |
| 16 | `theorem` | [mul_prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/mul-prod-erase-source-edition-2.md) | 143 | `result-track:6fbb1fb5f239168802173ef8ffe64153db983ad408afba4abfa8acc282c6ed8d` |
| 17 | `theorem` | [mul_prod_erase'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/mul-prod-erase.md) | 158 | `result-track:5ba7eaf1ff53b4e47cf32b73e09a7c8add74537f0e5d4b3e1263e93ca53724e6` |
| 18 | `theorem` | [_root_.SubmonoidClass.finsuppProd_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/root-submonoidclass-finsuppprod-mem.md) | 166 | `result-track:20ce24309b0b61b9d8bd4562075d30b3c1f645629a2f3a472ba4797d7fd615aa` |
| 19 | `theorem` | [prod_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-congr.md) | 174 | `result-track:27ea1b430ade6c1752b51a7bc03f9a53acefda7a2efa641afb9e398209b92daa` |
| 20 | `theorem` | [prod_eq_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-eq-single.md) | 179 | `result-track:2a58cd69b9696aeb543120a3b717a4f54e644e57ed822dac828ca6a5681ef2c1` |
| 21 | `lemma` | [prod_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-eq-zero-iff.md) | 195 | `result-track:0aeb8a5f7dcb1cdb851666cffc4a9ffb7652e544036616349915522394face27` |
| 22 | `lemma` | [prod_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-ne-zero-iff.md) | 196 | `result-track:83f16b138a2e996daee20b40a0a82d6f9c4e40f4bdbd5ae7eda63fadb168536b` |
| 23 | `theorem` | [map_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/map-finsuppprod.md) | 202 | `result-track:c5b65f559a9736375723ad412dd811f6852d85523e74284e8f5fa3de0f5d8864` |
| 24 | `theorem` | [MonoidHom.coe_finsuppProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/monoidhom-coe-finsuppprod.md) | 211 | `result-track:cc448e2949e16d47785b0189fa1a412fff5a832a33c71a952d5c143ecd90321d` |
| 25 | `theorem` | [MonoidHom.finsuppProd_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/monoidhom-finsuppprod-apply.md) | 220 | `result-track:869587774186327598c66c62a95c021243ce35c243b7c439524549b095776d54` |
| 26 | `theorem` | [single_multiset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/single-multiset-sum.md) | 231 | `result-track:e6e8d887023e5b4b06c1ca3586bb6d36b43ea8fdf4b8998a56e7f9d86579a198` |
| 27 | `theorem` | [single_finset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/single-finset-sum.md) | 236 | `result-track:bffa7710c8085c05b2b61a403c815389ef29d8025d643ff194ca095981e52130` |
| 28 | `theorem` | [single_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/single-sum.md) | 243 | `result-track:f45c444fca27f91c3b1f09b32452283f02cb53898d77d5cf34e882d0cb13f323` |
| 29 | `theorem` | [prod_neg_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-neg-index.md) | 248 | `result-track:02f749cecd14a3083c44ad0482dcc9e2b8cbb073c15aefc3d25a9aaa8dabccb0` |
| 30 | `theorem` | [finset_sum_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finset-sum-apply-source-edition-2.md) | 256 | `result-track:970011ca9e482b3d15c8b865f91f177b6978cce9996cc274e071b6667553ee0b` |
| 31 | `theorem` | [sum_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-apply.md) | 261 | `result-track:42152546549ec19ccca33549a95871054bc0bf14ef6b1d32f20125d33cf4bf5e` |
| 32 | `theorem` | [coe_finset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/coe-finset-sum.md) | 265 | `result-track:ccc81fca3b04c793d21edfef31639865b25ceb254945524407cc4f6690b73132` |
| 33 | `theorem` | [coe_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/coe-sum.md) | 269 | `result-track:ca832f5198d6f446f23305d4a749e95183d7004a866f9f7ecb4a4ec3225d62e4` |
| 34 | `theorem` | [support_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/support-sum.md) | 273 | `result-track:4fe0104052ce7ed74808a7fc0865db8fa5cbd8af34e875eb13bdd74f401d1419` |
| 35 | `theorem` | [support_finset_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/support-finset-sum.md) | 280 | `result-track:c6ae750eafee31606713828f2b10107570219bf28f216d29f4a64c2334b40095` |
| 36 | `theorem` | [sum_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-zero.md) | 290 | `result-track:9bcd34787f7224bb8dd0a3ad66327699586e791338d2de81a506bbb8a2fdca5c` |
| 37 | `theorem` | [prod_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-mul.md) | 294 | `result-track:8dd321c5333f55129c455a4250d212ff1632200c986636ae4b93281d4e66e866` |
| 38 | `theorem` | [prod_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-inv.md) | 299 | `result-track:42a5bf824ad7e63340dbd2fdf249b3baf2445b746263028afea5e00ce58d5daf` |
| 39 | `theorem` | [sum_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-sub.md) | 304 | `result-track:2613f2b2a9df0dc49a777045ab86b40f88efc8c404525bf932ccfaca75f5597e` |
| 40 | `theorem` | [prod_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-add-index-source-edition-2.md) | 315 | `result-track:fdba520465275606ffd68a5b4c81c378ae65a14293ecd8a27d3d44bfd47b267f` |
| 41 | `theorem` | [prod_add_index'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-add-index.md) | 331 | `result-track:df3564f9343615fd05047a2625d6bec5316c12c24ea84cba3c4ccb4b31268a50` |
| 42 | `theorem` | [sum_hom_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-hom-add-index.md) | 337 | `result-track:b1060507b541ca746a2c49c9df660302e0650472419c23ed989388df6c55cabf` |
| 43 | `theorem` | [prod_hom_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-hom-add-index.md) | 342 | `result-track:8cb3cb6169b647dd879d09b3dfa1e2f1f993d2c107edbbe51d0a6325a3e2d816` |
| 44 | `def` | [liftAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom.md) | 351 | `declaration-track:dbb14a3ba7dc4f21ad0ca1b8b86d7d94ba21d4486959341de5850adfc5eee45a` |
| 45 | `theorem` | [liftAddHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-apply.md) | 368 | `result-track:01c9166801d7ed2bddd9f910f8c198c8296af803bfc1287885ad9c436760f3c1` |
| 46 | `theorem` | [liftAddHom_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-symm-apply.md) | 373 | `result-track:f8ce29d676be6019b3675ac86d091ef7caddb96196135e2d70c5ccefdfd4ebf7` |
| 47 | `theorem` | [liftAddHom_symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-symm-apply-apply.md) | 377 | `result-track:834bd97c8d08c5a3534234ba059c1a270044359d4800f5938e55354bdc0fcd07` |
| 48 | `theorem` | [liftAddHom_singleAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-singleaddhom.md) | 382 | `result-track:14b3a1962254f50af2f5f50efe7d869a3856d478741ba133083dc3a5c17a381e` |
| 49 | `theorem` | [sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-single.md) | 388 | `result-track:4cc6b7fc795e31088be87b7c6956731c832b4f037c24c62c9deab08886cbe305` |
| 50 | `theorem` | [univ_sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/univ-sum-single.md) | 393 | `result-track:0397efa52670df12289faee0be8d64f0bbf64a6772ca75b646b8a10bbc89442c` |
| 51 | `theorem` | [univ_sum_single_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/univ-sum-single-apply.md) | 400 | `result-track:a11b51325f04d3b8bdd874133819ff6693d83e9ab4d043490124d3f623e999dd` |
| 52 | `theorem` | [univ_sum_single_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/univ-sum-single-apply-source-edition-2.md) | 406 | `result-track:db5f241c87e21f3b8039be9cffd70cf453dc81e5b76d55b51cf57d7769033843` |
| 53 | `theorem` | [equivFunOnFinite_symm_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/equivfunonfinite-symm-eq-sum.md) | 413 | `result-track:b0967d64f6c1e8fd7fe2e41944759acc3083ff80d8fbe50d326f37e3f9976397` |
| 54 | `theorem` | [liftAddHom_apply_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-apply-single.md) | 419 | `result-track:4b5248f31f2d7eaed21ba2e21662d10786aa443515c26407657beeb43d125b2d` |
| 55 | `theorem` | [liftAddHom_comp_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/liftaddhom-comp-single.md) | 424 | `result-track:b89574ed42902601e11e4da3db985d5182a7f807e73761e351ed72437bcfd95f` |
| 56 | `theorem` | [comp_liftAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/comp-liftaddhom.md) | 428 | `result-track:f0497d50494c553614191417978ec93ff4316700385807b8273b63f12ecbf6e9` |
| 57 | `theorem` | [sum_sub_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/sum-sub-index.md) | 436 | `result-track:184dcde8247937216acf996eeefa65a85ccb553a1078b250cabe68dcf4f2003c` |
| 58 | `theorem` | [prod_embDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-embdomain.md) | 442 | `result-track:f60c64c8da0b56827e89aef4d5f65d74595ed208128bcabf54542c424df74b2b` |
| 59 | `theorem` | [prod_finset_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-finset-sum-index.md) | 448 | `result-track:31f4b004fc6d6abd267e2dee6566a56e1b338641a1a7c562d2e16298517fb526` |
| 60 | `theorem` | [prod_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-sum-index.md) | 455 | `result-track:b2d9328d1eb822d2b2d7cd33a750646a0e9535d7cff871a6c7f20b99f4bad4e1` |
| 61 | `theorem` | [multiset_sum_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/multiset-sum-sum-index.md) | 461 | `result-track:eef997b55a856d960d90ef3af25d0ed2221894c81321dbf1044f62d1b0a75e92` |
| 62 | `theorem` | [support_sum_eq_biUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/support-sum-eq-biunion.md) | 468 | `result-track:1f2ef5ec9fe81d0cb886b3bcb214e84203fe08f03dbe6bf7b2b3a7729c619d4a` |
| 63 | `theorem` | [multiset_map_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/multiset-map-sum.md) | 483 | `result-track:eada1c41d8be1265759e31a2753e5f49e544371438fba69fd11d18a95f5caf5c` |
| 64 | `theorem` | [multiset_sum_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/multiset-sum-sum.md) | 487 | `result-track:79d37c0fdf44b551155671de17c5ca7c1c2cf70e848f364a5802060336c6f4bf` |
| 65 | `theorem` | [prod_add_index_of_disjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-add-index-of-disjoint.md) | 496 | `result-track:fdde57c8ede12ddec41edea6b40939050d4c4e793ff0d32c44a0bfcdf451d8ec` |
| 66 | `theorem` | [prod_dvd_prod_of_subset_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-dvd-prod-of-subset-of-dvd.md) | 508 | `result-track:0dc7159da3ab4b899f5106f6b80b9bd635daa21a11b072e43ca8037b11840bb8` |
| 67 | `lemma` | [indicator_eq_sum_attach_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/indicator-eq-sum-attach-single.md) | 518 | `result-track:bc01920d4072bb534448c64f5c6346bc562bc78d2859f467f86979a4cb2932e4` |
| 68 | `lemma` | [indicator_eq_sum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/indicator-eq-sum-single.md) | 526 | `result-track:4584832084622284d47746136dbabc888813a4f332d640564256a2453541e83c` |
| 69 | `lemma` | [prod_indicator_index_eq_prod_attach](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-indicator-index-eq-prod-attach.md) | 531 | `result-track:3b49f9013592689f1db40bfb6ff6ab4a5ac61d5bdba6ce90d44e3b8f31421ea8` |
| 70 | `lemma` | [prod_attach_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-attach-index.md) | 539 | `result-track:6c27a1678297482b025165fcbf331b1e8934cf9c05bf99c55297d83d5fbd3e5d` |
| 71 | `lemma` | [prod_indicator_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-indicator-index.md) | 544 | `result-track:36b81e5f000d91f537a77e7a311e75d5fb6c29ee94a1a0d861170de26f884c49` |
| 72 | `lemma` | [prod_mul_eq_prod_mul_of_exists](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-mul-eq-prod-mul-of-exists.md) | 550 | `result-track:8f525a01badcdeba18e5dd434bebbd7cc673dd6cdef5b4a50e682befe1a3c049` |
| 73 | `theorem` | [Finset.sum_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finset-sum-apply.md) | 560 | `result-track:31532d70c91e17f2611d1d59ed746cbddd89c4e53db127347f4674076dfabb4a` |
| 74 | `theorem` | [Finsupp.sum_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finsupp-sum-apply.md) | 563 | `result-track:83972e2ae8df7f0a5401adff9f361019dd47afc993203f11f077c4b76bf1cfb7` |
| 75 | `theorem` | [Finsupp.sum_apply''](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finsupp-sum-apply-source-edition-2.md) | 571 | `result-track:ad853a542df62ef2eb5a957afdf7d9825d3c1dbfb2d43c009a1f2367489ce53e` |
| 76 | `theorem` | [Finsupp.sum_sum_index'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finsupp-sum-sum-index.md) | 586 | `result-track:f52c47f3c93f4c3f6bc08a83040d0c715d7e713bd848666a42657830d357f627` |
| 77 | `theorem` | [Finsupp.sum_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finsupp-sum-mul.md) | 596 | `result-track:4ac935099b2701564abe82af4d79ca091d0b84b00f172f3e180a7bf52f035552` |
| 78 | `theorem` | [Finsupp.mul_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/finsupp-mul-sum.md) | 599 | `result-track:fd1b548f15533d7a985b9493ca94ca9a59d6a230ab2b45e2ddacbcbaf6939b3a` |
| 79 | `lemma` | [Multiset.card_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/multiset-card-finsuppsum.md) | 604 | `result-track:aea8339b5daf2d1aa120cbacd20f71eb9bd4fa76ad74ab9fa4a59a3b80af50b8` |
| 80 | `theorem` | [prod_pow_pos_of_zero_notMem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsFinsuppBasic.lean/declarations/prod-pow-pos-of-zero-notmem-support.md) | 610 | `result-track:fe0bc8dc85c86390e433a46645e8bb69e91184dda988c303ad0c65a5fe4b257d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01ab0a1d09ab270e56b1c915c1b7a53c1d0381b6091328aadf7e475485a55324 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2d0b98ffe11c351ff0bd5bf4308833d8325d5cc30299a6b661bf39360b9a6e7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant2d0b98ffe11c351ff0bd5bf4308833d8325d5cc30299a6b661bf39360b9a6e7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
