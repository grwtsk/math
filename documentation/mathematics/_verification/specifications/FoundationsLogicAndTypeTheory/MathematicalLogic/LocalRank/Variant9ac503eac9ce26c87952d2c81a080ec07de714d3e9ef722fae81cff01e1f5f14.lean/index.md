# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRank.Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11182fd019aea7c743e9870e58ce75550014682c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11182fd019aea7c743e9870e58ce75550014682c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.OrdinalTally.NormalForm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Frontier.MajorityCrossing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalRankCertificate](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean/declarations/localrankcertificate--87cab3a5cb5c0e577c339319.md) | 23 | `declaration-track:87cab3a5cb5c0e577c339319bfe8488b91d31c3067c2d08d39d5b4afa05cb954` |
| 2 | `def` | [LocalRankCertificate.tallyCode](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean/declarations/localrankcertificate-tallycode--272cae5114a0481589329666.md) | 29 | `declaration-track:272cae5114a0481589329666e112e4e2fd9e3e89e8a4ca937c13480bb6c65377` |
| 3 | `theorem` | [localRank_equal_iff](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean/declarations/localrank-equal-iff--6747d07fbd52a8aecd28f661.md) | 37 | `result-track:6747d07fbd52a8aecd28f661ff655269133389cdd5547c7c3e6230a28b32b3be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f39b19acab192d3a10d78c6e1f4b97dcf616f3d78a6ac2be05d7bbde0aed7732 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalRank/Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
