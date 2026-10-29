# Verification target: Actual Real Mode Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce0222685a4dad378f2b1042bb7402eed5b54f14",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ActualRealModeNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ActualRealModeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce0222685a4dad378f2b1042bb7402eed5b54f14`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/p.md) | 23 | `declaration-track:bc96674695cf78f15b9ed8a87877cab11d6670b7117183d0abbcdc95be13f0f1` |
| 2 | `def` | [normalizedSquare](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/normalizedsquare.md) | 25 | `declaration-track:ab2647fd9e9990fc7afccde18450395f69a4cff0450a03d878c0bd45b5219b2e` |
| 3 | `theorem` | [p_coe](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/p-coe.md) | 28 | `result-track:82590b21d7803e5ad4370ddc29a5498e4561b46ce7f062bf15aa758c2628cf67` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/actual-scaled-square-real.md) | 31 | `result-track:d580bab2d51900f5823ae9246b60c5cbc2428469f298054094ca13860283bbc9` |
| 5 | `theorem` | [p_ratio](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/p-ratio.md) | 57 | `result-track:a0d312c7793da2b163511b5a681d988cdfced32fec64aa62112c91cb1830acaf` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/p-ratio-tendsto.md) | 61 | `result-track:f733c1fcf13eb9d7edb4f007cc46720d6224912fd5838fdaa640c05a3ec78aca` |
| 7 | `theorem` | [normalization_tendsto](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/normalization-tendsto.md) | 78 | `result-track:6fbfbf6e9ce9cf88e178513e6387484f923df5f6a7380d0620c40a3f0fc20d2a` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/exp-scaled-neg-tendsto.md) | 87 | `result-track:39ce0d9a27ae39764856b679235e12d0c0c17659a6f0c38c27333d1e6d37aa08` |
| 9 | `theorem` | [exp_square_rescale](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/exp-square-rescale.md) | 92 | `result-track:dee277008b67e49f15ead09fa06b0b54e46af0a96fc0e1a408ee840aa89c7f23` |
| 10 | `theorem` | [scaled_square_exact](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/scaled-square-exact.md) | 101 | `result-track:665258ac24e5ff16c57837abfcaa258101d12e9175f2f2e6b6b814952ba2400b` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/scaled-square-tendsto.md) | 125 | `result-track:84d89c0656f610926247623083e28118faf62684864831a0f2f5a2d5f25d7879` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/quarter-scaled-limit.md) | 145 | `result-track:0bac5505d9b19a63ec805fbf041da4b0253f859da13284354a3c78d61b8f6a72` |
| 13 | `theorem` | [exponential_scale_tendsto](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/exponential-scale-tendsto.md) | 153 | `result-track:72b3ac71bc21509167cb57f72df00282c2fe6fbd079d0d83dfeed821113ddc1b` |
| 14 | `theorem` | [quarter_square_tendsto_atTop](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/quarter-square-tendsto-attop.md) | 164 | `result-track:671fcd290247ac3d2f8c24c8b194a759fcdb787c5f9d336af7b3d30b5b5c443d` |
| 15 | `theorem` | [bounded_remainder_transfer](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/bounded-remainder-transfer.md) | 177 | `result-track:c5af9b39c7b538f399fb51c3fd4627ba875acdc5ab103f0ee9d5c52e8dffa452` |
| 16 | `theorem` | [scaled_bounded_remainder](../../../../GeneralTopology/ActualRealModeNamespaced.lean/declarations/scaled-bounded-remainder.md) | 190 | `result-track:75786fa0c80ca2e94a847d08d93cb73f69b51e653a9c2742acfe68c41d02bc19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25342c1f209192081c65c59d8756254aa13e71b00c60e0d0a3a01433e470bad4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ActualRealMode/Variantf7c7fa7c90e31b4210ec6c437813077070a0f431e6f1af5dda63c6638ecab0fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
