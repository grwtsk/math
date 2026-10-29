# Verification target: Reducibility Attrs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d32f8582486f0b4cba5334c29164194c2787c78d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d32f8582486f0b4cba5334c29164194c2787c78d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean.json)

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
| 1 | `inductive` | [ReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/reducibilitystatus.md) | 40 | `declaration-track:96f2a7557f367f32a5f18243b0870cfef7f4f3c001d325473ca491ff91d752e1` |
| 2 | `def` | [ReducibilityStatus.toAttrString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/reducibilitystatus-toattrstring.md) | 44 | `declaration-track:fdd0974b829f8524c7902c0d717d326d7740adbe382c852942950dbe2179d4a9` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-4.md) | 51 | `declaration-track:53f5703e33a84ccec91132c85ef336168228332ad3b2c51593c767b9b5420d27` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-5.md) | 71 | `declaration-track:9d576bff41e3b6fab43b79183c2aeac78f1bd223a831fa64e59f83769512ca3c` |
| 5 | `def` | [getReducibilityStatusCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/getreducibilitystatuscore.md) | 79 | `declaration-track:91ad1536999611cec4a7104ef99562093ab31753876c652b5ca595d2cf72e172` |
| 6 | `def` | [setReducibilityStatusCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/setreducibilitystatuscore.md) | 90 | `declaration-track:e7ee3e4c7e7be0b162453255227213e29d0b0b8d36d512db27a2321f8ad2b168` |
| 7 | `def` | [validate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/validate.md) | 127 | `declaration-track:d2f31f1e2c3e4eff904b399e3fdd85a0ad9995dea75f93912512098333caea66` |
| 8 | `def` | [addAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/addattr.md) | 180 | `declaration-track:f9e94d967249c259222c28610711e39488dc1c4ddbd69909d97ac15c96218015` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 186 | `declaration-track:2994f69ff4c32dc61b5c5bc6f38e3a084de4c1f2d53e8176067f6cdaac8db53b` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize.md) | 195 | `declaration-track:12f991ac6d2cb686517f244c18a6ce2ad8d095bbd3db42f858d92b4567615ad8` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-6.md) | 204 | `declaration-track:dd4b274233644c86d96b2cdd3b3e47431ea89aa43abf46636a564ec1b9d41211` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-3.md) | 227 | `declaration-track:2fdb5ed336d3ecafddb8ccf2ffc2864e80b1fcff146717002ccc13e5fe82f286` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/builtin-initialize-source-edition-7.md) | 246 | `declaration-track:e0a2599b3cab85136c546a8e8323e9c1fb8150fc0ed2311a6448c0ddf38a5201` |
| 14 | `def` | [getReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/getreducibilitystatus.md) | 256 | `declaration-track:8604d94ed12c6e396bceef9f7a8fee792a40cc6b48ac814f1fcbd237fe334e1e` |
| 15 | `def` | [setReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/setreducibilitystatus.md) | 260 | `declaration-track:1ca247d87859edc3b20cf74d5d2888b280a31f6c4bfe8e4c6a8003c49269364a` |
| 16 | `def` | [setReducibleAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/setreducibleattribute.md) | 264 | `declaration-track:df14d23798c77c40f12832d53e447defd823fd1d75ba0664684284fccbdd1ee9` |
| 17 | `def` | [isReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isreducible.md) | 268 | `declaration-track:e58dd4ac77a6e187f62be157d9a83501c58280edf4d092a9fe53605b9bfb3a38` |
| 18 | `def` | [isIrreducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isirreducible.md) | 272 | `declaration-track:9dd01e91fe0c0267ca88fe560c037e6a455660e4cfa525ec952c46ea1b8f7006` |
| 19 | `def` | [isImplicitReducibleCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isimplicitreduciblecore.md) | 275 | `declaration-track:b40d039343e3d8b6c2848c5e2c071f8abf5d8cc915c08a49566b941d3713ea55` |
| 20 | `def` | [isImplicitReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isimplicitreducible.md) | 279 | `declaration-track:d86c20df2122cb79c1afc56f927e57737e1ac7f6118b037c1139faba8b41ce3f` |
| 21 | `def` | [isInstanceReducibleCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isinstancereduciblecore.md) | 282 | `declaration-track:9485351d27352acb3b4dd22122f1a9ccef88183a1243dc89b613edd68e40f55c` |
| 22 | `def` | [isInstanceReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/isinstancereducible.md) | 287 | `declaration-track:3bea8b9620685a936bcf23bd3864fbdb4643e9ff2552ec95594692280f956616` |
| 23 | `def` | [setIrreducibleAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsPublic.lean/declarations/setirreducibleattribute.md) | 291 | `declaration-track:c00ae9eda7e8be9b493c30b13382f705e046828a438d94c235f01b80d3a0af5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f9bf2d24b02ff923936681330442bf92031b122237e3d39e3685ea569d3ef75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
