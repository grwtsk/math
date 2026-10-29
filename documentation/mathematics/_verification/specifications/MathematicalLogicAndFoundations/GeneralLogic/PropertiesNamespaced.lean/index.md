# Verification target: Properties Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bebcafcca97f75d237f00026d7136a487bb8530",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Variantc70de241fe190451dc86153ce616f13099a9c171a7a349fc02e36afaf1a5c05e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bebcafcca97f75d237f00026d7136a487bb8530`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Variantc70de241fe190451dc86153ce616f13099a9c171a7a349fc02e36afaf1a5c05e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Variantc70de241fe190451dc86153ce616f13099a9c171a7a349fc02e36afaf1a5c05e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isinjective.md) | 23 | `declaration-track:e2e70d00e94fe781ba104b11829939e9abfde1fea4a2765a467c9365273fe836` |
| 2 | `def` | [IsSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/issurjective.md) | 26 | `declaration-track:ff19d3b950b770118eb47e808847d36f201c6d852a1116d205826418f5a1a486` |
| 3 | `def` | [IsBijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isbijective.md) | 29 | `declaration-track:8b61ba9a488a11117963e98c8ac462fcd556ceaeef24ce28841a567baa627d8b` |
| 4 | `def` | [IsLeftInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isleftinverseof.md) | 32 | `declaration-track:68a4da76ec4de9f4d718d8e1a0036aac4950e0c216311e2ca0860d88db523b76` |
| 5 | `def` | [IsRightInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isrightinverseof.md) | 35 | `declaration-track:2c343558216bd89caea560f39c0297c79111b934d71ba1b86c99e5e87a959406` |
| 6 | `def` | [IsInverseOf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isinverseof.md) | 38 | `declaration-track:66da0bcfa1604a5cfc0664a8ea8b8d24ccd916151a094a96b1dfd40a55f7e1cc` |
| 7 | `theorem` | [isInjective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isinjective-comp.md) | 41 | `result-track:9b7cf911b74fad11616922bdbe1cc39cb6f55fb3f2596c980841dc3d054a67cf` |
| 8 | `theorem` | [isSurjective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/issurjective-comp.md) | 47 | `result-track:029f4cc1b54b0fbc892bdb73d2c7404b7f88d2185c71e8b24975297e66eb29e8` |
| 9 | `theorem` | [isBijective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/isbijective-comp.md) | 53 | `result-track:36a9c479a7fdde57f822f17b21b687003dc44d797853e53c6823939364baf48c` |
| 10 | `def` | [toEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/toequiv.md) | 62 | `declaration-track:b3e06c2f8d6a4db8b60bd6e4361d99b526226053faf62f927254a234402fc055` |
| 11 | `theorem` | [toEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PropertiesNamespaced.lean/declarations/toequiv-apply.md) | 66 | `result-track:31052f99820b01c982d9dedcb1977c6d9b50681f1951898892df1a03be95c803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d9437cf2c5e373a7c5adb1e966f29d1e1b2f37906c7b5cd776c81511709def9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Variantc70de241fe190451dc86153ce616f13099a9c171a7a349fc02e36afaf1a5c05e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Properties/Variantc70de241fe190451dc86153ce616f13099a9c171a7a349fc02e36afaf1a5c05e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
