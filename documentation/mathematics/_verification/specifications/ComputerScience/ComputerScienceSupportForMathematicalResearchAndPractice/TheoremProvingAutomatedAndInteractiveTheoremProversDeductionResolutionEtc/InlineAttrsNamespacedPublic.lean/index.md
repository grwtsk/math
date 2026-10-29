# Verification target: Inline Attrs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66900034b4b0dc395d337bc9ca6cf0dffd26496d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineAttrs/Variant83fae2b2c4b480fd7054852aaea66561e3cf428a545ae92e0ec9fff89ef4d6ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66900034b4b0dc395d337bc9ca6cf0dffd26496d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineAttrs/Variant83fae2b2c4b480fd7054852aaea66561e3cf428a545ae92e0ec9fff89ef4d6ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineAttrs/Variant83fae2b2c4b480fd7054852aaea66561e3cf428a545ae92e0ec9fff89ef4d6ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.RecExt` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InlineAttributeKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/inlineattributekind.md) | 25 | `declaration-track:a004182393d1c5d2d3a9d351130631eb9339b06f144470a2c95450a83318645d` |
| 2 | `def` | [InlineAttributeKind.toAttrString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/inlineattributekind-toattrstring.md) | 29 | `declaration-track:23c6b3854e8063450e69d495e27038a937846a8222da9eb5c9746be8b1e4b589` |
| 3 | `def` | [isValidMacroInline](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/isvalidmacroinline.md) | 39 | `declaration-track:fa97e05c94ea0eee68ef14ca1ec45a2e5b087ed61ed5df0898dc56eaa316c81d` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/builtin-initialize.md) | 71 | `declaration-track:437bdaa1f1f1a0d9bf160bf38494f33f36a59ddd3291546001daa036d8a187fa` |
| 5 | `def` | [setInlineAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/setinlineattribute.md) | 88 | `declaration-track:4aedaf2e29b7a544240c48ccf7d1c2413c09eda81901569c6ef3fa83c382b973` |
| 6 | `def` | [getInlineAttribute?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/getinlineattribute.md) | 91 | `declaration-track:765e706c936f60fa317467e7fd236f8c5fa1eafd16f8df34e368092df05f89d3` |
| 7 | `def` | [hasInlineAttrCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasinlineattrcore.md) | 94 | `declaration-track:f6ba9a313ed46d8eef9559d5ccb248c65ac8a3d0b0ddea8ff81f08c9d9820a75` |
| 8 | `def` | [hasInlineAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasinlineattribute.md) | 99 | `declaration-track:01df6bd3d5c56d0f087aa84cbdc547ca1e4b2f9f71cb2819bec99a822e8f123d` |
| 9 | `def` | [hasInlineIfReduceAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasinlineifreduceattribute.md) | 102 | `declaration-track:f1cbd785aced9c173cf0ea17157b767850f7b5219e858697d212790478eea0ac` |
| 10 | `def` | [hasNoInlineAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasnoinlineattribute.md) | 105 | `declaration-track:5f4a36e5d9dcfc26288a0947ac9b193bd606ab775ac0da25723a822eef255c22` |
| 11 | `def` | [hasMacroInlineAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasmacroinlineattribute.md) | 108 | `declaration-track:81d57a92e7fe335e1e66cbdce58ab4992c1b9d3c2a0f995740f2bbb623db0ab0` |
| 12 | `def` | [hasAlwaysInlineAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InlineAttrsNamespacedPublic.lean/declarations/hasalwaysinlineattribute.md) | 111 | `declaration-track:ed1729954edcc7c4163cd8d67ee88576f879d235a1932a3c74c86eeea2f9779e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec724ae8c0a10b51d4a600891cf74e1700f323258aab9c1ddc5125329e256c2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineAttrs/Variant83fae2b2c4b480fd7054852aaea66561e3cf428a545ae92e0ec9fff89ef4d6ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineAttrs/Variant83fae2b2c4b480fd7054852aaea66561e3cf428a545ae92e0ec9fff89ef4d6ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
