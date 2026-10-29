# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContourTube

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9099397ecd96329db007f67ec1f3e5d58eddf5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RationalPoleContourTube.lean/index.md) · [Full source](../../../../GeneralTopology/RationalPoleContourTube.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9099397ecd96329db007f67ec1f3e5d58eddf5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContour`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imageRadius](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/imageradius.md) | 28 | `declaration-track:f6be6068ce12cb06aa0c9ad9fa287e769b061cab4191f3a08f19afbf96eda34d` |
| 2 | `def` | [Valid](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/valid.md) | 31 | `declaration-track:f81a593a28e0317685d48127b132595f1343c2be6fbf594d6515609303e40551` |
| 3 | `instance` | [validDecidable](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/validdecidable.md) | 39 | `declaration-track:2f7f5661b117286f84d3edfb383b32aca73eece3a922caa3e287bdad340d63a6` |
| 4 | `def` | [check](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/check.md) | 44 | `declaration-track:17d7caab3d3baad3902be1b7389dd54dc4d89ad14a8d5c99963783787d5b2820` |
| 5 | `theorem` | [check_iff_valid](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/check-iff-valid.md) | 47 | `result-track:7778a9239cb539e01bbac51c18a1a7c2382ec46c0b0330062a1816addd01b2d4` |
| 6 | `theorem` | [disk_variation](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/disk-variation.md) | 53 | `result-track:861ed14d3191fd1148d221cb01ea553399913a0f0a31780683199c6bdac4eee5` |
| 7 | `theorem` | [source_image_bound](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/source-image-bound.md) | 88 | `result-track:0c211f6d7cada0c7d48c4ab2487b0289ea741d3b3cf0de517f18e91d4a01c01e` |
| 8 | `theorem` | [image_disk_avoids_zero](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/image-disk-avoids-zero.md) | 102 | `result-track:03f59346885714428dff88188fb693450a631b720e7e4f5d1ce39c99e1dd1b8a` |
| 9 | `theorem` | [edge_deformation_nonzero](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/edge-deformation-nonzero.md) | 112 | `result-track:d450752cf9dbabfcac11548ec4f89321cc40b87dbf6d0429c2085542bd3ae724` |
| 10 | `theorem` | [edge_deformation_continuous](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/edge-deformation-continuous.md) | 133 | `result-track:def1f26148eb9bcffca86df4f661e8633cc5bd02ce9e746261c2f5661cf6ada3` |
| 11 | `theorem` | [adjacent_seam](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/adjacent-seam.md) | 138 | `result-track:33d91f07a1bd864cc8128e540a85af115f5bcd544a5d9d300a523427d8496876` |
| 12 | `theorem` | [closing_seam](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/closing-seam.md) | 148 | `result-track:75c632290efab74260f5738d27e3d3095da88920735dab266fff7398bd59df61` |
| 13 | `theorem` | [polygon_nonzero](../../../../GeneralTopology/RationalPoleContourTube.lean/declarations/polygon-nonzero.md) | 162 | `result-track:54eef436f7b60889118af8071c93eccd755f835f38910272d68bdb4aba221e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d19cbffcfaadb355248fa91411fbd0300867d053683782401885de730af59c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
