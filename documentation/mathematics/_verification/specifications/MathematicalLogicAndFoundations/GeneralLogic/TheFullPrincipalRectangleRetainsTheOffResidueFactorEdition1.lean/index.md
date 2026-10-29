# Verification target: The Full Principal Rectangle Retains The Off Residue Factor Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4a7dd9a4dd108c8b8a3382dd47652e38f4f61c6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4a7dd9a4dd108c8b8a3382dd47652e38f4f61c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalStar](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/principalstar.md) | 29 | `declaration-track:1327514414ff17ed09e8dbc822130c8d8dc5f16a0170c41908ed17f1d34f126e` |
| 2 | `def` | [principal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/principal.md) | 38 | `declaration-track:6d66e24f5017f6597519fe51c2fbb7a823cec5b65b86905dd76eae8a0b68fbc7` |
| 3 | `def` | [normalized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/normalized.md) | 46 | `declaration-track:bb0f94fd0453d03fde20832b6ae1f1f850e7eb4b10c8c448d65d5b4e608dd40c` |
| 4 | `theorem` | [full_off_residue_normalized_identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/full-off-residue-normalized-identity.md) | 49 | `result-track:ca373c9cf0ed1efea9f7bc6329d14102f9c28f6e453e6dd3768683e57c0a2608` |
| 5 | `theorem` | [full_off_residue_selected_identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/full-off-residue-selected-identity.md) | 60 | `result-track:1454b0525797b6bfc053ef3d1bb06e565d0493055c1221c2ca9cc43d418e03b0` |
| 6 | `def` | [deltaH](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/deltah.md) | 73 | `declaration-track:1d5283e48aca8c16483b8a65eda1cd1636882ddebfdb5e6cd290d15ce4f6b279` |
| 7 | `def` | [deltaB](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/deltab.md) | 78 | `declaration-track:337038ba69947dc7ad5d2c0570442f6547ea19fb3563e41b6abea2073898b0ec` |
| 8 | `theorem` | [full_box_margin_positive_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/full-box-margin-positive-iff.md) | 80 | `result-track:aecd18cba2c3d7ba60ff02ef60262f487b1afa6ccaad99a6ff38714b4d793e85` |
| 9 | `theorem` | [selected_margin_positive_on_full_box](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/selected-margin-positive-on-full-box.md) | 89 | `result-track:140a482b1e55389a4857d4883cb130abd9fb9b78ae4fd59ebd1b08025841b95c` |
| 10 | `theorem` | [concrete_full_box_margins](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/concrete-full-box-margins.md) | 95 | `result-track:d371961d2d54836dc58f7025a1290cdb9aa5b07122586f9727596d826ea28729` |
| 11 | `theorem` | [literal_off_residue_decay_gap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/literal-off-residue-decay-gap.md) | 99 | `result-track:994b57d6f34e4f79bb9a566aea6513a15efd89f06fa7c10a550c73e724eecdb9` |
| 12 | `theorem` | [double_residue_restriction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/double-residue-restriction.md) | 103 | `result-track:694e6b689727abcea919b274e32af8b46133e441ebabf7bd0caffbbc2d380577` |
| 13 | `theorem` | [two_thirds_does_not_supply_the_full_box_margin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheFullPrincipalRectangleRetainsTheOffResidueFactorEdition1.lean/declarations/two-thirds-does-not-supply-the-full-box-margin.md) | 106 | `result-track:639907269691dfb37a52277583ac15ed506ee153e33414e92e3d2a1fe094c8e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4e2bb1319ccfbac9f17729071a7d3b28f119993a3229542bf88d514ba0b265f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
