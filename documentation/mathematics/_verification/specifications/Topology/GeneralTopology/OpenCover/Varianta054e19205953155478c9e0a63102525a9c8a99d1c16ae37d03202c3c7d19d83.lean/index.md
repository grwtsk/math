# Verification target: GRWTSK.Topology.GeneralTopology.OpenCover.Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f933ff43508b20349c63881605a31a25f6f1333",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f933ff43508b20349c63881605a31a25f6f1333`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Opens` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOpenCover](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/isopencover--d047103aa1c737c9686af95b.md) | 30 | `declaration-track:d047103aa1c737c9686af95b598b50eee3111c1b7756ffd3b0ab49775d4c9438` |
| 2 | `lemma` | [mk](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/mk--99eb8819f22c6636de8076e7.md) | 38 | `result-track:99eb8819f22c6636de8076e789b7aee885f534b3e0c52c2f25be1cd93dcd8b85` |
| 3 | `lemma` | [of_sets](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/of-sets--c9f8c9bf1e6e346697e90adc.md) | 40 | `result-track:c9f8c9bf1e6e346697e90adc46449bf665e6c17f0bb5322f4366478502c2ee16` |
| 4 | `lemma` | [iSup_eq_top](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/isup-eq-top--9a285b7162d184c42141ee96.md) | 44 | `result-track:9a285b7162d184c42141ee96df4ba4280b5e6b805cafbcaabf213fdad7deab03` |
| 5 | `lemma` | [iSup_set_eq_univ](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/isup-set-eq-univ--5194555bd0642e1ee5869120.md) | 46 | `result-track:5194555bd0642e1ee586912005bb035363f74b5ee065c0f7569c559bba560fc0` |
| 6 | `lemma` | [comap](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/comap--4b571d5fb0f4d8cdfff15bf5.md) | 51 | `result-track:4b571d5fb0f4d8cdfff15bf56d52679ab459d3a4d3c973c49bd93009de7e1bde` |
| 7 | `lemma` | [exists_mem](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/exists-mem--bf2c30f64545acf5a65587ef.md) | 54 | `result-track:bf2c30f64545acf5a65587ef724fad23843c8fa7d6732524cb32f8d77b3c41f4` |
| 8 | `lemma` | [exists_mem_nhds](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/exists-mem-nhds--0ce8b321f4c33309466b0101.md) | 57 | `result-track:0ce8b321f4c33309466b0101114625559f65c99eb5f88bd426bf1e71fe4e1ffc` |
| 9 | `lemma` | [iUnion_inter](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/iunion-inter--1a9389a8735e0ed94df76940.md) | 60 | `result-track:1a9389a8735e0ed94df7694096d7254765345d4214d12e797a0506d483b36495` |
| 10 | `lemma` | [isTopologicalBasis](../../../../../../Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean/declarations/istopologicalbasis--5753a13e9240baa144ccd696.md) | 64 | `result-track:5753a13e9240baa144ccd6960f277335a260dfb24361bc4df98efb71622d803a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4673bae46853cb61ac081d4b6d924c841786aace810958a4388f90f257d276a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OpenCover/Varianta054e19205953155478c9e0a63102525a9c8a99d1c16ae37d03202c3c7d19d83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
