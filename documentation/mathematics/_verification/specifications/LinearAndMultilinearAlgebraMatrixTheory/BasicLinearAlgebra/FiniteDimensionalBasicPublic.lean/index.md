# Verification target: Finite Dimensional Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b756466fea69ecc649e9e672eb486a4d5677fc46",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b756466fea69ecc649e9e672eb486a4d5677fc46`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_le_iff_rank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-le-iff-rank-le.md) | 55 | `result-track:3d5dbe657b4402aac6ee54f8e99a476dab26e43ec2ad0e907212da7422cc8c92` |
| 2 | `theorem` | [finrank_lt_iff_rank_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-lt-iff-rank-lt.md) | 59 | `result-track:648adfb483c4679225584137555b7ffafdb9eeac117deffcb4317954568a26a4` |
| 3 | `theorem` | [_root_.LinearIndependent.lt_aleph0_of_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/root-linearindependent-lt-aleph0-of-finitedimensional.md) | 63 | `result-track:f0afc84eb7c6f713cb57c4b145837072d6195e36c9882497ee23cb14f483f6b3` |
| 4 | `theorem` | [_root_.Submodule.eq_top_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/root-submodule-eq-top-of-finrank-eq.md) | 69 | `result-track:0fea0d333431bc30714c017208571a2ba383e4624739ae54598e70a13e121533` |
| 5 | `theorem` | [_root_.Submodule.exists_linearEquiv_restrict_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/root-submodule-exists-linearequiv-restrict-eq.md) | 89 | `result-track:eb4204c0013d19416cc118f69181c2a90e087ce7d406c36ba11c1e57808be307` |
| 6 | `theorem` | [exists_relation_sum_zero_pos_coefficient_of_finrank_succ_lt_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/exists-relation-sum-zero-pos-coefficient-of-finrank-succ-lt-card.md) | 116 | `result-track:d20291f83f03cc6155e54c414ea2797bb36c9431d360ac36b0ebc44fd5a69d8a` |
| 7 | `def` | [basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/basissingleton.md) | 128 | `declaration-track:4e283d2f8599a983ba33da62cd0d200c6883a886cc8132d76a2dff167905f438` |
| 8 | `theorem` | [basisSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/basissingleton-apply.md) | 150 | `result-track:731b9d8b958d25d7de836075cc3d82d792a421c10192574eb81bc284d1ec1a76` |
| 9 | `theorem` | [range_basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/range-basissingleton.md) | 156 | `result-track:17ed07b9320e19b7eb221ab64575cf01f5f9e8be78c576c6500e1d241cb3cd18` |
| 10 | `theorem` | [FiniteDimensional.of_rank_eq_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-of-rank-eq-nat.md) | 167 | `result-track:5bb8de9327f637d64fc428c915f36fde2db5cd0b00bbca7166ba578d9e3e7b1a` |
| 11 | `theorem` | [FiniteDimensional.of_rank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-of-rank-eq-zero.md) | 171 | `result-track:6f69c6e236dc6a0b41c77bd3a26267fd46dfc14f33c1616d5783c0b6a323b9fb` |
| 12 | `theorem` | [FiniteDimensional.of_rank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-of-rank-eq-one.md) | 174 | `result-track:46c5cc63978cf1641aac54dee5cc6b5a49c0330ea7d1711b1c6fca18d6ce62a4` |
| 13 | `instance` | [finiteDimensional_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-bot.md) | 179 | `declaration-track:bb04c91e389cc78dc823c249c7295264bdc5708aee0e8325497ef2791a3b79e9` |
| 14 | `theorem` | [finiteDimensional_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-of-le.md) | 194 | `result-track:cc0fed911412b0798bc78f8695f26014d0972e8c7bb61dafa869435df94c78ba` |
| 15 | `instance` | [finiteDimensional_inf_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-inf-left.md) | 200 | `declaration-track:64a8e19334865ed0eb7cdab804846398ebaef1f20e81c071170d25ba03acfe3c` |
| 16 | `instance` | [finiteDimensional_inf_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-inf-right.md) | 206 | `declaration-track:2378245197ad153c9228874570e2e54a7c82707bd23a3fd1e0723519bdc4f50d` |
| 17 | `instance` | [finiteDimensional_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-sup.md) | 212 | `declaration-track:a944fccd2106b3b8817efa224af85a7ec30ff546a3c423f59fd134163f49b249` |
| 18 | `instance` | [finiteDimensional_finset_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-finset-sup.md) | 221 | `declaration-track:b29a540d28f8b21718c8bc02ffc2c188b1db2dfe3d651f647a8d188756a882b7` |
| 19 | `instance` | [finiteDimensional_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-isup.md) | 227 | `declaration-track:d7231907e9540c4e93ab0267d512aba935503f91647b2991ee7cb1cac24b91bc` |
| 20 | `instance` | [finiteDimensional_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-finsupp.md) | 239 | `declaration-track:da4928765ef4b74b7c3f5defcdb9854e6fed29353fe31a7f0a62c828a8765032` |
| 21 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/eq-of-le-of-finrank-le-source-edition-2.md) | 250 | `result-track:edb74a051c5f1bd0aab01e4c0f039a91e448458f468844916c184dd71a78dbe3` |
| 22 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/eq-of-le-of-finrank-eq.md) | 258 | `result-track:3b0e7ae78c59a8652e39ea31af9ae61660720821196ab76cf68c764231e669d6` |
| 23 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/eq-of-le-of-finrank-le.md) | 271 | `result-track:1b5b4ab4e510931acdd4b27b99d5ac41c5112a64dc80fe252e1be07f3352568b` |
| 24 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/eq-of-le-of-finrank-eq-source-edition-2.md) | 277 | `result-track:eb0390ef669db072dbaa5cca484a6e9bedfea6e4eadfb2c4a8ccd2dd49356fbf` |
| 25 | `theorem` | [surjective_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/surjective-of-injective.md) | 292 | `result-track:e7268df7ad0286b050a1cd54dace27a02ca042e08ad167b955c3ac80ae8142e5` |
| 26 | `theorem` | [finiteDimensional_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-of-surjective.md) | 299 | `result-track:01e792095004e9478efeef72763ac02c46e9eb9b308b302161f5feecee3d66cd` |
| 27 | `instance` | [finiteDimensional_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-range.md) | 304 | `declaration-track:b1a7982017d14635101c3c6e82526c09bd1fbdaaf08243e441c8ec20101ca903` |
| 28 | `theorem` | [injective_iff_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/injective-iff-surjective.md) | 309 | `result-track:b7a561cf5cae38ba81ce4d66858c8bd8e845c79a32bf744bf26bae83b6fac3b3` |
| 29 | `lemma` | [injOn_iff_surjOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/injon-iff-surjon.md) | 317 | `result-track:79a16b4448d1d79bf39c08f1c024c7c4d9845fd8be59cae875b9d0f03168778f` |
| 30 | `theorem` | [ker_eq_bot_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ker-eq-bot-iff-range-eq-top.md) | 324 | `result-track:20d443e1024aea1dbf41fc6f83fbdd9ff7fd271b5df6bb4ccb1144a03af04dbb` |
| 31 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/instance-source-edition-2.md) | 329 | `declaration-track:cbf6c239af30662b8e2c260fce1c2d33b8fe42674ccb4bf426764ee090e002bd` |
| 32 | `theorem` | [_root_.IsField.of_isDomain_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/root-isfield-of-isdomain-of-finite.md) | 339 | `result-track:d0a98917637341afeb828c5546a17fe3e6cd834ddc539032f38c34941acef52c` |
| 33 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/instance.md) | 350 | `declaration-track:bd038d95592b537886193ba264bfb728e5e0972a41babcbef0035c6685d9e2b3` |
| 34 | `theorem` | [_root_.Module.End.injective_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/root-module-end-injective-of-surjective.md) | 356 | `result-track:011b14a80649eca385b08697fe6ec81842788952e7ef1fa662d0dc56260643f6` |
| 35 | `theorem` | [comp_eq_id_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/comp-eq-id-comm.md) | 363 | `result-track:c8c339e5f3a25ee25c1dbe665176bf3dfb3e1ce73b8347a38bd23ba20721c6a4` |
| 36 | `theorem` | [comap_eq_sup_ker_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/comap-eq-sup-ker-of-disjoint.md) | 368 | `result-track:fa913eebcf51e54379bde82b4add38232393538b648b76889117c3e31f7cbf68` |
| 37 | `theorem` | [ker_comp_eq_of_commute_of_disjoint_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ker-comp-eq-of-commute-of-disjoint-ker.md) | 377 | `result-track:bca184c141b9ae61459424b6a9785631a7f1d319150c17524acf0dbf72f11d15` |
| 38 | `theorem` | [ker_noncommProd_eq_of_supIndep_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ker-noncommprod-eq-of-supindep-ker.md) | 384 | `result-track:f572bb2e7ee1ca4df6244e4c1d747fbe5e14a0978b7d8abef0c0837830f9ad0d` |
| 39 | `def` | [ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ofinjectiveendo.md) | 413 | `declaration-track:f8bc9b1bb9affe99b7996128b52aa4721f97f45f40008ca6c7206c2ba0efe7eb` |
| 40 | `theorem` | [coe_ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/coe-ofinjectiveendo.md) | 417 | `result-track:34f87f11ef0482faafd40e7cdd71b84141eb07ca8b11500eabbb334913879c37` |
| 41 | `theorem` | [ofInjectiveEndo_right_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ofinjectiveendo-right-inv.md) | 422 | `result-track:c3f97565f52577465573dd2f539672fe5d905442457b90802497c85984da9309` |
| 42 | `theorem` | [ofInjectiveEndo_left_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ofinjectiveendo-left-inv.md) | 427 | `result-track:81b56f150a9109fa9c7e05ea629cf96cb4a9845ce5587e42d07397c0229bcf6a` |
| 43 | `def` | [ofInjectiveOfFinrankEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ofinjectiveoffinrankeq.md) | 440 | `declaration-track:4a648f0b8566160c07da37481295a268936c9a0b1108bf4a52b233b74a471114` |
| 44 | `lemma` | [coe_ofInjectiveOfFinrankEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/coe-ofinjectiveoffinrankeq.md) | 447 | `result-track:deca832e51de659414de4c1b04599bd6e0e56af40d0ffea8e093058e0c1c1d5e` |
| 45 | `theorem` | [isUnit_iff_ker_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/isunit-iff-ker-eq-bot.md) | 457 | `result-track:4cccd59c258842da292151f69fb3de7115b79e5e064852eb120a3ca754879d59` |
| 46 | `theorem` | [isUnit_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/isunit-iff-range-eq-top.md) | 468 | `result-track:aa717a42840e431381c11265d37579192a08f6b0c9ca5b0dff257e2693c36bf4` |
| 47 | `theorem` | [finrank_zero_iff_forall_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-zero-iff-forall-zero.md) | 480 | `result-track:d02bab3220d82f280900a3513e4a3dbbdc09fb4715fef5cc2719b827ddd4af02` |
| 48 | `def` | [basisOfFinrankZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/basisoffinrankzero.md) | 484 | `declaration-track:446193d2598ddd96ed5b8962287b07d005750e62a3072b59e4656cb692e0c982` |
| 49 | `lemma` | [FiniteDimensional.exists_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-exists-mul-eq-one.md) | 493 | `result-track:5116d8a795ff57dd0bf34ceaeb761b76f8c1ca3c5c3e577b63572cf9c779a025` |
| 50 | `def` | [divisionRingOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/divisionringoffinitedimensional.md) | 501 | `declaration-track:7cb33fd01b7d5b4d22665af125a1cb38c5b43478f11b3af9d561829e781798d5` |
| 51 | `lemma` | [FiniteDimensional.isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-isunit.md) | 516 | `result-track:67e07847e139fdbb7b07ad67e98da6f676f063f4b85230a0804282cb7e2a9e08` |
| 52 | `def` | [fieldOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/fieldoffinitedimensional.md) | 522 | `declaration-track:01875edac94eab9e95c93053102ad90cd75f395f23f17869782a13d9caaf4f94` |
| 53 | `theorem` | [finrank_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-span-singleton.md) | 536 | `result-track:5835d5c8cc44a7a58a605e1b2d109a2a905edc619ff83ed159bd4fa54b7f2400` |
| 54 | `theorem` | [Submodule.isAtom_iff_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/submodule-isatom-iff-finrank-eq-one.md) | 545 | `result-track:c083a3b262667eaca5c48a5f96d5eb4f3cc470d84850b620a6e2fcbb96bc9d65` |
| 55 | `lemma` | [exists_smul_eq_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/exists-smul-eq-of-finrank-eq-one.md) | 561 | `result-track:aad3ce85e74186cb18df68fe724929b71415183b824af94d63a5af3228d4f7c0` |
| 56 | `theorem` | [eq_span_singleton_of_mem_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/eq-span-singleton-of-mem-of-finrank-eq-one.md) | 573 | `result-track:08d8eeca936c3039fa0ddf8a07b89e6cd245fea24b2293de9c9e8445a7d2f794` |
| 57 | `theorem` | [Set.finrank_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/set-finrank-mono.md) | 580 | `result-track:6cad9f2e50d61f8844ea14bd81fe9be951a8dad91c99ca566b9cce07843ddbcd` |
| 58 | `theorem` | [finrank_eq_one_iff_of_nonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-eq-one-iff-of-nonzero.md) | 595 | `result-track:c401ede8bf295ce647f1bcbc0ce648079b1f2e82989537d5be3c8872f5dc741a` |
| 59 | `theorem` | [finrank_eq_one_iff_of_nonzero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finrank-eq-one-iff-of-nonzero-source-edition-2.md) | 602 | `result-track:d481cbbe1fb299b8ebe4b3ac5865a0770a8451e8fc812046697686df224fd0b2` |
| 60 | `theorem` | [surjective_of_nonzero_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/surjective-of-nonzero-of-finrank-eq-one.md) | 610 | `result-track:6c5a3667ba8d5fa9526f1d744c82bcf7f85a2002f6aaf2b4e864b501facf7628` |
| 61 | `theorem` | [Subalgebra.finiteDimensional_toSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/subalgebra-finitedimensional-tosubmodule.md) | 628 | `result-track:92819333aabb2f07bc4a48f7863ab2b143ccaf02a9e55a0c8b4b651bfc387913` |
| 62 | `instance` | [FiniteDimensional.finiteDimensional_subalgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/finitedimensional-finitedimensional-subalgebra.md) | 635 | `declaration-track:d4b394d6ff42209b1043181a4bfc2482986713bb277a07715e2ff75d1b84b39a` |
| 63 | `theorem` | [ker_pow_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/ker-pow-constant.md) | 647 | `result-track:1797ae61b39a05e24b28039c6f203b74c6a1e0110406ed01165d4a988cf2fd62` |
| 64 | `theorem` | [AlgHom.bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasicPublic.lean/declarations/alghom-bijective.md) | 663 | `result-track:aa61a8d9e316071b9059838237fb5eb8c3c9b5d01e12a93cc64cd01762f84136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e245df0482551446f10323dad43ab510812dc6785e1ee3163bff23701442b2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant033ff059870ce0ec5ee132f4aaa5fb97afe74c5a3c4b95535e4276093853b17f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
