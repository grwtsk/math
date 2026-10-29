# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q4.Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeac1b7c69e64586849c16031849c37ad5fbbd2e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeac1b7c69e64586849c16031849c37ad5fbbd2e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.IntervalCases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean/declarations/macro-rules--44f80431bab232d94c111af4.md) | 40 | `declaration-track:44f80431bab232d94c111af402e295365731063e9c39a51b5871dcea3db9bc80` |
| 2 | `theorem` | [upper_bound](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean/declarations/upper-bound--116be5da14da6155539bb2a3.md) | 48 | `result-track:116be5da14da6155539bb2a3c5433ab78198a7dde7e4998e62f0ca6c171b4db2` |
| 3 | `theorem` | [imo2019_q4](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean/declarations/imo2019-q4--0053a42407474b46e9e47029.md) | 93 | `result-track:0053a42407474b46e9e470299b484a4df10463ddd339ba7527973e33d1973ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfa6aec2e10ce7b38c802cf7d20c00640b6078593a86f837a1f527bfa7a3b681 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q4/Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
