# Verification target: Big Operators Namespaced Coprime List Prod Left Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b49df5b427c0abac691e5605fb747af03b6d5da",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b49df5b427c0abac691e5605fb747af03b6d5da`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_list_prod_left_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-list-prod-left-iff.md) | 27 | `result-track:03efa1885c5bd9726adfc57ee590c92e2306f657d6efdeafbd012dcdf66b32bf` |
| 2 | `theorem` | [coprime_list_prod_right_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-list-prod-right-iff.md) | 31 | `result-track:6ef994b806753b26031546317eeb0f8a32f88812c110d53a9afe74120caae245` |
| 3 | `theorem` | [coprime_multiset_prod_left_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-multiset-prod-left-iff.md) | 35 | `result-track:7274612619dd20cc036e9474c1a2225ee86abf0f6d5c032999726d6c1a597bb9` |
| 4 | `theorem` | [coprime_multiset_prod_right_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-multiset-prod-right-iff.md) | 39 | `result-track:9e90f225064db116e113ce8d3a9d47a7cf1f028ab9e953dd4c2b239607951c77` |
| 5 | `theorem` | [coprime_prod_left_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-prod-left-iff.md) | 43 | `result-track:a13050840f9b7b4b7b4637415f24ad3627c1e9164ca2f39f9a67e70f14014f4a` |
| 6 | `theorem` | [coprime_prod_right_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-prod-right-iff.md) | 47 | `result-track:2507509747be59d88a1f977d245f734f7af52cba8ff16cb11db7ecdcc79f0783` |
| 7 | `theorem` | [coprime_fintype_prod_left_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-fintype-prod-left-iff.md) | 57 | `result-track:bfea31e559a337fe1deff8cf064612fff855d49d2e74beebc6cb61a81f6e207a` |
| 8 | `theorem` | [coprime_fintype_prod_right_iff](../../../../../NumberTheory/ElementaryNumberTheory/BigOperatorsNamespacedCoprimeListProdLeftIff.lean/declarations/coprime-fintype-prod-right-iff.md) | 61 | `result-track:2b4fcec0597e77ac13f672f1d557ad21f87a174571b4571de9a352c81c490480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca22a967f20aad2384b59c6cd59cfa82f652d0eb4e1e7b810f31a23c9e4151c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
