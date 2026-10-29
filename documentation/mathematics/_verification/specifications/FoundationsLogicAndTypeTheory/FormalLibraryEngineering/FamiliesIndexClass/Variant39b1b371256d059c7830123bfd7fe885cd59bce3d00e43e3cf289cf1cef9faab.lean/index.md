# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesIndexClass.Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a25a5adf36d451b17e3b9fcb153a691dc5e10ec2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a25a5adf36d451b17e3b9fcb153a691dc5e10ec2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.KTheoryIndex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.ModuliStackKTheory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticFamily](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/declarations/arithmeticfamily--a391b6a5e47c8a5fffbc6858.md) | 30 | `declaration-track:a391b6a5e47c8a5fffbc6858e241615523a8985de2149f42060f4345b698f730` |
| 2 | `structure` | [FamiliesIndexClass](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/declarations/familiesindexclass--39cd21706c063f982cc93faa.md) | 43 | `declaration-track:39cd21706c063f982cc93faa5b3a213ccb8aeb0705ae921e66f44cc94ab9394c` |
| 3 | `theorem` | [families_index_nontrivial](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/declarations/families-index-nontrivial--99dcfcac3f6b884f0ec55ba9.md) | 55 | `result-track:99dcfcac3f6b884f0ec55ba9df1bd8bacb24fbd9301a6ddc92590fbacc596e0d` |
| 4 | `theorem` | [families_index_specializes](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean/declarations/families-index-specializes--f1475a95c2a64779dcf26d0a.md) | 62 | `result-track:f1475a95c2a64779dcf26d0a22454b04d9165ab73678e977e70fb702c379ef11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=233e45ff696546f46fcee7b2c2dfd181d9ae7484516d87344e5e0657f378d3ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FamiliesIndexClass/Variant39b1b371256d059c7830123bfd7fe885cd59bce3d00e43e3cf289cf1cef9faab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
