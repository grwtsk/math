# Verification target: Spin Divisibility Cover Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6503ecabe2a720a1d0b848d8b8488ee1cbff2b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6503ecabe2a720a1d0b848d8b8488ee1cbff2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.PoleBoundaryNormalization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CyclicSpinCover](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/cyclicspincover.md) | 15 | `declaration-track:17782ccbf46ff5ecd393b4982080c5fd55bfe42e036a6ca10e08f9a9294d2189` |
| 2 | `def` | [coverOne](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/coverone.md) | 20 | `declaration-track:e64fc76139d23171cb9210f8463e073eafe8722d778b09b7fe67a9f0bff9405b` |
| 3 | `def` | [coverTwo](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/covertwo.md) | 23 | `declaration-track:4d122bbb4170ebaa70e63dd3b723b58748cacb7956d11fead27aa368b773168b` |
| 4 | `def` | [coverThree](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/coverthree.md) | 26 | `declaration-track:90691a23368de8ad5f76c642a691cfc3e5ee6413e904bf623c22695ff45685f0` |
| 5 | `def` | [residueAfterFlips](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/residueafterflips.md) | 29 | `declaration-track:910b6f9f70b9eb41450bfb37e98904886d114c85da9d44349d93ca25bfeb16da` |
| 6 | `def` | [closesAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/closesafter.md) | 32 | `declaration-track:473364f9bba5bdd3c727f9a6488ec15be74d8309f95967a7f985fcf75f440abc` |
| 7 | `def` | [fundamentalFlipCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/fundamentalflipcount.md) | 35 | `declaration-track:f879136a5a9d52bfdc462fb904b255e142417ca6f0723ce755bd3d6b27f1d5c1` |
| 8 | `def` | [completeCoverCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/completecovercount.md) | 38 | `declaration-track:afca738029904216905897c0b2127cfa5488e6eaba24f01e362193a35d91c71d` |
| 9 | `def` | [halfPoleLiftNumerators](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/halfpoleliftnumerators.md) | 41 | `declaration-track:4602e38f727c6ad6fe889448907c19537a42db21e05d06483732ee2a92496b89` |
| 10 | `structure` | [MultiplicativeCoverSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/multiplicativecoversurface.md) | 44 | `declaration-track:5792273cd2e0f90e0c7cf592c7a0d86732f609de881c73e96fcf19bb29615dc3` |
| 11 | `def` | [multiplicativeCoverSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/multiplicativecoversurface-source-edition-2.md) | 55 | `declaration-track:ea8bd1475cb440942b28fe2a17ecabfea00b552f2defa1acccdc1028d5e7430b` |
| 12 | `def` | [nontrivialDivisorCoverClosures](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/nontrivialdivisorcoverclosures.md) | 66 | `declaration-track:cf81c6e54339db1582c7814350eec8ea280c87f15acc975e5e3e3e58e988078d` |
| 13 | `structure` | [PrimeCoverScanSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/primecoverscansurface.md) | 70 | `declaration-track:5c63c30fb3f302cb86dbca766f23b862c0beaff82abb01f52115188f7ad2ca8a` |
| 14 | `def` | [primeCoverScanSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/primecoverscansurface-source-edition-2.md) | 77 | `declaration-track:89d97327d09857d3a5ced04b27f1abf3679a10172cdf6a0d3a342d87882c4ad7` |
| 15 | `theorem` | [cover_one_positive_period](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/cover-one-positive-period.md) | 84 | `result-track:7fbe1ab7b3f9a4aeaf11dd592c4ec73324da7882936eb358ec3683f059a9eceb` |
| 16 | `theorem` | [cover_two_first_return](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/cover-two-first-return.md) | 88 | `result-track:e7b8603ee18f66b7a5f60ceba6be053054191aeedf21defa60037a4e9ad84d2f` |
| 17 | `theorem` | [cover_three_first_return](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/cover-three-first-return.md) | 92 | `result-track:33b151e7cc2113fcef33b4c1000156823ca6f25b794721c24b1574b43944b74a` |
| 18 | `theorem` | [halfPoleLift_count](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/halfpolelift-count.md) | 96 | `result-track:9e35683b8db23339f91a9d5773ca822c060ab4dc1871a1581e68288482bddca9` |
| 19 | `theorem` | [cover_surface_twenty_over_five](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/cover-surface-twenty-over-five.md) | 100 | `result-track:81149aa0fce8be3f99ea3fde4a6638b01e51ecf3593db58bb79081f9e197136c` |
| 20 | `theorem` | [prime_seven_has_no_nontrivial_cover_closure](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/prime-seven-has-no-nontrivial-cover-closure.md) | 114 | `result-track:41835dcad67b106b9a769466ef4a7237cdd9cf12a5c6fd0fd1b57169590de791` |
| 21 | `theorem` | [composite_twelve_has_nontrivial_cover_closures](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/composite-twelve-has-nontrivial-cover-closures.md) | 119 | `result-track:a9cbaaba67df4890c074d8992c209d19986e81cb04bb017ea31d64956bccc565` |
| 22 | `theorem` | [prime_cover_scan_is_not_new_primality_theorem](../../../../../ComputerScience/AlgorithmsInComputerScience/SpinDivisibilityCoverNamespaced.lean/declarations/prime-cover-scan-is-not-new-primality-theorem.md) | 124 | `result-track:ae470a69433e35461489c21b18b69a509dcc7ae55d65f236edccd066228c6e93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57a874c79b96db63e79305b3f71691c1fb352637175a74912c2f57ab6f544524 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpinDivisibilityCover/Variantfded462cfe57f6d386ae8a09dfcf7a6db7e91ee98d1557afc31e24f51ae0ae03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
