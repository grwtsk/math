# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedMap.Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f907cb5c80a892f6d4d4d47106874db37c0594a5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f907cb5c80a892f6d4d4d47106874db37c0594a5`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Clopen` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Topology.IsEmbedding.toPullbackDiag](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/topology-isembedding-topullbackdiag--c1d7c8c80b04ba0b04b407ed.md) | 42 | `result-track:c1d7c8c80b04ba0b04b407ed46da3e832c1f49603e645bde0df553aff68d396b` |
| 2 | `lemma` | [Continuous.mapPullback](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/continuous-mappullback--04bb6027ea967034cc8247e1.md) | 50 | `result-track:04bb6027ea967034cc8247e1fd44bc97e1e1cefda6cb10936e2578d12e7bf4b7` |
| 3 | `def` | [IsSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap--4e4b0bfbc01f575b185cf7b5.md) | 62 | `declaration-track:4e4b0bfbc01f575b185cf7b54f3164c4177b07f2df74f0a4cdf8270eb91ca03b` |
| 4 | `lemma` | [t2space_iff_isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/t2space-iff-isseparatedmap--df1f30b24424545dc4d26fc3.md) | 65 | `result-track:df1f30b24424545dc4d26fc3842a8287173d2d5a5c66ca4b388b5555e917565b` |
| 5 | `lemma` | [T2Space.isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/t2space-isseparatedmap--c1939034c720c9d74a4e36ae.md) | 68 | `result-track:c1939034c720c9d74a4e36ae76dffa9496cd0a09eb5a2992f15e12b514af2249` |
| 6 | `lemma` | [Function.Injective.isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/function-injective-isseparatedmap--a812566866d31a8f213a3509.md) | 70 | `result-track:a812566866d31a8f213a3509ae79218d5245a798919949d08db2b1fd76189eec` |
| 7 | `lemma` | [isSeparatedMap_iff_disjoint_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-iff-disjoint-nhds--39118d8dce670dc2375b0924.md) | 73 | `result-track:39118d8dce670dc2375b09240d467f3d5edfc433e78acfa2fa34ea95666512a4` |
| 8 | `lemma` | [isSeparatedMap_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-iff-nhds--c6e0adc1d5b1175fe7e262e3.md) | 78 | `result-track:c6e0adc1d5b1175fe7e262e3a3623b3189aa252a6a9d5ceb383b80a98dda7070` |
| 9 | `theorem` | [isSeparatedMap_iff_isClosed_diagonal](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-iff-isclosed-diagonal--207b22362c1b9ba8bdf8766f.md) | 83 | `result-track:207b22362c1b9ba8bdf8766fc2227d9d45fa245cc5a221011d3956f679027a34` |
| 10 | `theorem` | [isSeparatedMap_iff_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-iff-isclosedembedding--5be29436c5ef5c4b44520445.md) | 93 | `result-track:5be29436c5ef5c4b44520445f71af815750b17a8433bb2902960c4a8b4658069` |
| 11 | `theorem` | [isSeparatedMap_iff_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-iff-isclosedmap--c0b8697111e442e1ee0496a5.md) | 98 | `result-track:c0b8697111e442e1ee0496a50ffc538a0d748abe6f1c6b322bf132a050f5d12c` |
| 12 | `theorem` | [IsSeparatedMap.pullback](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-pullback--b66defe8b3edd40148695ae6.md) | 105 | `result-track:b66defe8b3edd40148695ae60ce9e769e557d873746e98ef2e6a656b9d77f868` |
| 13 | `theorem` | [IsSeparatedMap.comp_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-comp-left--36ec63fc3a19fba41f1e262a.md) | 112 | `result-track:36ec63fc3a19fba41f1e262a8871678341486f60039f0bfa0d01de6702454911` |
| 14 | `theorem` | [IsSeparatedMap.comp_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-comp-right--edee7bcb56a189f88508e6ed.md) | 115 | `result-track:edee7bcb56a189f88508e6ed6aa6817d66f5b0450684aeb117cfb3439b444aa2` |
| 15 | `def` | [IsLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective--ed950948d356bb6e09f01419.md) | 123 | `declaration-track:ed950948d356bb6e09f014198383c30d9c6efd67326ada1e226db8839c5147b8` |
| 16 | `lemma` | [Function.Injective.IsLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/function-injective-islocallyinjective--73ee20e07291f83a558ddb80.md) | 125 | `result-track:73ee20e07291f83a558ddb8032d101f85be39e593b8a1ac025e5e65e6832b90c` |
| 17 | `lemma` | [isLocallyInjective_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-iff-nhds--b0d73d639697c7b99dde52cf.md) | 128 | `result-track:b0d73d639697c7b99dde52cfe2f0dac290b7172aeca7a1d9b8fe492c461fa6ba` |
| 18 | `theorem` | [isLocallyInjective_iff_isOpen_diagonal](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-iff-isopen-diagonal--bf774be9860e2c1f2da5bef8.md) | 135 | `result-track:bf774be9860e2c1f2da5bef8b329f0f18a3e90e74ea49d7ebf04263f4b648a20` |
| 19 | `theorem` | [IsLocallyInjective_iff_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-iff-isopenembedding--8dc8be13f8244135c41f3c76.md) | 148 | `result-track:8dc8be13f8244135c41f3c76f85321e42071d815f8e8e00eb0df1ef679404d42` |
| 20 | `theorem` | [isLocallyInjective_iff_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-iff-isopenmap--beee3114ab73ba865e9f24ae.md) | 153 | `result-track:beee3114ab73ba865e9f24ae701e4c5f8395996797136f044db548d326ff7069` |
| 21 | `theorem` | [discreteTopology_iff_locallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/discretetopology-iff-locallyinjective--fc3d7fa2217711a9affcf1f0.md) | 159 | `result-track:fc3d7fa2217711a9affcf1f059be40784a9a19664ce908340c317358fad3644c` |
| 22 | `theorem` | [IsLocallyInjective.comp_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-comp-left--65a6e7f969cda74693817029.md) | 166 | `result-track:65a6e7f969cda7469381702911e790c907fcf0ab8d9f3939f0a53a69460a04db` |
| 23 | `theorem` | [IsLocallyInjective.comp_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-comp-right--b2fb84013665fe1d37611be9.md) | 170 | `result-track:b2fb84013665fe1d37611be945a48fe0b7c28068c3faa88c58628dd89e279b64` |
| 24 | `theorem` | [IsSeparatedMap.isClosed_eqLocus](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/isseparatedmap-isclosed-eqlocus--f28d5bf8e171f4251a6e324b.md) | 181 | `result-track:f28d5bf8e171f4251a6e324b4008fbac50f0461ad81b1c895bc273bccd54480f` |
| 25 | `theorem` | [IsLocallyInjective.isOpen_eqLocus](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/islocallyinjective-isopen-eqlocus--980053c1b330595394957999.md) | 186 | `result-track:980053c1b3305953949579993232e407c8496fef8ced6f08d6a2aa9fb70ecb3c` |
| 26 | `theorem` | [eq_of_comp_eq](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/eq-of-comp-eq--9443e6fa831aa664ec5e2ed7.md) | 202 | `result-track:9443e6fa831aa664ec5e2ed744500b9a4e4039f9613c11cb0dcecb2a80b5382d` |
| 27 | `theorem` | [eqOn_of_comp_eqOn](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/eqon-of-comp-eqon--e844d6fec380dcea1ae1053b.md) | 208 | `result-track:e844d6fec380dcea1ae1053bd18c32b942ad30acd94c511270be0f317ac31bd2` |
| 28 | `theorem` | [const_of_comp](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/const-of-comp--e632c832f53535101296d587.md) | 215 | `result-track:e632c832f53535101296d587679561e32014cc018362c1a0e7d88279cf06f1df` |
| 29 | `theorem` | [constOn_of_comp](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/declarations/conston-of-comp--f8efe52e75533ed44f4a5b70.md) | 219 | `result-track:f8efe52e75533ed44f4a5b701e12b115ed2724e909918711484e4970a1644f25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
