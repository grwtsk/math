# Verification target: WCardinal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "808e30f3dd500e084a1f3d2787a146f1fc848d39",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `808e30f3dd500e084a1f3d2787a146f1fc848d39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_sum_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-eq-sum-lift.md) | 37 | `result-track:7c8f912f66892e294a98082396b1e889426b07aa43c875d144127eca91254bf9` |
| 2 | `theorem` | [cardinalMk_le_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-le-of-le.md) | 44 | `result-track:0ad35bc8fafabc3f8e5dd25e7869a1cc8b5f13be2b8a3bf64e439382f90654d9` |
| 3 | `theorem` | [cardinalMk_le_max_aleph0_of_finite'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-le-max-aleph0-of-finite-source-edition-2.md) | 58 | `result-track:e477c3c8b55ddc2ce2810d17c456ba48a1d6be82c16a5f4cfaf8d3372255cbfc` |
| 4 | `theorem` | [cardinalMk_eq_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-eq-sum.md) | 91 | `result-track:920426aa37c0612dc6cb5620056c4f9fb5475f3c5495897c808f4b9ae7487ac4` |
| 5 | `theorem` | [cardinalMk_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-le-of-le-source-edition-2.md) | 97 | `result-track:ee967111436cdc2a64e17667e9c60e64f0f8a33555e44eeea2f199d778c976b3` |
| 6 | `theorem` | [cardinalMk_le_max_aleph0_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinal.lean/declarations/cardinalmk-le-max-aleph0-of-finite.md) | 104 | `result-track:8c033b6b8eb873134c8bd6ac270ee55bfd3822765b15c7e45e5e9f1ef2ac9aa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c6dc28e9dba7fb8ad12019158df555069ef4d62008e09e147eb00e94e7e6f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
