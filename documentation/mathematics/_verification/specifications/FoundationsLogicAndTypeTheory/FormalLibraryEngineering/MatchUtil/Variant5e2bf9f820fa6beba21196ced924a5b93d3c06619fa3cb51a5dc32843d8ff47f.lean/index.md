# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchUtil.Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a3566031324b6a0ed0bf14d865994dcf90c11e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a3566031324b6a0ed0bf14d865994dcf90c11e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean.json)

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
| 1 | `def` | [testHelper](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/testhelper--70387fecb0267788bea4bb4a.md) | 16 | `declaration-track:70387fecb0267788bea4bb4a8479d1fda5600737bafccdba4aa1e4f4c2fc51bf` |
| 2 | `def` | [matchHelper?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchhelper--6244d5a999591fdff873a0e2.md) | 22 | `declaration-track:6244d5a999591fdff873a0e2c3e24246966e3f48847a5c3ef87c2a828a4e4d40` |
| 3 | `def` | [matchEq?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matcheq--ba1d80f56f508161f0bc361e.md) | 28 | `declaration-track:ba1d80f56f508161f0bc361e863a894d2094ddf3025c7c81d4d1b130b668cee8` |
| 4 | `def` | [matchHEq?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchheq--e6cdf9608fab475dadede353.md) | 31 | `declaration-track:e6cdf9608fab475dadede353459c07d77eeb2f2906cf5cef7f3e9751346aa27b` |
| 5 | `def` | [matchEqHEq?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matcheqheq--72351f78f15e943fdd863ec0.md) | 37 | `declaration-track:72351f78f15e943fdd863ec0563fb4fdf20eba794c17a52b9178ebda508e56ac` |
| 6 | `def` | [matchEqHEqLHS?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matcheqheqlhs--33df790707fe20bc0aa47a5c.md) | 50 | `declaration-track:33df790707fe20bc0aa47a5c22cd9b1f59efabbecc718f4b27202c3a245f9f5f` |
| 7 | `def` | [matchFalse](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchfalse--9e6f9e5b32c91483c3836722.md) | 59 | `declaration-track:9e6f9e5b32c91483c3836722c6fa0aa02222a8283617462df1dcb3191b5a1b62` |
| 8 | `def` | [matchNot?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchnot--518bbc3340fb0dea6c25ec84.md) | 62 | `declaration-track:518bbc3340fb0dea6c25ec8495e62f2efce8aff6c6e3c730a023220274f9baf5` |
| 9 | `def` | [matchNe?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchne--807cd3de2096056d9697da3d.md) | 71 | `declaration-track:807cd3de2096056d9697da3d9eb3c3f5c6bdad89b4ba35d0b7a49f34d583e5a6` |
| 10 | `def` | [matchConstructorApp?](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean/declarations/matchconstructorapp--cda131e9c37f0aaa532c3863.md) | 80 | `declaration-track:cda131e9c37f0aaa532c3863dfb9eb6df8387c07c0ccb1e852f291fee2761be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da6f723f80d41f877269c90f144c4085e3b07092eaa55d7dfa43eccb3ef65cdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchUtil/Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
