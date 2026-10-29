# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndPred.Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c096e6a0047aaf458258791c82e89be02940a129",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c096e6a0047aaf458258791c82e89be02940a129`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.HasConstCache` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.IndPredBelow` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [andProj](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/andproj--83b28954521db6d5838e11c3.md) | 29 | `declaration-track:83b28954521db6d5838e11c305ae40d2255a8d402522fcd374dcd85ad90de25b` |
| 2 | `def` | [replaceIndPredRecApp](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/replaceindpredrecapp--9c3b061009a3159d8a918b73.md) | 36 | `declaration-track:9c3b061009a3159d8a918b734167ab37350e2e8a5406cb0c85cded8192675847` |
| 3 | `abbrev` | [IndPredM](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/indpredm--81eeace82659e39e98470fbe.md) | 55 | `declaration-track:81eeace82659e39e98470fbe3d9a3fe8e04f5c494701840ebde42ad224139fe6` |
| 4 | `def` | [replaceIndPredRecApps](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/replaceindpredrecapps--deda8ca93542b800dab7ba08.md) | 57 | `declaration-track:deda8ca93542b800dab7ba08814c8e741d3461fbe10bb1c9417035c2b4454bb4` |
| 5 | `def` | [withFunTypes](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/withfuntypes--1eb18b74fae008cf6afba753.md) | 113 | `declaration-track:1eb18b74fae008cf6afba753a81ee0f4be39a98103e27a8c6177985418af9e0b` |
| 6 | `def` | [mkIndPredBRecOnMotive](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/mkindpredbreconmotive--ecbb3d3f03e08db0ae4e8e46.md) | 131 | `declaration-track:ecbb3d3f03e08db0ae4e8e46fe9c3af15f2fd506162da95d70d95f51d3ff7532` |
| 7 | `def` | [mkIndPredBRecOnF](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/declarations/mkindpredbreconf--05b8c1820a5e267352fd4201.md) | 147 | `declaration-track:05b8c1820a5e267352fd42012ec08068c1a7e18ea06f3822bd5d1702f7f2641a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b746957e13ba90ea82e1d3bb48e3812ca6b1ff5117446c3aad85af1c11d04678 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
