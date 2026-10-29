# Verification target: Independent WNNamespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b35f463058a48dd4c4d368623d6159a26412dffb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant0003c1d5e34d771f0a6e38bc2a024469b7989597d8c2b6554dc45a06cb4e40f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b35f463058a48dd4c4d368623d6159a26412dffb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant0003c1d5e34d771f0a6e38bc2a024469b7989597d8c2b6554dc45a06cb4e40f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant0003c1d5e34d771f0a6e38bc2a024469b7989597d8c2b6554dc45a06cb4e40f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IntendedPTSWithNarrow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrow.md) | 23 | `declaration-track:bb8d23704d0bc0fd67f12d109fdda0b7d77980a88d7e9e91208daa89bee29659` |
| 2 | `def` | [Arrow.expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrow-expression.md) | 28 | `declaration-track:4f320af4eaa2abefc77e50fa686f6bedb9111958d1961c2b3bebdbef001d29a3` |
| 3 | `def` | [decodeArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/decodearrow.md) | 32 | `declaration-track:986f20bc2690d3b83cb0ad70086cf11bef853583777d32d02130cb203f4c718e` |
| 4 | `theorem` | [Arrow.grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrow-grammar.md) | 36 | `result-track:244b8b26d2c57296165f5840982897b6da9c791b0b4b3eceb687c6430ac5de3d` |
| 5 | `theorem` | [decode_expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/decode-expression.md) | 41 | `result-track:d495582033e93afe1729f88793bfc9737c0fa2a88d02d7e53b2a5cfb8c5d800d` |
| 6 | `theorem` | [decode_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/decode-rename.md) | 48 | `result-track:e2755959d351c3cfede5b741d104a03e4d602c363a12f15244509b4194230c35` |
| 7 | `theorem` | [wn_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/wn-rename.md) | 58 | `result-track:22b964263e0717380bbd2e52ae299f31455b10c537c171d3ab96cab140184717` |
| 8 | `theorem` | [wn_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/wn-prepend.md) | 63 | `result-track:1592ef6baf0d4ab7c68cdd8a23e1c2141d986e64321662de716812b6e509371c` |
| 9 | `theorem` | [wn_lam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/wn-lam.md) | 68 | `result-track:1123ba9a33e7d58decad4197538c9e6fd5f4a37f7b3c4ae1482d988b5ed8c649` |
| 10 | `theorem` | [wn_pi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/wn-pi.md) | 76 | `result-track:203ca44eff4d894221726c118148943f16d2ee71c534c13d015362155a96ad2c` |
| 11 | `theorem` | [neutral_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/neutral-rename.md) | 84 | `result-track:9b3161e372618e23529def5239d9d0cc9503817a113957854b1070b3c58231e4` |
| 12 | `theorem` | [neutral_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/neutral-step.md) | 90 | `result-track:937e70be7c3057761137855a545dcf0a73262d0d54df32b9cb71b455209ec4ac` |
| 13 | `theorem` | [neutral_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/neutral-reduces.md) | 100 | `result-track:301b20b77dbb7a8a9dffbb06490647c0d3f06821cc8944baff76a9fa87a18d85` |
| 14 | `theorem` | [wn_neutral_app](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/wn-neutral-app.md) | 106 | `result-track:42a016e3d84b243caabf2833cf75bfc2f29437db6e5a779b85d254002ef7ff9f` |
| 15 | `def` | [Reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible.md) | 121 | `declaration-track:ed421d26348161f2c726b84a71cab2572b7e15b7d8f195dbda52cc88c294ee6a` |
| 16 | `theorem` | [reducible_wn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-wn.md) | 127 | `result-track:82abc686c28ead3502704219d5ba38eb5f048bfa456ca7d3ede3cd461b503b04` |
| 17 | `theorem` | [reducible_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-rename.md) | 133 | `result-track:a3314642832b8be3a3f73645b4b43b9b45e541e9afb765a0383b5fe448748895` |
| 18 | `theorem` | [reducible_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-prepend.md) | 145 | `result-track:b540bcecab0bdaa9fa160824b4fd43f1276976a772b503836695bc5818383f2b` |
| 19 | `theorem` | [reducible_neutral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-neutral.md) | 156 | `result-track:3948340ace75aae254c8e4008ed32a91683519a4d1ad61378e75db38375b3cd1` |
| 20 | `theorem` | [reducible_var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-var.md) | 167 | `result-track:a47803522a0431bffeeacff91f26605cc298f534d469df971e44eece47042e24` |
| 21 | `inductive` | [ArrowTyping](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrowtyping.md) | 172 | `declaration-track:c2d13de23e26c483fb590d858b42dd6803c83c41dfa2b065e9cbde9c8f7f66aa` |
| 22 | `def` | [ReducibleEnvironment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducibleenvironment.md) | 181 | `declaration-track:da9b564ca379e8636c78472c54adac1efec104da940caf304ad3b627a9bdd16e` |
| 23 | `theorem` | [reducible_environment_lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/reducible-environment-lift.md) | 184 | `result-track:53c2aa66a70010735e56f32bc4e44a2b6cefa658ab9cf2922b5898825000ea4b` |
| 24 | `theorem` | [ArrowTyping.reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrowtyping-reducible.md) | 198 | `result-track:8eb994ec78894a761ca6abdd95cdd8b32215341bfd60f0f7f454beeac7ebe5ac` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrowtyping-weakly-normalizing.md) | 253 | `result-track:12ce83af018d258fab24a1d135c9e2421400747b2ba50e780979f0fec102fa7a` |
| 26 | `theorem` | [BaseArrowType.ne_kind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/basearrowtype-ne-kind.md) | 260 | `result-track:1b80bcb1dd89efb2716e50c99466efa307502e041fd28e79643b534710b3bffd` |
| 27 | `theorem` | [BaseArrowType.sort_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/basearrowtype-sort-unique.md) | 269 | `result-track:87c72990693df3f5d7bc6f299cedd8da104da58ce59d1de2b58806702f289829` |
| 28 | `theorem` | [lookup_sorted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/lookup-sorted.md) | 281 | `result-track:cd3affbe4dc5e60ce832ec669dec2347172b817b645a2406950320d9be743a7f` |
| 29 | `theorem` | [lookup_decoded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/lookup-decoded.md) | 293 | `result-track:8d23c99c12ecd88630766946f00f2cb17e0a2891a5b87e018ce1b1a72976b36e` |
| 30 | `theorem` | [sorted_convert_to_grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/sorted-convert-to-grammar.md) | 303 | `result-track:603a8acfe8d51aee8a5720c344247f36aa6fc15b04f435b5897f5d65f73c4499` |
| 31 | `theorem` | [arrow_typing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/arrow-typing.md) | 318 | `result-track:7fc00f718a3e663cbe8d6c3e907856d4c7ce2e593e62bfe57056c8154808189a` |
| 32 | `theorem` | [typed_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/typed-weakly-normalizing.md) | 382 | `result-track:549e83048dfcad566fcd73abfbb2b1ac768f4e29c32371e4d1e63eae9eb3f999` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition1.lean/declarations/monomorphic-arrow-weakly-normalizing.md) | 419 | `result-track:d9445956558165356bd18deada16a5ecdfe02be806d7d36eeddca3e2f2d4b130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b8462e94ecbda0cd69cc444db615efc6f42c069b3a1eafbb5825cca27072a61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant0003c1d5e34d771f0a6e38bc2a024469b7989597d8c2b6554dc45a06cb4e40f7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant0003c1d5e34d771f0a6e38bc2a024469b7989597d8c2b6554dc45a06cb4e40f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
