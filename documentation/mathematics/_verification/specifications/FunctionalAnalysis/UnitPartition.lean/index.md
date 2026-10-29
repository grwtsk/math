# Verification target: Unit Partition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f40f740a00f169e051af4accc3a0fd54d6230a",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/UnitPartition.lean/index.md) · [Full source](../../../../FunctionalAnalysis/UnitPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f40f740a00f169e051af4accc3a0fd54d6230a`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ZLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Measure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Tagged` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoxIntegral.hasIntegralVertices](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/boxintegral-hasintegralvertices.md) | 66 | `declaration-track:5ea18bc46a3607f6a0b760f0154755efac1633aba58e943257325252f82b35ad` |
| 2 | `theorem` | [BoxIntegral.le_hasIntegralVertices_of_isBounded](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/boxintegral-le-hasintegralvertices-of-isbounded.md) | 70 | `result-track:02dd2814641eba6889b920571e8f0d6ca7e684a0a393e7abe20dbe88bf260fdd` |
| 3 | `def` | [box](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box.md) | 98 | `declaration-track:fdc850f2ccacb11eb833fadeaaa9481255c34bd72869f1aae4482f359aa12d05` |
| 4 | `theorem` | [box_lower](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box-lower.md) | 104 | `result-track:f83be9d783e25250e5d90b38f10d3a018c9b239cd82be0f4a03ba4a8ff349366` |
| 5 | `theorem` | [box_upper](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box-upper.md) | 108 | `result-track:f1c11314a5b908a652def878a16c603e1ca80dfb651329fd31d2ae975ba7ee40` |
| 6 | `theorem` | [mem_box_iff](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-box-iff.md) | 113 | `result-track:9fcb8dbfa87266705ded86aa0da50cf5fbb3413469cf0bb693fc8fb5baf59a8c` |
| 7 | `theorem` | [mem_box_iff'](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-box-iff-source-edition-2.md) | 118 | `result-track:f906b480090babed534eafe0c91b43f47ea0a44a0458b253e442857ae68df4da` |
| 8 | `abbrev` | [tag](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag.md) | 124 | `declaration-track:d8c05da8228f2eceed4bb602ffdf53e13df559d67522121ac1fdf2fd88381403` |
| 9 | `theorem` | [tag_apply](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag-apply.md) | 127 | `result-track:c33cd698ee95d1d8b959153b9a0b7d9b549032b09dc98dc30114c0213fecbe54` |
| 10 | `theorem` | [tag_injective](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag-injective.md) | 131 | `result-track:711e87f88a9345580c704607c69b5629ed64347b13e790f23c59e3862be06710` |
| 11 | `theorem` | [tag_mem](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag-mem.md) | 138 | `result-track:09b3eac25a205e85532c720902f8dbac402ee772cffb9dcda7b90fa9f91c36dd` |
| 12 | `def` | [index](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/index.md) | 147 | `declaration-track:d33b847b98c50ea56e9087f38fbdb7be1f3744c28c0b9ca5818119decc1648d2` |
| 13 | `theorem` | [index_apply](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/index-apply.md) | 150 | `result-track:eba13cbf7ce254411a4cb4c97dee2b3a6a102e36f77c8349fac27402cb1c40a9` |
| 14 | `theorem` | [mem_box_iff_index](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-box-iff-index.md) | 154 | `result-track:cc7c6f0a83b437c22a7ccb43ee25eee3444fe852a9c00b55efeb14dd4623793a` |
| 15 | `theorem` | [index_tag](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/index-tag.md) | 160 | `result-track:4921a337ded613f7aa9f744a40bdc9bfb3a4291d74e9c41895640b4c926dcbcc` |
| 16 | `theorem` | [disjoint](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/disjoint.md) | 164 | `result-track:d9d4c948f1809828661c9618fce18a604000ad911d3fe02b384e9b07d98bdfe1` |
| 17 | `theorem` | [box_injective](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box-injective.md) | 170 | `result-track:65bfe18a3ef1adec1d6a0716b97912ab6a134d406be6afa4a9e08b26c0eb00d3` |
| 18 | `lemma` | [box.upper_sub_lower](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box-upper-sub-lower.md) | 175 | `result-track:d8a1a19baf548b167a17ac3e44878afee5154b7898c9f7bbf3affd3a0c4484bd` |
| 19 | `theorem` | [diam_boxIcc](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/diam-boxicc.md) | 181 | `result-track:72de0dbdaa75cc39c2ffd25aabf6716c378deae61c782503d2b8073e7b5e3416` |
| 20 | `theorem` | [volume_box](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/volume-box.md) | 188 | `result-track:f79936171d28c7a6ea05ebfec1f025368872b0c715910998eedfb5156ea34ff0` |
| 21 | `theorem` | [setFinite_index](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/setfinite-index.md) | 195 | `result-track:95fd3c0721fc93d37fa86a2fcca5eeda1482071dff17338ddb97c7ae252ea5c8` |
| 22 | `def` | [admissibleIndex](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/admissibleindex.md) | 210 | `declaration-track:42bf7b934f36697b74f54fe4b9ec815d96af387b364271df38be89291e8ee028` |
| 23 | `theorem` | [mem_admissibleIndex_iff](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-admissibleindex-iff.md) | 215 | `result-track:1d6daa7554043ae5781e3f99afd761da07286d3548017e49c0942c4e169fb5a3` |
| 24 | `def` | [prepartition](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/prepartition.md) | 222 | `declaration-track:a687026f8c4591cd2dff07863d8a2fd94bb44999226b30e78c83ae167b03557a` |
| 25 | `theorem` | [mem_prepartition_iff](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-prepartition-iff.md) | 242 | `result-track:1a19fdfed9908cc433228962b1c7a851d2c7e212909c47c947e8201ec67acbc7` |
| 26 | `theorem` | [mem_prepartition_boxes_iff](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-prepartition-boxes-iff.md) | 248 | `result-track:77adc36b7c817807cdbeeae612b1aa104e843023c34b56bcad53c6e1ab1d015d` |
| 27 | `theorem` | [prepartition_tag](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/prepartition-tag.md) | 252 | `result-track:f0e60595e438657a5e98ba79a83dab31dc7ddc630633b8ca9af8807efacea115` |
| 28 | `theorem` | [box_index_tag_eq_self](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/box-index-tag-eq-self.md) | 259 | `result-track:0c20f844b7db5f9d9e651c119c78ab88d5dfc083301f99eec4c53fd8a59ebaf9` |
| 29 | `theorem` | [prepartition_isHenstock](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/prepartition-ishenstock.md) | 264 | `result-track:75a43acd59f2c309cc0ed33bef46983d43520a34eb41e9daa243054c5dcb1be7` |
| 30 | `theorem` | [prepartition_isSubordinate](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/prepartition-issubordinate.md) | 271 | `result-track:d7d213764cf1d68ddca8f5894750305e53f3d148c04851b2c003de7e65c579af` |
| 31 | `theorem` | [mem_admissibleIndex_of_mem_box_aux₁](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-admissibleindex-of-mem-box-aux-source-edition-2.md) | 280 | `result-track:84f8f70bb7896d34eea81d5f11ea95b31fb01096810392430e5d3bef32246f4a` |
| 32 | `theorem` | [mem_admissibleIndex_of_mem_box_aux₂](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-admissibleindex-of-mem-box-aux.md) | 287 | `result-track:30d52c4c7df45ef306c1b5b4ee151bded4e34ec49cc01bcf741df1f5cce875cd` |
| 33 | `theorem` | [mem_admissibleIndex_of_mem_box](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-admissibleindex-of-mem-box.md) | 296 | `result-track:97ccc1a9a86aab95ca11a586f9a5dcf91ab69ce7f597365db501880982095830` |
| 34 | `theorem` | [prepartition_isPartition](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/prepartition-ispartition.md) | 308 | `result-track:e5abfb2b6d5970dd3f8d6c411f106b403831f0725f46fd263e060d593809f8d4` |
| 35 | `theorem` | [mem_smul_span_iff](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/mem-smul-span-iff.md) | 324 | `result-track:8d46261b04ebe07cd57ce93dc4e4d0b0445a54480230c7b526a084d57f20b8e8` |
| 36 | `theorem` | [tag_mem_smul_span](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag-mem-smul-span.md) | 330 | `result-track:efc51032c9ea9e1c2aeb01aba5baf4ab7f701aabd2189b128baea4125c522390` |
| 37 | `theorem` | [tag_index_eq_self_of_mem_smul_span](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tag-index-eq-self-of-mem-smul-span.md) | 336 | `result-track:f7e4e03b81309d2290a95db2453038e2aa7ce193fcfeafcaf21ffd5b84472969` |
| 38 | `theorem` | [eq_of_mem_smul_span_of_index_eq_index](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/eq-of-mem-smul-span-of-index-eq-index.md) | 344 | `result-track:49139fff87aeaaff04217bf34fa119fd5e7b74ff8a40cfd9f924acf54f200a62` |
| 39 | `theorem` | [integralSum_eq_tsum_div](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/integralsum-eq-tsum-div.md) | 348 | `result-track:607293e61b55b0934680112768546819fc7708e502eb6958f21f25012d9d0569` |
| 40 | `theorem` | [_root_.tendsto_tsum_div_pow_atTop_integral](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/root-tendsto-tsum-div-pow-attop-integral.md) | 385 | `result-track:fbe254dd7d2184c967f24eb326775d363bd15739b3d8e46027c05e7d96d42843` |
| 41 | `theorem` | [_root_.tendsto_card_div_pow_atTop_volume](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/root-tendsto-card-div-pow-attop-volume-source-edition-2.md) | 421 | `result-track:eea6cf3e4185e4bbb67c608e81f29f42f38b69ba2799b4640e67a2e2e541f58a` |
| 42 | `def` | [tendsto_card_div_pow₁](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow.md) | 429 | `declaration-track:162f3d00313f360f697714e8246c6b8a6a3c364845101f3ea1cb550a9647fd93` |
| 43 | `theorem` | [tendsto_card_div_pow₂](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow-source-edition-6.md) | 435 | `result-track:f2047cfd2737c79336d12fc7106023d1f38dd87ade8ebc348c4a2018afa2fbb3` |
| 44 | `theorem` | [tendsto_card_div_pow₃](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow-source-edition-4.md) | 444 | `result-track:c8f207cee109d92db7cb4266cf514b36cfbd21ea53ae23867419415cbccacea2` |
| 45 | `theorem` | [tendsto_card_div_pow₄](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow-source-edition-3.md) | 453 | `result-track:8b02d0ea687b316299dc8f82baa0d82722ffcb41b24bb2075a15bfef1e9cb415` |
| 46 | `theorem` | [tendsto_card_div_pow₅](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow-source-edition-5.md) | 461 | `result-track:cf3074d838fa48fcf20063604fe36c326c3d3d067d80276d1971c3ff698b45ae` |
| 47 | `theorem` | [tendsto_card_div_pow₆](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/tendsto-card-div-pow-source-edition-2.md) | 468 | `result-track:81eaaa820b800d36d3a139bc4b4d2047fe548ce010360a339265efef4765d134` |
| 48 | `theorem` | [_root_.tendsto_card_div_pow_atTop_volume'](../../../../FunctionalAnalysis/UnitPartition.lean/declarations/root-tendsto-card-div-pow-attop-volume.md) | 476 | `result-track:36533563e9440a740e8340dd169e7174d01b0da4da455fa0751e64a1dffb8480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0daf490dab638499db491e24731807cfb23d63ca4a3fdcdd5d71eab27639a23f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
