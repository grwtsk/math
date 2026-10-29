# Verification target: Hasse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8387eccb1fd0a544d7058ed177b53bc2945618e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Hasse.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Hasse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8387eccb1fd0a544d7058ed177b53bc2945618e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Relation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasse](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hasse.md) | 36 | `declaration-track:26e9b9b6f5456bada4b550f9977930c4a1435d39cb4328ef0ab388e567a24f50` |
| 2 | `theorem` | [hasse_adj](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hasse-adj.md) | 45 | `result-track:02725a6fbfdb6844ff5661f49208e0be192ca401ae75432ae5b6e17e646cdef9` |
| 3 | `def` | [hasseDualIso](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hassedualiso.md) | 50 | `declaration-track:589d655db93005b1cc2c999f2832517337376fbbede5268431415f8f6331b77b` |
| 4 | `theorem` | [hasseDualIso_apply](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hassedualiso-apply.md) | 55 | `result-track:f92e970c7410ba5aaf3dabf3abd208106026eb153de8a41f59d61fb274a95ef9` |
| 5 | `theorem` | [hasseDualIso_symm_apply](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hassedualiso-symm-apply.md) | 60 | `result-track:62970dee3fbc898782a365b9901969a42c41eb1ebe457d60f6b7a4957f0d0f75` |
| 6 | `theorem` | [hasse_prod](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hasse-prod.md) | 71 | `result-track:1dad1b41b13f7384a15ba584e3ffc67d7ff3297decf33e4dd11b29d01b456f7c` |
| 7 | `theorem` | [hasse_preconnected_of_succ](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hasse-preconnected-of-succ.md) | 83 | `result-track:c1998444d09fe83d0cde364c17366118f072f293f5d9267e588f7434b2d80e1b` |
| 8 | `theorem` | [hasse_preconnected_of_pred](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/hasse-preconnected-of-pred.md) | 91 | `result-track:1e407445ccee319e3901ea3ad435f7e31a9751920f54859b6d4e4ae073c8f46b` |
| 9 | `def` | [pathGraph](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/pathgraph.md) | 102 | `declaration-track:26520777bf0076222f59573532c8b88fd95546aacebca47ad9d273c8dc3b0f3f` |
| 10 | `theorem` | [pathGraph_preconnected](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/pathgraph-preconnected.md) | 106 | `result-track:40907d16abde359e261f5ee96c87b3457b15f2af9bfc2cad34301ec33c010cde` |
| 11 | `theorem` | [pathGraph_connected](../../../../../Combinatorics/GraphTheory/Hasse.lean/declarations/pathgraph-connected.md) | 110 | `result-track:0e08e4cf1d621e7109733fc6154650c75550ed46d19c4e5b90e4f79b91d74739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96fe2e20c61f4ea6fbdc563454e254f91d92064f8e5db9ef0e895182428508e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant063e6853a88fed53fbddf0a561eb07d8d70c38af142a1814e870d20c8532038e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
