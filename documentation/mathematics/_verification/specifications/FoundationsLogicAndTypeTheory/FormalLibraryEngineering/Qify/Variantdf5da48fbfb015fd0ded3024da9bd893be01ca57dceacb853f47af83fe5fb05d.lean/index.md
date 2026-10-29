# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9945975104b2209b5fd4d379fc7010bd7f3e2a46",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9945975104b2209b5fd4d379fc7010bd7f3e2a46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/syntax--d3fbdea1c8679db96524c4c1.md) | 57 | `declaration-track:d3fbdea1c8679db96524c4c1b567828637a1a2a8ad2ac92179a6f3e2e1199e74` |
| 2 | `macro_rules` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/macro-rules--d2b68d81dd4c45d1fbc8af85.md) | 59 | `declaration-track:d2b68d81dd4c45d1fbc8af85e1813b60384b94f8d3a427b465f3e05d488d4348` |
| 3 | `lemma` | [int_cast_eq](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/int-cast-eq--8cdcee898f92eab509079de9.md) | 66 | `result-track:8cdcee898f92eab509079de935b11ccc070671a12e75543768d47017eb7b3456` |
| 4 | `lemma` | [int_cast_le](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/int-cast-le--b542a6bd582514f247361f8c.md) | 67 | `result-track:b542a6bd582514f247361f8c2d26d996032e019d52e3636ab90574be8be84b22` |
| 5 | `lemma` | [int_cast_lt](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/int-cast-lt--a138d4bfa8238143e5a4a4cb.md) | 68 | `result-track:a138d4bfa8238143e5a4a4cbea41205d9e2d5760ff26805623aa0e00f17b3d2c` |
| 6 | `lemma` | [int_cast_ne](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean/declarations/int-cast-ne--f16d829c5bf9f690d9b11a65.md) | 69 | `result-track:f16d829c5bf9f690d9b11a655023ac82de7d525e4b1920363e8ad3a83ff59724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=761e9353966e0ca755caf02667bc6ff34476612fe1904852badcea2baa0dc027 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variantdf5da48fbfb015fd0ded3024da9bd893be01ca57dceacb853f47af83fe5fb05d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
