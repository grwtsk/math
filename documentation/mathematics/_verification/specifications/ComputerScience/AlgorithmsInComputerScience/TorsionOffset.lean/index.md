# Verification target: Torsion Offset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fed18d00c364f68cf8a853d3b44edb4d38b4b182",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionOffset/Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fed18d00c364f68cf8a853d3b44edb4d38b4b182`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionOffset/Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionOffset/Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.BSD.RankOrderCompatibility` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionOffsetStratum](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsionoffsetstratum.md) | 25 | `declaration-track:dcda22287bdc60233f323f26c47620b52b15c19f68506394afde9ef981ae9e49` |
| 2 | `structure` | [Pivot](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/pivot.md) | 32 | `declaration-track:1c6cfef00ca2935b381521b9d56711078fdddee3674b75020be3fd6b57f2ad40` |
| 3 | `structure` | [PivotComposite](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/pivotcomposite.md) | 36 | `declaration-track:ee38f9cfa68d287d749c481134e0a9c7613a72879d25aad6456e6f8d9c6ade8c` |
| 4 | `structure` | [TorsionOffsetNonIntersection](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsionoffsetnonintersection.md) | 46 | `declaration-track:052ffb81e925821b832b5244ac1c5a22250fd3151fa4138186477ab47f65e618` |
| 5 | `structure` | [BSDPivotCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/bsdpivotcompatibility.md) | 64 | `declaration-track:e01f5892f1856e333ea55abaf8c2628e85cac8df521c2756fd7716623cdb311f` |
| 6 | `structure` | [TorsionOffsetGeometricFortification](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsionoffsetgeometricfortification.md) | 81 | `declaration-track:3a491ace22259c6f477e93e6668f58233ae9cdfd1ec9af352ec723502d9cb8f7` |
| 7 | `theorem` | [torsion_offset_no_intersection_with_half_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsion-offset-no-intersection-with-half-if-supplied.md) | 91 | `result-track:dba83c9a5732a96ad331d7cb9faf084adde2e52a6f6255710a860339a2492840` |
| 8 | `theorem` | [torsion_offset_no_intersection_with_one_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsion-offset-no-intersection-with-one-if-supplied.md) | 96 | `result-track:2937d43892c0a806a1efc5d1b1735564992356de6d6c5a8589e0ce8aa7983523` |
| 9 | `theorem` | [torsion_offset_no_intersection_with_composites_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsion-offset-no-intersection-with-composites-if-supplied.md) | 101 | `result-track:9cad936ccbadb341375707692a09f88e0cabfacb7591f5e0d5582f88c3a96bdf` |
| 10 | `theorem` | [bsd_obstruction_accounted_for_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/bsd-obstruction-accounted-for-if-supplied.md) | 106 | `result-track:6343aa46b766771eeb7f95fd1cef4e2f64a9606aef7b13c1974bd7d9400c49c5` |
| 11 | `theorem` | [bsd_rank_order_if_compatibility_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/bsd-rank-order-if-compatibility-supplied.md) | 111 | `result-track:501e4338f115e998f6aae8f83b6ece698f1afaacb550d429ff9f75dede65c341` |
| 12 | `theorem` | [torsion_offset_obstruction_persistence_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionOffset.lean/declarations/torsion-offset-obstruction-persistence-if-supplied.md) | 116 | `result-track:a3d1fc7c4338ee06104c69770236103d122ee82ac7b1229e28a3db0eafccd3cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b52db3f1c1a2578751b2c4ced3093f918daf928ffb78404d925085cc1dfbb901 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionOffset/Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionOffset/Variant009b79d3a34a3a37744973797b11fca23caa1f9875b41faf82ea4b0510a6e64c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
