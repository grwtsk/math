# Verification target: TProd Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b80958ce652d93d230c50a919d0150f6693063ab",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Varianta86e43a771758efa938ea6e289a319257823bbed407c535860bb16772e540d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b80958ce652d93d230c50a919d0150f6693063ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Varianta86e43a771758efa938ea6e289a319257823bbed407c535860bb16772e540d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Varianta86e43a771758efa938ea6e289a319257823bbed407c535860bb16772e540d08.lean.json)

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
| 1 | `def` | [TProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/tprod.md) | 47 | `declaration-track:bc96c1df4321d6c5241a786c767a7b7a5e682418513b86aad7417c941f2b902e` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/mk.md) | 58 | `declaration-track:1881b1f5ad7063ab3741af8b485c1dfbaf0c571c62bc57bcd6416b73ebd390c9` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/instance.md) | 63 | `declaration-track:94e93f958d98ee88f99922405e2bc255e400ef32260999140b81f8e198c094e6` |
| 4 | `theorem` | [fst_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/fst-mk.md) | 67 | `result-track:10435fd16d36aa7b568cf0206c184eb9a0007cd4bf36e8da08effd9140c51a3e` |
| 5 | `theorem` | [snd_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/snd-mk.md) | 72 | `result-track:db711a5af30e337604036206e704a0a0b9e9f88fd61b89b90301094533fad30b` |
| 6 | `def` | [elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-source-edition-2.md) | 81 | `declaration-track:f34431d1d1e8b57aa0b34080fdce13bac1b685541721634ab38ae142c34a44a4` |
| 7 | `theorem` | [elim_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-self.md) | 90 | `result-track:511fa5b302c59307d5daade75467d934a0267d9f0822bd15b9baea9a1e92a8b7` |
| 8 | `theorem` | [elim_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-of-ne.md) | 94 | `result-track:c0d6cf7c4d6b2a1bc5e4fd431759e0d4294fc85c3a9fe05cadf71878118111fa` |
| 9 | `theorem` | [elim_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-of-mem.md) | 99 | `result-track:0b7eb0e03ba9b5dedd11203231ccb53b4a0de88fdf6ecc371a8d8e3058abb251` |
| 10 | `theorem` | [elim_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-mk.md) | 106 | `result-track:eddd6f70925bd76a12e74c99da7edb9585f16a0491d874d80af91bf4004f1ce2` |
| 11 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/ext.md) | 116 | `result-track:e25588b2e0af109cf1537224d485594af88e68b9d37b409bd838a45a3b5c4833` |
| 12 | `def` | [elim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim.md) | 129 | `declaration-track:2c2d13c6a9bc4cf54e1c0ed796bc4acf9acae0545a8c251aee38b018c0063c27` |
| 13 | `theorem` | [mk_elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/mk-elim.md) | 133 | `result-track:814c7be8fc0207cda6d6b55bff070dec42c3e2700e43a27c217699fe19a44bb5` |
| 14 | `def` | [piEquivTProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/piequivtprod.md) | 138 | `declaration-track:c550bad59380bd2ffdc59aa5d126742b8192a47d6bb2858f8edb1f4711b9d76b` |
| 15 | `def` | [tprod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/tprod-source-edition-2.md) | 152 | `declaration-track:d0d28f913155d80307ad316af1f78a97e1dcb2853867a97c78412ae049b9dd17` |
| 16 | `theorem` | [mk_preimage_tprod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/mk-preimage-tprod.md) | 157 | `result-track:b25d63fe207c6f0926967224f37f74936fed85ab465776b2da94c0f403fc8658` |
| 17 | `theorem` | [elim_preimage_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdAligned.lean/declarations/elim-preimage-pi.md) | 173 | `result-track:c24ef97498615d89ef18549fc3eb5bbc933a92771be7587efa7bb294d9f5a6b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a3d9f65a02a467ceebc2202f4218ff3ac222ea82d81f758ea7acd4c142316f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Varianta86e43a771758efa938ea6e289a319257823bbed407c535860bb16772e540d08.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Varianta86e43a771758efa938ea6e289a319257823bbed407c535860bb16772e540d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
