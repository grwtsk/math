# Verification target: Balancing Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f665717ed3a8e214cf833d75b0a36c85283e6226",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f665717ed3a8e214cf833d75b0a36c85283e6226`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BalanceLPrecond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancelprecond.md) | 51 | `declaration-track:35fecb54c59ca82e04115b1a323d7f00944f0ea8f8b03b29dc628eabbd17c7e1` |
| 2 | `abbrev` | [BalanceLErasePrecond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanceleraseprecond.md) | 56 | `declaration-track:36889e55b848ab9eb4079e48d4666908dc48d55d99381948af47a3f1ecfda962` |
| 3 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/macro-source-edition-2.md) | 65 | `declaration-track:99d3a8f3f187e15a6f4f652b9035d7f085a11d9601b7f4076c7a1b060e5eab3e` |
| 4 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/macro.md) | 83 | `declaration-track:248b18184e6d38541e38be5e896c343ca26f2767aba562407eef49aa595bf8a4` |
| 5 | `theorem` | [BalanceLPrecond.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancelprecond-erase.md) | 87 | `result-track:91dc89c90b90fe2b4b1bf4a50e8b80b550e51538b4752e9f228be8d7b879d2a6` |
| 6 | `def` | [balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancel-source-edition-2.md) | 100 | `declaration-track:a5405befa7ad0a2166ec27c5b3a974580d15f0b269967f8ef08261127d0af644` |
| 7 | `def` | [balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancelerase.md) | 130 | `declaration-track:cbf2236cb938af47190fc129601c33937c8ec94697c0c67d6b02cca07f66bee5` |
| 8 | `def` | [balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancel.md) | 161 | `declaration-track:6a8ee044ccf5f419db6a18281159acbccdf43692111edf11261b7edd9e9d31fe` |
| 9 | `def` | [balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancer-source-edition-2.md) | 195 | `declaration-track:57661295a316e65baa366ae3f906139f78efa85c4b5f408394ca449d703d5c11` |
| 10 | `def` | [balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancererase.md) | 225 | `declaration-track:1c1d96fe9841777812d69ef4a1c220aca47179392b089f22d88694a0f355f932` |
| 11 | `def` | [balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancer.md) | 256 | `declaration-track:467a3d02fb7ab480532672e39f137c5f4c244a929f15d48c52a623088533fab6` |
| 12 | `def` | [balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-source-edition-2.md) | 285 | `declaration-track:7932128089e26bc535c77ef86c2640a830d175d8e4fbfab0203f745c5e38ff5e` |
| 13 | `def` | [balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-source-edition-3.md) | 353 | `declaration-track:aafb34bcc9d1bf91ed7bf7892d32fa58eb38ccfef9db3d855cc9bd19a26e6978` |
| 14 | `theorem` | [BalancedAtRoot.erase_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancedatroot-erase-left.md) | 402 | `result-track:0089c842f44b330309c19dffc78bae43e9af892f4ee6e6862606f1cf1eaa3542` |
| 15 | `theorem` | [BalancedAtRoot.erase_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancedatroot-erase-right.md) | 405 | `result-track:784f6daf462ace83a6c4d907f6613ceb27147428ef9a9681dcfa5c6ea5b30f3b` |
| 16 | `theorem` | [BalancedAtRoot.adjust_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancedatroot-adjust-left.md) | 409 | `result-track:402b0166555d2aff4688b3dbcc6c1b690fd906bf9731963f8c55ade37774c18b` |
| 17 | `theorem` | [BalancedAtRoot.adjust_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancedatroot-adjust-right.md) | 412 | `result-track:4e5150b4d8f77495f12c588c8e7d26a7d66b33c5838fd35de0d9bf0ecc39e9ba` |
| 18 | `theorem` | [balanceLErasePrecond_zero_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanceleraseprecond-zero-iff.md) | 416 | `result-track:e82466c6133f27f45e50c205bdcabeec591c0bb20ef86da3bf8536c63db17082` |
| 19 | `theorem` | [balanceLErasePrecond_zero_iff'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanceleraseprecond-zero-iff-source-edition-2.md) | 419 | `result-track:ff6273fcd6a631c075c8206f04db5e1988b07d8d72df1593fe53258b09c0cfa7` |
| 20 | `def` | [bin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/bin.md) | 433 | `declaration-track:3961ea62d2677d9b2b27f8dcc4177860a8193489a788838849fdd8ae60095025` |
| 21 | `theorem` | [size_bin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-bin.md) | 436 | `result-track:9fc8e10bc6c48e4d2f184949514ca1ded79c2540f92f8bbad315503e1179dcbb` |
| 22 | `def` | [singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/singlel.md) | 441 | `declaration-track:807a35a8777595d6c36790e17660ae13e5a84c9cfda8112fa3f9bc88b125be29` |
| 23 | `theorem` | [size_singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-singlel.md) | 444 | `result-track:c3873816e304b8b40a41314cca08010a4b31fac791161b67cd4c3dc3775906bf` |
| 24 | `def` | [singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/singler.md) | 451 | `declaration-track:3e6e414ecf32a0e5d9e800378dc6db7e1a22e95f61af8bcaca6e4b1a22ca96bb` |
| 25 | `theorem` | [size_singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-singler.md) | 454 | `result-track:5ab85949c56d5cb9c392ce0ab77cc2940618857a8dc04b6ca6f9196f58c3700f` |
| 26 | `def` | [doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/doublel.md) | 461 | `declaration-track:855f837fb4d7479fad6f768351cdde68a34dda7f8a3f817f2ea743311fde2114` |
| 27 | `theorem` | [size_doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-doublel.md) | 465 | `result-track:cc8e9e3d2779a72fb9f0bc39f2bac8213985b682cf52ab8e56b828aabd3bf1d4` |
| 28 | `def` | [doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/doubler.md) | 473 | `declaration-track:b37342ba9e5f620e13a9a5887b2c395ac35e625be1c6157323fdd8bb72e12a64` |
| 29 | `theorem` | [size_doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-doubler.md) | 477 | `result-track:552aa68d3b64db8179fab621748da4ad57dd34a878e8012afe2f967a5932a4e4` |
| 30 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/rotatel.md) | 484 | `declaration-track:a91cb7c2c0b6bb5adf5e73be4f1ec8d22fdb85cd51f34c9ca3f93879d8e9972b` |
| 31 | `theorem` | [size_rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-rotatel.md) | 493 | `result-track:af1f4885cd98e4722deb40c65288a253aefe610b96a277802f4af313e373048c` |
| 32 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/rotater.md) | 503 | `declaration-track:9bca56a83627ff38609d596b947f8458470e6aa03b26a71fbb2735c96ba8e760` |
| 33 | `theorem` | [size_rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-rotater.md) | 511 | `result-track:ba7b42d2aca14c03026c311ca2ada20f2afe54c35ae6e76c6b637a8787d6ac13` |
| 34 | `def` | [balanceₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance.md) | 521 | `declaration-track:6e448b297c24c823ea8a19f3625c5218b5a4b0311d934bc482382253afbd34bf` |
| 35 | `theorem` | [balance!_eq_balanceₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-eq-balance-source-edition-2.md) | 537 | `result-track:d2faeea4478da9daea04030b9a1514fbdc94ddfc68dbae8d73c6dd649ef9ab66` |
| 36 | `theorem` | [Balanced.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-map.md) | 624 | `result-track:d1b294fe17f0b815d46b19ea6c10a856c77568f72b2f9ae9d95c6ae686d2472e` |
| 37 | `theorem` | [balanced_singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-singlel.md) | 627 | `result-track:5182dbc4ee860ae5acce2a8c278144c99da9aef1268f4e1e6cc79771f6133d64` |
| 38 | `theorem` | [balanced_singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-singler.md) | 635 | `result-track:1f962f98981a6cb3ac1e3976a50479370576b298a359f2e3e056198d03e86627` |
| 39 | `theorem` | [balanced_doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-doublel.md) | 642 | `result-track:c41421dd5c8d37dc040df17549730b763acb113b426976b6c63131574e2cb06d` |
| 40 | `theorem` | [balanced_doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-doubler.md) | 649 | `result-track:8ef26d75791dda1807de1a7c77888c68ddfa84b8f121ce9e0d7a08cc6625a94a` |
| 41 | `theorem` | [balanced_rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-rotatel.md) | 656 | `result-track:532f30d8c037ff06c88e9708b91860e9fbc8c4e9ac5dff4df90604c1e27d073b` |
| 42 | `theorem` | [balanced_rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-rotater.md) | 666 | `result-track:aafea0c57aadc5180d82b4785d3e875909231ded7c6a06f75de9cf889c4d9f87` |
| 43 | `theorem` | [balanceL_eq_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancel-eq-balancelerase.md) | 675 | `result-track:e21be9dc115ce454900fe4cbdf7348e006bb1a505d45fb6be1189c5e8b78ca73` |
| 44 | `theorem` | [balanceLErase_eq_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancelerase-eq-balancel.md) | 681 | `result-track:8d54eef43cf49d587b521592fc1bb34436b678d72c21c82bb26197ebd4227375` |
| 45 | `theorem` | [balanceL!_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancel-eq-balance.md) | 689 | `result-track:8eb59c0f5b711beb1d70567b7ada079b01ddff7b3f3d917bf79013b9289b24c7` |
| 46 | `theorem` | [balanceR_eq_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancer-eq-balancererase.md) | 699 | `result-track:c3858c7f575f6534f8546bfaebf8921d3720c13309f5774499aaf5fb29e4f43d` |
| 47 | `theorem` | [balanceRErase_eq_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancererase-eq-balancer.md) | 704 | `result-track:4f828d1d04230fcb0032dd48900e25f1c20055ef91b383b018f7372e35761840` |
| 48 | `theorem` | [balanceR!_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balancer-eq-balance.md) | 712 | `result-track:f0b238d11c7c439561ebcf6b0a84e303c27c7bd9ed30a6cee5264064613ccfb3` |
| 49 | `theorem` | [balance_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-eq-balance.md) | 720 | `result-track:439710b3ff772dc8325992a3a2dd837e01b222900a8e9901d1ef11269280ac10` |
| 50 | `theorem` | [balance_eq_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-eq-inner.md) | 727 | `result-track:6d14de5ef5935c1e824395fb90a4c88a40c43de64e7c4c31c8a07c48ac493f84` |
| 51 | `theorem` | [balance!_desc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-desc.md) | 737 | `result-track:fc53449f2bd147f7a12398c603a8f1b8306f9dc18c6a0591f633296e1e462f7f` |
| 52 | `theorem` | [size_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balance-source-edition-2.md) | 758 | `result-track:ef5e588ab0976268e46c10060293133bc809ca0ab3e7c0c9f9acedd2e5727851` |
| 53 | `theorem` | [balanced_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balance.md) | 764 | `result-track:9f0d004d1c71c2659faabbd169b4c6090e0c619275e0a8587a3843304ca7a149` |
| 54 | `theorem` | [size_balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balance.md) | 770 | `result-track:a198805cc07ad524ed6216bf85a25947bdf9c8e855a327cb361ec586d16494cd` |
| 55 | `theorem` | [balance_balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balance-balance.md) | 776 | `result-track:5501a63788751defccf125034c624c650165790f3bcdf55fa947c77d26cedba2` |
| 56 | `theorem` | [size_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancel.md) | 783 | `result-track:dedeac9ed9b33b990db560eacd24bb68f4819875e69a96e1b51ac3cc861e3e47` |
| 57 | `theorem` | [balanced_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancel-source-edition-2.md) | 789 | `result-track:f1a2bdb428922949ebba1b96b4dc0135f99684b8d397c2419960b65bbc35da20` |
| 58 | `theorem` | [size_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancelerase.md) | 796 | `result-track:b2639bbe00695c98309db3bd0a2670a58fcd0c183e837ddb3761955c9913b2e5` |
| 59 | `theorem` | [balanced_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancelerase.md) | 802 | `result-track:1e2a9d8f64cd875d386122c1d6c2463e8791a2031ef53d82d0005d3c2720e168` |
| 60 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancel-source-edition-2.md) | 809 | `result-track:fb8043bedc176158731afe8e21df0ddb8f9543edadfa54f4aaaaa5a1ce050d0b` |
| 61 | `theorem` | [balanced_balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancel.md) | 815 | `result-track:4291d50ea14760b92e79b771402aa9e4efd47feafc82c716642b5ea0b0068c4f` |
| 62 | `theorem` | [size_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancer.md) | 822 | `result-track:210b304d691eff67bf45b220a51e677d62da7f04df732322d46511b159ac019a` |
| 63 | `theorem` | [balanced_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancer-source-edition-2.md) | 828 | `result-track:43d7d26558daf58a8d55a4f51659cc55e63f84355b740b67208371d96dd5906d` |
| 64 | `theorem` | [size_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancererase.md) | 835 | `result-track:2543aeb2176d657a98162f026d89233d5cf5bfcaed6c706cfda5b5314ba37049` |
| 65 | `theorem` | [balanced_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancererase.md) | 841 | `result-track:bc41fb27351a6c553f38ec6764da688a6c11672b77225445c4cc61b459cd746b` |
| 66 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/size-balancer-source-edition-2.md) | 848 | `result-track:f4457b45a221cb7b9b7f836c96228c97b9fcd746c21b23c06b665f6a4d6fa956` |
| 67 | `theorem` | [balanced_balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingPublic.lean/declarations/balanced-balancer.md) | 854 | `result-track:0476ed4ab64f7f84fdb62c80d5b9011d5a39fe544c9a6586bea5255c41b10d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2657033ca8e0394154abe53e0a99ab1b2549c03fb7cdce26e0ee4cc189beae8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
