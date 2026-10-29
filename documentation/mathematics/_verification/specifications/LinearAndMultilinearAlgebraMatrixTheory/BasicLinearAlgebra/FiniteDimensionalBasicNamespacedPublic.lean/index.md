# Verification target: Finite Dimensional Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a41bcbbfa6fb2f156528c94a236f4d70643bc97",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a41bcbbfa6fb2f156528c94a236f4d70643bc97`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Lattice` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_le_iff_rank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-le-iff-rank-le.md) | 63 | `result-track:ebc841aef53332cb5a8c73b8e6ca30c0c90dfb9c49b472ac3d40302f5e6e0027` |
| 2 | `theorem` | [finrank_lt_iff_rank_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-lt-iff-rank-lt.md) | 67 | `result-track:da2f6aabc0a75a65b563407ccd82b6d1efd686f7998172718f45fe8fa2e5a4b6` |
| 3 | `theorem` | [Finite Dimensional Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/lt-aleph0-of-finitedimensional.md) | 71 | `result-track:debebf9b231c1885f6e921291a88bbdad5f5c209254855fa5de528dde0ae0f8f` |
| 4 | `theorem` | [Finite Dimensional Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-top-of-finrank-eq.md) | 77 | `result-track:7e9e3d2d8e96f02207adec33e85f4424284ec00a9e70ee5893e0bb51205222c6` |
| 5 | `theorem` | [Finite Dimensional Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/exists-linearequiv-restrict-eq.md) | 97 | `result-track:9db9fa8afb6391c9c387420f2156a81c2dc339daae49edacb449bf9baa2fef0e` |
| 6 | `theorem` | [exists_relation_sum_zero_pos_coefficient_of_finrank_succ_lt_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/exists-relation-sum-zero-pos-coefficient-of-finrank-succ-lt-card.md) | 124 | `result-track:50ebb92f45a123a6558ef86926bb5e625fee0702c74a69df6145904fc15d1f76` |
| 7 | `def` | [basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/basissingleton.md) | 136 | `declaration-track:97999443ea9a68083d69ce5bb3913730c6bc23697af15d50b7cbe346a63dc242` |
| 8 | `theorem` | [basisSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/basissingleton-apply.md) | 158 | `result-track:e7402e5730733a3d3a649cdfb4b1e1e2aa488fdfacb960a667d49283c30165a1` |
| 9 | `theorem` | [range_basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/range-basissingleton.md) | 164 | `result-track:6261a77eab39f8c47868bdf9bc75d1202c6609ce4d6c780e99251f27b6665025` |
| 10 | `theorem` | [FiniteDimensional.of_rank_eq_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-of-rank-eq-nat.md) | 175 | `result-track:e3bf44155b86f692bb1d577e002c8ad3957ab0576339cfba37d98ef5422e7f22` |
| 11 | `theorem` | [FiniteDimensional.of_rank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-of-rank-eq-zero.md) | 179 | `result-track:0e64d5696ce1c28273d0b7018efa75d808717cec9c38998cba2b0097eeffdbcc` |
| 12 | `theorem` | [FiniteDimensional.of_rank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-of-rank-eq-one.md) | 182 | `result-track:5cfa557baca0c04be4f15f2dd81b3ffe6b97073c3284ab1aee0e20599c809923` |
| 13 | `instance` | [finiteDimensional_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-bot.md) | 187 | `declaration-track:4e0c6426d49452fe1140c20d4badf8e84e16a81e1f1fcb25f45b79fc2432ce5b` |
| 14 | `theorem` | [finiteDimensional_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-of-le.md) | 202 | `result-track:01f9e6070ab2488d2765833a5c851f8b66dd066183dce7c0ad7ccba356ef2766` |
| 15 | `instance` | [finiteDimensional_inf_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-inf-left.md) | 208 | `declaration-track:c6a7ace62768396bc3b5311612ab34ff27b67c33c79d62320b3c4e8b91ccd2bb` |
| 16 | `instance` | [finiteDimensional_inf_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-inf-right.md) | 214 | `declaration-track:2ed991e031d555087876c694ffb7a8a6d12e6b4cedc5c5e125e948f0cc9fc538` |
| 17 | `instance` | [finiteDimensional_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-sup.md) | 220 | `declaration-track:3bf875464204af9f27e914fdfc82b11860a2b0d657f41a12e7aaf6e7b5d169b6` |
| 18 | `instance` | [finiteDimensional_finset_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-finset-sup.md) | 229 | `declaration-track:2a6de2a9047625bd7bb91bd3eac93fed35d44975ede4e106c5c184a5b3bb8482` |
| 19 | `instance` | [finiteDimensional_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-isup.md) | 235 | `declaration-track:46f67eabbc6fa5c43bba7a88bcd21a99e0dc071b104b380492fa03c33e0f1ff3` |
| 20 | `instance` | [finiteDimensional_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-finsupp.md) | 247 | `declaration-track:21a08943d1c41193660bf25657be6312c4d39ed944877d9bff6277aae3cae7bb` |
| 21 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-of-le-of-finrank-le.md) | 258 | `result-track:7b6613d87ac7a9a94702b6a4cbda1e9105ef1f963f614122522494314827e560` |
| 22 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-of-le-of-finrank-eq-source-edition-2.md) | 266 | `result-track:f7b99f7eabf708d16aa4ee3d77741552b5bfcbf632f0e69f77c172dc5cb5ef2d` |
| 23 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-of-le-of-finrank-le-source-edition-2.md) | 279 | `result-track:d86d18572ada56a8ef75bc3a4acc903bf653845f98163b167ed01e0fe65a3b48` |
| 24 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-of-le-of-finrank-eq.md) | 285 | `result-track:0e84bb65029b61835046b158e73d938693369e45fd3cf7d100688ea2c901be17` |
| 25 | `theorem` | [surjective_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/surjective-of-injective.md) | 300 | `result-track:75a08eb51b061696f5af79892bfe1927eea7a7b02bec47d5880f69792218b7a8` |
| 26 | `theorem` | [finiteDimensional_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-of-surjective.md) | 307 | `result-track:2584662bc5e594f5c17168bb39218f3a27077922e16e6be94c9b730a2dc87154` |
| 27 | `instance` | [finiteDimensional_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-range.md) | 312 | `declaration-track:ad8596f7cdee8d2247e9caa1c39b7cf2e7e2325bdd0f954bb76a7a817dfff5d0` |
| 28 | `theorem` | [injective_iff_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/injective-iff-surjective.md) | 317 | `result-track:adfa699b0e45c60189d939e6b3a13512fe530b5123aabdfc03010b186671e152` |
| 29 | `lemma` | [injOn_iff_surjOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/injon-iff-surjon.md) | 325 | `result-track:e344bc375f20e50a6b5f099b9e9cb4868071b6a1127d3ec3f1142be2813a868e` |
| 30 | `theorem` | [ker_eq_bot_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ker-eq-bot-iff-range-eq-top.md) | 332 | `result-track:b49edd50e444bd6affd8aa2ca75e4c9277d485bb40d2673cf18972dcc49491dd` |
| 31 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/instance.md) | 337 | `declaration-track:28aedf53f733ed8d711ee06aaa4a6e06525c97ee2f751081d066905178f67c05` |
| 32 | `theorem` | [Finite Dimensional Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/of-isdomain-of-finite.md) | 347 | `result-track:faf8382a84b1f18ca59a03c1cd1b982d8644786939bef45696a4e729bda03f42` |
| 33 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 358 | `declaration-track:a8301fee35015d2b27df8eaa232cceab893ba80af30c02ff3561fa08f860b83b` |
| 34 | `theorem` | [Finite Dimensional Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/injective-of-surjective.md) | 364 | `result-track:201bd9059276155720304e2648129fb7be6861d2a69456b4bfa82e5bd7cc7d7e` |
| 35 | `theorem` | [comp_eq_id_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/comp-eq-id-comm.md) | 371 | `result-track:2b02a034bfab5293e052cfb2558dc1ee6ac25e099bb2f56f3945ae2d70b645de` |
| 36 | `theorem` | [comap_eq_sup_ker_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/comap-eq-sup-ker-of-disjoint.md) | 376 | `result-track:e99a78fc4ef9fcee1d3076c80444772507baaa930285e45af5dca7ada4cf92da` |
| 37 | `theorem` | [ker_comp_eq_of_commute_of_disjoint_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ker-comp-eq-of-commute-of-disjoint-ker.md) | 385 | `result-track:1a20fe1c47f30712936f80ba54be787779267bfc4d10a9f0a1b0ccf5d3c27874` |
| 38 | `theorem` | [ker_noncommProd_eq_of_supIndep_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ker-noncommprod-eq-of-supindep-ker.md) | 392 | `result-track:b9793fd90ab2b3a23cf2818c3a25d738377e611e18ca76794b97ffe6370ad050` |
| 39 | `def` | [ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ofinjectiveendo.md) | 421 | `declaration-track:045b6933d2acff6b83a865d4f409e5577a7369cf4307419fbcd64aa07e501b19` |
| 40 | `theorem` | [coe_ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/coe-ofinjectiveendo.md) | 425 | `result-track:a4c37910370bec659bf0966fa33c4c8dad85c997d1e1654a096f145b729913f3` |
| 41 | `theorem` | [ofInjectiveEndo_right_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ofinjectiveendo-right-inv.md) | 430 | `result-track:c90befa2fd6b35962944466252f7c89c72074584ff99af0ce48b100a81b7dfdb` |
| 42 | `theorem` | [ofInjectiveEndo_left_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ofinjectiveendo-left-inv.md) | 435 | `result-track:000cad032d7d46279eb715d4b90c7e6377ac9d2759ecb8e34b52cafdaf519ede` |
| 43 | `def` | [ofInjectiveOfFinrankEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ofinjectiveoffinrankeq.md) | 448 | `declaration-track:e7d741ac1793b063f4dc034c8a47e5dda98250f11635f8a1b665a491b88dfa3c` |
| 44 | `lemma` | [coe_ofInjectiveOfFinrankEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/coe-ofinjectiveoffinrankeq.md) | 455 | `result-track:f058ae909da17ba1b1ff6b95cfb8070679a002c9005ff6834832e885ec729cb9` |
| 45 | `theorem` | [isUnit_iff_ker_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/isunit-iff-ker-eq-bot.md) | 465 | `result-track:7572711e021f0bc3a141829bc5396dc828df0a3fd8007e8281a3ef0dad1ea999` |
| 46 | `theorem` | [isUnit_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/isunit-iff-range-eq-top.md) | 476 | `result-track:a444c00a0054ff904c7b0003dde9ce2ab4f2c68faf61c1c6c5c0e0dd1f45f4d8` |
| 47 | `theorem` | [finrank_zero_iff_forall_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-zero-iff-forall-zero.md) | 488 | `result-track:14410bfd6301375fb2e8fc41595ea6cd46d2226838dc2e67f6c9c8a0a3c10576` |
| 48 | `def` | [basisOfFinrankZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/basisoffinrankzero.md) | 492 | `declaration-track:d25bbc225b27d1bef2b329cbec1f3b1a2ea0588a7975b98ebedffaaec857c776` |
| 49 | `lemma` | [FiniteDimensional.exists_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-exists-mul-eq-one.md) | 501 | `result-track:fbc39369fcabba33b7ac7a19e16ca7d60337025a36cd2fea6bf888dd00e4f091` |
| 50 | `def` | [divisionRingOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/divisionringoffinitedimensional.md) | 509 | `declaration-track:15254ad6af5d225546dd004f9ff3079bbd85f6c32e0181fb87600eb1fc010cdc` |
| 51 | `lemma` | [FiniteDimensional.isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-isunit.md) | 524 | `result-track:371695cd2c1b0c6c7437cc733a04030387a0d1cc8d1face84de9b770c465aa6f` |
| 52 | `def` | [fieldOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/fieldoffinitedimensional.md) | 530 | `declaration-track:de0567d4ccd29878512a031cdc797945de369b224b808e91c23cc74aa16b3433` |
| 53 | `theorem` | [finrank_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-span-singleton.md) | 544 | `result-track:a76212cecf7d5204593764f11bfb853f7def74d3138680495c4a0f03216cc8e8` |
| 54 | `theorem` | [Submodule.isAtom_iff_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/submodule-isatom-iff-finrank-eq-one.md) | 553 | `result-track:bfe14bffc775d1bd4e12b9dfbd2e90535ea261e3a234de691f9ecb8dd1a62d03` |
| 55 | `lemma` | [exists_smul_eq_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/exists-smul-eq-of-finrank-eq-one.md) | 569 | `result-track:f2e37936df0258b612f1dacf6388eaecdf6743ddfd574968cba1cda88e8ec57d` |
| 56 | `theorem` | [eq_span_singleton_of_mem_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/eq-span-singleton-of-mem-of-finrank-eq-one.md) | 581 | `result-track:162339f67862859b76c7942b44f5b0933cf9a1481e0619b4d8738cac62965513` |
| 57 | `theorem` | [Set.finrank_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/set-finrank-mono.md) | 588 | `result-track:65e646baf186c6148f59508e91396b54d4e7d5f9c46c5763c49a1c5683647984` |
| 58 | `theorem` | [finrank_eq_one_iff_of_nonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-eq-one-iff-of-nonzero.md) | 603 | `result-track:488fd26ac8b889e3cd8e7e952485402eb1397d75ef274ff270002502803a9401` |
| 59 | `theorem` | [finrank_eq_one_iff_of_nonzero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finrank-eq-one-iff-of-nonzero-source-edition-2.md) | 610 | `result-track:69f3c9f418d8bb7e3edc4731974ea303df32f4e2bb47de0262706d41713cc468` |
| 60 | `theorem` | [surjective_of_nonzero_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/surjective-of-nonzero-of-finrank-eq-one.md) | 618 | `result-track:323701fe9ba7bf195fb3ffd82ff812725229b217e3f04341341d4dc025f968bb` |
| 61 | `theorem` | [Subalgebra.finiteDimensional_toSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/subalgebra-finitedimensional-tosubmodule.md) | 636 | `result-track:df694bc4d5adaa6068e8aebe87af34f0a8ee2b474143ebe62ffe724e7e6f24b3` |
| 62 | `instance` | [FiniteDimensional.finiteDimensional_subalgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/finitedimensional-finitedimensional-subalgebra.md) | 643 | `declaration-track:3f8034164789324cfefe93ca6c7203a301a665211f9b622f3061d46f4feb2ab6` |
| 63 | `theorem` | [ker_pow_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/ker-pow-constant.md) | 655 | `result-track:8b189c38a6ad03940b7655290641d11abc991292591fceac4c47950fb8d8ecdd` |
| 64 | `theorem` | [AlgHom.bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicNamespacedPublic.lean/declarations/alghom-bijective.md) | 671 | `result-track:93c16d02125c06fa73eca5e27036c4b36bc93654eaa988b778c911e206fc6f59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32d8c6dce7d35cb9cc286cef49c5e18e929bb64a7c8fd1d60e996028cd3b6639 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantb58eb4682d4198641e538645cfdfe9923795da1c97a756d504b07899ed63779d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
