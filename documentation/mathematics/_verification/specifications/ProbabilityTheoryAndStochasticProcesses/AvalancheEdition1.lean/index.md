# Verification target: Avalanche Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4c9395286e12721fa79dfc466b943d2ce3354d7",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4c9395286e12721fa79dfc466b943d2ce3354d7`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroBits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/zerobits.md) | 54 | `declaration-track:7cb0759a8ef0c75a1e5e59df1c8566b6789a7fa220cb36f5203267cebec19e38` |
| 2 | `def` | [xorBits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits.md) | 58 | `declaration-track:349b2208cdbad6fdbe2961009e1b3d019f29ba9a2449831568f12ec474357a01` |
| 3 | `def` | [basisBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/basisbit.md) | 62 | `declaration-track:75eb87510f5b3e5fa970a966e74174dc85e6623ebf05e819ddfd681e0978fb60` |
| 4 | `def` | [flipBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/flipbit.md) | 66 | `declaration-track:24fb079b573e16f9faa9f56b1b76d655ea0d502fd89642bb9b29e7afc0706896` |
| 5 | `theorem` | [xorBits_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-zero-right.md) | 70 | `result-track:b2224cfb2d8e0f5d43dde5687d9f886a81fcedaee74167f3fc5c98ac2f1b9b4e` |
| 6 | `theorem` | [xorBits_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-zero-left.md) | 76 | `result-track:c1a8f75d33b0bf028f046c7557ffbd4bb35b0a001095783d14cf57ea6042925c` |
| 7 | `theorem` | [xorBits_self](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-self.md) | 82 | `result-track:7fc13ba6f24bc232a632c2278e2158bdd0f5e4fd08628748c02ce2116eccb2c6` |
| 8 | `theorem` | [xorBits_comm](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-comm.md) | 87 | `result-track:e780c73b7b87546983057cecd03b419400323c5090dfb2056b088ce5dc16a749` |
| 9 | `theorem` | [xorBits_assoc](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-assoc.md) | 92 | `result-track:96944e5d68d643f45fbccea219f858063349e46c5dc9a42af2f4edfdc5b9957b` |
| 10 | `theorem` | [xorBits_cancel_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-cancel-right.md) | 98 | `result-track:88874ace2578e508cefc7ccab8e54f7c99254eea93a0bdb77b8e803925d40280` |
| 11 | `theorem` | [xorBits_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-eq-zero-iff.md) | 106 | `result-track:027df923950a7f942c2399b27328f28980612bfaf90a3f59bfb297fff6d94402` |
| 12 | `theorem` | [xorBits_cancel_self_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-cancel-self-right.md) | 111 | `result-track:8e3490ec341d206af345a7fcbbdff01464aac2ef616c76b2232bf3046a109ffb` |
| 13 | `theorem` | [flipBit_apply_same](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/flipbit-apply-same.md) | 116 | `result-track:41edbeaf84198fb326bf8afc71ee94352a2158209c2eef7e2b12ada3a848c071` |
| 14 | `theorem` | [flipBit_apply_ne](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/flipbit-apply-ne.md) | 120 | `result-track:c07042d2f86ec10e3c105fe2d9c96ef2c1ebd3805d5f674847f7a9a80d33dfef` |
| 15 | `theorem` | [flipBit_involutive](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/flipbit-involutive.md) | 126 | `result-track:d8d27da6ad46b7b46ad8156e36f2379aa8f01a66c5485a4ce08509ef0618e4ca` |
| 16 | `theorem` | [basisBit_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/basisbit-ne-zero.md) | 130 | `result-track:3decfb4592f2258e32b322d3dd0f5161b7ee3795f91a6cb40d17eed169fcac08` |
| 17 | `theorem` | [xorBits_ne_self_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/xorbits-ne-self-of-ne-zero.md) | 136 | `result-track:71cc35fb78f1459a28f2feca4a47d9c5a3636fbcf8259a785a40e6c0a29bde28` |
| 18 | `theorem` | [flipBit_ne](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/flipbit-ne.md) | 144 | `result-track:58e4f52ab936168c8f5d2cd3a29b073358afa363430bd19cd9164a968c7baae9` |
| 19 | `def` | [derivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/derivative.md) | 151 | `declaration-track:5b3925037ccb1f81c8d9684367073a1dfb184e22599225330c50f178e0e5166d` |
| 20 | `def` | [bitDerivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/bitderivative.md) | 155 | `declaration-track:68505d2b6f620bf1b513d03b3888aa4620508f9abf738a98b4d875e1354b3ea5` |
| 21 | `def` | [derivativeBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/derivativebit.md) | 160 | `declaration-track:ad70ca8f53ff6e266d867c512ece00edcf635e438ad120635b63299957d0e5ce` |
| 22 | `def` | [localJacobian](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/localjacobian.md) | 168 | `declaration-track:9053aaaae5136548b7326a0152fd45399b064c0d238e376def5e483ebc063d8e` |
| 23 | `theorem` | [derivative_shift](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/derivative-shift.md) | 172 | `result-track:eac1e19be95f26feb8c9e4dbb7f31356bf32c39472ac06afa285079ba82aefb5` |
| 24 | `theorem` | [bitDerivative_flipBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/bitderivative-flipbit.md) | 179 | `result-track:58141974193f4d406478e4dd64e2551b901b3027750062b941e830993bcccea5` |
| 25 | `def` | [jacobianQuantizer](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/jacobianquantizer.md) | 185 | `declaration-track:0ccb1ee08eea00a35b329e1bc7fe1a9e6f498c43b2c284800ed701a48e9acee7` |
| 26 | `theorem` | [jacobianQuantizer_encode](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/jacobianquantizer-encode.md) | 190 | `result-track:ec30be5210d2c05b1e9f5926e368dcf48763e05c9119d79eee964c1652b9be6a` |
| 27 | `def` | [differentialCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialcount.md) | 198 | `declaration-track:328e4850219704435b8ec8ede3fccb454a2f9ce37e2eb35c28b1b2391d64b9d1` |
| 28 | `def` | [differentialProbability](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialprobability.md) | 203 | `declaration-track:962fd005fc1e903e87d996d228054fe7ed26cfbbe9df1f7d3bf6566f9c5cbf85` |
| 29 | `def` | [sacCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/saccount.md) | 208 | `declaration-track:1c160fe9ba3337f290159156db77e1d3a87812ccf7b21c7f9357e5d602dc78d3` |
| 30 | `def` | [sacEntry](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacentry.md) | 212 | `declaration-track:97ae98d115ff031c2403315a35933a0a468bc5e84d1c6e62a62e5fdc8faf4889` |
| 31 | `def` | [StrictSAC](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/strictsac.md) | 216 | `declaration-track:ac5749a5ff5bb5c9672fb4cbc922049b4698c648ff8ab1ef109f2292e0e9d221` |
| 32 | `theorem` | [card_bits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/card-bits.md) | 220 | `result-track:3e9beabdb98fc21abac3089611f16990c09b39724807e1e47cf56248706d552c` |
| 33 | `theorem` | [differentialCount_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialcount-sum.md) | 226 | `result-track:e5a042f05e6e71bbf0e1c7801d8b2e467cace6fcbe30a63431d582491f622c43` |
| 34 | `theorem` | [differentialCount_eq_full_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialcount-eq-full-iff.md) | 237 | `result-track:5a5d8e073030a75feb753c6a58d4971df09d4c9a07e6e98376d527afe79a1a62` |
| 35 | `theorem` | [differentialProbability_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialprobability-eq-one-iff.md) | 249 | `result-track:4908728cb818782eb56d94b84a6673f8444bc82ab5b93498c627798d8eff8315` |
| 36 | `theorem` | [exists_true_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/exists-true-of-ne-zero.md) | 263 | `result-track:712f2a5df5417bce7a9f0d85299b2d1e37d31980fc7bb29f7099e903f00f3ddd` |
| 37 | `theorem` | [filter_card_even_of_xor_invariant](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/filter-card-even-of-xor-invariant.md) | 278 | `result-track:b08a30115354b1f2e3937eb02e71b8f90c1ed3283fa80e15dbffd5ed524b07f3` |
| 38 | `theorem` | [differentialCount_even](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialcount-even.md) | 329 | `result-track:9a0df296a6383f0e984a2ddac743607e7194caa7ec52321e174404322933ab37` |
| 39 | `theorem` | [derivative_ne_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/derivative-ne-zero-of-injective.md) | 338 | `result-track:4bcd2e2a4944a481b8a7e6ba31cf4e71f01ea1c3a9ecb55efe30bf6bd161d91c` |
| 40 | `theorem` | [differentialCount_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/differentialcount-zero-of-injective.md) | 348 | `result-track:1dbfc16d1f2bc5cbc80fc99f6109310c67840a6d5c0a3e5e25e19b1d0b5fd808` |
| 41 | `theorem` | [sacCount_even](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/saccount-even.md) | 356 | `result-track:375116ed693da8f6f0c1e2422d26e04d36d753a095b10842eff560f24ed24045` |
| 42 | `theorem` | [not_strictSAC_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/not-strictsac-one.md) | 367 | `result-track:41be635eed67725767426c21d4eaf4ff17f51c3ccb0abbc4d6b0bbf7d584c930` |
| 43 | `theorem` | [sacCount_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/saccount-le.md) | 378 | `result-track:0ff3e9acfa8737a139ee50f39c6b303b82ba07dbc1bc8228310ab729d00e7bee` |
| 44 | `theorem` | [sacEntry_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacentry-nonneg.md) | 388 | `result-track:6a7cd78dfdf7eb8f659ef8578b3c1d1da95c18ea8d7d7dca88caf608bc76afaf` |
| 45 | `theorem` | [sacEntry_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacentry-le-one.md) | 393 | `result-track:fb23432d8a08e7be3de77e9e6d75994c3a4b0824229bc43c689950b4cd6db76c` |
| 46 | `theorem` | [strictSAC_iff_sacEntry_eq_half](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/strictsac-iff-sacentry-eq-half.md) | 400 | `result-track:e11d0259dd88bea2d747242835501d1f256cc2d70aaaf3e67b64f664a0d551fa` |
| 47 | `theorem` | [abs_two_mul_sub_one_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/abs-two-mul-sub-one-le-one.md) | 419 | `result-track:016be2e9d15a2f5af39b9fd7988ff32713e5278bc9d38b10380901e8249172dc` |
| 48 | `theorem` | [four_mul_variance_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/four-mul-variance-nonneg.md) | 424 | `result-track:358bec2b77d8c4de3e9497563625eec312cd64a748f40de3253c3fbadf788ebd` |
| 49 | `theorem` | [four_mul_variance_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/four-mul-variance-le-one.md) | 430 | `result-track:809d456282d406be0552b5cb46fbc00afcbdd2719b5b8b51b084f0a8b3f9264e` |
| 50 | `theorem` | [four_mul_variance_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/four-mul-variance-eq-one-iff.md) | 434 | `result-track:a16c68a0c4af4fa66930ccd614f28fbafa1247934959c3a461b3d28cb503bee6` |
| 51 | `def` | [sacScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacscore.md) | 448 | `declaration-track:187150145ba34ad3149b27a233f0db6f9a7fb1a1e3e2545cd32941783c142125` |
| 52 | `def` | [varianceScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variancescore.md) | 460 | `declaration-track:ff53c4757d65aba99f16d1a1b0cd2be6e67253eb07a9fe8207f83a384ea9a884` |
| 53 | `theorem` | [bias_sum_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/bias-sum-nonneg.md) | 468 | `result-track:e0f17635ab8dc76a61112bf2f7bde60874245b100ea572e2e9a7c8888c65ec50` |
| 54 | `theorem` | [bias_sum_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/bias-sum-le.md) | 473 | `result-track:e3499fc69332b9116391c6aeacd3c7787b78ce1398cd138b96a5ab8453db1134` |
| 55 | `theorem` | [variance_sum_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variance-sum-nonneg.md) | 485 | `result-track:74a52418cda19fc69421f54b728cac8b79d5da7685851dda4bac6c98eebbd5c3` |
| 56 | `theorem` | [variance_sum_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variance-sum-le.md) | 491 | `result-track:56fc2cf0ffe29fa7c1d08704f7d85a2e5be81028e367181e38894d7b2f19e70a` |
| 57 | `theorem` | [sacScore_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacscore-nonneg.md) | 506 | `result-track:e64745f6f321afcfe11a6f9b20ae9e61949a014c7c693ae21b1411d41ee11ca4` |
| 58 | `theorem` | [sacScore_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacscore-le-one.md) | 519 | `result-track:2653ddba33c2d96a044075528d8b72c014ee01b106dd4d9ef940bd1ea0e3b665` |
| 59 | `theorem` | [sacScore_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/sacscore-eq-one-iff.md) | 532 | `result-track:34a9c73ac2a6252f6023bd2802fe594f5950fbc53c84bc78b59319b1ca181c26` |
| 60 | `theorem` | [varianceScore_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variancescore-nonneg.md) | 565 | `result-track:0093c73e5ef5d7a77b6d74b8b6efa98447d7ac0aec5f32c99822e27be7b94408` |
| 61 | `theorem` | [varianceScore_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variancescore-le-one.md) | 573 | `result-track:c186bcbd738994942b72e68bf8d79f63d96ed71f8c1edbf38043530180beefa0` |
| 62 | `theorem` | [varianceScore_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/variancescore-eq-one-iff.md) | 581 | `result-track:79dfafbe0ef72f7210165068d650c208a0cf4dd28a48b9c082a6eb863cd2eed0` |
| 63 | `def` | [hammingWeight](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/hammingweight.md) | 641 | `declaration-track:c77a2783ef20e7af29beca1322841bce713aea4c00a9edeb8e538534562b1386` |
| 64 | `theorem` | [hammingWeight_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/hammingweight-le.md) | 645 | `result-track:c0eb8d7e6baba1fcb30cf65e481b40cd5f875817d71fa2ac8a86e8574991cfb2` |
| 65 | `theorem` | [hammingWeight_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/hammingweight-eq-zero-iff.md) | 652 | `result-track:55a5dc671dd8362f70fea29dabd18fe6da35975694634f29aa02be8665bbddf7` |
| 66 | `def` | [bitsSupportEquiv](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/bitssupportequiv.md) | 672 | `declaration-track:4f03ffa0231d437f0df4ded8ca25161dd9537be885746c5e06493a82d842acb4` |
| 67 | `theorem` | [card_hammingWeight_eq](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/card-hammingweight-eq.md) | 684 | `result-track:5f786410718bece3e15f9a82bbf3277fb3e03e738494dc26ff867aedc878ef0f` |
| 68 | `def` | [propagationWeight](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationweight.md) | 699 | `declaration-track:e07c70536c766f5328d0d28823d964bb1d32b629e7edee3552faf6b138a8dd09` |
| 69 | `def` | [propagationCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationcount.md) | 704 | `declaration-track:c5a629583ce3b9ae0f27f65049d5e91df256b9d76dcc4d80a384365200ef8dd3` |
| 70 | `def` | [propagationMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationmass.md) | 709 | `declaration-track:19922b730404b3129f6c11703d4c5f221dfa809746e87816a3760e6211d117bf` |
| 71 | `theorem` | [propagationCount_eq_zero_of_gt](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationcount-eq-zero-of-gt.md) | 714 | `result-track:a3ea566cef2036e6d5f2423438ebd595dad20c69d45bc3461594cc2eeda0c11d` |
| 72 | `theorem` | [propagationCount_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationcount-sum.md) | 726 | `result-track:d5b4596c63595d5d5f30583578ae768a3770af2d09a63b251c8f7b3111376cf4` |
| 73 | `theorem` | [propagationMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationmass-sum.md) | 737 | `result-track:be64cc0b2ea7dcc706ccb2be9c72e8b3a91874775a5d0ea5e8d636d6aea1fc6f` |
| 74 | `theorem` | [propagation_first_moment_count](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagation-first-moment-count.md) | 751 | `result-track:f38a292f398658403cfdff78df73bd00e4a2cb210a795099d03c7f8e4045f3f0` |
| 75 | `theorem` | [propagation_first_moment_mass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagation-first-moment-mass.md) | 780 | `result-track:6c91860d0a88cbc2902439e2fb20c305df71bb783c8a219d062972c939b03d4f` |
| 76 | `theorem` | [propagationCount_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationcount-zero-of-injective.md) | 791 | `result-track:ed5bcdcf97fa83dfff090d70cb4f10321871ff7216f319cf0ec7f89c6415ea60` |
| 77 | `theorem` | [propagationMass_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/propagationmass-zero-of-injective.md) | 804 | `result-track:08776d2458c476093b4192ad20d497cc85a5da001ae527cbb0dbe07ed50058d9` |
| 78 | `def` | [functionWeightMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/functionweightmass.md) | 812 | `declaration-track:b079a403514b685e76bb2253693ee64c1911f073f7824e2376c4d8c2227aeb9f` |
| 79 | `def` | [permutationWeightMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationweightmass.md) | 819 | `declaration-track:95cdeb7b8624938f25a7446d34f2b4f981e91c071b265b5595011869b3cad66e` |
| 80 | `theorem` | [functionWeightMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/functionweightmass-sum.md) | 828 | `result-track:e6247d6be5fe16ced93755804df7e12589e109d434e511a89a253820eaae8c23` |
| 81 | `theorem` | [permutationWeightMass_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationweightmass-zero.md) | 836 | `result-track:16e146853a43b19326b65b4d60ad5c44caaf73000008da612d6e627e520a0dff` |
| 82 | `theorem` | [permutationWeightMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationweightmass-sum.md) | 841 | `result-track:7b0497527d37316ec10d331387eebd4d7599487be579feceb532720b83fda670` |
| 83 | `theorem` | [permutationWeightMass_eq_conditioned](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationweightmass-eq-conditioned.md) | 867 | `result-track:f6c58ef68d188f36222e7d36960bafdb47f6ed4d6182071c2e2c0b1401f6ec2c` |
| 84 | `def` | [permutationMarginal](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationmarginal.md) | 882 | `declaration-track:28601da05a91220027cc630edbef332b61038d7288037eca5f1d93cb48da8a8d` |
| 85 | `theorem` | [permutationMarginal_sub_half](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/permutationmarginal-sub-half.md) | 886 | `result-track:5fe1ecaf6892ccfe0dff3363e4be047e77369bbec76938e3209d6bff939a5121` |
| 86 | `theorem` | [identity_bijective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-bijective.md) | 905 | `result-track:825918913d4ee35cba41adb63f6a7731f8badedd901660a56af4d53e5caa4704` |
| 87 | `theorem` | [identity_bitDerivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-bitderivative.md) | 910 | `result-track:92ca1c3f7b8d6b9a0e170111a6dd4fc082eb54da23e6bf85e5e7af5e43414fb9` |
| 88 | `theorem` | [identity_sacCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-saccount.md) | 916 | `result-track:04a1ede7d13a4b544c8970a88af1a374aea7ab445dc5a93d1aaa3bef963999a7` |
| 89 | `theorem` | [identity_sacEntry](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-sacentry.md) | 928 | `result-track:f4336af65af815a23363ca07e83060e563b331abc2abd3fccb5f75d0bee1272d` |
| 90 | `theorem` | [identity_sacScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-sacscore.md) | 937 | `result-track:9381cae40f9ee1952cce405de6195844cb10ab9fa0a267388bb14f2236809033` |
| 91 | `theorem` | [identity_varianceScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-variancescore.md) | 951 | `result-track:ee87a53dcc0a5a6ca010eb713181519c79dfa1a21901b6142d57896783b64fcd` |
| 92 | `theorem` | [exists_bijective_with_zero_avalanche_scores](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/exists-bijective-with-zero-avalanche-scores.md) | 960 | `result-track:0e0341fac84c33132fa4b1e1980c9b5b1c5754daf49dd187b02369431d6695e1` |
| 93 | `theorem` | [identity_localJacobian](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-localjacobian.md) | 967 | `result-track:6fcd38dd69afbfe0fe901472d8b31abeb4b14191b80ea314cc7c4d70d6f8000f` |
| 94 | `theorem` | [identity_localJacobian_const](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-localjacobian-const.md) | 975 | `result-track:cc0c4abccb7d229b1b596d5ff22a4d350475f4182316cbe766b2469643780d4f` |
| 95 | `theorem` | [identity_jacobian_effectiveStates_eq_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-jacobian-effectivestates-eq-singleton.md) | 980 | `result-track:ba9ccdfc610cebb9e728bc38511e732cb90cc64b7342bbe24b9e5647f0070464` |
| 96 | `theorem` | [identity_jacobian_effectiveStates_card](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/identity-jacobian-effectivestates-card.md) | 998 | `result-track:49a3519cb865389c3fa41217571e479467c20a8729b93b5b45f46ffd706cfe72` |
| 97 | `def` | [signBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/signbit.md) | 1006 | `declaration-track:f5ddeb68c4a4f71aaddfea75d1ab8923a1cc013c052e9ea9773a2efdf581f8f1` |
| 98 | `def` | [correlationNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/correlationnumerator.md) | 1010 | `declaration-track:2436cb46abc76ac027bd325045153dc2869d5e58b1a64ba61b632575804ab793` |
| 99 | `def` | [signCorrelation](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/declarations/signcorrelation.md) | 1020 | `declaration-track:5871efa3e05181e0b46015a63d32b8ce7d0145456bb1956317ea95daaca3be78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5cc3bdc2e2e5156f3afe98c140fd6c70e24c90471683006b6e5dda1be73f5f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
