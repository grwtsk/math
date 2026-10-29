# Verification target: Wiles Surface

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c2f088a65e542e098d212e9c82f28a0efaf71b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c2f088a65e542e098d212e9c82f28a0efaf71b`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ModularityBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.SpecialTheoremSources` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/source.md) | 10 | `declaration-track:be18e2fb7154881662a12509b2e142141ba4896f0455bfd3a13597d318e6dc9e` |
| 2 | `theorem` | [source_is_wiles_1995](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/source-is-wiles-1995.md) | 13 | `result-track:23e649fc6ef483162dbe3a1cf94e2aaea1d543932d829d03939f2d6b44a57e7e` |
| 3 | `theorem` | [source_kind_is_modularity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/source-kind-is-modularity.md) | 17 | `result-track:4f08a239321cc4f57048af86e851828b8d89f90ae200b98ef208fac720d1c3f8` |
| 4 | `theorem` | [source_has_no_imported_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/source-has-no-imported-authority.md) | 21 | `result-track:0e80716cf891857a374d170829dda7f3f610a67e5c637fede023c8c611bbc7be` |
| 5 | `theorem` | [source_dependency_chain_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/source-dependency-chain-nonempty.md) | 25 | `result-track:c41f440ce302e36fc1d33ea7a3f1c0c8b4b007001cb65e1fb4c5391c7c3a69e6` |
| 6 | `def` | [semistableCurveSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/semistablecurvesurface.md) | 29 | `declaration-track:06b3d95bbe56b32b68b6c93ad94a1d5ce9348a78d1ffe8e5d29c4f206bb00021` |
| 7 | `def` | [semistabilitySurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/semistabilitysurface.md) | 32 | `declaration-track:c624b12ce249ea720a9dc90a7d92312a7f923c1f633dea3221e6b49dcfa0bf68` |
| 8 | `def` | [modularFormSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/modularformsurface.md) | 36 | `declaration-track:ab1e3285b64dcda5f7c282a8a590efb234e4fd4480229313b1e7127b87d9a8d1` |
| 9 | `def` | [modularitySurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/modularitysurface.md) | 41 | `declaration-track:ed2a2df0790a390b5c85a8a7cd942c21b823340ce38be31f1cb1269120d55904` |
| 10 | `def` | [galoisRepresentationSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/galoisrepresentationsurface.md) | 46 | `declaration-track:e9162ca9ff259cfc8a32cb4ef745b1178a95169f3d370a0854f447c489208693` |
| 11 | `def` | [deformationRingSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/deformationringsurface.md) | 51 | `declaration-track:8934fad6057608986ec4fce1d67eacadc87bcd112cabbf28056c948922fc603f` |
| 12 | `def` | [heckeAlgebraSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/heckealgebrasurface.md) | 55 | `declaration-track:08df1cc6ec8c8087cecb46d50ec446c756a91fa1189a1fd6ad2a025e39279de9` |
| 13 | `def` | [rEqualsTSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/requalstsurface.md) | 59 | `declaration-track:59097431c1ef6154fa5e4499f3778f03dbeb5942cfbd742242adb4bf4c35b772` |
| 14 | `def` | [modularityLiftingSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/modularityliftingsurface.md) | 64 | `declaration-track:a65eee2e02d98ee04d866b14317f8a0914829419c4659380dc408f976a639745` |
| 15 | `theorem` | [r_equals_t_surface_has_comparison_label](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/r-equals-t-surface-has-comparison-label.md) | 69 | `result-track:b459df741837b9d0b6201fff2ae931ca22c8fc578a38dbbacf550828bd1f8fde` |
| 16 | `theorem` | [modularity_lifting_surface_has_hypotheses](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/modularity-lifting-surface-has-hypotheses.md) | 73 | `result-track:73c835297d9cb0af43e36ff453d71cef214de44aed3a0f4f9eb8de69a9ddfad8` |
| 17 | `def` | [wilesSemistableModularityClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/wilessemistablemodularityclaim.md) | 77 | `declaration-track:711efd47260475b1030258605cd4cd198a8d73e418b035528a8ba28f7a25733d` |
| 18 | `def` | [wilesProofImportResidue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/wilesproofimportresidue.md) | 80 | `declaration-track:564e52660cefdda23b5b2deebc40c9912dae50af42e3435f0c88e415afd868ca` |
| 19 | `def` | [wilesSemistableModularityChecked](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/wilessemistablemodularitychecked.md) | 87 | `declaration-track:7e1b35c853ce5b734848cd2f91f3765aca3b6a235dce1b37b3bca7307b9134fa` |
| 20 | `theorem` | [wiles_checked_hasResidue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/wiles-checked-hasresidue.md) | 91 | `result-track:cb71d14ef49c37e57fa644ea75f235d2cc6d8a81be3856f640260503a9c22f15` |
| 21 | `theorem` | [wiles_surface_does_not_claim_bsd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WilesSurface.lean/declarations/wiles-surface-does-not-claim-bsd.md) | 95 | `result-track:1e6ca954dbecc53024a19626c27f43a23105fded21f27219b1a3335f4165ffe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86805d60bf1a93ddf03143071da7a6e200d14018c8ff190c3c6f1e972cf8683e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variant48e2df67825d986d87ad103a430e0cab860b9fc9ef9112775cb2e891e190813b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
