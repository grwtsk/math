# Verification target: Interval Succ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f8b3010b24a1630baf242abbdc70ee06b924428",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variantd3626c0e889d019cc5c2c2ac563aba8c6935d96153e40ba60a17d13b29032fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f8b3010b24a1630baf242abbdc70ee06b924428`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variantd3626c0e889d019cc5c2c2ac563aba8c6935d96153e40ba60a17d13b29032fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variantd3626c0e889d019cc5c2c2ac563aba8c6935d96153e40ba60a17d13b29032fa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pairwise.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [biUnion_Ico_Ioc_map_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/biunion-ico-ioc-map-succ.md) | 36 | `result-track:ed07883b4703c9789efef529e01830d1f29d1cda70d17b783b491522964a55e9` |
| 2 | `theorem` | [pairwise_disjoint_on_Ioc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioc-succ.md) | 52 | `result-track:2360d0e68c843fc4f910bcd3bb16807a4a4e1a8374623f524ddf4988f995bc52` |
| 3 | `theorem` | [pairwise_disjoint_on_Ico_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ico-succ-source-edition-2.md) | 60 | `result-track:f4990e863c585ade401e31609d0e275a6b880d34285e2f43bfa8333cdc5d7661` |
| 4 | `theorem` | [pairwise_disjoint_on_Ioo_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioo-succ-source-edition-2.md) | 68 | `result-track:947e0a1a653ef21aeebcf70b37f7ad2d0440d0f7d49a826bf64a3820f4d51273` |
| 5 | `theorem` | [pairwise_disjoint_on_Ioc_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioc-pred.md) | 74 | `result-track:73f07399882beaca7a33ea6febf564bfc4b830e83610d1cf12fe3eec6b29aac3` |
| 6 | `theorem` | [pairwise_disjoint_on_Ico_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ico-pred-source-edition-2.md) | 80 | `result-track:f185bf2b94483af0376dbf72af0a6e4a4267b009fb4b3267bd1fdce3e5a03199` |
| 7 | `theorem` | [pairwise_disjoint_on_Ioo_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioo-pred.md) | 86 | `result-track:bc6b8243fb0e471b49887f1be72cae150e57ddd5536f731f31d2e3677020b463` |
| 8 | `theorem` | [pairwise_disjoint_on_Ioc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioc-succ-source-edition-2.md) | 98 | `result-track:fb17d4fc34705c1b768bf547c293bef7e6f4b39cf98b497f40ed3798a2b54dc2` |
| 9 | `theorem` | [pairwise_disjoint_on_Ico_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ico-succ.md) | 104 | `result-track:abb09e3bf5daebdc675913834ca716348850f3c211ee885183ede8b32257c5ed` |
| 10 | `theorem` | [pairwise_disjoint_on_Ioo_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioo-succ.md) | 110 | `result-track:012f74d07b081a5c60fcfe8d4203ed24d582834de68d51a15a226f36ca96d8c4` |
| 11 | `theorem` | [pairwise_disjoint_on_Ioc_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioc-pred-source-edition-2.md) | 116 | `result-track:aeb6485fcd0886db7fb9c779a6129bdcf3923a6b3ad2bd11a05dfbd424605897` |
| 12 | `theorem` | [pairwise_disjoint_on_Ico_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ico-pred.md) | 122 | `result-track:a65973acbdbf863f82a13c15173e573dcad1ed98d9fa9505526361c589adaaf5` |
| 13 | `theorem` | [pairwise_disjoint_on_Ioo_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalSucc.lean/declarations/pairwise-disjoint-on-ioo-pred-source-edition-2.md) | 128 | `result-track:eefac4169e5b9387e4669afae94e79f1f5022cb993a5da62a65eb249f546974f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2aefc952917b15949566519532e489df9d4860b2093a6a0f85da447b6f700f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variantd3626c0e889d019cc5c2c2ac563aba8c6935d96153e40ba60a17d13b29032fa2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variantd3626c0e889d019cc5c2c2ac563aba8c6935d96153e40ba60a17d13b29032fa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
