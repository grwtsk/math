# Verification target: Reducibility Attrs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e91d92bfd316624bcfb11e916ed5297c12220d36",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e91d92bfd316624bcfb11e916ed5297c12220d36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean.json)

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
| 1 | `inductive` | [ReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/reducibilitystatus.md) | 48 | `declaration-track:0dfa3f0137e585be9f42d9d62c2568195e35c775e1f8d4790cea3d21bff4bd58` |
| 2 | `def` | [ReducibilityStatus.toAttrString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/reducibilitystatus-toattrstring.md) | 52 | `declaration-track:65046e3f8a1a84ed17d295912cb1fa824f22a6e2a4c0a29b10affbfa6719e939` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-3.md) | 59 | `declaration-track:6649010cf3e6e9308c583f91f78e43be9b45c28af1fb8403a88b42cf950029af` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize.md) | 79 | `declaration-track:2be9fca9e2697a53e9c1daad388e1dc436c2ffa3731275eedf343cf20596bbb5` |
| 5 | `def` | [getReducibilityStatusCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/getreducibilitystatuscore.md) | 87 | `declaration-track:96de6a838b952bcf7f898e2ac086d6bd3a927b1c3b5cf15856e98e2b77af6f5a` |
| 6 | `def` | [setReducibilityStatusCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/setreducibilitystatuscore.md) | 98 | `declaration-track:ad513fb22bb480e29a901a947cb6dc9ad958d5738474846815e28169fb9d4d28` |
| 7 | `def` | [validate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/validate.md) | 135 | `declaration-track:56c4d71d7622a249777c25a38048c33237bb0723a2e5003febfcd389703681e2` |
| 8 | `def` | [addAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/addattr.md) | 188 | `declaration-track:2da50a5bc0a53b804c5a83320e046761e4742a0bb8333d0319e4d21d8957d74b` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-6.md) | 194 | `declaration-track:e769a2546e83f15302885c73af4e68a135832b64f70bdd1cf24a7e6c0bdb6c7b` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 203 | `declaration-track:60af3d110e990dd1a6a18d9f403a25143dfd59d8016c36df8d19461172262272` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-4.md) | 212 | `declaration-track:90e935585718b5fe983e39d41f96c4a9ae7f6a9b13f3963c8fb12a03620fc90c` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-7.md) | 235 | `declaration-track:e8b972f77b4ae3c0b0d2086a7e604f2e731414131efa36eb1e832fa166e45754` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/builtin-initialize-source-edition-5.md) | 254 | `declaration-track:d69fa09027db526937fc6ba1c4a76b794207df0fa68495c296eb2563ed946adf` |
| 14 | `def` | [getReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/getreducibilitystatus.md) | 264 | `declaration-track:801aad3988332f00d920f00a73b4065f9ff432d40fab3b53ee6348c9ddfe4f74` |
| 15 | `def` | [setReducibilityStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/setreducibilitystatus.md) | 268 | `declaration-track:373f3ab959e71f9df8b09d827ed76fc44e7d27a6af49092158d6b0c23a0a1be8` |
| 16 | `def` | [setReducibleAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/setreducibleattribute.md) | 272 | `declaration-track:a80e347386db336188e7edca3fef83b3102305e6915e5481ec194a3556f39935` |
| 17 | `def` | [isReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isreducible.md) | 276 | `declaration-track:9c6092b439780f9be106639386a95bb0e52cdea41ee231d57ce131f2b9efa120` |
| 18 | `def` | [isIrreducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isirreducible.md) | 280 | `declaration-track:9b044054728c69ea614c556f20513dfc13698ce0ccce8fd1f5dd3af310487a4a` |
| 19 | `def` | [isImplicitReducibleCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isimplicitreduciblecore.md) | 283 | `declaration-track:c1fbd89ae20fa141b8ce8d4a28bab040c7379a61f231ebe5d77a3783742fd123` |
| 20 | `def` | [isImplicitReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isimplicitreducible.md) | 287 | `declaration-track:15e893b0f64018e26d0256351c57631e1764f971407cc0fda6efef007d379f28` |
| 21 | `def` | [isInstanceReducibleCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isinstancereduciblecore.md) | 290 | `declaration-track:bffb923faa32ae9d05ebdc7b29b718a888be8692f2aa98d8d443823929df187c` |
| 22 | `def` | [isInstanceReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/isinstancereducible.md) | 295 | `declaration-track:d0c9a2fede22f3063a0be6fb68c8d420b66b49291654dda60747d4eb99fabf45` |
| 23 | `def` | [setIrreducibleAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReducibilityAttrsNamespacedPublic.lean/declarations/setirreducibleattribute.md) | 299 | `declaration-track:ddff2269aba97bece1514df1f77b35e13ef2f83c9ff3489c74c52f21c2d43781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a78f78915f0603b99fe92e5b32acd1b703aa8c4d3ff691244d108f7892f9f8e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
