# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability.BooleanClauseCounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059c607ea90649a37618210e9cd28c5cf08fc9a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059c607ea90649a37618210e9cd28c5cf08fc9a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanAssignment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/booleanassignment.md) | 29 | `declaration-track:6f4eba73f7e924249849da6fe7db5f8cf04e35402f4f0c2f25f8ff5e7e5eb8b3` |
| 2 | `abbrev` | [ClausePolarity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/clausepolarity.md) | 32 | `declaration-track:dcd99c4f38a73cd04112fa420549c0852ed5070ba6170d11027a9fd2831f4d9e` |
| 3 | `def` | [falsifyingAssignment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/falsifyingassignment.md) | 35 | `declaration-track:96f3d4f646e588fa183d245627b4221c4562be7255d641d037407f45202edeeb` |
| 4 | `def` | [ClauseSatisfied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/clausesatisfied.md) | 41 | `declaration-track:f91bb543930fceb5ab4346fee51d3f1e86eb97d49e07b84a281f006c04ef55a9` |
| 5 | `theorem` | [clauseSatisfied_iff_exists_literal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/clausesatisfied-iff-exists-literal.md) | 48 | `result-track:f57309ecaef8eac9830be5c6ee605981abe62bac254309b9f45e04624719949c` |
| 6 | `theorem` | [card_booleanAssignment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/card-booleanassignment.md) | 70 | `result-track:963f064d72503b1acfd29a8326e09dc6936345698a72fb686ff36e8687798c56` |
| 7 | `theorem` | [card_clauseNotSatisfied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/card-clausenotsatisfied.md) | 76 | `result-track:55044577d5624366c78c40efa2e0cbe0f1c2f1854cfda984ad688b4fc115a955` |
| 8 | `theorem` | [card_clauseSatisfied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/card-clausesatisfied.md) | 87 | `result-track:984d0f1bd8936a81150e9fa4f3d2d0851f9f682f6eb87cfe49b3787dcf4192d0` |
| 9 | `def` | [countedSuccessFraction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/countedsuccessfraction.md) | 110 | `declaration-track:c3f54c2b0bf8589b4a07997b0dbe8bcee4904839f0f5a3050e201f9e31c483f0` |
| 10 | `theorem` | [cast_two_pow_sub_one_ratio](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/cast-two-pow-sub-one-ratio.md) | 118 | `result-track:b0c53f01dc9fa0b0d66595747f09e9e2dbfacce3b7c7f7878d3da8d414489625` |
| 11 | `theorem` | [countedSuccessFraction_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/countedsuccessfraction-eq.md) | 132 | `result-track:50a2ce58d9471dd07374a6d667cc796d0f92b88bac28b457250c4adebba24a88` |
| 12 | `theorem` | [countedSuccessFraction_polarity_independent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanClauseCounting.lean/declarations/countedsuccessfraction-polarity-independent.md) | 142 | `result-track:96ac0ef81d1b10b26352c371aab731e686f1955b30f646efdb24deee8e7ed58e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8889fe5428111786e4ffd27f672342b2f137c0cbf3bb920e28ed382ab77a8e72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
