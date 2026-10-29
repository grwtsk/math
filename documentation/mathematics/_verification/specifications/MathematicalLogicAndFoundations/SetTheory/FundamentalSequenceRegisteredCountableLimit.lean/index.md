# Verification target: Fundamental Sequence Registered Countable Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d58862f033fea28613aa7532b7b1babd4b3d31e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d58862f033fea28613aa7532b7b1babd4b3d31e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Family` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.NormalForm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegisteredCountableLimit](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/registeredcountablelimit.md) | 15 | `declaration-track:9f7584fba0682d0b57d3c17f0e2e079990f311e9ae0b73357ee1fbd57e4cca9f` |
| 2 | `theorem` | [stage_lt_target](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/stage-lt-target.md) | 40 | `result-track:1e509ca9d3a845a5d61b4fd66fab8e23b3ebedcfaae9644d1356fc3cdbfaf556` |
| 3 | `theorem` | [has_declared_supremum](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/has-declared-supremum.md) | 47 | `result-track:6253d15bed6a0eef4eecd553aeb8601bb11349e1767ae7e62b6c73e4da6e199e` |
| 4 | `def` | [SemanticallyEquivalent](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/semanticallyequivalent.md) | 54 | `declaration-track:cd6558c3da404d588f74caddc9f0a5c3deb32b6bf9c782b9a5e70d6aa18fa1bc` |
| 5 | `structure` | [EqualityCertificate](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/equalitycertificate.md) | 61 | `declaration-track:360f5ce967a4e7896ecfbc965a3a38838e89c4f04bf4e9923b9ad8e55bde1e36` |
| 6 | `structure` | [CountableLimitRegistry](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/countablelimitregistry.md) | 77 | `declaration-track:7c17cccea76c0914ec5a32d772d88caa065c5a3d153e39b2e52cecf764e67213` |
| 7 | `def` | [CountableLimitRegistry.Admits](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/countablelimitregistry-admits.md) | 82 | `declaration-track:34fc1f936993064e2813d840cf8c0a2b544969e8ed6569731142d00e61df5e5b` |
| 8 | `def` | [CountableLimitRegistry.AdmitsTarget](../../../../../MathematicalLogicAndFoundations/SetTheory/FundamentalSequenceRegisteredCountableLimit.lean/declarations/countablelimitregistry-admitstarget.md) | 88 | `declaration-track:d9a238a2068e59df9c6e50d6535565b953f6f93f276f3fa656d6814dcaea4843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f1094d868a51e8d36c6f077a1b401bfe4a306c7fa0a3ebedb57d8eaa5487b65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
