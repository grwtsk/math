# Verification target: List Zip Namespaced Forall Zip With

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7184af461cc2f375e521bbeec275b79e572559",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant3ebbb017ad8e854a0c0fa6d671be926e246d7764c14eb51dc087440c981d6b0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7184af461cc2f375e521bbeec275b79e572559`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant3ebbb017ad8e854a0c0fa6d671be926e246d7764c14eb51dc087440c981d6b0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant3ebbb017ad8e854a0c0fa6d671be926e246d7764c14eb51dc087440c981d6b0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Forall2` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zip-swap.md) | 41 | `result-track:bfa282c38381ca86cfe2914195f4f63261cc4c3b6ada90c046f80501008b0600` |
| 2 | `theorem` | [forall_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/forall-zipwith.md) | 47 | `result-track:cbd479090a49d55b8744015cd98e963afa20bc29e33ce95b2bfb7e3b1557f78c` |
| 3 | `theorem` | [unzip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/unzip-swap.md) | 55 | `result-track:07fa071929f0621078946696df9ab19eb7868f566dc58e199abda09fc150f51e` |
| 4 | `theorem` | [zipWith_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith-congr.md) | 60 | `result-track:d1d2b548a6514254726676ee6d29064229795fdf85da7824d2da447c31a0ffc2` |
| 5 | `theorem` | [zipWith_zipWith_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith-zipwith-left.md) | 66 | `result-track:b58ac36e97c0824ea511f30ef544f4f03213d115f2448cdae20c55268cf34948` |
| 6 | `theorem` | [zipWith_zipWith_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith-zipwith-right.md) | 74 | `result-track:047d50b8f98b12ff6d45be52cf2d95333a0cbc09942c274b865f81dc900af349` |
| 7 | `theorem` | [zipWith3_same_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith3-same-left.md) | 83 | `result-track:4a5951eae03219362edce341c26abda30690d9269634e781f74d54695f4766da` |
| 8 | `theorem` | [zipWith3_same_mid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith3-same-mid.md) | 90 | `result-track:3ddfbbc9fe8e4c7153babb5361caa440a7ab01a02396124678db1305d590d1bd` |
| 9 | `theorem` | [zipWith3_same_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/zipwith3-same-right.md) | 97 | `result-track:7eec85ebdd3cbeed86a38f803204b160365218e775d2c53f9ae75f9f636bf09e` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/instance.md) | 103 | `declaration-track:eba40f22b87554b8b28e65cff42bdd0618bebf4a3e6a0a0ea1949aed8b52a088` |
| 11 | `theorem` | [length_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/length-revzip.md) | 107 | `result-track:5bbee98e4b459b40399356e52fe9c4babcffa3eae33fd98b37031dce1087bb6d` |
| 12 | `theorem` | [unzip_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/unzip-revzip.md) | 111 | `result-track:91a9ac689d2af83a07c012fca5106044cf34cfae8bfa4ac0b3cd196539c16e99` |
| 13 | `theorem` | [revzip_map_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/revzip-map-fst.md) | 115 | `result-track:bbcbff3de32fe5865302a12845df5515dab2c753783f56a71281111de0e6573d` |
| 14 | `theorem` | [revzip_map_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/revzip-map-snd.md) | 119 | `result-track:aad55fdbddd8e2ee4208c4850b55d1782c923c89fb344907eab5d7c3803df9cc` |
| 15 | `theorem` | [reverse_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/reverse-revzip.md) | 122 | `result-track:30ae43725fc4463be14568101b16566aaaeb3807f944014fcd99193ff87ab0ce` |
| 16 | `theorem` | [revzip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/revzip-swap.md) | 126 | `result-track:317cac2721208ea2c4afd09afc606c3f57e2c439a6dc64c10d03cc83823878cf` |
| 17 | `theorem` | [mem_zip_inits_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedForallZipWith.lean/declarations/mem-zip-inits-tails.md) | 132 | `result-track:2e7e6c7ace45066279ba1d5077782330a31b755b85dab94776c8d42580432158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33e7314bf296b2beca6d90d8c3dba30d1988fbc5d6032180c55f73f3b0cff5e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant3ebbb017ad8e854a0c0fa6d671be926e246d7764c14eb51dc087440c981d6b0d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant3ebbb017ad8e854a0c0fa6d671be926e246d7764c14eb51dc087440c981d6b0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
