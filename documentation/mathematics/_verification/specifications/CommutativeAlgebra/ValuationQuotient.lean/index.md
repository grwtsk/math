# Verification target: Valuation Quotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a39ad50baf226d89f3a966067e6ffcb685c9454c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant92880c2628117671e6b638061baa353587c6d1d52f446b25724e20a7b0f58296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationQuotient.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a39ad50baf226d89f3a966067e6ffcb685c9454c`.

Source path: `GRWTSK/Algebra/Quotient/Variant92880c2628117671e6b638061baa353587c6d1d52f446b25724e20a7b0f58296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant92880c2628117671e6b638061baa353587c6d1d52f446b25724e20a7b0f58296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [onQuotVal](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquotval-source-edition-2.md) | 26 | `declaration-track:7a27131921027da7aec0dc7bcff22b249fe9c8405ec05f4f9de6c4ae20ceb433` |
| 2 | `def` | [onQuot](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquot-source-edition-2.md) | 34 | `declaration-track:c1243bb3da55bf53d8b9ce74cb92ab5aa7d847f2039c8aca71104bae734b67d3` |
| 3 | `theorem` | [onQuot_comap_eq](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquot-comap-eq-source-edition-2.md) | 42 | `result-track:89264ca8950eadeaf2a0e2b4a8539e584ba0717583dd56d2cfb09d91ac05e41c` |
| 4 | `theorem` | [self_le_supp_comap](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/self-le-supp-comap-source-edition-2.md) | 46 | `result-track:89f78b5b9cffd7c16cc9d7093f36480f8a30a6a540445ab5eefd8c99809a3658` |
| 5 | `theorem` | [comap_onQuot_eq](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/comap-onquot-eq-source-edition-2.md) | 52 | `result-track:f34d037e0501ad9ad8e6ca21b7b533ee5cb107cf79645ec4ff893b45a98fadf8` |
| 6 | `theorem` | [supp_quot](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/supp-quot-source-edition-2.md) | 59 | `result-track:81c3349f045e00ea0fa5a40a7131e5e915d3f040de4a22a3e7e250a857fb1740` |
| 7 | `theorem` | [supp_quot_supp](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/supp-quot-supp-source-edition-2.md) | 69 | `result-track:f29e0e27807b0c923b8e0060ff18c0a120b5d7a4377f1072dccae3dacfe40171` |
| 8 | `def` | [onQuotVal](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquotval.md) | 85 | `declaration-track:1ac058725595c8353271d2983993c4b9b68389db1a8e96671e192b1befd92148` |
| 9 | `def` | [onQuot](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquot.md) | 89 | `declaration-track:2d3b9d14bc0a6a7467057a856d92321aa530f6da6af6e33207b54472fd734cff` |
| 10 | `theorem` | [onQuot_comap_eq](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/onquot-comap-eq.md) | 93 | `result-track:1f58542244ef880fe4ecae60d2c1322d88d4200cd52f61d613f35d32cd0c67f4` |
| 11 | `theorem` | [comap_supp](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/comap-supp.md) | 97 | `result-track:d8f2f43aa30f132a3ca0fd12b88e15ba414f4ee1ae5b240083a00e78227538c9` |
| 12 | `theorem` | [self_le_supp_comap](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/self-le-supp-comap.md) | 101 | `result-track:818fe4267586796757e96c4fe2339b73c17e6227ea8fe65f04fa2d9d1e8cb6de` |
| 13 | `theorem` | [comap_onQuot_eq](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/comap-onquot-eq.md) | 106 | `result-track:75f7c420ac69c9dd565e451e761b68b970efa5db5aaed2f412e92d6ac9afc8b8` |
| 14 | `theorem` | [supp_quot](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/supp-quot.md) | 111 | `result-track:24bf4987d6a39ff55162eea9af9ab57a95390dd5e1d5c72c77a6e35e14884aa5` |
| 15 | `theorem` | [supp_quot_supp](../../../../CommutativeAlgebra/ValuationQuotient.lean/declarations/supp-quot-supp.md) | 115 | `result-track:8fc2fc84d43c9ffd0f2237e6108adefa017c5f0102b93c3474ebd70e357d951e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0418ebd7a8af78a1c34e50023fed1d4c066abf6eb3e518730e1cec1319181f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Quotient/Variant92880c2628117671e6b638061baa353587c6d1d52f446b25724e20a7b0f58296.lean","GRWTSK/_verification/specifications/Algebra/Quotient/Variant92880c2628117671e6b638061baa353587c6d1d52f446b25724e20a7b0f58296.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
