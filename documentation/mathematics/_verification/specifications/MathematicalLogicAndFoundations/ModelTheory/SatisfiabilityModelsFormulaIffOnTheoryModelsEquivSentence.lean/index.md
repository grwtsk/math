# Verification target: Satisfiability Models Formula Iff On Theory Models Equiv Sentence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349be7f0278540609f6bbf48d130e2e5b67afe5e",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349be7f0278540609f6bbf48d130e2e5b67afe5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Ultraproducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Bundled` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Skolem` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable.md) | 63 | `declaration-track:9d6eedc69f76527a19c9104b9586161ceac7101988da4525ce22f89919740b72` |
| 2 | `def` | [IsFinitelySatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/isfinitelysatisfiable.md) | 67 | `declaration-track:be85b843218c55496e270dea465934c3e23b1c07c957c3b7022b2b6d02a0f662` |
| 3 | `theorem` | [Model.isSatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/model-issatisfiable.md) | 72 | `result-track:c8250ca2522964df4cf6f1e05a8a770c88091ff7c19cd4416f4c7211cf368116` |
| 4 | `theorem` | [IsSatisfiable.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-mono.md) | 76 | `result-track:d57e5a018cfe915306af12b08027a55b3fbc785088a0aac294fc2dea75805429` |
| 5 | `theorem` | [isSatisfiable_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-empty.md) | 79 | `result-track:1b3aced0329482645910d1859de55aef65b2c8911b7f304075d17a769faf93db` |
| 6 | `theorem` | [isSatisfiable_of_isSatisfiable_onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-of-issatisfiable-ontheory.md) | 82 | `result-track:5adf008fd29495efbb8408bc5b9587600cf1b4a85994ac14150c416012fd2957` |
| 7 | `theorem` | [isSatisfiable_onTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-ontheory-iff.md) | 86 | `result-track:7e15503c106d2a8327589136ec470df8715887b9b456c3d8f2193869f5f92915` |
| 8 | `theorem` | [IsSatisfiable.isFinitelySatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-isfinitelysatisfiable.md) | 93 | `result-track:db77e68071abad622bd99b93a156229456ca70e7a6d5f54a50cdda05bf710e62` |
| 9 | `theorem` | [isSatisfiable_iff_isFinitelySatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-iff-isfinitelysatisfiable.md) | 98 | `result-track:476ea06227b4f68619fa79aae316fac0b9b68dfca3580c0add84a0b78d50902a` |
| 10 | `theorem` | [isSatisfiable_directed_union_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-directed-union-iff.md) | 119 | `result-track:a529e3151211fb51f9b9d8358401028170f73af773d75e5bebe54873b60c9de3` |
| 11 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_card_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-union-distinctconstantstheory-of-card-le.md) | 127 | `result-track:a257e9f90f0e64a013770afe69469b117c5ed02ce12889664fc84e0f419350df` |
| 12 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_infinite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-union-distinctconstantstheory-of-infinite.md) | 145 | `result-track:431dbf68e21e1a957dbe020aabb2a3bec57848a51ccf84a85685eee61e185d53` |
| 13 | `theorem` | [exists_large_model_of_infinite_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-large-model-of-infinite-model.md) | 161 | `result-track:9713794394cb6a9cbfc8ad82a99775bbee4c682c12947b20f84431deefa24cd0` |
| 14 | `theorem` | [isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-iunion-iff-issatisfiable-iunion-finset.md) | 175 | `result-track:968476e48ae2c98af691b4eee453eaf50c468c58cf18759ceab7fe14f5759c01` |
| 15 | `theorem` | [exists_elementaryEmbedding_card_eq_of_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-elementaryembedding-card-eq-of-le.md) | 197 | `result-track:2292077b934c1eebab2a3b4a03776f95c43b64b256cc2242ee948a10f8bfc5ed` |
| 16 | `theorem` | [exists_elementaryEmbedding_card_eq_of_ge](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-elementaryembedding-card-eq-of-ge.md) | 215 | `result-track:081a4b8b74e9ef084e5bd52234e42b45bff8e5a460d668fe3da793fcceddd488` |
| 17 | `theorem` | [exists_elementaryEmbedding_card_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-elementaryembedding-card-eq.md) | 241 | `result-track:66e1b6b7801e41b913855e39f0bbb670686e7ba76510dde3b6a33e7a0697310a` |
| 18 | `theorem` | [exists_elementarilyEquivalent_card_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-elementarilyequivalent-card-eq.md) | 255 | `result-track:99f72701d0789dccd8d12bd674aa08d2a01b92208917bf215d7ad92b6e5329be` |
| 19 | `theorem` | [exists_model_card_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/exists-model-card-eq.md) | 266 | `result-track:d73d58b798664036e315daaf55c6ef7b130477b0bc71dd6e5da555137f36e410` |
| 20 | `def` | [ModelsBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/modelsboundedformula.md) | 280 | `declaration-track:f7d72a19e42698639dc5559fa91642c65243af4713426e4a641c90b46d2c1062` |
| 21 | `theorem` | [models_formula_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-formula-iff.md) | 288 | `result-track:3a797b4452db1c246548a9d01f1023c2743f0d883fdb0ed16dfcd7a23432a943` |
| 22 | `theorem` | [models_sentence_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-sentence-iff.md) | 292 | `result-track:bdf34c08e100ad2c6c7759ff5bb67e3d635add8e10f26a755a30e717d038d710` |
| 23 | `theorem` | [models_sentence_of_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-sentence-of-mem.md) | 295 | `result-track:33f2692bd51d24c9acd9bc753d3d98cc3ef6c31171d4f0d13710958d1e3ffaba` |
| 24 | `theorem` | [models_iff_not_satisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-iff-not-satisfiable.md) | 298 | `result-track:c880e1a40f3b0d40c2372d1b9a0d308b20bf264a1e8ea61c10e89a7787748a28` |
| 25 | `theorem` | [ModelsBoundedFormula.realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/modelsboundedformula-realize-sentence.md) | 315 | `result-track:11b225273216fd500830671648e041faa35709954571653123642d6e8f55907f` |
| 26 | `theorem` | [models_formula_iff_onTheory_models_equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-formula-iff-ontheory-models-equivsentence.md) | 326 | `result-track:71f2bb84bf501dc36c86e139ac37177f417c7733d43be2d5d2ff982b7e0f181c` |
| 27 | `theorem` | [ModelsBoundedFormula.realize_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/modelsboundedformula-realize-formula.md) | 341 | `result-track:8a20041e379595d50c02aa1707db53fd052e0fcebfab3c6fcca9209f60f369f1` |
| 28 | `theorem` | [models_toFormula_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-toformula-iff.md) | 348 | `result-track:d1f8230ed1efa34ebef702d7f2683647af97d02f52e632a4a193b281132dcf32` |
| 29 | `theorem` | [ModelsBoundedFormula.realize_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/modelsboundedformula-realize-boundedformula.md) | 356 | `result-track:47cba041670d86d7f2113648036e9f71c31a19fb6990235f54a78e83cd7a9145` |
| 30 | `theorem` | [models_of_models_theory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-of-models-theory.md) | 363 | `result-track:4dda5155d1cd77f29769aa0544c7e67b47d7a1b776f38c2cde4299702aec6bff` |
| 31 | `theorem` | [models_iff_finset_models](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-iff-finset-models.md) | 372 | `result-track:2096cec10dfe3921d1a467c19bf46df4d4005daa1ca84926e9966a573b4a404f` |
| 32 | `def` | [IsComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/iscomplete-source-edition-2.md) | 389 | `declaration-track:9162ce2d838b1c23c5225a814a173ac7ea23fa789358d51028e0c217d8875428` |
| 33 | `theorem` | [models_not_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/models-not-iff.md) | 394 | `result-track:f4b5bb80816a904351b58a014e93a3b121822beb6ac4101570bead46a4533f9b` |
| 34 | `theorem` | [realize_sentence_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/realize-sentence-iff.md) | 406 | `result-track:0d290591c2e614864024a66f50bd1edc51d644846ba8f4f33f7b35a07b30411d` |
| 35 | `def` | [IsMaximal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal.md) | 418 | `declaration-track:3296000eb919fb1ed9c1e44798147cc8b920b3d446de93e0a85611cc931d825c` |
| 36 | `theorem` | [IsMaximal.isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal-iscomplete.md) | 421 | `result-track:6ac7ffbfd1502f13efbeab26ca43a64e4f09c1a944350a8c99295031988f746f` |
| 37 | `theorem` | [IsMaximal.mem_or_not_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal-mem-or-not-mem.md) | 424 | `result-track:7498253c8a62cf20978e4d3434dee9a89a0e7f9651a97f218a31a66d50ad3ae4` |
| 38 | `theorem` | [IsMaximal.mem_of_models](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal-mem-of-models.md) | 427 | `result-track:7b8141600e7dc841bb924f406f8244574ff251e6cc5e0c6e5a1daa5455a59b38` |
| 39 | `theorem` | [IsMaximal.mem_iff_models](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal-mem-iff-models.md) | 432 | `result-track:5f24cd510821dd4dfb4b4e596ddb7d34fd908e0d58ee18343c1c0c234d50eb51` |
| 40 | `theorem` | [isSatisfiable](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/issatisfiable-source-edition-2.md) | 442 | `result-track:cbbe892867f912572ef5198a6232dcbcbcb642f1cdbdc971228a4d6c48f2f98b` |
| 41 | `theorem` | [mem_or_not_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/mem-or-not-mem.md) | 445 | `result-track:e24997a5a37a5694e4c5a55a57be0b4dd59cd75c3e50a352c4f4f925611257a0` |
| 42 | `theorem` | [isMaximal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/ismaximal-source-edition-2.md) | 448 | `result-track:c5be2242e11de11532338b30f81b31468817039cfba0d75c4e33db6317e7b43e` |
| 43 | `theorem` | [isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/iscomplete.md) | 451 | `result-track:4e5301ac24ce3f676ae4070cf31be93b91b1fb9679ccee5fc84d8d6c3a987bac` |
| 44 | `def` | [Categorical](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/categorical.md) | 467 | `declaration-track:ac9ac4bd19e83f12382b0fdd2cfb721e91e9eae28bafba012ba2535a9ad61c37` |
| 45 | `theorem` | [Categorical.isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/categorical-iscomplete.md) | 471 | `result-track:e9270d039df8f713a005d5caa1e2beaaa5ed045af72084ade84a3ea46e2821ae` |
| 46 | `theorem` | [empty_theory_categorical](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/empty-theory-categorical.md) | 490 | `result-track:aca236600cc9f8d21ee17e16d71d32a5ae64c594188b31e9368d480c58b24b4d` |
| 47 | `theorem` | [empty_infinite_Theory_isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/SatisfiabilityModelsFormulaIffOnTheoryModelsEquivSentence.lean/declarations/empty-infinite-theory-iscomplete.md) | 493 | `result-track:517c44881c0ce51df9b6981bba4008e3210d84db6d0b3e4e1eb226e8b86f382f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f4c99cc8a35277278fc0b092583c53819c274f4f833cd21968c2e4e12195e87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
