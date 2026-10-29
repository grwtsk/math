# Verification target: The Two Column Coprimality Expansion Keeps Every Signed Subset Coefficient Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "843f31a66253ce123b3508acd9aee9760351d18e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/index.md) · [Full source](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `843f31a66253ce123b3508acd9aee9760351d18e`.

Source path: `GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RadicalMasks` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorMask](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/divisormask.md) | 32 | `declaration-track:6ee4b376975344abca29215563b8bc858cc0317c6bf89eceb0e476f46ea1599e` |
| 2 | `theorem` | [unit_mask_prime](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/unit-mask-prime.md) | 34 | `result-track:f9a18dbd760af04dee2f597ff3d596f097d988cb87d237c9fbae80b5abf9b742` |
| 3 | `theorem` | [unit_mask_finite_product](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/unit-mask-finite-product.md) | 39 | `result-track:c7c8bd0174a43438db84cf7ded4c5016f31d9e5705283e9e3e12e42c7ee76f38` |
| 4 | `theorem` | [subset_mobius_sign](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/subset-mobius-sign.md) | 46 | `result-track:3ed861eb8d72e7dcc992f50e57a842978ae21004d92e2efa67f5c3706e9b0879` |
| 5 | `theorem` | [one_column_signed_expansion](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/one-column-signed-expansion.md) | 55 | `result-track:358f69c6aaf3ba66fbe0f3d1eb56f1c0ddcb93dbaf7f5679a6343caae731bd9d` |
| 6 | `theorem` | [two_column_signed_expansion](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/two-column-signed-expansion.md) | 69 | `result-track:811062946e0742fbe9e81d972fb932a5934e30ce2e4e05145cb3f7f9327da04f` |
| 7 | `theorem` | [exact_two_column_coefficient_mass](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/exact-two-column-coefficient-mass.md) | 82 | `result-track:2eb7be53881c415635f006d9d501986f2425dd97a2627a0a95dfc4da99ee690e` |
| 8 | `theorem` | [absolute_expansion_retains_complete_mass](../../../../NumberTheory/TheTwoColumnCoprimalityExpansionKeepsEverySignedSubsetCoefficientEdition1.lean/declarations/absolute-expansion-retains-complete-mass.md) | 102 | `result-track:9e051ee747db33c8aca5deccb969e303311d31e8b2bd2bb8e2befa7fdd8179f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9cf5c46a8dc2f61b390643aa971cfdcb95753eed0ce9a327c8e6abc890950423 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean","GRWTSK/_verification/specifications/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
