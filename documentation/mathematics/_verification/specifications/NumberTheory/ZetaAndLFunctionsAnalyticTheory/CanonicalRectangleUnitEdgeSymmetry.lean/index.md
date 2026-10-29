# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "533e881b6db8f06e93797a3030c7256bbd1ef42e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `533e881b6db8f06e93797a3030c7256bbd1ef42e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeBounds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleUnitEdgeBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rightParameter_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/rightparameter-one-sub.md) | 52 | `result-track:e792f457547d8cbca0f970a82245c8deb5035c94fe1c690400cc3e1232cef09f` |
| 2 | `theorem` | [leftParameter_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/leftparameter-one-sub.md) | 58 | `result-track:4b9b0c44a20a7d75cedcd85bf8f18a2941822eb878c4829337393e73f7efc492` |
| 3 | `theorem` | [conj_rightUnitDensity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/conj-rightunitdensity.md) | 66 | `result-track:e69d3822e9f2310cf716dbd8c5a341e1ee3fee36d0c56e62396c6b55802813e5` |
| 4 | `theorem` | [conj_leftUnitDensity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/conj-leftunitdensity.md) | 78 | `result-track:b0a3466e2c4f3f52e7f1087c2f2244ff73e279184847ec2c186a14e0ce116dcd` |
| 5 | `theorem` | [rightUnitDensity_re_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/rightunitdensity-re-one-sub.md) | 88 | `result-track:7839639e9d638eac9a8f2db3ae8bc14c6cdc82690400adcb8fbeaaf8cf82ec5c` |
| 6 | `theorem` | [leftUnitDensity_re_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/leftunitdensity-re-one-sub.md) | 95 | `result-track:9ba4cbf41dda84ae4695cc3d71fa02fb5c53ff8c46ff2f74e81d5453ee147347` |
| 7 | `theorem` | [mem_left_half_or_reflection_mem_left_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/mem-left-half-or-reflection-mem-left-half.md) | 103 | `result-track:8cb1db7c3ae11cc23eede1c963f2d74635ff4953bc0b176a4f60e49b892f82d2` |
| 8 | `structure` | [HalfUnitRectangleEdgeBounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/halfunitrectangleedgebounds.md) | 117 | `declaration-track:a9b3bc0f3ee9a7ce2994f5d9d0d21603639a6e42d503742c141fa3ebf1cbedfc` |
| 9 | `theorem` | [right_full_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/right-full-bounds.md) | 143 | `result-track:5071d5e7b2518c26bcd3fdba373de79d26319fc82200629222dd57de2e4571b3` |
| 10 | `theorem` | [left_full_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/left-full-bounds.md) | 155 | `result-track:8d346b63cad49261e100fd1e8e72762ae3afe192ed75bcacb7840c8d8d148efc` |
| 11 | `def` | [toUnitRectangleEdgeBounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/tounitrectangleedgebounds.md) | 167 | `declaration-track:56afa92ad34c6c9d0af06e99ff714a19cada8729d93c307b440630f659b95525` |
| 12 | `def` | [toRealRectangleEdgeEnclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/torealrectangleedgeenclosure.md) | 184 | `declaration-track:bce92844447b7119fdc58fb209a17503e1c1fde7c854e3fa722934e3303497d7` |
| 13 | `theorem` | [exact_positive_count_of_accepts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/exact-positive-count-of-accepts.md) | 190 | `result-track:9b3bfc5b45d4e1eceff4f281b80a83bf3e53b8757d2709987be5da67fd398bac` |
| 14 | `theorem` | [rhThrough_of_half_unit_edge_count_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleUnitEdgeSymmetry.lean/declarations/rhthrough-of-half-unit-edge-count-margin.md) | 203 | `result-track:c37d281337800033c961793bb8a5fa9edc71b535598bc7390f30cd026ec3a10f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29909615da52481a214a375f15dca8487d07b12d552d57464c627428d51a9e38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
