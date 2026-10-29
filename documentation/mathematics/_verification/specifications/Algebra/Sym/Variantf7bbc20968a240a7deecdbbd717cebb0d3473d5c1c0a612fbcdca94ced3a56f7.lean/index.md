# Verification target: GRWTSK.Algebra.Sym.Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc67ff12da8b68decf09ed87ae44cb30ae9ff0e6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/index.md) · [Full source](../../../../../Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc67ff12da8b68decf09ed87ae44cb30ae9ff0e6`.

Source path: `GRWTSK/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_sym2_filter_not_isDiag](../../../../../Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/declarations/sum-sym2-filter-not-isdiag--56c168cbed6a75577a6faa2a.md) | 26 | `result-track:56c168cbed6a75577a6faa2a3ee709bd0ce12c8149d82a1f8287510173301137` |
| 2 | `theorem` | [sum_count_of_mem_sym](../../../../../Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/declarations/sum-count-of-mem-sym--c55b0d6e77cd9df57a4ea7e2.md) | 34 | `result-track:c55b0d6e77cd9df57a4ea7e2c4719f325c279fa67205a068f329f863a51be177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=142ee7a49db5e9907e69aad201b180f0610159cb95a5db178928140a8a257b84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean","GRWTSK/_verification/specifications/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
