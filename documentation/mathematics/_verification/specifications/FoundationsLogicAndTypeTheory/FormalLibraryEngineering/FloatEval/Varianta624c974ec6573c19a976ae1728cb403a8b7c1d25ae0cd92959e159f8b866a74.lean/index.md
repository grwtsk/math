# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatEval.Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b5f860c8fc939ac454b43e813e8dee7890268a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b5f860c8fc939ac454b43e813e8dee7890268a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FloatEnv](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/floatenv--655fe2819b4de57556aae2cb.md) | 41 | `declaration-track:655fe2819b4de57556aae2cbeeaa92fbc98721eac15ea77abb0dc036750c6108` |
| 2 | `def` | [floatErf](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/floaterf--602f2135bfc0f8b49b7c8d31.md) | 47 | `declaration-track:602f2135bfc0f8b49b7c8d31ab90bb77637f0b32012db7b614e9faa5e22902f3` |
| 3 | `def` | [intToFloat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/inttofloat--d122475918c36a50f56964a0.md) | 60 | `declaration-track:d122475918c36a50f56964a0fc6eeb433f4610f43ea84ab3c98e578212c3fbf0` |
| 4 | `def` | [ratToFloat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/rattofloat--713b617cb4fd828cad6f8862.md) | 65 | `declaration-track:713b617cb4fd828cad6f8862323351f808c9bb10c667ea65d6c82ada48ad81a3` |
| 5 | `def` | [evalFloat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/evalfloat--2d98e3f1738a2d55ca87ef8e.md) | 72 | `declaration-track:2d98e3f1738a2d55ca87ef8eafd056f5adbd0895290ca44db37aeeca42106808` |
| 6 | `def` | [evalFloatList](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/evalfloatlist--46b01d31cb0315f128019c48.md) | 110 | `declaration-track:46b01d31cb0315f128019c48ed99f0902390f5a4c11d90cce847d6bbb5a0b20c` |
| 7 | `def` | [evalFloatArray](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/declarations/evalfloatarray--4ffcddaf03c762348d798a99.md) | 114 | `declaration-track:4ffcddaf03c762348d798a99c750fc3f0b359d97c622ad53c4b8b4938971c9a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66ccfc8b8084b76ceaac8878dfece205bf1e34e2b36af8fa9874e9540dd9dd99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
