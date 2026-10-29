# Verification target: Coverage Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b621102b78d82f162c987e974afb1b68bdea2e4a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant98851b646e5b1b6a87189a5f940adc2621a22096f41ca0a576b9d54ab4a0601d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b621102b78d82f162c987e974afb1b68bdea2e4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant98851b646e5b1b6a87189a5f940adc2621a22096f41ca0a576b9d54ab4a0601d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant98851b646e5b1b6a87189a5f940adc2621a22096f41ca0a576b9d54ab4a0601d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Source` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantTheory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/invarianttheory.md) | 14 | `declaration-track:d2c4627ed2b2a3391f77f737d841b856ce910d90439619af34d87667e1afec25` |
| 2 | `structure` | [SourceSpecialization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/sourcespecialization.md) | 21 | `declaration-track:ba4503346758c541ac852051c9231e3f064813d8d7be59b00df7aa40c01bad8e` |
| 3 | `def` | [quadrantCoordinate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/quadrantcoordinate.md) | 26 | `declaration-track:26c22493645987ced13c34167d51f9f926010de98acd77faf5c2246e9bb42845` |
| 4 | `def` | [fourModePresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/fourmodepresentation.md) | 41 | `declaration-track:56c72d5179d946cd764369dc4f3d2c35d5c129fd90d62498889027678c3b7526` |
| 5 | `theorem` | [four_mode_coverage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/four-mode-coverage.md) | 70 | `result-track:1612857f2308a9aa6710e9ccc02adf1215cddf248c4a73fbbc6442bf99f24edd` |
| 6 | `theorem` | [source_relative_scalar_exists_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/source-relative-scalar-exists-unique.md) | 85 | `result-track:3e2c2bd14067c76e0cf8fcbad0f982be4d0a818b653353dc25b5253f794defef` |
| 7 | `def` | [validityRestrictedEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/validityrestrictedequiv.md) | 102 | `declaration-track:e084c9a972f6b937a91e77331e7bab81ac71d335ed42af21eee219c8059f3d1d` |
| 8 | `def` | [TransformationCardinalityBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoverageEdition1.lean/declarations/transformationcardinalityboundary.md) | 135 | `declaration-track:eacd27dc3604b0da453c7b9c3b76bae879231924e244e02d961538fde3367d3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aa2d04f87becf56ac915ca067b60a82da4760da7df99dd15f52674db473835c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant98851b646e5b1b6a87189a5f940adc2621a22096f41ca0a576b9d54ab4a0601d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant98851b646e5b1b6a87189a5f940adc2621a22096f41ca0a576b9d54ab4a0601d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
