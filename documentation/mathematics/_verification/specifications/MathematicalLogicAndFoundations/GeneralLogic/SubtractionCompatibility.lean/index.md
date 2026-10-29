# Verification target: Subtraction Compatibility

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a31f6e6b3ac9349ff1130fbe17ba04291e5a34",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtractionCompatibility/Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a31f6e6b3ac9349ff1130fbe17ba04291e5a34`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtractionCompatibility/Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtractionCompatibility/Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.CorpusElement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SubtractionCompatibilityStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibilitystatement.md) | 11 | `declaration-track:9b98aa32854e1a38bd0609ea6a9ed9c3f20c958955707d04bcf703fb51009083` |
| 2 | `def` | [subtractionCompatibilityOpenElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibilityopenelement.md) | 17 | `declaration-track:6f374a835ef126ba525f6e12f7fad96a12e6f7b32905de9dcae27aea6bc84d39` |
| 3 | `def` | [subtractionOperationDependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractionoperationdependency.md) | 32 | `declaration-track:267a21bd4b497ef0bbb8e9161c0c686dc8ea9c1d5ff07497d344d9a8ce03dba3` |
| 4 | `def` | [subtractionEqualityDependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractionequalitydependency.md) | 42 | `declaration-track:8d1d2e1c8ac6d87efa64e726b5c70e2ea11cd442e88ad74307f3c01003ac2e51` |
| 5 | `def` | [subtractionCompatibilitySeed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibilityseed.md) | 52 | `declaration-track:b7bb0fd7d8069ce55208c767e08e881d9e745418c899336227147766594c885f` |
| 6 | `theorem` | [subtractionCompatibility](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibility.md) | 66 | `result-track:3d0b391ff572fba0da05f4304ef6496bd4f264dec99e96ffbf2d4c23bb48a55f` |
| 7 | `def` | [subtractionCompatibilityTheoremElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibilitytheoremelement.md) | 73 | `declaration-track:1b624d3524987ff9d8f120364a4f0a2b57634be1c581d0ead92dede11502291a` |
| 8 | `def` | [subtractionCompatibilityCorpusItem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SubtractionCompatibility.lean/declarations/subtractioncompatibilitycorpusitem.md) | 84 | `declaration-track:f99c948c4410279aaa0f1bdce35d22d81fa8acf582f644a925b7e85638dd8be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd84270d31c992d35dc2924185a23e1219f0bfe752ca7d2b8b9eb1f10fffc802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtractionCompatibility/Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubtractionCompatibility/Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
