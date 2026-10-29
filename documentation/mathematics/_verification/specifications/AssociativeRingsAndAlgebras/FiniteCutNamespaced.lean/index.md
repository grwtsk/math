# Verification target: Finite Cut Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e75e58c31a606757877a26bcd1b6967f93675057",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteCut/Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e75e58c31a606757877a26bcd1b6967f93675057`.

Source path: `GRWTSK/Algebra/FiniteCut/Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteCut/Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.Closure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Stratum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteReflectiveCut](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/finitereflectivecut.md) | 27 | `declaration-track:ba759a08b5c6c796bf5dce2dd22e5ff8588818412b0b6a45cc31ebf2de492e0c` |
| 2 | `abbrev` | [State](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/state.md) | 52 | `declaration-track:4ca45feacc78346dc0c96caeec818e72c69e46a68609afe59b852713756f5a3f` |
| 3 | `abbrev` | [Law](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/law.md) | 62 | `declaration-track:a9edb9e2690d6bdd43b2ac0e059ca3bc17ddcaab61b6edea7307c9da1f4f86f5` |
| 4 | `abbrev` | [Automorphism](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/automorphism.md) | 72 | `declaration-track:e6456a5acc93fa9eaaeb1af1bef5e7195c0d43128ba969cf31c75adcfac4e515` |
| 5 | `abbrev` | [Algebra](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/algebra.md) | 82 | `declaration-track:b3024fecf00b83652cdf403d9194dddceb0c2486fb7e841db222f7684c10ad62` |
| 6 | `def` | [stableTrace](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/stabletrace.md) | 95 | `declaration-track:97b77055c920e49ac786e883f0685b82764ce2dc7ef606a077a9410a88d0cb59` |
| 7 | `theorem` | [stableTrace_eq_canonical](../../../../AssociativeRingsAndAlgebras/FiniteCutNamespaced.lean/declarations/stabletrace-eq-canonical.md) | 107 | `result-track:6c53e5a3ae4ab729f435a9fd11a2a5f8e83ca0902ea098e5eda8c345b839ab92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0e603ef2a55ee2c28025d4b7232759bd91ec30d3980f8c23430c526945a2093 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteCut/Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357.lean","GRWTSK/_verification/specifications/Algebra/FiniteCut/Variant3c3a4a042ea55e23303b22c208c755c84b03f3996d44a230390577b09016c357.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
