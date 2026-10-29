# Verification target: Spin Divisibility Cover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0ea0a38c95b3f56a1d78a5ab153618b3698ea9c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0ea0a38c95b3f56a1d78a5ab153618b3698ea9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.PoleBoundaryNormalization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CyclicSpinCover](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/cyclicspincover.md) | 7 | `declaration-track:ccec49ce84dbdad289218a7ffcf3da19fc97ce5e266e2060b2114f11b7564db4` |
| 2 | `def` | [coverOne](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/coverone.md) | 12 | `declaration-track:c1df300c87deb91d1feb8b25a93c24597b54a2b58c9ac4e7aae178e269da07a9` |
| 3 | `def` | [coverTwo](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/covertwo.md) | 15 | `declaration-track:c6f0c3b62d9560bd83832d4b1122416287a772edb1e5893e73262805b8b4d6b5` |
| 4 | `def` | [coverThree](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/coverthree.md) | 18 | `declaration-track:1b8a8d07bab869a5edce46d6a46c72e3c477b6fe268100a895a926e1d332d830` |
| 5 | `def` | [residueAfterFlips](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/residueafterflips.md) | 21 | `declaration-track:7b15208c36ac29eaf5f72acd3ca72e1adc9547c019d9363898e5cb80e41e477f` |
| 6 | `def` | [closesAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/closesafter.md) | 24 | `declaration-track:a03bb7d3e000750563c788c5d6a880845a643b5e125b8ac13c90d8cbeeb3051f` |
| 7 | `def` | [fundamentalFlipCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/fundamentalflipcount.md) | 27 | `declaration-track:6b35a4933078a505bb3e9d1765aaa88cbeeb380690e045ec5d23c40cd6511805` |
| 8 | `def` | [completeCoverCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/completecovercount.md) | 30 | `declaration-track:22c5da39c010433fa1159823baed44ba3e5f804dfe227c5b4566db1a30eb0532` |
| 9 | `def` | [halfPoleLiftNumerators](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/halfpoleliftnumerators.md) | 33 | `declaration-track:379025a9985e68dfbef2ff2e38c6bc429e0ec679493e9e7ecf9040cbf08cfe1b` |
| 10 | `structure` | [MultiplicativeCoverSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/multiplicativecoversurface.md) | 36 | `declaration-track:3d50c37ae8b149d6b11d34f9d226cc0112b90f252a3edd46fcf8b66e51b196f4` |
| 11 | `def` | [multiplicativeCoverSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/multiplicativecoversurface-source-edition-2.md) | 47 | `declaration-track:b8ec3380ea68bc0d9cd6de019e0f86545cfabe3a2c52b46c0eeafd928b3b2cf9` |
| 12 | `def` | [nontrivialDivisorCoverClosures](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/nontrivialdivisorcoverclosures.md) | 58 | `declaration-track:700d38a34fe4e60cd03eb743b2fb1387cb898ffffa208a487689c70ff14fec65` |
| 13 | `structure` | [PrimeCoverScanSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/primecoverscansurface.md) | 62 | `declaration-track:99d1ed1a93a8ccc5b981e2ac7e22d742e26b49c8f0efa0546eb7bd1d72cbbb60` |
| 14 | `def` | [primeCoverScanSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/primecoverscansurface-source-edition-2.md) | 69 | `declaration-track:e71f2830fb0f8d98273041ad33a7f147d5afff841a3fd9ef52a3f7c9c73d7e15` |
| 15 | `theorem` | [cover_one_positive_period](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/cover-one-positive-period.md) | 76 | `result-track:5fd65dba66fbe5c31725805510e4dca26d94ac9cd01a1b4cbfff80bb1afdd8dc` |
| 16 | `theorem` | [cover_two_first_return](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/cover-two-first-return.md) | 80 | `result-track:900d34795549c0fec66dabebfb79f92a3708e5c360f20394dc53cd21ab7fc72d` |
| 17 | `theorem` | [cover_three_first_return](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/cover-three-first-return.md) | 84 | `result-track:6cd8f1cfa4290a4343f8da7a79f90508f255d9073d077971ec71ae628fcb3f42` |
| 18 | `theorem` | [halfPoleLift_count](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/halfpolelift-count.md) | 88 | `result-track:75814714fc692f18f1b455fc0f76171b02d390a916cb3e9b4998c1728981ec1c` |
| 19 | `theorem` | [cover_surface_twenty_over_five](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/cover-surface-twenty-over-five.md) | 92 | `result-track:31c0bb5867affb00195fa21de1fb88d18ca78a1b701b673a0d912da9f99d23a7` |
| 20 | `theorem` | [prime_seven_has_no_nontrivial_cover_closure](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/prime-seven-has-no-nontrivial-cover-closure.md) | 106 | `result-track:f79d7e10b6ba5d19b963c48192a33bdc2f47075e64630b58200d6b5ac15f33bc` |
| 21 | `theorem` | [composite_twelve_has_nontrivial_cover_closures](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/composite-twelve-has-nontrivial-cover-closures.md) | 111 | `result-track:5f45790a82f74df697c0847694220db0627df80e887cab85b7c77953a35ad14f` |
| 22 | `theorem` | [prime_cover_scan_is_not_new_primality_theorem](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCover.lean/declarations/prime-cover-scan-is-not-new-primality-theorem.md) | 116 | `result-track:c69e7db58f76f919a414806f76e0c0ac928f8a3cdd46693ca3474f32c406f22a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e2b51336ef6463b5cc341fae045bbdc7399b97583c29ec94c23c4e828893881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
