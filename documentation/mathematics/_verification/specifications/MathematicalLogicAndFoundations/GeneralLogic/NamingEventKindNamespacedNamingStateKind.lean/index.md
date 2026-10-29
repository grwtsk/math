# Verification target: Naming Event Kind Namespaced Naming State Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcb1ab088f57b0ae69a1b04a0101f62c167ab73c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb73748108426e9abe123b077e3e54152416aab98fb6da14c0b970eb15b466ec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcb1ab088f57b0ae69a1b04a0101f62c167ab73c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb73748108426e9abe123b077e3e54152416aab98fb6da14c0b970eb15b466ec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb73748108426e9abe123b077e3e54152416aab98fb6da14c0b970eb15b466ec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Evidence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Element.IdElements.SourceElementId` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.Digest` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.EventElements.NameFeatureVectorSubtraction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamingStateKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingstatekind.md) | 26 | `declaration-track:4d301bef057b00c4f1156ca708cf1a1c6f3a075347483e45492860918811a5d7` |
| 2 | `inductive` | [NamingEventKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingeventkind.md) | 39 | `declaration-track:436f744f37347a7a0872e3e9704ea8ac3d6cd8dbe5383686d1f0fe950ac04366` |
| 3 | `inductive` | [NamingActor](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingactor.md) | 52 | `declaration-track:ffe5519eaa801de4f4a774d5e3d5011ca63170c750dce0181f1930d66f5920fb` |
| 4 | `structure` | [NamingVertex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingvertex.md) | 59 | `declaration-track:9d99ce07379f843b58a70d0987956a3777202261b0114a80b59b5fae3bacd126` |
| 5 | `structure` | [NamingEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingedge.md) | 65 | `declaration-track:0ed6d722ed3c0d0f57e9e90f2783f4b796adc4ccd8b9af39b854fc5aa50db98f` |
| 6 | `structure` | [NamingSquare](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare.md) | 74 | `declaration-track:296daa33b2db190e91b1347f22bc5d8fa204cc4a0b9f966c8ab6da5f41722cf3` |
| 7 | `def` | [NamingSquare.topEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare-topedge.md) | 82 | `declaration-track:24fe8bf716f606f25b3093f148e59ae75204a0dd9556e04e281501d010a295e4` |
| 8 | `def` | [NamingSquare.rightEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare-rightedge.md) | 91 | `declaration-track:2306a908dc2c8df03bd52bfa74e440f0dbc5d04f816cca473406157e6a7682c8` |
| 9 | `def` | [NamingSquare.bottomEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare-bottomedge.md) | 100 | `declaration-track:f6ec584e26876b2d12df5fe217609bd8957aa69d3114d240a6fba1765b5c6923` |
| 10 | `def` | [NamingSquare.leftEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare-leftedge.md) | 109 | `declaration-track:acf8f626c847dde1a676f87f84fea3f06c5a882714ac840ce0b7da266f4ac8b5` |
| 11 | `def` | [NamingSquare.Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingsquare-valid.md) | 118 | `declaration-track:590a6f3c240cc1245976770427ca971fbc627608500808431fb9c63c2ab1ab94` |
| 12 | `structure` | [NamingEventComplex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NamingEventKindNamespacedNamingStateKind.lean/declarations/namingeventcomplex.md) | 123 | `declaration-track:00c93e7cd9eec090e26210f4e0a2a3194aaf9dcbeeeff8dc16d12d3f07708550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=086e14f905442615b6a2485e6d2385971d97dbc3452d784a1788f212d1815f5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb73748108426e9abe123b077e3e54152416aab98fb6da14c0b970eb15b466ec6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb73748108426e9abe123b077e3e54152416aab98fb6da14c0b970eb15b466ec6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
