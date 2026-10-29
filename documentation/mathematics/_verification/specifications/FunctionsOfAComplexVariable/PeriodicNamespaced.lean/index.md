# Verification target: Periodic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d59faa7120a46b387099af2e9af3b191c65bef14",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d59faa7120a46b387099af2e9af3b191c65bef14`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [qParam](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/qparam.md) | 44 | `declaration-track:c15d05f5feb6cbaa9c2a3500404e9afd74cc559043d3f0b353e249e4a3f7ffd1` |
| 2 | `def` | [invQParam](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/invqparam.md) | 47 | `declaration-track:75103e8bab493cd1f8646d5b056cd7e04036a6b1ce00e65b962611de5a507acd` |
| 3 | `theorem` | [norm_qParam](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/norm-qparam.md) | 53 | `result-track:e84e6d569faff6468eeb338328762bd612daee4d6c22e0e41e233ec9b3fd3113` |
| 4 | `theorem` | [im_invQParam](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/im-invqparam.md) | 60 | `result-track:2e221e1bd0c70d65875b8951de7f7b15a1e5093cf436b9a0c9bf61f77b68366a` |
| 5 | `theorem` | [qParam_right_inv](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/qparam-right-inv.md) | 67 | `result-track:17eb3a1df8e43541762ce9b4ebe7de8f1f2d3506b139e6aa956625fddb98a1d3` |
| 6 | `theorem` | [qParam_left_inv_mod_period](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/qparam-left-inv-mod-period.md) | 71 | `result-track:386f471cbcba63bf020bf1936d1513d5c359bbae42a119f78aa167b16b7dd73c` |
| 7 | `theorem` | [norm_qParam_lt_iff](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/norm-qparam-lt-iff.md) | 78 | `result-track:b199ffa14a0e3c92d07bf24ee5a753b51ac493af21b893d3d7c4b1ea2228e1cf` |
| 8 | `theorem` | [qParam_tendsto](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/qparam-tendsto.md) | 85 | `result-track:93ac8baf403b832ae1cc3a1299a0a2a2da4e3a8eb14bd19c691e0b02ad972e2c` |
| 9 | `theorem` | [invQParam_tendsto](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/invqparam-tendsto.md) | 94 | `result-track:8af969aeeb69036cc587c3d49d93a6684e021bf62e5a200de608cc93945349ce` |
| 10 | `def` | [cuspFunction](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/cuspfunction.md) | 106 | `declaration-track:d8b470c54ff953d24418a9d53ae6831c158caee95c5e26d29a09c2d12fd014a6` |
| 11 | `theorem` | [cuspFunction_eq_of_nonzero](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/cuspfunction-eq-of-nonzero.md) | 109 | `result-track:e30189ad62fe89f78f836135e720c700df7261b718ae43bb4e8401b9dfe1ae3e` |
| 12 | `theorem` | [cuspFunction_zero_eq_limUnder_nhds_ne](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/cuspfunction-zero-eq-limunder-nhds-ne.md) | 113 | `result-track:7c63d6390b750d557ed26bff266a7d737f6385f402945950e361de2fe25ae869` |
| 13 | `theorem` | [eq_cuspFunction](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/eq-cuspfunction.md) | 121 | `result-track:e1c43a2522b0b27e78d310c7cb716db124f8e4dabcc564663f7df839c7ff9320` |
| 14 | `theorem` | [differentiableAt_cuspFunction](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/differentiableat-cuspfunction.md) | 139 | `result-track:b6f33d6a7ba89eb81b00d447c767e0cc6df4fcb0d0338dc6d0a2cbc81aebc73c` |
| 15 | `theorem` | [eventually_differentiableAt_cuspFunction_nhds_ne_zero](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/eventually-differentiableat-cuspfunction-nhds-ne-zero.md) | 162 | `result-track:463d5fc23eceeff92cbc87e1c129bfe989b0464989ff1481da8c3bd3262c33a9` |
| 16 | `theorem` | [boundedAtFilter_cuspFunction](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/boundedatfilter-cuspfunction.md) | 176 | `result-track:48ec2caba2822d42e6b194e7d8cdb7c9c65a2730af23de375bb88b83a9d0c296` |
| 17 | `theorem` | [cuspFunction_zero_of_zero_at_inf](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/cuspfunction-zero-of-zero-at-inf.md) | 182 | `result-track:9f33e9bdac95e0c49a2d9dd3e85cb3d5e9e146fa24fbdb29c7a30ad27eaf20da` |
| 18 | `theorem` | [differentiableAt_cuspFunction_zero](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/differentiableat-cuspfunction-zero.md) | 186 | `result-track:fc8a3cf20ad1197de02b0b9aea2fa57753994549976fa5745c5005391bae5d66` |
| 19 | `theorem` | [tendsto_at_I_inf](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/tendsto-at-i-inf.md) | 208 | `result-track:8505dfc3630916675a2e530f630dae507b1fae01a541fa58f27c3f104159d68e` |
| 20 | `theorem` | [exp_decay_of_zero_at_inf](../../../../FunctionsOfAComplexVariable/PeriodicNamespaced.lean/declarations/exp-decay-of-zero-at-inf.md) | 220 | `result-track:3807b4e72b83f754541ceb84948210060cf5cf59622f3bec90ab6bd9cb5dea5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93b3500958069b4f2236494992046d957124042e2798fc4859867d10891d5fd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
