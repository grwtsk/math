# Verification target: Zip Public Zip With Replicate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b9bbe136cb117d6c4f99ce304e467b2e953096",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b9bbe136cb117d6c4f99ce304e467b2e953096`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Zip` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zipWith_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-comm.md) | 33 | `result-track:966f91a4623aa0737f6a9deed81310c36bd517536d609552792be08e37efe6f0` |
| 2 | `theorem` | [zipWith_comm_of_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-comm-of-comm.md) | 39 | `result-track:2406bc00ac481b8a18c4ca0c0bc45e05f3a5e084444b97b0c4aab7c722bae9c8` |
| 3 | `theorem` | [zipWith_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-self.md) | 45 | `result-track:0733c84d9f2d19412f9ecdfacd086ad8aff17d5fd43dabc20d031e4503fb64fc` |
| 4 | `theorem` | [getElem?_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/getelem-zipwith.md) | 54 | `result-track:a6c4b4a1d4110c71ce01aa69c340f119d7f5e0875ea303fc6568220710e9b673` |
| 5 | `theorem` | [getElem?_zipWith'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/getelem-zipwith-source-edition-2.md) | 63 | `result-track:d03997813d646322960cfd365e38f020a2472d5529b79d73cac395bce4a710f6` |
| 6 | `theorem` | [getElem?_zipWith_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/getelem-zipwith-eq-some.md) | 69 | `result-track:08faa259cbea2c783c19fb7dd04595b306c0a37aa14ce0ccca63597e169aecf3` |
| 7 | `theorem` | [getElem?_zip_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/getelem-zip-eq-some.md) | 76 | `result-track:d8fc32146248d2bb4ede72baf25d4f46dbfb9deac8899024b187eb0f2ceeafcb` |
| 8 | `theorem` | [zipWith_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-map.md) | 83 | `result-track:73952e8414f8060517f8f1b3677d67fb3db4388bf4530331a9bd813c01ad02e2` |
| 9 | `theorem` | [zipWith_map_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-map-left.md) | 90 | `result-track:0b93e877df09ec7e04dd745758e565c445e0356dd727a21e533912cd1351b0a2` |
| 10 | `theorem` | [zipWith_map_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-map-right.md) | 97 | `result-track:890b708c2bb3bb2545d2b4e52d086296fcfcde1d0c61f14d5bb852f604b1d2f9` |
| 11 | `theorem` | [zipWith_foldr_eq_zip_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-foldr-eq-zip-foldr.md) | 104 | `result-track:35d96cdafe4a390ec90fc36fc38f6cad6f4aba4e68cff9c7d1498166ed0db605` |
| 12 | `theorem` | [zipWith_foldl_eq_zip_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-foldl-eq-zip-foldl.md) | 111 | `result-track:00eb2ee84e74cabe7a04bdd8b8ed87e81a36794af01ef87c30cd6479a16da489` |
| 13 | `theorem` | [map_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-zipwith.md) | 118 | `result-track:f8762e76fded35ba4d45c647fb4460f24b756447103cc5f614f83b8d441839a0` |
| 14 | `theorem` | [take_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/take-zipwith.md) | 125 | `result-track:9621359d2cf4e01ca40e80fc96b58d28f1dd2527a5fd889ad4e6acc341cdc08c` |
| 15 | `theorem` | [extract_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/extract-zipwith.md) | 131 | `result-track:f85e978a505c8ac899afb37d65a3167ae1ecf1e4502587ddd1b4d2b05957d361` |
| 16 | `theorem` | [zipWith_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-append.md) | 137 | `result-track:dbd28d47d95afbb7b4bf09823d3eb695e770688a6454ef0bb58c260bd1a8e23d` |
| 17 | `theorem` | [zipWith_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-eq-append-iff.md) | 146 | `result-track:cb99f1bd318eb3f8bb6e34ce610dc1cef832bf8cc57a4e8a1ce1abdf89665ffb` |
| 18 | `theorem` | [zipWith_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zipwith-replicate.md) | 164 | `result-track:316b69b891a50b7b4d0d06c029fa7c5f4133425d09aed84b603b3230be14358e` |
| 19 | `theorem` | [map_uncurry_zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-uncurry-zip-eq-zipwith.md) | 169 | `result-track:cef041e43d8d974723390b045c1273be2b216d4e567208cd28cad7e9a1badc71` |
| 20 | `theorem` | [map_zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-zip-eq-zipwith.md) | 175 | `result-track:3aafc4a85e9274669d38c391446619ab9552e9a5308e3b8bdab16c830937c513` |
| 21 | `theorem` | [reverse_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/reverse-zipwith.md) | 182 | `result-track:d0190d47bb281e97e7558b8522d8d44f025aa57b2b8b5b0c617561dd504db88e` |
| 22 | `theorem` | [getElem_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/getelem-zip.md) | 191 | `result-track:e5e99ba3047f2ac59ee3eb13a5b0312be5da0be32ed615577a6a8e0631a275e0` |
| 23 | `theorem` | [zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-eq-zipwith.md) | 195 | `result-track:a2b278d63a15b622765552701bf957dc0005f372607022c5b986705d418f03cb` |
| 24 | `theorem` | [zip_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-map.md) | 201 | `result-track:0cfa7266774745458ce90a95c654a73e2e8aba3c35f4d792e4a54ba4d698916c` |
| 25 | `theorem` | [zip_map_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-map-left.md) | 207 | `result-track:51e34b8a1e8efbe93c36268e53d1c46f010b774fb4a08635373357f5ea90ac47` |
| 26 | `theorem` | [zip_map_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-map-right.md) | 210 | `result-track:68c58881a540c30afb40f975093dacb71c0946bc017292e479abd63c65c885ee` |
| 27 | `theorem` | [zip_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-append.md) | 214 | `result-track:f6d3856d76f110f29a03d1b21f2138025ca270dd7f0335ad4975ae79ec06120c` |
| 28 | `theorem` | [zip_map'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-map-source-edition-2.md) | 223 | `result-track:8b5f11e8b89a784fdf8f6c77ba50fc3efc7671a53d6285ab7b9ad6ccc8af25f1` |
| 29 | `theorem` | [of_mem_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/of-mem-zip.md) | 228 | `result-track:fac4b93b1a9bc3c0d9e1807370ad1b8f3eab17ca3b1fad1c01246017c21a2e2d` |
| 30 | `theorem` | [map_fst_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-fst-zip.md) | 234 | `result-track:eacc833b6343a3f476ed2246b4347fff1368c54e768d2bdff32caf5056dbb7a7` |
| 31 | `theorem` | [map_snd_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-snd-zip.md) | 241 | `result-track:256de15ee7d9cddd52189889e92e1e4e02dcbf6fa257dd54afc8bd2c32729072` |
| 32 | `theorem` | [map_prod_left_eq_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-prod-left-eq-zip.md) | 247 | `result-track:ec82cc99b4c6ca6b7c43dfe3946730f154925c859c1e2e5f20e937c1f42ba143` |
| 33 | `theorem` | [map_prod_right_eq_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/map-prod-right-eq-zip.md) | 254 | `result-track:79555245f21e4384c421e5d76e82cdc8b39bab6bfb0673026805ff74da1a5868` |
| 34 | `theorem` | [zip_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-eq-append-iff.md) | 261 | `result-track:d4207cc4ca71c7587a09680acc00ac584f3ba94068de0da519f496907201eea1` |
| 35 | `theorem` | [zip_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-replicate.md) | 267 | `result-track:4f7caabb9c9268170949ed2e1da187d01d543a7a89addddd49e367d7961b19ec` |
| 36 | `theorem` | [unzip_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-fst.md) | 274 | `result-track:b94379027a99de6156f90bc38d90261562c1ee99945d57b32fce4f9a44a27de7` |
| 37 | `theorem` | [unzip_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-snd.md) | 279 | `result-track:7150954e06dbf52791b349d7ff56c03b9028a6ff68ca8fc260d321836f71ff9d` |
| 38 | `theorem` | [unzip_eq_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-eq-map.md) | 284 | `result-track:d2e22d91d31e48d4827613b8ce611f2fd2a141e541ed5bde7924f53ea6ab597e` |
| 39 | `theorem` | [zip_unzip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-unzip.md) | 289 | `result-track:212984eff4d564e7e1d8ccf04a0dece7937b172c03fd9efb0ab842397eaaeacb` |
| 40 | `theorem` | [unzip_zip_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-zip-left.md) | 293 | `result-track:aa3d2e0860b2652d28c257d28224b645bbda65d7990edf790c220c3ef505bd64` |
| 41 | `theorem` | [unzip_zip_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-zip-right.md) | 299 | `result-track:9b5df565ce9b63cc6793389b7ff77f3819b07812a394e910725c5d97101b3f23` |
| 42 | `theorem` | [unzip_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-zip.md) | 305 | `result-track:cf9d14c7a9a7f51aa704ff7b55b7d5bded41463470d8cf87367fe8594f0e99f8` |
| 43 | `theorem` | [zip_of_prod](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/zip-of-prod.md) | 311 | `result-track:2c39bdd920dfec3261ad6abc0904f55b3cc358582c69621d3f690bb075ea3d0d` |
| 44 | `theorem` | [unzip_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicZipWithReplicate.lean/declarations/unzip-replicate.md) | 316 | `result-track:94f9c930d35f561a5aac572ea24f9ff57a3ebda8c5bf252c2f4092a5b22b249b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47c6109da9d605c14a2b49eedfb23474aa074f371a577daf249712c08a872dc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
