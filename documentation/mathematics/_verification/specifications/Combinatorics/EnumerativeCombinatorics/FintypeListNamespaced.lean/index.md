# Verification target: Fintype List Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "696e45321bbf7b91f81ee484d46c59db865e74db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `696e45321bbf7b91f81ee484d46c59db865e74db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Permutation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lists](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/lists.md) | 39 | `declaration-track:8ba18ac21100d3e57a4a635447ef2ba8f85ae7648a8ac3022009290eda0eafa1` |
| 2 | `theorem` | [lists_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/lists-coe.md) | 46 | `result-track:d408d6a0adf20e8bf8892e4e263467b35b8c726d92d83bb73a7aba3569e5f761` |
| 3 | `theorem` | [lists_nodup_finset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/lists-nodup-finset.md) | 50 | `result-track:93f5bc9c4734abc71a054720d4a827edec89c55fd7dff5cba12780e1d8671d22` |
| 4 | `theorem` | [mem_lists_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/mem-lists-iff.md) | 57 | `result-track:174614b8d33844b5816d5c2afe0f2f71c36fb3270e030aaac206fd89ddaa3a9e` |
| 5 | `theorem` | [perm_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/perm-tolist.md) | 64 | `result-track:d007a4f175490f43ade0087234e87c251145a8992e4a6dddebb78e5db315b6a3` |
| 6 | `instance` | [fintypeNodupList](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeListNamespaced.lean/declarations/fintypenoduplist.md) | 68 | `declaration-track:1e10fbddad667bae74457eda31dab6022b97b5e727829a9069022011b1a46a87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f53ba7d25f50479a5c621716e374fd5bfb76b365692548e9dca1c4b180fa7313 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/List/Variantfddffd027b881ae2093f3db450eab9280abdc63becc393f8a0c0192d0111cfb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
