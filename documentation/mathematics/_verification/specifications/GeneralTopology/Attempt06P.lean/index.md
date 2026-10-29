# Verification target: Attempt06 P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4762ddf623d2c1ff0d5c9f6a26076c2b535609a0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant21a1a496a6bbc461a8689969e86aec6b43cb371cee580c8a7d91e93e19475330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt06P.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt06P.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4762ddf623d2c1ff0d5c9f6a26076c2b535609a0`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt06/Variant21a1a496a6bbc461a8689969e86aec6b43cb371cee580c8a7d91e93e19475330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt06/Variant21a1a496a6bbc461a8689969e86aec6b43cb371cee580c8a7d91e93e19475330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../GeneralTopology/Attempt06P.lean/declarations/p.md) | 15 | `declaration-track:80876c54a5b716839f91fb5f891ef0430e6002bfbc746e0bcdd0f7fe0a1ce3ab` |
| 2 | `def` | [normalizedSquare](../../../../GeneralTopology/Attempt06P.lean/declarations/normalizedsquare.md) | 17 | `declaration-track:ed35910bf33e2ad6c569fcebc218fb24ca27c2002158cdb827bddc11c9695c53` |
| 3 | `theorem` | [p_coe](../../../../GeneralTopology/Attempt06P.lean/declarations/p-coe.md) | 20 | `result-track:89014db3480c011e4dc5522e6d7b8b4e301a6bbf1c11cb5c89cefe7443ad817a` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../GeneralTopology/Attempt06P.lean/declarations/actual-scaled-square-real.md) | 23 | `result-track:c9cbae09372220edd629cdad26c4509be5df46b9c12371fcb530a638dec33314` |
| 5 | `theorem` | [p_ratio](../../../../GeneralTopology/Attempt06P.lean/declarations/p-ratio.md) | 49 | `result-track:d8c5b2c30571155ccbf60f071d455ed6efa10af79d1b6e0213bdf7f3a110ee9c` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../GeneralTopology/Attempt06P.lean/declarations/p-ratio-tendsto.md) | 53 | `result-track:9a10d95b19f938b4064858522dc0b3862c5f9a1ae873f4aa910ceb2969cb7d4b` |
| 7 | `theorem` | [normalization_tendsto](../../../../GeneralTopology/Attempt06P.lean/declarations/normalization-tendsto.md) | 70 | `result-track:045221702df8738771ef2c9598b0e9256516cbea076a7e26353629bc545a1484` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../GeneralTopology/Attempt06P.lean/declarations/exp-scaled-neg-tendsto.md) | 79 | `result-track:9a1f2e59340114dba5f6f0134bfdba689176c1e50c9d9e069a8d7e6a25d8af90` |
| 9 | `theorem` | [exp_square_rescale](../../../../GeneralTopology/Attempt06P.lean/declarations/exp-square-rescale.md) | 84 | `result-track:4d0db746beb7755e225d9cf556077674d8d98e1b2476fc346834bfd32330ddae` |
| 10 | `theorem` | [scaled_square_exact](../../../../GeneralTopology/Attempt06P.lean/declarations/scaled-square-exact.md) | 93 | `result-track:8c070e7df61ac3d0d3864b1c6ce348c6b135b3f5c17e71f4af9e02a8ac077b6b` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../GeneralTopology/Attempt06P.lean/declarations/scaled-square-tendsto.md) | 115 | `result-track:c4b804c11b2d577a2322a727a1620faaddd769033625dd8be6f330b9d8b836fc` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../GeneralTopology/Attempt06P.lean/declarations/quarter-scaled-limit.md) | 135 | `result-track:7c257f2ffe09b8e2057a42103b808071f1929208b65c98907b98fb47dcec5e03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f5f46ee9172916d2daa8edd1138a0e757c5e781fc95559ddab665fefb6d45b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt06/Variant21a1a496a6bbc461a8689969e86aec6b43cb371cee580c8a7d91e93e19475330.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt06/Variant21a1a496a6bbc461a8689969e86aec6b43cb371cee580c8a7d91e93e19475330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
