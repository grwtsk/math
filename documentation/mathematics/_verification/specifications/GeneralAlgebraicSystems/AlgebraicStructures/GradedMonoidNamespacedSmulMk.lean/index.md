# Verification target: Graded Monoid Namespaced Smul Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "334aaf1c85d8c6f3aafd4c60445797d8a3747e94",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `334aaf1c85d8c6f3aafd4c60445797d8a3747e94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradedmonoid.md) | 104 | `declaration-track:1339a6e49678e209efe47d7760c34fb6954c666ea8808f36c9345ae4340e84ec` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance-source-edition-5.md) | 109 | `declaration-track:8403a3ef1187226b1e5deb8f01b1bc2d61187359e94a8d56cd1c0ae3fc3231e1` |
| 3 | `def` | [mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mk.md) | 113 | `declaration-track:2579836457a9ce35bdb950ed494d3ad57b2496247a36143c7e5481f504592a6a` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance-source-edition-6.md) | 122 | `declaration-track:fd5d15618d6475808ffae804bcf71fa580d8489471e0bec3a87dec33cbbd17a3` |
| 5 | `theorem` | [fst_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/fst-smul.md) | 125 | `result-track:fae4f5273a71a4e0c498a21ba113db7797724cb23d3790ccbafe7397fafcd20c` |
| 6 | `theorem` | [snd_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/snd-smul.md) | 128 | `result-track:caeabc2137b047c48fb0efecf481833c554a5757723519bfdbc7dc002f4b698b` |
| 7 | `theorem` | [smul_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/smul-mk.md) | 131 | `result-track:c2e80d352d5de6967b47d5614e4c96f6dc0017cecafa8bf395d227e86c197ade` |
| 8 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:5af3fa48a3f9fccfeb74f4d1045c53134f6fa94ca930ff479670e992392d4b5c` |
| 9 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:35c75432774db91f9af9f05db707d42286762be133e343244c258ca14d660f08` |
| 10 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance-source-edition-3.md) | 145 | `declaration-track:49ea0ea852ebe28300253f24383bd75e1fd1e0083966e6e8c4142880adb0de6f` |
| 11 | `class` | [GOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gone.md) | 159 | `declaration-track:0e7365a0e68743cb7cc3b1944a0d2014ea892ad80eda4400837165da51aa1207` |
| 12 | `instance` | [GOne.toOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gone-toone.md) | 164 | `declaration-track:169207a46f6adcd9b2d9f017a9ade063fc3f57186f922d7d99794b3c9f4768c4` |
| 13 | `theorem` | [fst_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/fst-one.md) | 167 | `result-track:eabed1c5be92007dc44cfec273637f92d00558e46de34e130bbb580df84761b6` |
| 14 | `theorem` | [snd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/snd-one.md) | 169 | `result-track:d968b9716e884ed8ed9b5b0c558c10d94967e7a3b99346a18198e8f7b3c22db6` |
| 15 | `class` | [GMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gmul.md) | 173 | `declaration-track:b07fb9bdb80ef5c1972c4bfbb663dbb501f674c8e8e2184e8e5af87ac9b4f8b7` |
| 16 | `instance` | [GMul.toMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gmul-tomul.md) | 178 | `declaration-track:0242e84a6fdefd8801728fdffda6190a849bdb97b1671064f2f9443e858779e0` |
| 17 | `theorem` | [fst_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/fst-mul.md) | 181 | `result-track:7a58448fc2b60cbaad3176696ef8cdad9d111d1e830910673673aa4f8415e613` |
| 18 | `theorem` | [snd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/snd-mul.md) | 184 | `result-track:71461ce5e426064fbc3b7eb0e1ce1259dad50c677a6dc6533c637e44ae3e819c` |
| 19 | `theorem` | [mk_mul_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mk-mul-mk.md) | 187 | `result-track:353e4bc1f8fec084a0d8703ebd2cba6bca346f06d29cb115ae06986147cf59d0` |
| 20 | `def` | [gnpowRec](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gnpowrec.md) | 198 | `declaration-track:dab03b7f4e10247f829466c01609faef6b890412be9eb8645fb7ca230573e195` |
| 21 | `theorem` | [gnpowRec_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gnpowrec-zero.md) | 203 | `result-track:d4a1cf9c4c772c6b2789771096fe32e68e14801ef206141247896387ae2f4d72` |
| 22 | `theorem` | [gnpowRec_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gnpowrec-succ.md) | 207 | `result-track:dd32f7b861fdd81d7a694cb4d9ca3b6aec974088c26975b4bc30005331bca7e5` |
| 23 | `macro` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/macro-source-edition-2.md) | 214 | `declaration-track:8f014099f71f4fa365f4f70b3c9c75f3285fb43bef90897fe6c115bcfd8b9a5b` |
| 24 | `macro` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/macro.md) | 216 | `declaration-track:0ceab45598113dd5e4ab36453080ee958623e8857329ab1e0be46712bcbb582d` |
| 25 | `class` | [GMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gmonoid.md) | 222 | `declaration-track:65f227ca7376302d96404dcfad2d0bc93f7d7c5774ecb397571df741253954f3` |
| 26 | `instance` | [GMonoid.toMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gmonoid-tomonoid.md) | 241 | `declaration-track:d7d378f0b7e0d533d9138e72bb48d784621d8bf5572ad01c54dc9a6ace167916` |
| 27 | `theorem` | [fst_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/fst-pow.md) | 251 | `result-track:0f86db1416fbdd2d69154ed32dde10b2590735ec16b6c682c22ea9a9d8e9c224` |
| 28 | `theorem` | [snd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/snd-pow.md) | 254 | `result-track:55edd51820756216ee54d22a05f1a1ed2635a9d37d35acc0730f9f1dac9b84c9` |
| 29 | `theorem` | [mk_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mk-pow.md) | 257 | `result-track:b9ffafcb1572e0b73463714525e3d8860a4da41bac431950c77fc4ebf8b7dc71` |
| 30 | `class` | [GCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gcommmonoid.md) | 261 | `declaration-track:44f3b5c6bf2859afb60f684ffc1d1b8e0ea6218c7ad37d64f94224a439c3bd55` |
| 31 | `instance` | [GCommMonoid.toCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gcommmonoid-tocommmonoid.md) | 267 | `declaration-track:589d2c28e0e757ef1a33d836ded2333c35984de8a1125648dcc59d796f208bd0` |
| 32 | `instance` | [GradeZero.one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-one.md) | 289 | `declaration-track:81851a181c195d177cd214f12746655a77ba0318afbd1f9b3c078fee6c360af9` |
| 33 | `instance` | [GradeZero.smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-smul.md) | 301 | `declaration-track:fe2f525f939006e5be43cf484a7ed7e6e96796789fe0c9c0226db01d2a5e8441` |
| 34 | `instance` | [GradeZero.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-mul.md) | 307 | `declaration-track:e1b52f3db0ee22025f6afd2c584dc8e1416b8549b71b7c0ffb8bfff602c1488b` |
| 35 | `theorem` | [mk_zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mk-zero-smul.md) | 312 | `result-track:19492910f094a1c92edd8fbb372a54eccb9d1f4b06e7ec2a78fa1a1f40162f2b` |
| 36 | `theorem` | [GradeZero.smul_eq_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-smul-eq-mul.md) | 316 | `result-track:bcc2ab6a594e31a74c7f3a3f62d1c4b35b0bb397225e07da375e96b1d8899508` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instance.md) | 325 | `declaration-track:2b54aeee074fcce81c71a9f7062f93bdd0e9cc1c9c8ab9da059889e2beb8632a` |
| 38 | `theorem` | [mk_zero_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mk-zero-pow.md) | 330 | `result-track:999cc5899d3d0d8f74e299d2ef35c7ac53983609694b03a0ea93954e2839fb04` |
| 39 | `instance` | [GradeZero.monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-monoid.md) | 334 | `declaration-track:5e6c2b367e945cd55d1ddbc034c4ee146d76082099fa0547ac77bd13b7feec0c` |
| 40 | `instance` | [GradeZero.commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-commmonoid.md) | 344 | `declaration-track:cf92bc24544e7d2ce7e44e311b4e91f70cf1caaeb88668bcaa034822660656f7` |
| 41 | `def` | [mkZeroMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mkzeromonoidhom.md) | 355 | `declaration-track:87e14cacfa6e97fbd9427a4ae4c79f27c184eb46680d5e211fed8ef486de3c15` |
| 42 | `instance` | [GradeZero.mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradezero-mulaction.md) | 361 | `declaration-track:0aacee457b4f8100b5e7121edd6035c9681580f843705d5969c1d93875678fbc` |
| 43 | `def` | [List.dProdIndex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprodindex.md) | 380 | `declaration-track:e4e129d4ed2fe5db2b2719ad352b13b053650b61e4a3773b49d7b15f1577b2c2` |
| 44 | `theorem` | [List.dProdIndex_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprodindex-nil.md) | 384 | `result-track:cdbde02d779229e4708da934164aa431b2a4746b14631bff0ab3bcf5c22df5c5` |
| 45 | `theorem` | [List.dProdIndex_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprodindex-cons.md) | 388 | `result-track:7bf5ab736286eeac6b9f558248576e2c7fa31f1d20a08009b89c0095338020eb` |
| 46 | `theorem` | [List.dProdIndex_eq_map_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprodindex-eq-map-sum.md) | 392 | `result-track:e3cb73d462ce4491cb08ce35bf90fbcf624f7ee0b302adea0106890289aff100` |
| 47 | `def` | [List.dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprod.md) | 403 | `declaration-track:d9c91aef76394758544b45733103b9211cfc5aabd5ae79b0fa1c56e165f1c9a6` |
| 48 | `theorem` | [List.dProd_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprod-nil.md) | 407 | `result-track:5afc91300463776a537574e81be23adf533dd19eff079fd6d7ccd8b4e4d6b45b` |
| 49 | `theorem` | [List.dProd_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprod-cons.md) | 414 | `result-track:cd79b659f7a92b2ccf8ef23e3151a8f8bd4ea6a0eb47892dd6674b30ab6f7f91` |
| 50 | `theorem` | [GradedMonoid.mk_list_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradedmonoid-mk-list-dprod.md) | 418 | `result-track:5114ade8228b60e36c8947f1dc88a8de042d38eafa28493c119ee795e111eaf3` |
| 51 | `theorem` | [GradedMonoid.list_prod_map_eq_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradedmonoid-list-prod-map-eq-dprod.md) | 426 | `result-track:35656525b98c8ad6a05c92bc8f82ce5ab5e4788591c4dbd0889fe48627991592` |
| 52 | `theorem` | [GradedMonoid.list_prod_ofFn_eq_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/gradedmonoid-list-prod-offn-eq-dprod.md) | 431 | `result-track:292d9f3f42b5fe6d30f24482aaa08e2a9af57a639fa2fbb70317e05804925214` |
| 53 | `instance` | [One.gOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/one-gone.md) | 446 | `declaration-track:ddaed1afe1cc7002c60c6d6ed1a2d4933c1e4bcad665c1eb7482bb8d898359da` |
| 54 | `instance` | [Mul.gMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/mul-gmul.md) | 449 | `declaration-track:38e1f72d7ace39169e0975256667fbbbd646c688061b30b40a6c976dd540bf15` |
| 55 | `instance` | [Monoid.gMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/monoid-gmonoid.md) | 454 | `declaration-track:d575e45ff9f58ea281ca92254e33d651e47884d758088ef4e93821b994048983` |
| 56 | `instance` | [CommMonoid.gCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/commmonoid-gcommmonoid.md) | 467 | `declaration-track:8168564fdc769b7b7a95cc64e2418f692b2644908c995719af91d3bb88fbe32f` |
| 57 | `theorem` | [List.dProd_monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-dprod-monoid.md) | 474 | `result-track:9a101792c72fb5bc37ddcd818c444ce0a6e88e9d91f3643900f889125d7e82c1` |
| 58 | `class` | [SetLike.GradedOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gradedone.md) | 494 | `declaration-track:01e4c0f0f3bc01b1d225b5deb4d8755bb4dd01671eb40ba0e1024935a7ae2df7` |
| 59 | `theorem` | [SetLike.one_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-one-mem-graded.md) | 498 | `result-track:5192b31d7b5cf57f66a8471c76e7a6cf103397cc3a497d735534c352e5ed9668` |
| 60 | `instance` | [SetLike.gOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gone.md) | 502 | `declaration-track:cbf9214b5b6af52372345088f06acdf913d31ea3a74b38f59bd7564d4605d97d` |
| 61 | `theorem` | [SetLike.coe_gOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-coe-gone.md) | 507 | `result-track:e9d11c68e5ab5e2e6cc47241720c088b449b17dbc8d0403ec74f290e04f4e942` |
| 62 | `class` | [SetLike.GradedMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gradedmul.md) | 512 | `declaration-track:1082819085a1499a3a5432d583f09ee5b8e7aa20e88be223ffde40aa8acf0916` |
| 63 | `theorem` | [SetLike.mul_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-mul-mem-graded.md) | 516 | `result-track:bcf32cce6ae7c65e4856f01b066bc61f6d24df7b36c3062f220b0201d57b2e4f` |
| 64 | `instance` | [SetLike.gMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gmul.md) | 520 | `declaration-track:ca89e7e1d7068c20f9bcb8fc3b720d1f8d74e6b5f36e2541fcd849a06c4efd37` |
| 65 | `theorem` | [SetLike.coe_gMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-coe-gmul.md) | 525 | `result-track:e1d59ba1fbb08a0d3c36f40951dc08004e8872608a95264b4714da8023a39010` |
| 66 | `class` | [SetLike.GradedMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gradedmonoid.md) | 531 | `declaration-track:3181da79e8819a9680bb68575eae86140ddf963af98b03b46f23546b7fa28f4d` |
| 67 | `def` | [submonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/submonoid.md) | 544 | `declaration-track:ba832b5b554e6449877d495da18910efb23b3db76c26bac1d69873f91d848462` |
| 68 | `instance` | [instMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instmonoid.md) | 551 | `declaration-track:87b22a3eba2850e290195ce92024d688f7e08a71c2808ce494acfe1b0cecd344` |
| 69 | `instance` | [instCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/instcommmonoid.md) | 555 | `declaration-track:78da5f2136936c229cb5ebddc09a978927055fe30942e3537212649fc9103e05` |
| 70 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/coe-one.md) | 561 | `result-track:37442bac4c3c55f4902af2e8f31966a61cc92b7cf79e44b977bdbd7f6ad149d6` |
| 71 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/coe-mul.md) | 563 | `result-track:fc1d696116a4d0897a317703ab99126c7531b118d06689d66b91ab71a49f373f` |
| 72 | `theorem` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/coe-pow.md) | 565 | `result-track:b67cb1dd326da6cb0c13e25ef7035e05f49ffd3f516b3603745785f73bb1cc4a` |
| 73 | `theorem` | [pow_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/pow-mem-graded.md) | 569 | `result-track:5b9c233f8db9a5a8036798c8e0993b457001e91a596f7770ee648c89f0e07442` |
| 74 | `theorem` | [list_prod_map_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-prod-map-mem-graded.md) | 578 | `result-track:32db8a479a0993d2dccb367fc66c2a63cf4fd846c7443953935d63e050ab18f6` |
| 75 | `theorem` | [list_prod_ofFn_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/list-prod-offn-mem-graded.md) | 590 | `result-track:8d955abbecce883c13d64a4ab465968ed453643ac895bb9625a59db13718c518` |
| 76 | `instance` | [SetLike.gMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gmonoid.md) | 598 | `declaration-track:be9dae08c78648649393b0b1246318223a869c0d7ba13a879f1ab94aea58d912` |
| 77 | `theorem` | [SetLike.coe_gnpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-coe-gnpow.md) | 611 | `result-track:b39f1ba4a516eb04405912c90ad3f5f247ef58dbd7f3a33eae456e74f62b2af2` |
| 78 | `instance` | [SetLike.gCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-gcommmonoid.md) | 617 | `declaration-track:e1dc89d8e18a2db9f26451b2a3e5e822561033b3cafd8f71c150662b330bde7e` |
| 79 | `theorem` | [SetLike.coe_list_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-coe-list-dprod.md) | 629 | `result-track:c9f1b863afeb7ad53797ded72e4b77a371f65a2edbcbe9d1efc06a387a6140e0` |
| 80 | `theorem` | [SetLike.list_dProd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-list-dprod-eq.md) | 640 | `result-track:c5205d24aadaabc8167c9c8ca42ece00d9d4e66dbd142e48d8a63339d6a3999d` |
| 81 | `def` | [SetLike.IsHomogeneousElem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-ishomogeneouselem.md) | 657 | `declaration-track:426d422076b261f75145d299c7fc17867b1ee75a0798815cf9cddd9dfa3c37d7` |
| 82 | `theorem` | [SetLike.isHomogeneousElem_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-ishomogeneouselem-coe.md) | 661 | `result-track:4d760319344a40d8325dfe3c072431b80cc79e9fbf365778d29651ddc7bb2873` |
| 83 | `theorem` | [SetLike.isHomogeneousElem_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-ishomogeneouselem-one.md) | 668 | `result-track:b834802a43b6206f258cceec04d65471eb4b72b646b0c3b89a6fe874262cb9df` |
| 84 | `theorem` | [SetLike.IsHomogeneousElem.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-ishomogeneouselem-mul.md) | 674 | `result-track:4c1e14ee3e171e04f60b6357f4b127af323acbbf6d4ba23ca9635101277211c8` |
| 85 | `def` | [SetLike.homogeneousSubmonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/setlike-homogeneoussubmonoid.md) | 682 | `declaration-track:9d5d7828cf55ad4a314abe0ee556920950a252087dd82590624b57637ca33f7e` |
| 86 | `theorem` | [prod_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/prod-mem-graded.md) | 699 | `result-track:f26b9381a7bd4c76526076e2edf94fa5f9457ddcb0d181dc087db953812ce671` |
| 87 | `theorem` | [prod_pow_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/declarations/prod-pow-mem-graded.md) | 711 | `result-track:ebd831a3026c1ab896d437cafdc9ac5c1d5d06f62ddb7dcbbd5e4f768bd9983a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dbfbf469161980296d00eb98de8e5a13495051f219fab302ae714ed1521fbeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
