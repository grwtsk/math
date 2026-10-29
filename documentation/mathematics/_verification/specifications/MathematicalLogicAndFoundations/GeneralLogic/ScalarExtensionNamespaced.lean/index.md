# Verification target: Scalar Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c52da2547ab26c576fbae880888c55b40b0c5b37",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c52da2547ab26c576fbae880888c55b40b0c5b37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Determinant.Transport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ScalarExtension](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/scalarextension.md) | 35 | `declaration-track:1a48099b030ba5cca95a439cceae35af569e8d0e9c2e0a8d32b8ace1913b6e17` |
| 2 | `def` | [extendCertifiedQuasiIso](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendcertifiedquasiiso.md) | 82 | `declaration-track:b7c365afc16b414342212900fffd6350728a6f640781409a9a9355f245dbf7f1` |
| 3 | `theorem` | [extendCertifiedQuasiIso_hom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendcertifiedquasiiso-hom.md) | 91 | `result-track:bf02702ebbf19c1ca4ee3ee6953a9ad1f084e87f78672085f26573981a567089` |
| 4 | `theorem` | [extendCertifiedQuasiIso_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendcertifiedquasiiso-id.md) | 98 | `result-track:ae059688e926a03282620665a8bfaca0508b439c4d17eff2c45bf9151b365387` |
| 5 | `theorem` | [extendCertifiedQuasiIso_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendcertifiedquasiiso-comp.md) | 104 | `result-track:9bd72f33a512d5d2072c5707edfb1aed1c1767ad4f27654d5fd067cb7f15086e` |
| 6 | `def` | [extendChain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendchain.md) | 115 | `declaration-track:7b9899564f18f06eb001d06c14f5eb903e75fbf0ee2dda570c04429be5f46634` |
| 7 | `theorem` | [extendChain_nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendchain-nil.md) | 125 | `result-track:ba5dfef110010e49ac21c52dee93d7e8424963e7b34da5880ecb7321bad6bbf2` |
| 8 | `theorem` | [extendChain_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/extendchain-cons.md) | 131 | `result-track:42bb69ffcf833939dd2448ef8c7e85054c9164c0d66401036d80d480ff47c4b4` |
| 9 | `def` | [detEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/detequiv.md) | 144 | `declaration-track:3ee501aa297ea5fdac3317ad192597ff69571fc6a7e4c18e3148b8000704070a` |
| 10 | `theorem` | [detEquiv_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/detequiv-id.md) | 152 | `result-track:b008834e84b49a11ba9157f09f5d489568806f705631fe3fa37918b0dfa80749` |
| 11 | `theorem` | [detEquiv_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/detequiv-comp.md) | 160 | `result-track:eda96e98ed637b42fd570ffe799e64a5f2deea9d847b412264d7918ff3d129c1` |
| 12 | `structure` | [DeterminantScalarExtensionCompatibility](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/determinantscalarextensioncompatibility.md) | 178 | `declaration-track:9a08953e33a374dfd6bbd4db73771e36836caa8659775794a1aa5521aac448f1` |
| 13 | `theorem` | [lineChange_detEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ScalarExtensionNamespaced.lean/declarations/linechange-detequiv.md) | 208 | `result-track:ef6135354252d7302f6358d388054b56dc0968623763a12fff6084760cd99054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9ea46e6de0e628cd7189e141fdf2c86cc1c95fafe531ef52fccbc154ce31273 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
