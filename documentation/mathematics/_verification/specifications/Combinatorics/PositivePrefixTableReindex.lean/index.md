# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4795d4847796ce4aa5121701caf7b85bd9e3995c",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PositivePrefixTableReindex.lean/index.md) · [Full source](../../../../Combinatorics/PositivePrefixTableReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4795d4847796ce4aa5121701caf7b85bd9e3995c`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../../Combinatorics/DirectedGraphPrefixTableReindex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [original](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/original.md) | 16 | `declaration-track:490e41b8059b703df115c51ee56a5704d9db05694eaacf1e8c438ac0982c0665` |
| 2 | `def` | [swapIndex](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/swapindex.md) | 21 | `declaration-track:c00c42c04ee9628bc105783ca985e6adf3e0ed2bf91888aead77820eb2f325a4` |
| 3 | `def` | [updated](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/updated.md) | 23 | `declaration-track:9b1a19d5ea851b706f470ccafc05a661220e481c387d08a1e4bb774a039d244c` |
| 4 | `def` | [translation](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/translation.md) | 28 | `declaration-track:261d4d8c65229c07e8ecfd6007f985515eca3a031a6156a5d945bfd7f7cef6c1` |
| 5 | `theorem` | [translation_bijective](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/translation-bijective.md) | 34 | `result-track:56eb42c2a71836976acae80dc38a2d400f0efec64081bde6a18ebafb5451b1c1` |
| 6 | `def` | [vertexA](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/vertexa.md) | 36 | `declaration-track:46e1fbecf4bf21a5f78f09112127f1c55f58e490a4c5f2e9deea6fc99e08cca1` |
| 7 | `def` | [vertexB](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/vertexb.md) | 37 | `declaration-track:91a07ec9e8000d581d609b5d1dedc0c4d2f51a43bdcbe87697f3717942719231` |
| 8 | `def` | [id0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/id0.md) | 38 | `declaration-track:3fd7002d2d69d706eef7079820d4314495852e747e23f05049157e71311027c1` |
| 9 | `def` | [id1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/id1.md) | 39 | `declaration-track:bbae68fa6e7ac6406372a9f3c14ea0393fe17a9b773a69dd09cd1a0069145013` |
| 10 | `def` | [new0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/new0.md) | 40 | `declaration-track:39cc148d092b3b1046d92964ef9ab75b4ad21e7ee7e197939b27426634ad4b8a` |
| 11 | `def` | [new1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/new1.md) | 41 | `declaration-track:b3fcf9b0e6ba356dbfd927fd223266782ad8467f3c960b94b11ddae8b9e85350` |
| 12 | `def` | [new2](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/new2.md) | 42 | `declaration-track:09bb5e58915ea384f7ba679fdea6e9ff8f601e8aad6a9adc6637303c53abb5bf` |
| 13 | `def` | [oldTag0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/oldtag0.md) | 44 | `declaration-track:6eddf927cf1876d416c08424c226b21b61df8b3649496c161eb3eb8cae712ef4` |
| 14 | `def` | [oldTag1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/oldtag1.md) | 45 | `declaration-track:2d8c7b75afb79d6c1f3f0fe2b4cc983e220cd5a448654426bcb78520283d7175` |
| 15 | `def` | [newTag0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/newtag0.md) | 46 | `declaration-track:54b9b7e3eb1184d8970c6d279b7592d1a0f7cf0e63e120c8f5bb372de8ee9d0a` |
| 16 | `def` | [newTag1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/newtag1.md) | 47 | `declaration-track:152fac750514a4f588de67316d19ae1f56a28cea9f935b0dd984c107e78c18cd` |
| 17 | `def` | [newTag2](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/newtag2.md) | 48 | `declaration-track:eb0b01240a2e511db3ab04c307018216760ebc4d21d37aa94f7964499ce455c9` |
| 18 | `instance` | [oldTagDecidableEq](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/oldtagdecidableeq.md) | 50 | `declaration-track:b319be30a211b258d40b8066c8762a7acdd9511ccc3ff5cd5873842a66875729` |
| 19 | `instance` | [newTagDecidableEq](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/newtagdecidableeq.md) | 53 | `declaration-track:c9b890dff5ec1b6d4da30bf5a90588606f866f9a3635642880eeacc97517db75` |
| 20 | `theorem` | [old_tags_distinct](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/old-tags-distinct.md) | 56 | `result-track:e2f70e510250e37564ec33e3156d7a4aef456319fe2dc1b19e86e21c6e614693` |
| 21 | `def` | [arrow0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/arrow0.md) | 63 | `declaration-track:e12e3db423e8d6050ec037bce2bac4b277e8ae8e759397aabf053df6bc0873dd` |
| 22 | `def` | [arrow1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/arrow1.md) | 64 | `declaration-track:8b86e4998cc52f9655bf7b0461c0da3a634ecf7392c5ee0ccfee1e74b8712839` |
| 23 | `def` | [single0](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/single0.md) | 65 | `declaration-track:c8a26fb8913a7fa95971d573671bb1a6111aece93beebdd3069c230cbdfad358` |
| 24 | `def` | [single1](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/single1.md) | 66 | `declaration-track:ca492955443a86c3e841f0d218b526b88ddf4bd304f40cef0b3ee736b2959c1e` |
| 25 | `def` | [seedRows](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/seedrows.md) | 68 | `declaration-track:3a7c5f250490dbd292753f6b600fbe50af88aed44eb8b656e0417e00d59205e4` |
| 26 | `def` | [seed](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/seed.md) | 71 | `declaration-track:ed02d6dace720952ba36d626a3574bf7652109d342154009338a2fad02a5db74` |
| 27 | `def` | [before](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before.md) | 74 | `declaration-track:4985920c0ea7e14fb79fb21f099c4678ab787169cae133286c6aa9d283bf54b4` |
| 28 | `theorem` | [seed_inventory](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/seed-inventory.md) | 77 | `result-track:d68b3111274c55c43b6d3b5e3ee0a5582008f0acfff009520706186c67a2311f` |
| 29 | `theorem` | [before_dictionary](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before-dictionary.md) | 82 | `result-track:5e69312fd6e0649cce131c3c55cf8e557d28a7619e2632c463e1a0daeb5107a6` |
| 30 | `theorem` | [before_wellFormed](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before-wellformed.md) | 88 | `result-track:81f3441e76beb9c973c5105500edece4168622b9868468e099665d4c3db8f69e` |
| 31 | `theorem` | [before_nodes](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before-nodes.md) | 97 | `result-track:29fbc55a2dfa1c2f02f763cae8f990b71909fa0a10722c21a8c102f53aa0e370` |
| 32 | `theorem` | [before_actual_decode](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before-actual-decode.md) | 102 | `result-track:8f6be267bd5faa22476ca90ef7addcc20d6f909c3b064a9c08dd779616cf1c10` |
| 33 | `def` | [after](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after.md) | 109 | `declaration-track:3c44303c6cc33ad4dc645b7f2d79ab8523065fc0484fcd5c6955b18aeff85eba` |
| 34 | `theorem` | [after_wellFormed](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-wellformed.md) | 111 | `result-track:464dbf4a9f91a55d40a392c72cdc7d3f535a83063718c7a12e68ec221a0d7bc9` |
| 35 | `theorem` | [after_dictionary](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-dictionary.md) | 114 | `result-track:87b658422b0ba13b8a10d91eba9f00dbc90d5712692e7aca3b0d23998d09d9cc` |
| 36 | `theorem` | [after_nodes](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-nodes.md) | 119 | `result-track:22122117edd5519480b9e5fdda279e992f17c1bb7adcf916ca4a72fd0ff46767` |
| 37 | `theorem` | [after_references](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-references.md) | 125 | `result-track:76a11a8584738037e32b1cd4181026f6a628154a1a7e950f92ff834a6a41cd9f` |
| 38 | `theorem` | [after_root](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-root.md) | 127 | `result-track:51ac70ee15b4c48d2ec0e79fcbc11c222b97634eb91e0e4572104acd7fba113d` |
| 39 | `theorem` | [child_before_parent](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/child-before-parent.md) | 130 | `result-track:f895929bec1cc139876acf4b110887a8cb8a8db27fac8956cfa965ebbade085a` |
| 40 | `theorem` | [after_actual_decode](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/after-actual-decode.md) | 135 | `result-track:9fb781da739c4ccdc6b46e21c388771a41709fc80a741a0a69e252b74d527537` |
| 41 | `def` | [mappedOccurrenceRows](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/mappedoccurrencerows.md) | 141 | `declaration-track:87bb04e3a2f0ac837eb3f3587a5c362413486477d48a5985298af75c193e168f` |
| 42 | `theorem` | [actual_occurrences_recovered](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/actual-occurrences-recovered.md) | 146 | `result-track:2bca954a070d9084df685fee96a909847e6a88e5ff6cdf94923766c0b677e1e2` |
| 43 | `example` | [(anonymous)](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/example-source-edition-2.md) | 151 | `declaration-track:35bba73a2db94e51718a95011a26e3c66d7bc32be3b3743aeec9f7284daa002d` |
| 44 | `theorem` | [before_realEntries](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/before-realentries.md) | 156 | `result-track:30835847fd5854255554432cea4a4a4823d7040af14d3ffaa90572a52327008f` |
| 45 | `def` | [oldCertificate](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/oldcertificate.md) | 161 | `declaration-track:e1d10f3661433ac98d46ae2b509d6b3a2559f10db15ae3c2e0f3f373c20e0713` |
| 46 | `theorem` | [certificate_entries](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/certificate-entries.md) | 167 | `result-track:c5a04dc127b2cb7f992f6569dbbe1c5847e432b7868d00b4e3b83c3047e79489` |
| 47 | `example` | [(anonymous)](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/example-source-edition-4.md) | 174 | `declaration-track:96b25e15a6681ffcbff1323e96f8393cae0b9873134c2bb5562784d5d2de9ba2` |
| 48 | `def` | [stale](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale.md) | 181 | `declaration-track:44f8696648dc78443ed8de84ca8e0cc4fa4d72a5e0d99bb38157b796c1904470` |
| 49 | `theorem` | [stale_actual_decode](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale-actual-decode.md) | 185 | `result-track:273e57c633e29e033f74624140f12e5136dc340d0b6f36051b7fb884e26eebfa` |
| 50 | `theorem` | [stale_reference_bounds](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale-reference-bounds.md) | 188 | `result-track:9b2dfd79eaf2c0caefb6644a24ac5ff3b84881c9f19e14c1bdcb5ba7b626c6b9` |
| 51 | `theorem` | [stale_ranks](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale-ranks.md) | 194 | `result-track:bf438b91fc321d810d04adbfe0454d1faa69df6b8360da8bccda856ee1ecbeb3` |
| 52 | `theorem` | [stale_root_rejected](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale-root-rejected.md) | 218 | `result-track:1a19b623dcf9080b2f83973119660b0d64939c5a7ea8ef4575c6b893559d1631` |
| 53 | `theorem` | [stale_not_wellFormed](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/stale-not-wellformed.md) | 223 | `result-track:c752affe627a9bc27a589d2bd2217dcfc5f019812c056e4fc80672117b019cc4` |
| 54 | `theorem` | [actual_numeric_checks_insufficient](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/actual-numeric-checks-insufficient.md) | 228 | `result-track:352981f906555696f577b5247e059b0f191a4772d61766c0757d3a0207aa1920` |
| 55 | `example` | [(anonymous)](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/example.md) | 235 | `declaration-track:27862cd2eedf16f1ebe77bf2e15bbe5cffd16d33eaf265704d2d965f5c1bd7be` |
| 56 | `example` | [(anonymous)](../../../../Combinatorics/PositivePrefixTableReindex.lean/declarations/example-source-edition-3.md) | 238 | `declaration-track:757fd5f67dbc03b07e7fecfbb0b77e8f4538ceec310612da04bba812abbab55a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4e059db4c677a660b35c3a4c335fbbdf96b6231c93c0e7bd7780efc116bb5d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
