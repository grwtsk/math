# Verification target: Embedding Set Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94c0e2fbefade411aa215f5ebb6b8e8956f801c7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94c0e2fbefade411aa215f5ebb6b8e8956f801c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.asEmbedding_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/equiv-asembedding-range.md) | 40 | `result-track:5993399a965cbc07f72b3c9b38d3c283d7355edbe602aa637c50579d50fe3a44` |
| 2 | `def` | [optionElim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/optionelim.md) | 53 | `declaration-track:cc4b27fc7821a077195b3e3fa30f394ba54753537e679834846d538aeb29148e` |
| 3 | `def` | [optionEmbeddingEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/optionembeddingequiv.md) | 58 | `declaration-track:69c0c762fd523971d0539e2529868ab7536c7ae305f4e54d40991f625cac8105` |
| 4 | `def` | [codRestrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/codrestrict.md) | 65 | `declaration-track:84f7cdf26e95a69d321face53138446c644339611b1d4195f1e838781e29deea` |
| 5 | `theorem` | [codRestrict_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/codrestrict-apply.md) | 69 | `result-track:a85c405b26e256212d7177f42f9075fb500e053039d96d6691bc057207eaf530` |
| 6 | `def` | [image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/image.md) | 74 | `declaration-track:03fbb435f757b0284e13ae78cd0a5cade751ddc988fd05ee6c2c2538e8ca830c` |
| 7 | `def` | [embeddingOfSubset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/embeddingofsubset.md) | 85 | `declaration-track:d4bf7e401a56032f48855caef6a1ebe479f524274ad220a675ca69c3469cf65b` |
| 8 | `def` | [subtypeOrEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/subtypeorequiv.md) | 102 | `declaration-track:ba9717774cf8cda6caf679909f2b59936ad50dec7c34a50004efdaed588f7292` |
| 9 | `theorem` | [subtypeOrEquiv_symm_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/subtypeorequiv-symm-inl.md) | 121 | `result-track:540c509cf635ea98dc4c442c281542f373b3292604eec8fe84f615db369550b9` |
| 10 | `theorem` | [subtypeOrEquiv_symm_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/subtypeorequiv-symm-inr.md) | 126 | `result-track:ab4fa27ec7fe182c1dfb010b04ef408a5cebee7fe0a49c8b33fef5f48a455105` |
| 11 | `def` | [Function.Embedding.sumSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sumset.md) | 137 | `declaration-track:384fc7f260faf1ed9818315bd704f2f3cc1685f2d7040cf2606dd14e26014af6` |
| 12 | `lemma` | [Function.Embedding.coe_sumSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-coe-sumset.md) | 146 | `result-track:a498a5a29df930fb0dfde5ea0388b5e40f84c2be5c525bbfa7309664eb1ce579` |
| 13 | `theorem` | [Function.Embedding.sumSet_preimage_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sumset-preimage-inl.md) | 149 | `result-track:ad193c521ec4b98a27e52ff1b3e8b75b939365eae6be362e6e5e2c591e5e695f` |
| 14 | `theorem` | [Function.Embedding.sumSet_preimage_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sumset-preimage-inr.md) | 153 | `result-track:b02d7f306f2cac8011c9834428dd387571b3af995f7b331c2d60d2d0cf9f6ba4` |
| 15 | `theorem` | [Function.Embedding.sumSet_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sumset-range.md) | 157 | `result-track:73bd93d35dd5e025acbe568df71d5dd22ba4e1a072a6ce1b3d44e9f57b4de0f2` |
| 16 | `def` | [Function.Embedding.sigmaSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sigmaset.md) | 165 | `declaration-track:26d7abc2accc9b28f0d492b86ada7a570d66508736282229a18390eeaa1f0657` |
| 17 | `lemma` | [Function.Embedding.coe_sigmaSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-coe-sigmaset.md) | 174 | `result-track:a4ce4a3862b36ee038470d25ccd09db1a3d1e1f1c7f0bcc5160946cedca421a5` |
| 18 | `theorem` | [Function.Embedding.sigmaSet_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sigmaset-preimage.md) | 177 | `result-track:5f89a2dbdbdf3b83dd8c3c7498c5e219ea1d804a7ffcc0868931bb8ee1c22311` |
| 19 | `theorem` | [Function.Embedding.sigmaSet_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingSetNamespacedPublic.lean/declarations/function-embedding-sigmaset-range.md) | 182 | `result-track:ed88d7e8605dfba1ba93746970d6c43f573c33957d55faa7f3f281589b5ce98c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5825a2865728cfbcd49c143402cdecc846fd2a27b0b89fef16c7f785408e83d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
