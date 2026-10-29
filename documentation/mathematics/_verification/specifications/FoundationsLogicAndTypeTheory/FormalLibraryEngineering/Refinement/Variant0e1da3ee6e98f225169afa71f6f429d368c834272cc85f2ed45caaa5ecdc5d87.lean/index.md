# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refinement.Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f8bb0928e3c39e16a1243facd5da55e5245a022",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f8bb0928e3c39e16a1243facd5da55e5245a022`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellImplementation](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/declarations/cellimplementation--4ae484484f4970edd180d3b9.md) | 27 | `declaration-track:4ae484484f4970edd180d3b9febf1b53735793e381a53ecdf7efc6db9e819bb5` |
| 2 | `structure` | [ImplementationFabric](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/declarations/implementationfabric--3f9f069fc2cc60ae32cbecbb.md) | 32 | `declaration-track:3f9f069fc2cc60ae32cbecbbac722ebb4015c9920ba8de151911d8f48c90e8ed` |
| 3 | `structure` | [RefinementPreservingReaction](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/declarations/refinementpreservingreaction--08948e42882e64804e2adb9d.md) | 87 | `declaration-track:08948e42882e64804e2adb9d7fc894c2af5fab76827c1f55600585a3e6fce592` |
| 4 | `structure` | [RefinementPreservingRealization](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/declarations/refinementpreservingrealization--e60b988d66646cb19d0483f7.md) | 123 | `declaration-track:e60b988d66646cb19d0483f7e1e20ce19928048dc02523d8b7e420394e003b5f` |
| 5 | `def` | [assembleSpecification](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean/declarations/assemblespecification--1caad3703ce9c51de96c773f.md) | 139 | `declaration-track:1caad3703ce9c51de96c773fdca84e71d90a59929f4ad72a10ae3c5c7eb216a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08314d4e5d0695bc1542298ee60b6a9cba5cd841f01b223573bfd9017107308c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variant0e1da3ee6e98f225169afa71f6f429d368c834272cc85f2ed45caaa5ecdc5d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
