# Verification target: Finite Dimensional Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e3f031bfb174698ae1e09f2a42275194dac73e0",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e3f031bfb174698ae1e09f2a42275194dac73e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.LinearIndependent.lt_aleph0_of_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/root-linearindependent-lt-aleph0-of-finitedimensional.md) | 48 | `result-track:20f892121145673ddadb166e4b3e4c24f6a6fab10c8dea3e5ab588cef5b621c0` |
| 2 | `theorem` | [_root_.Submodule.eq_top_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/root-submodule-eq-top-of-finrank-eq.md) | 54 | `result-track:db56561c41cb1aa00a66bd24ca2fbb3abd9044337e125cb706cba6d3947ce7e1` |
| 3 | `theorem` | [exists_relation_sum_zero_pos_coefficient_of_finrank_succ_lt_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/exists-relation-sum-zero-pos-coefficient-of-finrank-succ-lt-card.md) | 90 | `result-track:d2e509cf3e4ce0d4b8296b8b11222d2db5c109474bab4ae0188aa0b10e0b3eb7` |
| 4 | `def` | [basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/basissingleton.md) | 102 | `declaration-track:6549cf8a89aa101f9a95eefb739b8778f8972bf6cc8b9432a2b08c2fe19438f6` |
| 5 | `theorem` | [basisSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/basissingleton-apply.md) | 124 | `result-track:7e98ac0cc2add4f95300229c18c4961cb54183dcf026aa018d00a3fad1ce84dc` |
| 6 | `theorem` | [range_basisSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/range-basissingleton.md) | 130 | `result-track:e24c619eab03dcafa4972f786e0b0a5bfae634610c4a7d2e67dce0176893e0bb` |
| 7 | `theorem` | [FiniteDimensional.of_rank_eq_nat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-of-rank-eq-nat.md) | 141 | `result-track:d0d13cc23b74a3933586ffc3dcabb5f9e01fe369f3bc17ff58a512d0801bcf58` |
| 8 | `theorem` | [FiniteDimensional.of_rank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-of-rank-eq-zero.md) | 145 | `result-track:335272b598d5c29fa111fee8a6a192b7643c675f24537dda726120c8dc7cbfa5` |
| 9 | `theorem` | [FiniteDimensional.of_rank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-of-rank-eq-one.md) | 148 | `result-track:157edc541c32a4a7cd2b98027dbadada0ebc7110e075c5e256aa0d55a08a6b62` |
| 10 | `instance` | [finiteDimensional_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-bot.md) | 153 | `declaration-track:c38984bba29cb0214d8b3a872b690dc2e709b39482f665d75d25c783aa6e5a59` |
| 11 | `theorem` | [finiteDimensional_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-of-le.md) | 170 | `result-track:110947e4fcef25af4864f5242ba2438fdd38e76512fb160896dceb9d5bc96be9` |
| 12 | `instance` | [finiteDimensional_inf_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-inf-left.md) | 176 | `declaration-track:7ad02ddf4f7d98478709fb53b02b8d518ac467363b2640f6204cabbe5c37aafc` |
| 13 | `instance` | [finiteDimensional_inf_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-inf-right.md) | 182 | `declaration-track:3f2d2efc54b15bb1be368cbc629b8f8200e0d4bd2642c258d536d9ca5f4205e5` |
| 14 | `instance` | [finiteDimensional_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-sup.md) | 188 | `declaration-track:7f777a968c1939f8339f015166e090009109d768743b5458ec1c7ccfb35923ac` |
| 15 | `instance` | [finiteDimensional_finset_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-finset-sup.md) | 199 | `declaration-track:6770153ec5c9cba7335c53384ac9ae12454c74d68be1e4c1b718a658b6c670f9` |
| 16 | `instance` | [finiteDimensional_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-isup.md) | 209 | `declaration-track:43cc2760948c230e4da4403e0edec3945fb0d990aae81ca266ea8a151e12fbfc` |
| 17 | `instance` | [finiteDimensional_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-finsupp.md) | 223 | `declaration-track:0f3533d2a2a1dca6fa4700d04cc81795ce2ea7aab9f5db93e0d4ce293d13b80c` |
| 18 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/eq-of-le-of-finrank-le-source-edition-2.md) | 234 | `result-track:f4a499290b4ed6926f963fb02b6084dc3cb630f861bb965af417c14e15988098` |
| 19 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/eq-of-le-of-finrank-eq.md) | 242 | `result-track:562a13c72cdd1b34f0fdbfc9fe35b0af527661af15a9ad16d0ffbc57afafb44d` |
| 20 | `theorem` | [eq_of_le_of_finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/eq-of-le-of-finrank-le.md) | 255 | `result-track:1830c4a24b9e00fa4322b6dc6951b869d8e8c3ffde4439e64635ff42a7768b72` |
| 21 | `theorem` | [eq_of_le_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/eq-of-le-of-finrank-eq-source-edition-2.md) | 261 | `result-track:c0aa712df0bd94c30d9ff7f94ca0323b518f50ef53e6c0d773bdf0eb76d3e802` |
| 22 | `theorem` | [surjective_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/surjective-of-injective.md) | 276 | `result-track:ee8ba1b11a54167dd698ba95aa61a2fc6dba9a453f84b5a137f87568bbea3fb5` |
| 23 | `theorem` | [finiteDimensional_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-of-surjective.md) | 283 | `result-track:492c74f62f5a1ae007689257311dd09e8d8b9390ba6eaa6c6104fcae3f84b925` |
| 24 | `instance` | [finiteDimensional_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-range.md) | 288 | `declaration-track:4cf50fd961dd53b5bdc9030903a5914af027a36221118272ae99404a9f8926ba` |
| 25 | `theorem` | [injective_iff_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/injective-iff-surjective.md) | 293 | `result-track:7e1eb7e57b4cff467848c6b9157f7b50cc191dddfb2a9107c609b39c8a7b268c` |
| 26 | `lemma` | [injOn_iff_surjOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/injon-iff-surjon.md) | 301 | `result-track:848f7728f55bcebee4c2c597f16650e5b46ac7785722ed1da4e4c6fe4f9b7bd1` |
| 27 | `theorem` | [ker_eq_bot_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ker-eq-bot-iff-range-eq-top.md) | 308 | `result-track:fdb1201760c3b2be147c732063ffb99ca747635cf50ad2458dffa9956ad559d0` |
| 28 | `theorem` | [mul_eq_one_of_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/mul-eq-one-of-mul-eq-one.md) | 314 | `result-track:71ff707b74a12e49d8dee2a24ed7329d7471ad431614afcd69ddf9225ffaff60` |
| 29 | `theorem` | [mul_eq_one_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/mul-eq-one-comm.md) | 325 | `result-track:ec7d6d833b49a59fffc062bd1fcb99d694dfe80b93d4063e3d941d2284fb53a7` |
| 30 | `theorem` | [comp_eq_id_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/comp-eq-id-comm.md) | 330 | `result-track:be1328f26b68111ae38d4b48339d3a93c9049151de656fcfd5018fe5ca517720` |
| 31 | `theorem` | [comap_eq_sup_ker_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/comap-eq-sup-ker-of-disjoint.md) | 333 | `result-track:41eede72bbc98f08eb7e7512ce6af1e9fcbae6904754009cc1fd53bd298e09aa` |
| 32 | `theorem` | [ker_comp_eq_of_commute_of_disjoint_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ker-comp-eq-of-commute-of-disjoint-ker.md) | 342 | `result-track:16225bc87813e6d6b13c796e12e6d893d726d0602cbe0da54df2a8f6cc5e70c3` |
| 33 | `theorem` | [ker_noncommProd_eq_of_supIndep_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ker-noncommprod-eq-of-supindep-ker.md) | 349 | `result-track:4fae76936c8d67a8af647030a546ee7f3df1a4f15fb90f0e6724389ac138e74b` |
| 34 | `def` | [ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ofinjectiveendo.md) | 378 | `declaration-track:ced837d3515d0fa3ae7838275621512b84a8e1f508720e78473b072a71a50b1f` |
| 35 | `theorem` | [coe_ofInjectiveEndo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/coe-ofinjectiveendo.md) | 382 | `result-track:c022aa09b49b30465e1611003b0483522ac36df1a4b31787a3806727b9c62f7a` |
| 36 | `theorem` | [ofInjectiveEndo_right_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ofinjectiveendo-right-inv.md) | 387 | `result-track:b76d9dde6ba669becd3de6b6ba6b9d31e3632d59419268af80e61fa12b0bbbe3` |
| 37 | `theorem` | [ofInjectiveEndo_left_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ofinjectiveendo-left-inv.md) | 392 | `result-track:a57b578dcab108575393a3dfdc342cae7d10e022d422e9e56171588a43660eb5` |
| 38 | `theorem` | [isUnit_iff_ker_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/isunit-iff-ker-eq-bot.md) | 402 | `result-track:7724d553c6408914592fc78fd7c59672ad6966db0029292bcab64a7613af3dd7` |
| 39 | `theorem` | [isUnit_iff_range_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/isunit-iff-range-eq-top.md) | 413 | `result-track:eaa9a3aa153477a57e0ca267899f32e8dc4a349ad2386db615333ac86ddc7368` |
| 40 | `theorem` | [finrank_zero_iff_forall_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finrank-zero-iff-forall-zero.md) | 425 | `result-track:4115039a86df876f4f7a2ee4dedc47b6c82b82e209c137ce28c88dac7b6f5c4d` |
| 41 | `def` | [basisOfFinrankZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/basisoffinrankzero.md) | 429 | `declaration-track:a123304eeac5f4e33d033aa5cdf196c31be3c959fb9f80dc3ebd827795aab152` |
| 42 | `lemma` | [FiniteDimensional.exists_mul_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-exists-mul-eq-one.md) | 438 | `result-track:c6a64c8cc8400bdeda4488ff2f423e1fa010361371d8184a5663f3d8a85c2974` |
| 43 | `def` | [divisionRingOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/divisionringoffinitedimensional.md) | 445 | `declaration-track:b516b129f77f5c8a5a0e9bda6c271906b8f0092100c02900878ebe837ce7b657` |
| 44 | `lemma` | [FiniteDimensional.isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-isunit.md) | 460 | `result-track:cdd556b96fdc1fea9fa0ffbdc1fb5b5cb8605e27371e7c82ab87d60ba04cff8a` |
| 45 | `def` | [fieldOfFiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/fieldoffinitedimensional.md) | 465 | `declaration-track:8f60c8ea6a1d31a412f4e9e633888d5783d7a075bef5804c9259588207091d10` |
| 46 | `theorem` | [finrank_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finrank-span-singleton.md) | 479 | `result-track:84d0c846439cae4c4b81d31c3e621fac3dbf287a8e241afe2388917773f5a01a` |
| 47 | `lemma` | [exists_smul_eq_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/exists-smul-eq-of-finrank-eq-one.md) | 488 | `result-track:09ee78b203700f9bdaac3995a51bab67986baef972c1cd2401a6e06d47f03772` |
| 48 | `theorem` | [Set.finrank_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/set-finrank-mono.md) | 499 | `result-track:cb0616ee9b2135bf0910c03c317fd3f2b563670b152923e7a2fb53494180f7d9` |
| 49 | `theorem` | [finrank_eq_one_iff_of_nonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finrank-eq-one-iff-of-nonzero-source-edition-2.md) | 514 | `result-track:d39812d0a7fd9ddf95716b74843fc1cefac600cc5a4eb750f3dde45a86128935` |
| 50 | `theorem` | [finrank_eq_one_iff_of_nonzero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finrank-eq-one-iff-of-nonzero.md) | 523 | `result-track:2ddfb679def22450a5ded104d180bb558d31e99486811efe65a2e1418fb8d738` |
| 51 | `theorem` | [surjective_of_nonzero_of_finrank_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/surjective-of-nonzero-of-finrank-eq-one.md) | 531 | `result-track:57b6eeaf28c4f65270424c2740d4a837453c559db4d169e0f03d2bc2700d932b` |
| 52 | `theorem` | [Subalgebra.finiteDimensional_toSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/subalgebra-finitedimensional-tosubmodule.md) | 551 | `result-track:745c719871aea14037043ab0e8b8a035ef0989be24364770176633ebe2f53dac` |
| 53 | `instance` | [FiniteDimensional.finiteDimensional_subalgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/finitedimensional-finitedimensional-subalgebra.md) | 558 | `declaration-track:b8d19a8c900d09fd7adc53569d9e0794f1c100570314dab5d11ef80f4d1db651` |
| 54 | `theorem` | [ker_pow_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalBasic.lean/declarations/ker-pow-constant.md) | 570 | `result-track:931a7b1d40086d93f66bcbdf92c21ff6e3963f9c4c129bf7adbfaf97ac91d5df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51fade5bda9b45a46a908629c589997f8052401ddc4a3047fe0cfbdefd28b854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
