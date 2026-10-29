# Verification target: Uniform On Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88095a17a0f3ec86eb0a3a33f65e20ef52a03f27",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variantef9b15025a2af78a0502d78f9951a1cfc282e82d1109b1249f478d63a3a12009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88095a17a0f3ec86eb0a3a33f65e20ef52a03f27`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variantef9b15025a2af78a0502d78f9951a1cfc282e82d1109b1249f478d63a3a12009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variantef9b15025a2af78a0502d78f9951a1cfc282e82d1109b1249f478d63a3a12009.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ConditionalProbability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformOn](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon.md) | 61 | `declaration-track:18397f14cce527f84b0b9f902cb6d9e74cc58f8364b4003928b391b80c256c6e` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/instance.md) | 64 | `declaration-track:76b31cea4fe8cfaa424afb3847bf9f20e73c66530a2d05ce8b2cc3935f067afa` |
| 3 | `theorem` | [uniformOn_empty_meas](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-empty-meas.md) | 68 | `result-track:83b26014b8f0b489fd37a565015ac7ca12b9837ef186faf14437900d6c441c32` |
| 4 | `theorem` | [uniformOn_empty](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-empty.md) | 70 | `result-track:fb5ecd08a338affbcef6655f23e7c5d275baacb1b631e3d3a0734e4d71306b60` |
| 5 | `lemma` | [uniformOn_eq_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-eq-zero.md) | 74 | `result-track:7446fc8ca66da38506e78b2d6c81449697120e10ee3022867469b82b05e95537` |
| 6 | `lemma` | [uniformOn_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-eq-zero-source-edition-2.md) | 79 | `result-track:fe20910066fdab93b0dd646bb0576823c706ebaecf712946feccfc48c1325f75` |
| 7 | `theorem` | [finite_of_uniformOn_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/finite-of-uniformon-ne-zero.md) | 82 | `result-track:4d37ec01a4a068f864a3b42c02be38d68da54ee5f85e7e432c0467888eebe8a1` |
| 8 | `theorem` | [uniformOn_univ](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-univ.md) | 86 | `result-track:bdf3e05d9a673b9ac073cb1463c70acce5d50ec4729c7d1d7c0885915141bfde` |
| 9 | `theorem` | [uniformOn_isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-isprobabilitymeasure.md) | 92 | `result-track:b0af9a3ec9864a63cc31ff005255778eff3972e6d20c1b162485e0414b5edc96` |
| 10 | `theorem` | [uniformOn_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-singleton.md) | 98 | `result-track:28abb5159bb056d0850225f76f7facab0023c32b20a988c09aa3ace01d6cdab5` |
| 11 | `theorem` | [uniformOn_inter_self](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-inter-self.md) | 108 | `result-track:72350a6cc4e259488ab54e2357e79b4bdb76cccce69e1bb0bbba09c516265975` |
| 12 | `theorem` | [uniformOn_self](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-self.md) | 111 | `result-track:ab28a0c3de510c08adb8c6d38b3dd35dbd3222e6bde969acb1822e21afe842e4` |
| 13 | `theorem` | [uniformOn_eq_one_of](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-eq-one-of.md) | 116 | `result-track:5a35f0521f874b625828516920ac2a72818dae4e8b9492ed67a1f28549761ffb` |
| 14 | `theorem` | [pred_true_of_uniformOn_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/pred-true-of-uniformon-eq-one.md) | 123 | `result-track:23dab50be9f4ce7c7d8287c930648b8c509560f14b1e71706e3669cb7098acb1` |
| 15 | `theorem` | [uniformOn_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-eq-zero-iff.md) | 133 | `result-track:0e855f3d62235330a502b4c3bbdfc5455755c2c1dccea57ac0499e57f14ac0bb` |
| 16 | `theorem` | [uniformOn_of_univ](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-of-univ.md) | 137 | `result-track:93eb60be516546a99b979fd4a86fa997c85654b1da571fdf9fd7f50c2ef6e042` |
| 17 | `theorem` | [uniformOn_inter](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-inter.md) | 140 | `result-track:d45219ffdce553e17f400b2205284e762fe82d8aaa857ce226eeb8d8eea15e33` |
| 18 | `theorem` | [uniformOn_inter'](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-inter-source-edition-2.md) | 152 | `result-track:f2acc19d1759c5617a01304e580feabb3b38dfeda3cfcbe96039df10abdde6ee` |
| 19 | `theorem` | [uniformOn_union](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-union.md) | 157 | `result-track:bf565906254e4f9c5b7711f9732d2d764a22204b75e3762d66ddc4227c2995c4` |
| 20 | `theorem` | [uniformOn_compl](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-compl.md) | 163 | `result-track:124957da5a57a2c3b9a1f8ed3662ec4ecf44b0b84da7471986160b6e5dcff753` |
| 21 | `theorem` | [uniformOn_disjoint_union](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-disjoint-union.md) | 168 | `result-track:a5b250dc7e50ac077ba4a2a1750b5cc12d88a0a73839bb259bd590cb9a8d2246` |
| 22 | `theorem` | [uniformOn_add_compl_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformOnNamespaced.lean/declarations/uniformon-add-compl-eq.md) | 190 | `result-track:bb98c66df8788860a152d865ebad5692a0b700628d8386f8f4b43e7073fdfeba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07e95a441b4a22f824822dd2a576285e08ef1776452c22fa056a1623a5c22e2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variantef9b15025a2af78a0502d78f9951a1cfc282e82d1109b1249f478d63a3a12009.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variantef9b15025a2af78a0502d78f9951a1cfc282e82d1109b1249f478d63a3a12009.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
