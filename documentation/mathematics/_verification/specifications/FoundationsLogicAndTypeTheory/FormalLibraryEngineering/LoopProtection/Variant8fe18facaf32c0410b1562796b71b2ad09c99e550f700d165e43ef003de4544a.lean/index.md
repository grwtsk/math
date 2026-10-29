# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoopProtection.Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086a59c912bec60eabba580fafc05f0cff68529c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086a59c912bec60eabba580fafc05f0cff68529c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withFreshUsedTheorems](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/declarations/withfreshusedtheorems--7faed5d9d0b83e72371eac0d.md) | 39 | `declaration-track:7faed5d9d0b83e72371eac0d2f3f3ea701e7365f3e548a16e23f86d71d660bcf` |
| 2 | `def` | [ppOrigins](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/declarations/pporigins--06e9c4401aef3d5923a62c72.md) | 44 | `declaration-track:06e9c4401aef3d5923a62c72b41a153717a426ef6308e68db8760dc188955701` |
| 3 | `def` | [mkLoopWarningMsg](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/declarations/mkloopwarningmsg--3bb2d35a88aa710c0e19f9d7.md) | 47 | `declaration-track:3bb2d35a88aa710c0e19f9d7ba21d401332f0f051ecb7d53066fb66a3d0eb71a` |
| 4 | `def` | [shouldCheckLoops](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/declarations/shouldcheckloops--3fde7655e8092a6bebc73939.md) | 62 | `declaration-track:3fde7655e8092a6bebc73939b98cbea271f922941697b809f4b56c6469f5e295` |
| 5 | `def` | [checkLoops](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean/declarations/checkloops--395aec54c629f137915b237d.md) | 76 | `declaration-track:395aec54c629f137915b237d935bf3433bede94badf0edc4ce384a3daa12952e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0c09dad6af230b8a6c07f13149acc06143650e0fddeab4e083d072d8ae3012a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
