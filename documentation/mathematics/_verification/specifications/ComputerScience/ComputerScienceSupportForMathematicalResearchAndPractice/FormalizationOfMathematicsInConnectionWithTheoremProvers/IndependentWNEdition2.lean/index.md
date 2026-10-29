# Verification target: Independent WNEdition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3756eeb0ec22e36c363e8cd91ce6787597e4d9e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3756eeb0ec22e36c363e8cd91ce6787597e4d9e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IntendedPTSWithNarrow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrow.md) | 15 | `declaration-track:85df633c0df7a4ee8950b759f0fc78f0dd5a4d2cab104eb78993166c8e78ed41` |
| 2 | `def` | [Arrow.expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrow-expression.md) | 20 | `declaration-track:f14bc4cb3a0f9da9780d3c04cb9f77a3ba37bb7f888fda894b4697edef4f4252` |
| 3 | `def` | [decodeArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/decodearrow.md) | 24 | `declaration-track:0195e1a33a5783104c41f80a8afbe26c281d51b328c274f3e9b417a33f5da71a` |
| 4 | `theorem` | [Arrow.grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrow-grammar.md) | 28 | `result-track:9fdf178fe1985e95cb97ee0a7276bfa8e31190db2fb94e8db756523d42a73458` |
| 5 | `theorem` | [decode_expression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/decode-expression.md) | 33 | `result-track:0b344cfe7a22648e1d5b9452159223ddd5a72e475662415a35903e50e9a7a2ba` |
| 6 | `theorem` | [decode_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/decode-rename.md) | 40 | `result-track:0b05f840cf3b9c20d0e668184095691e48471d8fd4d694afee563ab4c8bbbcf5` |
| 7 | `theorem` | [wn_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/wn-rename.md) | 50 | `result-track:0d754264122c2c5d3aeba3cd62f74165679ebc52ec214d82715268f354663af9` |
| 8 | `theorem` | [wn_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/wn-prepend.md) | 55 | `result-track:6458506c2611124106437cffdde80a166a23deb52a86a230b7b5447c07acf0db` |
| 9 | `theorem` | [wn_lam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/wn-lam.md) | 60 | `result-track:d74a8736e349a22f04e5a1d962329f25ddb3d7d7ccc4047a2f22dbc3673f6d88` |
| 10 | `theorem` | [wn_pi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/wn-pi.md) | 68 | `result-track:ad0804a5ad7681d5931dd359233392c720a92935c022ff45fe96e5bce8b88a7d` |
| 11 | `theorem` | [neutral_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/neutral-rename.md) | 76 | `result-track:68fc1f207a42d536e0253bfbea0e18b03a4ec94e9dba74078eee8b5acf9c8ad1` |
| 12 | `theorem` | [neutral_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/neutral-step.md) | 82 | `result-track:5ce38f77c2b646339c0a017e9f014f59929cc531acd6cd23e5aa9671c3ab347d` |
| 13 | `theorem` | [neutral_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/neutral-reduces.md) | 92 | `result-track:137baf74d799f1a15537864a4b103253f3363d4882009b6fe895e496623af991` |
| 14 | `theorem` | [wn_neutral_app](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/wn-neutral-app.md) | 98 | `result-track:70a5a193f39030369b695cc0ee96732127fdf05097701812840c5a7866e09d68` |
| 15 | `def` | [Reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible.md) | 113 | `declaration-track:9b11f5ade6aa9f6e89930a64db0fef90ea57287f41745ada5c53476954837885` |
| 16 | `theorem` | [reducible_wn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-wn.md) | 119 | `result-track:e918a8a00221cd2301df577210e9ad23a0326bc8a2b7613e36ecf566054190eb` |
| 17 | `theorem` | [reducible_rename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-rename.md) | 125 | `result-track:9e39f724a570c200b003a74e04761fb5bbac3701b9bfb822f5b16269b2175ab2` |
| 18 | `theorem` | [reducible_prepend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-prepend.md) | 137 | `result-track:cddcb92e073b9c1ecfafbf42ecfdeb505bae049533b65fad60595b2220567425` |
| 19 | `theorem` | [reducible_neutral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-neutral.md) | 148 | `result-track:abee96b173085f310eaef983181e696467ae730b56fe541939321d09c43e4885` |
| 20 | `theorem` | [reducible_var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-var.md) | 159 | `result-track:4a13ab45699bacb1662d71b233134d93cf055883c750320d8759e47eac6f3ae2` |
| 21 | `inductive` | [ArrowTyping](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrowtyping.md) | 164 | `declaration-track:197d7630a359603597f5e39e743d4494dd16d578977a398af4520d6c58f903f3` |
| 22 | `def` | [ReducibleEnvironment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducibleenvironment.md) | 173 | `declaration-track:627aedd30da2ba6828f478f92b987d587b86a3fab502b04b61c75213ef4331f8` |
| 23 | `theorem` | [reducible_environment_lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/reducible-environment-lift.md) | 176 | `result-track:69bba75d72ceabb84b2ae90204b9fcb66c4571813452760c11e636856966ae5b` |
| 24 | `theorem` | [ArrowTyping.reducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrowtyping-reducible.md) | 190 | `result-track:b4e4ea576fd0e5443d00336f135e6a9939278181b2fc0e8e403585fd71d69e72` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrowtyping-weakly-normalizing.md) | 245 | `result-track:17ba2ca37c382021616e59a7948eb66098e0767e1c3700b81aeff64bd7a67690` |
| 26 | `theorem` | [BaseArrowType.ne_kind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/basearrowtype-ne-kind.md) | 252 | `result-track:5b2ebd9b0824aa909af0cbee40a258bff53dff7142021b0ae071d71cf45d032e` |
| 27 | `theorem` | [BaseArrowType.sort_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/basearrowtype-sort-unique.md) | 261 | `result-track:ebacd7f361a27997ab4fa179cd204599f0837bf281a3a8e5dc80c2ef8af55978` |
| 28 | `theorem` | [lookup_sorted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/lookup-sorted.md) | 273 | `result-track:0f596efde81fb2d988d4f63c6d98109c21c01d76110ca02b65227bae769bea3c` |
| 29 | `theorem` | [lookup_decoded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/lookup-decoded.md) | 285 | `result-track:9f5194d7b9e7409d5e17852051c8d3f698b0f6cd49a2c16b2cdb43816fcf0725` |
| 30 | `theorem` | [sorted_convert_to_grammar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/sorted-convert-to-grammar.md) | 295 | `result-track:f9e0e375bc6098e229aa6de8fffb4d9d7985c6c147a5c8986126b8e237396e50` |
| 31 | `theorem` | [arrow_typing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/arrow-typing.md) | 310 | `result-track:5e996b7a7b4a26f1fc391a664a2305127a8603c2a1d3e19725a32f869140ef2b` |
| 32 | `theorem` | [typed_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/typed-weakly-normalizing.md) | 374 | `result-track:c4e644b34d390a57d269f6ceb0a083be9e440a1803f710c214cbc3c70b1e5ac9` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNEdition2.lean/declarations/monomorphic-arrow-weakly-normalizing.md) | 411 | `result-track:dc15b56bef160192d6d6a9a1115514911d204ac7bcfd00a7da9f9756fa81b3a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c8a726cc9a288c0ef9476a2d0b8f2d98ea6c5332b018c0646c606b7920be155 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
