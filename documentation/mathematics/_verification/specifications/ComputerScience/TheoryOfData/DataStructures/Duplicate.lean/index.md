# Verification target: Duplicate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab353e068b1c7aa64cc397294ab1bb2474d0c222",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variantccb9096ddf9f8ce51f781857384adec6d833abff444f476f29499601bcec6538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab353e068b1c7aa64cc397294ab1bb2474d0c222`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variantccb9096ddf9f8ce51f781857384adec6d833abff444f476f29499601bcec6538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variantccb9096ddf9f8ce51f781857384adec6d833abff444f476f29499601bcec6538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Duplicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate.md) | 27 | `declaration-track:e6dd54aa7c3cf62c65ae8cc169cc182d771b7637096d49560776044eb93214cc` |
| 2 | `theorem` | [Mem.duplicate_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/mem-duplicate-cons-self.md) | 35 | `result-track:416e56922acf297b2c191f84f852e56120696b23806e07b1c4b6277e27abe53f` |
| 3 | `theorem` | [Duplicate.duplicate_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-duplicate-cons.md) | 38 | `result-track:cdb5926eb90354b0cc8d2eb8de56933f4ffbddd8038cdc6ed9b2ca9a868c263d` |
| 4 | `theorem` | [Duplicate.mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-mem.md) | 41 | `result-track:59af48ad4147af6a9337d92f50e72b093a93b68963c67e2a23ee1ea15c02741f` |
| 5 | `theorem` | [Duplicate.mem_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-mem-cons-self.md) | 46 | `result-track:11d5fc0a325ee256259daa7a8c6bf37a5e7523cd5e824d96262570055f5f9a17` |
| 6 | `theorem` | [duplicate_cons_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-cons-self-iff.md) | 52 | `result-track:b44c691ac7f113cc767b33ac14975276c51c037925c525c02bd44de6f3dba85e` |
| 7 | `theorem` | [Duplicate.ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-ne-nil.md) | 55 | `result-track:4cc4ec14265afda15c51a2b4dabfafad4e9fa037c6e684780d106f4bdb5487b7` |
| 8 | `theorem` | [not_duplicate_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/not-duplicate-nil.md) | 58 | `result-track:bccbeacdd9ff3e13bb8bd6a556d2a06556da482bdf74289b54802332bddce5ab` |
| 9 | `theorem` | [Duplicate.ne_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-ne-singleton.md) | 60 | `result-track:809a3cf54868a26a06b1bd164666ec40eaa42493aea2e50fb4d88bd3e07c8473` |
| 10 | `theorem` | [not_duplicate_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/not-duplicate-singleton.md) | 66 | `result-track:a8f1dec297dcd2e402bafcbaaf4b015d5fb8e1ef1f865c63926e6f5947e63244` |
| 11 | `theorem` | [Duplicate.elim_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-elim-nil.md) | 68 | `result-track:a32ae56d4141ed9b2aa33398c051eac23e68373b013277ee37d02368bc700f22` |
| 12 | `theorem` | [Duplicate.elim_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-elim-singleton.md) | 71 | `result-track:908d931e0451f91a59d32b1ce0077e691075382d9b3929d4b26cb2746658d9e7` |
| 13 | `theorem` | [duplicate_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-cons-iff.md) | 74 | `result-track:c19ad045682e408b6a419227172e0eeae9bf925f80284e8ef692ec744c285f44` |
| 14 | `theorem` | [Duplicate.of_duplicate_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-of-duplicate-cons.md) | 83 | `result-track:eccd7a0fd3d7ba72b4e8bafb7abb141973e5b9696ae056f5ca8d011658946ae8` |
| 15 | `theorem` | [duplicate_cons_iff_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-cons-iff-of-ne.md) | 86 | `result-track:c3db0688698b797e9c97313c353018e4b3881a25d7c78acc0a126e901ede96f3` |
| 16 | `theorem` | [Duplicate.mono_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-mono-sublist.md) | 89 | `result-track:d72f5d743713b4826b1353391165badae36207c271bf7ce72aef88466714a558` |
| 17 | `theorem` | [duplicate_iff_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-iff-sublist.md) | 100 | `result-track:a4a7753d2bf6621adbf79ae7956858e4afde7c2fbf0e9eea651e6eb1d3595edd` |
| 18 | `theorem` | [nodup_iff_forall_not_duplicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/nodup-iff-forall-not-duplicate.md) | 111 | `result-track:61836b72ad4b4660263a01b8cc34983bf45c945457b7e3d43e38580b565f87c3` |
| 19 | `theorem` | [exists_duplicate_iff_not_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/exists-duplicate-iff-not-nodup.md) | 114 | `result-track:f05b4fff358c58faf5e095aa8950678706592563cbe7fe02d8532cccb6e3f58f` |
| 20 | `theorem` | [Duplicate.not_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-not-nodup.md) | 117 | `result-track:2cf729d48dd13e28e4194bd24acbd8ad09e7e9c8a9b1f256a5da07e125d8d473` |
| 21 | `theorem` | [duplicate_iff_two_le_count](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/duplicate-iff-two-le-count.md) | 120 | `result-track:3af09f57600ba0779a741e94677b49fefd47c6e27e985cd30ce16bae3595325e` |
| 22 | `instance` | [decidableDuplicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/Duplicate.lean/declarations/decidableduplicate.md) | 123 | `declaration-track:21550741f9d4b8f5e0832eccecc2c612a7edc83a05a3cd25fc6048690efd62a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d136f9d89bfaa5bb7633bc09762597e9a844dc92784ba08db941b582c4c16744 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variantccb9096ddf9f8ce51f781857384adec6d833abff444f476f29499601bcec6538.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variantccb9096ddf9f8ce51f781857384adec6d833abff444f476f29499601bcec6538.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
