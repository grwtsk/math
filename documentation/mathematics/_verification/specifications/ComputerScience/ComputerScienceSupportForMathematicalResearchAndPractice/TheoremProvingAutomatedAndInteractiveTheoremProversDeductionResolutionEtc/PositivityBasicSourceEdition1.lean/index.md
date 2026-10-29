# Verification target: Positivity Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cf26035ad225746e6ff5b8c3e088434befee3dd",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cf26035ad225746e6ff5b8c3e088434befee3dd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.PosPart` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-pos.md) | 29 | `result-track:5aaa6b20262c1b78f9cbbe1d3ce0adc464ab4904e2469855c6d87a9edb52bddd` |
| 2 | `lemma` | [ite_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-nonneg.md) | 32 | `result-track:e89437c0751cb5c34387155db0e2356995795a3eb3f2168d16faed7138d37715` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-nonneg-of-pos-of-nonneg.md) | 35 | `result-track:69947bd782b2eb31c6fce3a33ba0d0afdbda1de7ec1839d0cd257f21cdcf32fe` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-nonneg-of-nonneg-of-pos.md) | 38 | `result-track:a1c7089c81c4b37307f13f29d7de16e7d7152227060cf0a5d1e9cc7dbc76f49b` |
| 5 | `lemma` | [ite_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-ne-zero.md) | 41 | `result-track:bf2d0498fe205b7b63e28b06b63246c058c3bee018f84ba7c8fd0691a0b91087` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-ne-zero-of-pos-of-ne-zero.md) | 43 | `result-track:7be37784f73b7de0fd4a16dd293d17a35abad7d95bfb887ab5af972b96349be4` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/ite-ne-zero-of-ne-zero-of-pos.md) | 47 | `result-track:777e4f06a01ed66c3fc43c105b4b36a3d30f4094fb3645a67d4bec5ada0e0533` |
| 8 | `def` | [evalIte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalite.md) | 55 | `declaration-track:71844ce4e84ef700a4b927311e6f128ccadd462c5450d0eefbd359c1c43cbfd5` |
| 9 | `lemma` | [le_min_of_lt_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/le-min-of-lt-of-le.md) | 89 | `result-track:da1062b358f1cfb812348eff760ffa787bd30d03d900e3c3e840a5e3bd4d3113` |
| 10 | `lemma` | [le_min_of_le_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/le-min-of-le-of-lt.md) | 90 | `result-track:13e70b0699feb9678e96a7eadc8656b621f43251e5b11e560c1066103b9e91be` |
| 11 | `lemma` | [min_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/min-ne.md) | 91 | `result-track:31104ec60788e1f5081497339a14c1ce09cb3db711610b4b0e854358c872ae01` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/min-ne-of-ne-of-lt.md) | 94 | `result-track:4665c1a687009aaee29c6650e74fee9539b41066a484cdb228d35c94206f34b8` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/min-ne-of-lt-of-ne.md) | 95 | `result-track:1ded9d77246a6185976c47a914f0a447aad38e4d984b2a832114685048ed7781` |
| 14 | `lemma` | [max_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/max-ne.md) | 97 | `result-track:d452ad52bbadc8fb3f2aafa568be10a8e5a9b3b27b36a1d440e145b61abdd621` |
| 15 | `def` | [evalMin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalmin.md) | 104 | `declaration-track:f57d7a5d2355b4665b97749951e4ce599c895201beee09544b02f374ddd5368b` |
| 16 | `def` | [evalMax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalmax.md) | 123 | `declaration-track:8bec265ee95ca0f3ad6aa50a87f3db8a3b135ba65ec3b90050dd21794af7ac2e` |
| 17 | `def` | [evalAdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evaladd.md) | 152 | `declaration-track:6f525453b7cfa37b37c6f2ed8e16f16b9a69c7d24141d3e1fccd8f7bf283345a` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/mul-nonneg-of-pos-of-nonneg.md) | 175 | `result-track:83164fd1ca83c11e59731559aea99f00f06d4814f4c7dd860276c7c26780de39` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/mul-nonneg-of-nonneg-of-pos.md) | 180 | `result-track:881b84f0ac7da371999596ead54476ff22be7a520ee06f09d13f0064ec3dff96` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/mul-ne-zero-of-ne-zero-of-pos.md) | 185 | `result-track:a85e20cb28bbda683faf3e9d511a7c7969c14ace9b32c042288731fef125f8c5` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/mul-ne-zero-of-pos-of-ne-zero.md) | 190 | `result-track:3720448ad9cc51ef7be8559ab4d76fdd608331049aa0a74f1bbb47861f20a417` |
| 22 | `def` | [evalMul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalmul.md) | 197 | `declaration-track:c28aac3086d4d1fa0410de25a15ed2e609522facb4096dd8124a6bf3de7558fe` |
| 23 | `lemma` | [int_div_self_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/int-div-self-pos.md) | 224 | `result-track:c9a3a2dd171cce8a205fb85ff2c04f82b3b7aa6320c86f9b58687b947b0411d5` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/int-div-nonneg-of-pos-of-nonneg.md) | 227 | `result-track:d919d782836204db95e9b4dea9b61ca49269eba2e6f0673e2cb68f4f6581c817` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/int-div-nonneg-of-nonneg-of-pos.md) | 230 | `result-track:1631656a397c7b5f9812a5c909837152087ce2e9ef6b28df5bf8241c82755ad3` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/int-div-nonneg-of-pos-of-pos.md) | 233 | `result-track:4c013b2fac6c8299b2487d30e60c9a9afc6f6c96024f93c9ffd6ed72ab39a8cd` |
| 27 | `def` | [evalIntDiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalintdiv.md) | 238 | `declaration-track:c0f1f5058f7d48f57201bf343e5b26b42e6f9d1929b6ae658cfe976840ab278f` |
| 28 | `theorem` | [pow_zero_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/pow-zero-pos.md) | 259 | `result-track:a3459f6d2e2e57b5e526ab76c8dd5447850109662bd37c9c093b6ea9b7ce6285` |
| 29 | `def` | [evalPowZeroNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalpowzeronat.md) | 266 | `declaration-track:06511747998c96e01de82551364c01321d1c4f9d5c90b0f3ce9842862bf247d8` |
| 30 | `def` | [evalPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalpow.md) | 277 | `declaration-track:3e088cff1b7de58defce98812922f84dc8d019d840fe338010d9d677a93436c4` |
| 31 | `theorem` | [abs_pos_of_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/abs-pos-of-ne-zero.md) | 327 | `result-track:8b7fee033509b03315a93cc8e6f6bddab5d6ea7894578e612f06c375b716e892` |
| 32 | `def` | [evalAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalabs.md) | 332 | `declaration-track:6a51d6f1ac0a600fa08a15176972f891d95d581cbfb5b217217c5facbdf38877` |
| 33 | `theorem` | [int_natAbs_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/int-natabs-pos.md) | 347 | `result-track:c7218572dca55458cf91878b19bcfbfcffe54727491730c0b7f888154ca5f9a8` |
| 34 | `def` | [evalNatAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnatabs.md) | 355 | `declaration-track:96dd7215476c7185ba8cd5a5490f28550f060621fb2f800d2d5c80f64970921a` |
| 35 | `def` | [evalNatCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnatcast.md) | 377 | `declaration-track:47d20346b8dfdd253c271e88d156b185eee427b9a8029621e76cfa85d5b321ec` |
| 36 | `def` | [evalIntCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalintcast.md) | 395 | `declaration-track:616936262eed668a768daf10139556fdc0c725b37098ad4ee3c32487b908af99` |
| 37 | `def` | [evalNatSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnatsucc.md) | 423 | `declaration-track:51b764dc6aba32466e9c76bd47c20036a5ce0cae8b5b2f7580bfe4d4dfc2d101` |
| 38 | `def` | [evalPNatVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalpnatval.md) | 432 | `declaration-track:ba9e94f59655b2b39bce67c74fa1846367b09127b4c2fdcd1f8a3987cd60496f` |
| 39 | `def` | [evalFactorial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalfactorial.md) | 441 | `declaration-track:c9bada403cfbad0fc92d948bbc792e13f56a2de096e6079addf934b2529acf93` |
| 40 | `def` | [evalAscFactorial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalascfactorial.md) | 450 | `declaration-track:15b4385c1ac57dbf091bd9d174d4193ed7a5429a19b6361a29cbac75799df28d` |
| 41 | `def` | [evalNNRatNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnnratnum.md) | 466 | `declaration-track:9941e94a2c3afa4c6a0785810a029704145fdca0718933d667bec78a203d3961` |
| 42 | `def` | [evalNNRatDen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnnratden.md) | 480 | `declaration-track:59c336d9ddf7019a84427adc013a5449bada21ffbfe40c0db24629d035b27f16` |
| 43 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/example-source-edition-2.md) | 489 | `declaration-track:849cd2e6554d82d374c77815fda32db5a3ca0f921c61297f58b0e9f19bcf39de` |
| 44 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/example.md) | 490 | `declaration-track:2966e45fb361c77b7a1edcb007d52b998030b15c0898c82978ad28d04f87cd07` |
| 45 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/example-source-edition-3.md) | 491 | `declaration-track:c37ebfc806072d497a5a655abccef3b6d72adeca5afcfae88b3e381314812bd5` |
| 46 | `def` | [evalRatNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalratnum.md) | 504 | `declaration-track:5b4f56a48f1d063933910c30dc1a90c18d5f3f877acfeec5e50e0dfc3c57278e` |
| 47 | `def` | [evalRatDen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalratden.md) | 519 | `declaration-track:d3fa5e4ba3bb594e58cd56ab613222e9096e293db9bb638e8073cd3d72fc669e` |
| 48 | `def` | [evalPosPart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalpospart.md) | 528 | `declaration-track:5a5377acfea50668eea0c694282fb594c389466610a650340d023ad396318692` |
| 49 | `def` | [evalNegPart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/declarations/evalnegpart.md) | 543 | `declaration-track:cce4d62e265a5584ab46fcc416bc8abd1f29e44197d5992e7963b9aac5d2d57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6598fef854409f8dce73abaac4e2ef39b4d2de098911ed2d2df10b4c001d8a3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
