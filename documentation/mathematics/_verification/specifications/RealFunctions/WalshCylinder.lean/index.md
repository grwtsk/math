# Verification target: GRWTSK.Analysis.FiniteSum.WalshCylinder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6575cccf40801445f3d8eed812cd1b669b27ebc5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/WalshCylinder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/WalshCylinder.lean/index.md) · [Full source](../../../../RealFunctions/WalshCylinder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6575cccf40801445f3d8eed812cd1b669b27ebc5`.

Source path: `GRWTSK/Analysis/FiniteSum/WalshCylinder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/WalshCylinder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitSign](../../../../RealFunctions/WalshCylinder.lean/declarations/bitsign.md) | 34 | `declaration-track:10622ebb4be058e31924fa42ba8aabed3a2df9632a5b6f7a35e76456e3f89887` |
| 2 | `def` | [finiteMoment](../../../../RealFunctions/WalshCylinder.lean/declarations/finitemoment.md) | 39 | `declaration-track:917e3013cd1c8df516694936857dd60c0e4dc06a551de2eb87f493a7d477c91a` |
| 3 | `def` | [rawCylinderSum](../../../../RealFunctions/WalshCylinder.lean/declarations/rawcylindersum.md) | 43 | `declaration-track:a24413e7dbd6b6ceb7720b8fd172d313164867e3d3800a9d61d1da4fe5520863` |
| 4 | `def` | [binaryPatternCount](../../../../RealFunctions/WalshCylinder.lean/declarations/binarypatterncount.md) | 50 | `declaration-track:1eaec0206af664adfd88f0d7542fbb928c09c752f00eecccde598a690d73abda` |
| 5 | `theorem` | [finiteMoment_empty](../../../../RealFunctions/WalshCylinder.lean/declarations/finitemoment-empty.md) | 56 | `result-track:b2265a77606779102a9338643ebe763f61295f189020eb125939fd8f1009cf9d` |
| 6 | `theorem` | [binaryPatternCount_empty](../../../../RealFunctions/WalshCylinder.lean/declarations/binarypatterncount-empty.md) | 62 | `result-track:e9a271fcaf64ce8e7f97ff8bdf3065c6693af3ba9c24a3a8cd97ad92dba4f100` |
| 7 | `theorem` | [rawCylinderSum_eq_sum_moments](../../../../RealFunctions/WalshCylinder.lean/declarations/rawcylindersum-eq-sum-moments.md) | 70 | `result-track:c32821ab48987efe6548d6e68b07b18b8afac1e99bdae693925c241f1cb01390` |
| 8 | `theorem` | [bitSign_match_factor](../../../../RealFunctions/WalshCylinder.lean/declarations/bitsign-match-factor.md) | 96 | `result-track:8c349d8f3ea591c433f7b40698aa6953fd3556cc2e1b6095bc0bbc020bdc94e8` |
| 9 | `theorem` | [rawCylinderSum_eq_scaled_binaryPatternCount](../../../../RealFunctions/WalshCylinder.lean/declarations/rawcylindersum-eq-scaled-binarypatterncount.md) | 103 | `result-track:588d62684cd2280422ab3e003a0603a54fbab90124e8d08219b31457a2e5130d` |
| 10 | `theorem` | [binaryPatternCount_walsh](../../../../RealFunctions/WalshCylinder.lean/declarations/binarypatterncount-walsh.md) | 134 | `result-track:f10e5fe9eca9288dada0975f4476cbfd67a3ddf7c49d4dfa3b853ead39537f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5dd55266d54ce47f0ff22cc147f97ef360d1468420b41bc34b61c4d8b03d7fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteSum/WalshCylinder.lean","GRWTSK/_verification/specifications/Analysis/FiniteSums/WalshCylinder.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
