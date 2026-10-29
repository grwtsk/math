# Verification target: Relation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0501a89d73058c3f9c9a17f71c7ea00b890da85",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0501a89d73058c3f9c9a17f71c7ea00b890da85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Archimedean` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reflTransGen_of_succ_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-succ-of-le.md) | 31 | `result-track:14351075140619f6e77d85f6fe8c13897f2691f84b3bf05485eb1ff2d732eaf4` |
| 2 | `theorem` | [reflTransGen_of_succ_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-succ-of-ge.md) | 44 | `result-track:6edebe03f29ac6de258cfde9d27e98c1e768c4f8790ce28dddbc8d28c9b10ce4` |
| 3 | `theorem` | [transGen_of_succ_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-succ-of-lt.md) | 51 | `result-track:e4fe8d52a195e1ea2227b48b7456a0ee2abf241d8a5f93431549d656f727e501` |
| 4 | `theorem` | [transGen_of_succ_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-succ-of-gt.md) | 58 | `result-track:afbd379c0c84282bb82f8c02e29842c692c9ee0638abfca26a28e6c13d3f143f` |
| 5 | `theorem` | [reflTransGen_of_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-succ.md) | 71 | `result-track:fccbc19faa9f8dd169ae6e64b3377f069d681228ff11168efe737e959e6e31d1` |
| 6 | `theorem` | [transGen_of_succ_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-succ-of-ne.md) | 77 | `result-track:02582dcccc9991a5cc1f58764e6c0c737f0eae8361913f6679331b7b9286ca8d` |
| 7 | `theorem` | [transGen_of_succ_of_reflexive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-succ-of-reflexive.md) | 83 | `result-track:093c3d325d5094d7c50116bf0dc4245ef45ed82cfa0eb4792e2f0cc09e56996a` |
| 8 | `theorem` | [reflTransGen_of_pred_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-pred-of-ge.md) | 96 | `result-track:f209da274b61d2b742fecf0433cbe4878941119003c071136e229ae87d6212e8` |
| 9 | `theorem` | [reflTransGen_of_pred_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-pred-of-le.md) | 102 | `result-track:3584979a6a20bd68bb27484fae6a2b783cfeb87661a4d355142f1a42553d0815` |
| 10 | `theorem` | [transGen_of_pred_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-pred-of-gt.md) | 108 | `result-track:34912e8107e78c6ae7b4499a7008b074b8330ad855706dea53ab8c2dc8aa3134` |
| 11 | `theorem` | [transGen_of_pred_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-pred-of-lt.md) | 114 | `result-track:5d55aa2d2fabc4a06a81f3ee7828ccd739394a8ea99974f143eb305fd4851c8d` |
| 12 | `theorem` | [reflTransGen_of_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/refltransgen-of-pred.md) | 126 | `result-track:038f502883fec2c0157d8921ea8f140db74d0507e36c3d75897d1cd041f53fbd` |
| 13 | `theorem` | [transGen_of_pred_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-pred-of-ne.md) | 133 | `result-track:351a9f43a5840ddab2b9d97a56f9ce92042c548f72d89e322e589b53978a6034` |
| 14 | `theorem` | [transGen_of_pred_of_reflexive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelationNamespaced.lean/declarations/transgen-of-pred-of-reflexive.md) | 140 | `result-track:7930f268d9e2b2e70d80f3a69df16fb30e921a7d7cbc0e899f6e7e033e4f71ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=091fd4ea8469c01be071fe0fa7ca6ac949c3d7cc42780286e0ea3c59dab48bd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relation/Variant8a9e088e5454a13ed87e6d168c7f075a143ebeeb5b2c0d7cdbe51b72c85f3a7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
