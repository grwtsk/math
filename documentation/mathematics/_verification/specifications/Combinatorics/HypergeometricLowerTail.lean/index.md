# Verification target: GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d585c34e73d979b5517cc5c0ebba6107cf40c1cf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/HypergeometricLowerTail.lean/index.md) · [Full source](../../../../Combinatorics/HypergeometricLowerTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d585c34e73d979b5517cc5c0ebba6107cf40c1cf`.

Source path: `GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/HypergeometricLowerTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Sum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_mul_pow_le](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/choose-mul-pow-le.md) | 20 | `result-track:2701e5405fcc03f4561a7b82d4fbd636883ca9c58a705a24ccbb642313cf160b` |
| 2 | `theorem` | [choose_ratio_le_pow](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/choose-ratio-le-pow.md) | 49 | `result-track:397fe2195dc3fe4e6493221deb50d34c7db7ecf155b637aa809e3744d4fe48ef` |
| 3 | `theorem` | [log_two_lower](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/log-two-lower.md) | 57 | `result-track:4c4d7202ac8e5d77f79f63074bd1c8c3c2733d45705cb3270b945d9667eb16ad` |
| 4 | `theorem` | [log_seven_quarters_upper](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/log-seven-quarters-upper.md) | 66 | `result-track:f81baf2d57e5c0941d12a9b6487f854c87d00b8073d87b17942e5373c4be88d3` |
| 5 | `theorem` | [intersection_choose_sum](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/intersection-choose-sum.md) | 76 | `result-track:130e2ae9f5c10c20aa795a644a8d7068f742e8f3f42216130e43d392f4ec9aed` |
| 6 | `theorem` | [sum_choose_eq_two_pow_of_le](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/sum-choose-eq-two-pow-of-le.md) | 102 | `result-track:36933882ea5da722398ac83e37d7ab8b0334c7fbbe1f09592e10633941d71eb4` |
| 7 | `theorem` | [two_pow_intersection_sum](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/two-pow-intersection-sum.md) | 112 | `result-track:9a3e12122403775e7fdab8d256bdc42ce45833b1eae08cfd43e78bfdce785a66` |
| 8 | `theorem` | [two_pow_intersection_expect_le](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/two-pow-intersection-expect-le.md) | 132 | `result-track:6ce6e041f09908a9f755e451de111b18fa05d4fcb800bc0156f7208ccb3861ba` |
| 9 | `def` | [lowerTailProbability](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/lowertailprobability.md) | 167 | `declaration-track:2beca1a3d93f966d0ec056f361c5fb29ce3d3df1156f425484ecd535baf13a18` |
| 10 | `theorem` | [exp_log_two_mul_nat](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/exp-log-two-mul-nat.md) | 172 | `result-track:dc18b64c01d1f72d8177cb912554dc6ef8e1bfeb32def58bb9ec58de9f3b80e0` |
| 11 | `theorem` | [intersection_complement_card](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/intersection-complement-card.md) | 175 | `result-track:bd09e512ca1f7c3d1b39efa3ebe576b055643d7143ce08c7a968646f5442fe59` |
| 12 | `theorem` | [lowerTailProbability_le_exponential](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/lowertailprobability-le-exponential.md) | 189 | `result-track:74225eaab2ab3869e0127a528c8c1300cfc5c82cd84be14924c067d860e0ed51` |
| 13 | `theorem` | [lowerTailProbability_quarter](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/lowertailprobability-quarter.md) | 239 | `result-track:5018e853e2bf3c4dd1ab8986ee14891b0c36e94f1174fa339e97a921f05e971d` |
| 14 | `theorem` | [lowerTailProbability_threeQuarters](../../../../Combinatorics/HypergeometricLowerTail.lean/declarations/lowertailprobability-threequarters.md) | 262 | `result-track:d2ec836050d329f0efd35144cb5ceb443edd78eb46ff22f184ff97cf296ef4c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af32b38e172047ea5953a3252dad8fab23b8fdb9a2be11c4c7895f48a94dbf10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
