# Verification target: Gauge Namespaced Le Gauge Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge.md) | 65 | `declaration-track:bd8decc566c19b6efe6826955a101dc9d538ed0bdfd1eed55332afbd4b7cbfbf` |
| 2 | `theorem` | [gauge_def](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-def.md) | 71 | `result-track:1f8e5fd60f581f584e44a263d4fa44f9a8814317f9cfd2c878235704605644f5` |
| 3 | `theorem` | [gauge_def'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-def-source-edition-2.md) | 77 | `result-track:8a3427b8cff6b6d24b669b4dbc36a4ab5f267df09e71f22215d99bd740aa2d0a` |
| 4 | `theorem` | [gauge_set_bddBelow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-set-bddbelow.md) | 82 | `result-track:18889133915b7049487a47d99efd76ec80a60f2ca28f0fbb5ae05d270f7d05e3` |
| 5 | `theorem` | [Absorbent.gauge_set_nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/absorbent-gauge-set-nonempty.md) | 87 | `result-track:f5083ce3a86dbfede4518f564474c629991acb1701ed6e3e289a198d2fb94c47` |
| 6 | `theorem` | [gauge_mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-mono.md) | 93 | `result-track:692a034ad00ce7d87514256ba017ca4f5555362dc7f1725e99f80be547bbbaca` |
| 7 | `theorem` | [exists_lt_of_gauge_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/exists-lt-of-gauge-lt.md) | 97 | `result-track:845bae66228514a7dfaee43819d18d56560dde1b9cb0fd3b347065c9a4e93e76` |
| 8 | `theorem` | [gauge_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-zero.md) | 106 | `result-track:9bf55107adea5bf4e8f01fe38bb2d6b4faca242a70a5ffde9fa5d8927fc49e61` |
| 9 | `theorem` | [gauge_zero'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-zero-source-edition-2.md) | 114 | `result-track:e152da88f0aace9dc4dd8c0d170f1abfe3aaa49830ecaa13dc03df91352f3fac` |
| 10 | `theorem` | [gauge_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-empty.md) | 125 | `result-track:3a2ba079a805327f59887d73600a0b6e777b02d10ba9312a89497ca1144deb2e` |
| 11 | `theorem` | [gauge_of_subset_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-of-subset-zero.md) | 130 | `result-track:9b35ffd8051ed7c61b19b8b18bc584b0c81915c31ba021051ac1a0f5f30a375d` |
| 12 | `theorem` | [gauge_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-nonneg.md) | 136 | `result-track:d6d75e50b7e1c5a0e910ee69f710298830a514643ea075a683ff8bb84557dd84` |
| 13 | `theorem` | [gauge_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-neg.md) | 140 | `result-track:42690788022f4087e2b335e1e387adcfa94a53b8bcf52ded05deee0b131f7ae3` |
| 14 | `theorem` | [gauge_neg_set_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-neg-set-neg.md) | 145 | `result-track:99ea162b404098957cd18df50f8d9155c02e753072d0e03457c359cf2be2da3b` |
| 15 | `theorem` | [gauge_neg_set_eq_gauge_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-neg-set-eq-gauge-neg.md) | 149 | `result-track:8f25018e5d73a549e88fc1576f6f11cd009a86e5cda60aca0b3becd6e4a43688` |
| 16 | `theorem` | [gauge_le_of_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-le-of-mem.md) | 153 | `result-track:2e160cb5b1b5c307807eef058d9cbf6e82e37d91ac6aba57beacfbbcc91fec32` |
| 17 | `theorem` | [gauge_le_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-le-eq.md) | 159 | `result-track:646b5366ad4d984af3a9e69e59ada075f21ccd39f323e368025e76b9c74344d1` |
| 18 | `theorem` | [gauge_lt_eq'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-eq.md) | 177 | `result-track:2191881f200a417abc082fe989e5d2693b8e5c98cb305357bd7706f730368632` |
| 19 | `theorem` | [gauge_lt_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-eq-source-edition-2.md) | 186 | `result-track:bf68072f3c4911b5d3949fd41cab3e8984d8032c8adf3b13e7085d2382a1f6df` |
| 20 | `theorem` | [mem_openSegment_of_gauge_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/mem-opensegment-of-gauge-lt-one.md) | 195 | `result-track:86aee3e07f11f70806631f2192f35c0d1cc8d0ff075e26b6648abd250f34626d` |
| 21 | `theorem` | [gauge_lt_one_subset_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-one-subset-self.md) | 201 | `result-track:2c659cd08f9f6bb7fd5cb8a896aae324473d52ebe5ce073be529f444626e8f37` |
| 22 | `theorem` | [gauge_le_one_of_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-le-one-of-mem.md) | 207 | `result-track:2f917e5b4ba621995fbcc9721faf93c6e0ec8f99ba55497806f3045ebec5f695` |
| 23 | `theorem` | [gauge_add_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-add-le.md) | 212 | `result-track:bd5e24ddb4f0ec3a4ee182842e99ef64f8184f264918f22fd490091ada6c8b0a` |
| 24 | `theorem` | [self_subset_gauge_le_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/self-subset-gauge-le-one.md) | 226 | `result-track:1b304972b4b902fad4e14e6938ffcbb3ee48934f5fc4986e85977c5407ec4d2b` |
| 25 | `theorem` | [Convex.gauge_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/convex-gauge-le.md) | 229 | `result-track:a94575a132f53bc6ddc5204b690c1a7c1eccf047ec1b6bf7385376b354cbe7eb` |
| 26 | `theorem` | [Balanced.starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/balanced-starconvex.md) | 239 | `result-track:01f7aae9b598fd1d96c248327df05467b303b198213b40bf6155d36c2c830f81` |
| 27 | `theorem` | [le_gauge_of_not_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/le-gauge-of-not-mem.md) | 244 | `result-track:2b867f4e9abd6e788780c30af29d7bcca5039d992e8f7d3e2141f34cdf79d3df` |
| 28 | `theorem` | [one_le_gauge_of_not_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/one-le-gauge-of-not-mem.md) | 259 | `result-track:f87d37f76a24fcfaa171749bcd0e664cb9834355e723fdaef163f2281638fd4d` |
| 29 | `theorem` | [gauge_smul_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-smul-of-nonneg.md) | 268 | `result-track:679487b09bc79883d6ea66920bab8ad2efbadae927c3df6a7173c064bec3cf47` |
| 30 | `theorem` | [gauge_smul_left_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-smul-left-of-nonneg.md) | 293 | `result-track:05c96f327d94a51d11a6610c682fc09b0a62186c64f4f8ab5e5327984ed77775` |
| 31 | `theorem` | [gauge_smul_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-smul-left.md) | 314 | `result-track:020ff6dc9a42eabb80123803cf6a189c44af4c84aaea606b9b3b69be45ea9fbb` |
| 32 | `theorem` | [gauge_norm_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-norm-smul.md) | 336 | `result-track:eb06379f12798c7fa9e6b27b86b00efacf4437dbfa8bd57ca3e02239f0e9509b` |
| 33 | `theorem` | [gauge_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-smul.md) | 346 | `result-track:18cabb01c9ebd53e066445ac62ba69e6df72c6e4c4e2856afd1da7046a687dd4` |
| 34 | `theorem` | [interior_subset_gauge_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/interior-subset-gauge-lt-one.md) | 357 | `result-track:16f30c8a826aaa04746f3143e3de10a8c796d6189cbbf172e9694a975d314b9b` |
| 35 | `theorem` | [gauge_lt_one_eq_self_of_open](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-one-eq-self-of-open.md) | 370 | `result-track:c45d046339351ebed909ba09597efed823f179c5eca2266ebbae56adfb72eeb0` |
| 36 | `theorem` | [gauge_lt_one_of_mem_of_open](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-one-of-mem-of-open.md) | 378 | `result-track:a480ea9939e1f1872412611315f54bd23af12638d2458a04ba4fa6cd30ac5b81` |
| 37 | `theorem` | [gauge_lt_of_mem_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-of-mem-smul.md) | 384 | `result-track:3d7761781a07aa0cb61af911c461b3565dc602d4c04bc65019470f4a1948f7cf` |
| 38 | `theorem` | [mem_closure_of_gauge_le_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/mem-closure-of-gauge-le-one.md) | 392 | `result-track:e1f762dc5e278ae0812888cb0735923b3eda4fb5641392fcbe969b226a81cf6d` |
| 39 | `theorem` | [mem_frontier_of_gauge_eq_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/mem-frontier-of-gauge-eq-one.md) | 403 | `result-track:ad25e4b9ebbf53459b6fd39af1d4c67f6f14e3b4140adbcf551e18dde69dae2f` |
| 40 | `theorem` | [continuous_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/continuous-gauge.md) | 419 | `result-track:b45e6ccecd445c65a8b9ae8bc039b78c5541ad40b001c02171a989da9cb1e196` |
| 41 | `theorem` | [gauge_lt_one_eq_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-one-eq-interior.md) | 438 | `result-track:ca7295fecc2de24cb701ea443dc7b4ce2bb4acd9b5235b23c68778b6532d8381` |
| 42 | `theorem` | [gauge_lt_one_iff_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-lt-one-iff-mem-interior.md) | 444 | `result-track:19870e3c8a8cfcfb19990a3ebab45583571c787882d9271452ec7093ce946eff` |
| 43 | `theorem` | [gauge_le_one_iff_mem_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-le-one-iff-mem-closure.md) | 448 | `result-track:e5e058b946ad5b26cb08e90b2534fac46406bcb23b73b2364bd8c94729334214` |
| 44 | `theorem` | [gauge_eq_one_iff_mem_frontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-eq-one-iff-mem-frontier.md) | 454 | `result-track:409537abfa843f3baf43b998c8704f88e0dbd983361321fe095239ed8bd3c639` |
| 45 | `theorem` | [gauge_eq_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-eq-zero.md) | 459 | `result-track:fed9d070220416ae6680f990646eb3f301c7c607f246901251f15c5750425e83` |
| 46 | `theorem` | [gauge_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-pos.md) | 472 | `result-track:b583134a0f83828af6ac3780a35bcb32d45310a969e126dc38bd64018af62260` |
| 47 | `def` | [gaugeSeminorm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gaugeseminorm.md) | 484 | `declaration-track:891c8a8958d1a64355110e19b9b84faa637be820e255ebb8d2f077ec7c338e94` |
| 48 | `theorem` | [gaugeSeminorm_lt_one_of_open](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gaugeseminorm-lt-one-of-open.md) | 491 | `result-track:f1938b8d0ea1342955610dd89c52aa17956fcaa259104913e890e7046fb9f0fa` |
| 49 | `theorem` | [gaugeSeminorm_ball_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gaugeseminorm-ball-one.md) | 496 | `result-track:6556aae4c151a5be65e4fa0e94ec94ea9461991d7867b98c3060138fceb2fb54` |
| 50 | `theorem` | [Seminorm.gauge_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/seminorm-gauge-ball.md) | 505 | `result-track:01a4ccf2c165969b3514310972faceaf422f26d1820cc43118dac235ce20a352` |
| 51 | `theorem` | [Seminorm.gaugeSeminorm_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/seminorm-gaugeseminorm-ball.md) | 530 | `result-track:883c4dd5a44bf77a517654eea269b3e38d4db920696463d3c2f9b808b031bb0c` |
| 52 | `theorem` | [gauge_unit_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-unit-ball.md) | 543 | `result-track:24eae20831df2dfb96f02b3bbcd8cdd5264336af00f3f9f1573bb89a8bc1bd7c` |
| 53 | `theorem` | [gauge_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-ball-source-edition-2.md) | 547 | `result-track:17ee95a71b573e56204ca5252093cb514b66c521dea515fd08d30de6e9126c09` |
| 54 | `theorem` | [gauge_ball'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-ball.md) | 556 | `result-track:073d62b14e02fb3a0501ab8cfea3d4cd0c4c4ddda87e847ccfcbafe129eebe29` |
| 55 | `theorem` | [gauge_closure_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-closure-zero.md) | 561 | `result-track:5edbcf454a89a4a8615d3bfd36fa6f0c866737447cd9a15a5559d1f49ee23793` |
| 56 | `theorem` | [gauge_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/gauge-closedball.md) | 571 | `result-track:52809eb2a2c96b89d7249e6470f8bf30c90b906bb792a86fee02b3e681ed830a` |
| 57 | `theorem` | [mul_gauge_le_norm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/mul-gauge-le-norm.md) | 585 | `result-track:a34fcd2c53b16a6c66872a42a0e7899ed7da3e09df828a3d62fa2fed2aa4c785` |
| 58 | `theorem` | [Convex.lipschitzWith_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/convex-lipschitzwith-gauge.md) | 592 | `result-track:02a865555d75fd2133ac5b2578b9dd062f32997aab6252dee73dd6c39831c153` |
| 59 | `theorem` | [Convex.lipschitz_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/convex-lipschitz-gauge.md) | 604 | `result-track:1c9b9efcc2eebe70482bacbc9c81ad27b325bc42695005b9d9de31f3b4a14e5b` |
| 60 | `theorem` | [Convex.uniformContinuous_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/convex-uniformcontinuous-gauge.md) | 609 | `result-track:75a06368f25180440fc4a1c6077c3c23c96e13aec7a141a868fe51b26f1a378c` |
| 61 | `theorem` | [le_gauge_of_subset_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeNamespacedLeGaugeOfNotMem.lean/declarations/le-gauge-of-subset-closedball.md) | 621 | `result-track:2c25e2d8587ea498fcf2ef3b5c3d68ae70b4586fa6193f92891568130924f8f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1818e7ad293cd08c65532223c28026ab01a1b4c9867fb8595d08f1f3632d3b3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
