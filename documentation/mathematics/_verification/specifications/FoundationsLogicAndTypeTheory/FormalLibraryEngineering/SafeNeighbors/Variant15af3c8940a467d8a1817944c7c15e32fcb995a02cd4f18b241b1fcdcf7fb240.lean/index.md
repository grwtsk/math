# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeNeighbors.Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "546167a1c5c274ee7886908ba6ab4b2fce134020",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `546167a1c5c274ee7886908ba6ab4b2fce134020`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Graph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.NeighborEnumeration` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeNeighborEnumeration](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean/declarations/safeneighborenumeration--8f8eb46e57751c5d036c4b5c.md) | 23 | `declaration-track:8f8eb46e57751c5d036c4b5cbe10c912bfaa2f1372e0ba0778f67a237053ae36` |
| 2 | `theorem` | [safeNeighbor_endpoints](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean/declarations/safeneighbor-endpoints--b4d6f13695dff6a974988fe0.md) | 33 | `result-track:b4d6f13695dff6a974988fe05f10bd8aaec340fd2191b54d3c1308c84e4cfc82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa638b42c6360592f36045227a8f9d68ff27a6b4ab7c4a043e40a02928351de4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
