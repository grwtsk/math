# Verification target: Reciprocal Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "722457d4a9fe6ea3cd005682e9012f065020f3e0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `722457d4a9fe6ea3cd005682e9012f065020f3e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReciprocalBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/reciprocalboundary.md) | 22 | `declaration-track:19028379fcf19da7b89ed043a993e937f1fbc0330fece528b32cb6540a14eca3` |
| 2 | `theorem` | [zero_iff_pole_reciprocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/zero-iff-pole-reciprocal.md) | 32 | `result-track:cb95913bb60166167c3c08945601a461bab00805c965c6bef9149be7a5ec6ad4` |
| 3 | `theorem` | [pole_iff_zero_reciprocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/pole-iff-zero-reciprocal.md) | 40 | `result-track:35595eed0ca09bfc439c88d08b4a8d0e95c260ca4a6350104bed17bfa12d631b` |
| 4 | `theorem` | [pole_implies_reciprocal_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/pole-implies-reciprocal-zero.md) | 48 | `result-track:c92d3cea4e6d78f15f77f4ec38c84c14b0a661f6f94b3715161d0c092312f444` |
| 5 | `theorem` | [zero_implies_reciprocal_pole](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/zero-implies-reciprocal-pole.md) | 57 | `result-track:d6ad3cda1f494a5be85fafdd97dc4da1bcf59073a0e1e2264cf96f7039728318` |
| 6 | `structure` | [ZetaReciprocalBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/zetareciprocalboundary.md) | 66 | `declaration-track:681a9cbeffec69034fb7af2bf49fb97bbaae5600cbd2e05d65e3496f15d7bdb9` |
| 7 | `theorem` | [zeta_pole_at_one_implies_reciprocal_zero_at_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ReciprocalBoundary.lean/declarations/zeta-pole-at-one-implies-reciprocal-zero-at-one.md) | 74 | `result-track:8805fcb302add48eddf2fe9b526c753fdb7a14bccf9d6e040961db8d043b5b4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32128ba44d0fcc05376332b1b942c9d5f54afcd11bf3c2087c358d8bf27f073a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReciprocalBoundary/Variant0cfcb3a32ac9aa7ad80bdda3045e70e55830f8751b5b76db3fb5a70fadf9a9de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
