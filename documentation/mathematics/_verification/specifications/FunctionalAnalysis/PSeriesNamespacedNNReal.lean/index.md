# Verification target: PSeries Namespaced NNReal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5eeae7a0f8be1a888dbb4f710db6cec92c01536",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5eeae7a0f8be1a888dbb4f710db6cec92c01536`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/macro-rules.md) | 39 | `declaration-track:4482da51f69685874c9ae7d2b4cad2e9ea290af2be13d23a63ffbaa5007845f0` |
| 2 | `theorem` | [le_sum_condensed'](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/le-sum-condensed-source-edition-2.md) | 59 | `result-track:6d8f86177cdb3a8f6b906671365346a750fabb2beeeb819ccdb2e32d1f612546` |
| 3 | `theorem` | [le_sum_condensed](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/le-sum-condensed.md) | 73 | `result-track:152af7f0a716d2a47d88fe5d866208ac798db1b3bbcaf46b848a221274a299c8` |
| 4 | `theorem` | [sum_condensed_le'](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/sum-condensed-le.md) | 79 | `result-track:d8ef7dcc84bcbcd9ed2140d33097d8eb6b05345faee6b23c48d3c72b8acbf7aa` |
| 5 | `theorem` | [sum_condensed_le](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/sum-condensed-le-source-edition-2.md) | 95 | `result-track:fc691ef0380cd6e57eb3faa69b2bc688703ec8340c13bc7fe2f35e49e07538cd` |
| 6 | `theorem` | [le_tsum_condensed](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/le-tsum-condensed.md) | 107 | `result-track:71d80a6dd9a2a6e76cb147242a2cce1c9731e164a3556d319a0fd0abf316edf1` |
| 7 | `theorem` | [tsum_condensed_le](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/tsum-condensed-le.md) | 115 | `result-track:6dd3495bef3e7e4c307233e35d0bac1ba6a6a1f4641488b5fc14cf75aeacfdb8` |
| 8 | `theorem` | [summable_condensed_iff](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/summable-condensed-iff.md) | 131 | `result-track:4d282eaa20e330653f477abf905189cd1f03ac41fc2cb829bfdcfcdaf6184a1c` |
| 9 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/summable-condensed-iff-of-nonneg.md) | 147 | `result-track:8bf253bd3e5e374e1bd127882a865bc28e47992e8a0c9087dccb432fa8a289ed` |
| 10 | `theorem` | [Real.summable_nat_rpow_inv](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-nat-rpow-inv.md) | 170 | `result-track:59c79512e299477b2991b6c52c27e85361ca7e780f5078ce5a05959957c8a57e` |
| 11 | `theorem` | [Real.summable_nat_rpow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-nat-rpow.md) | 204 | `result-track:d53785986dff3678537082b30bebbcaefb4fede531b36c040f4e65617d049ef6` |
| 12 | `theorem` | [Real.summable_one_div_nat_rpow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-one-div-nat-rpow.md) | 211 | `result-track:127b5c99e94adfd5e3dd2403d2990a1896034b4717b785d29c4c8f1146820ad1` |
| 13 | `theorem` | [Real.summable_nat_pow_inv](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-nat-pow-inv.md) | 220 | `result-track:ca017f40fe0b0efc666347633fa90155751184b571a531bc9676978410851aac` |
| 14 | `theorem` | [Real.summable_one_div_nat_pow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-one-div-nat-pow.md) | 227 | `result-track:5d1005fcef6a3339a606822b14effc11756bcf8c845d32b0f8fa83afec15f5c1` |
| 15 | `theorem` | [Real.summable_one_div_int_pow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-one-div-int-pow.md) | 234 | `result-track:1b5ad6a42b4020fe90ddbc1d30875ef079dda8497b610ecdb51951564d44e76d` |
| 16 | `theorem` | [Real.summable_abs_int_rpow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-summable-abs-int-rpow.md) | 245 | `result-track:3fe3898cbddecbed908bae376641a057d253955d8c98421706a63dab5cc64a66` |
| 17 | `theorem` | [Real.not_summable_nat_cast_inv](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-not-summable-nat-cast-inv.md) | 263 | `result-track:d35bf905fbbb083ec727bacffef63a64007f93cec971aba61848d94d950ab3a2` |
| 18 | `theorem` | [Real.not_summable_one_div_nat_cast](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-not-summable-one-div-nat-cast.md) | 270 | `result-track:d8ab641e82c6d557d99832a0c793bc539187ee8de965b382c6328b290cbdcf0d` |
| 19 | `theorem` | [Real.tendsto_sum_range_one_div_nat_succ_atTop](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/real-tendsto-sum-range-one-div-nat-succ-attop.md) | 275 | `result-track:6415606c78efa22eca94724d5f5943a6751b147d45ee53bb38afa5a54438045b` |
| 20 | `theorem` | [NNReal.summable_rpow_inv](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/nnreal-summable-rpow-inv.md) | 283 | `result-track:01afdcf5b0ae06c1d91d6a44a217aab5f51ab58d3c679acfcd3e6c0b0822124b` |
| 21 | `theorem` | [NNReal.summable_rpow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/nnreal-summable-rpow.md) | 289 | `result-track:01179c72d4802e75da8044f9019eb8cc41bc1d21e10211954544c90d81486712` |
| 22 | `theorem` | [NNReal.summable_one_div_rpow](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/nnreal-summable-one-div-rpow.md) | 293 | `result-track:209b83b33130039990b2b3d9221544ce08b0858d4c5ab0b88de6e1610e7d3810` |
| 23 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/sum-ioc-inv-sq-le-sub.md) | 304 | `result-track:f54f91603db46a0fe957320ca9c6c082fd1d031f27ae90d0e7ce0ff0f5c3df72` |
| 24 | `theorem` | [sum_Ioo_inv_sq_le](../../../../FunctionalAnalysis/PSeriesNamespacedNNReal.lean/declarations/sum-ioo-inv-sq-le.md) | 324 | `result-track:0c72163526e8e8b925452793afdf0ac427314cf5e001d310b81dfaa163064ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6647ba0150016b87c609e4c16f8cfee3c31df85f9f5d4cfd524e6ad62c832c88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
