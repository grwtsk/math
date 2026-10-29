# Verification target: Fintype Sort Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75fbd4df9bf5c7e887e42e2986ef59c193fb5389",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75fbd4df9bf5c7e887e42e2986ef59c193fb5389`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoEquivOfFin](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/declarations/monoequivoffin.md) | 33 | `declaration-track:6c405cc69d6f1fa93b323be0f187ef43a4700dfff89c8f5591d9ccfe1dd2e721` |
| 2 | `def` | [finSumEquivOfFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/declarations/finsumequivoffinset.md) | 43 | `declaration-track:2523b44171abc967264893d2285b254a8af47978aef9862583999485ec96bc6a` |
| 3 | `theorem` | [finSumEquivOfFinset_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/declarations/finsumequivoffinset-inl.md) | 51 | `result-track:d5a5741a6f5afd4db7d2595ddee2c09e5a0695f4eeda4671b835523db1fbf518` |
| 4 | `theorem` | [finSumEquivOfFinset_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeSortNamespaced.lean/declarations/finsumequivoffinset-inr.md) | 56 | `result-track:e826d680d0e9ee74db4837c9763f20d1d28ec3ccc7a9aaa3e132470ee33d3d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1cf76bdffaa973e818e90252215e08f8f68b9c99eaa00f3d9e032672bb0e996 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sort/Variantafbb8fd6f8fea032450ec3d6a13800a4101478af1fd0e81048ef9d248ffb4761.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
