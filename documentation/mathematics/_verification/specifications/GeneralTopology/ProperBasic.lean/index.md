# Verification target: Proper Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46a99c8792e73177710ae594a669a8dab49fbd2b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProperBasic.lean/index.md) · [Full source](../../../../GeneralTopology/ProperBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46a99c8792e73177710ae594a669a8dab49fbd2b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Filter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProperMap](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap.md) | 76 | `declaration-track:83d9168f81865238b1740ee38884e56bbdf63ce894d2a4a53a9393478cb5e50c` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-continuous.md) | 88 | `result-track:b7fa6ff87cd2267c231c2887ba8ccdec04092a6192843a97b3b5c67b10b6435c` |
| 3 | `lemma` | [IsProperMap.isClosedMap](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-isclosedmap.md) | 91 | `result-track:480651783658558af15bbebca8a80722158c97cebda3b80cf70c754ec9670086` |
| 4 | `lemma` | [isProperMap_iff_ultrafilter](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-ultrafilter.md) | 96 | `result-track:1e08173dc82f2fb8a3bf3b9b455ccc3d88a171dbb8eceb2610c9c34be33b6c7a` |
| 5 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-ultrafilter-of-t2.md) | 111 | `result-track:f06c9198a7b5025b8fc7811971dc19b687ae1ee278e5ffdff09c80fc305a461d` |
| 6 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto.md) | 119 | `result-track:577b75c3db422389e0587cc90afe35c797caaef617fcf81b5e08d392f58c0ffa` |
| 7 | `lemma` | [IsProperMap.comp](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-comp.md) | 124 | `result-track:cf1ba7067b1c2db3696277efbca8ab19bacc5e9d28948502f69fcc1ef0182326` |
| 8 | `lemma` | [isProperMap_of_comp_of_surj](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-of-comp-of-surj.md) | 135 | `result-track:fa3c1759c436147edc4a819052488c3542e0e0f3dffe19f83ac9b8992a0ddf96` |
| 9 | `lemma` | [isProperMap_of_comp_of_inj](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-of-comp-of-inj.md) | 145 | `result-track:b033af2cc8756642770690aac9020a1d99532218c83a12d06660cb26c06a2b08` |
| 10 | `lemma` | [isProperMap_of_comp_of_t2](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-of-comp-of-t2.md) | 153 | `result-track:ffcaba4ffa8c6389f2189aea6e1a04715d11e8451c4cf4e279a904d8657c331d` |
| 11 | `lemma` | [IsProperMap.prodMap](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-prodmap.md) | 162 | `result-track:9d18fb65732b4fcc91971837761a07f0e859f09a9df1ed02902341b3de746189` |
| 12 | `lemma` | [IsProperMap.pi_map](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-pi-map.md) | 186 | `result-track:0f10e3d7365e5654a559c08520619dc73491d759abf0b1393cc7a8e7fde4f717` |
| 13 | `lemma` | [IsProperMap.isCompact_preimage](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iscompact-preimage.md) | 210 | `result-track:2238726d4b7093ffd795fde3a8ad2e631afc5acadf72c90c6adcfb5e0f086cc6` |
| 14 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers.md) | 225 | `result-track:e937c8094026b94a73cc48dcb69a2db21e7e6953e98b53c0cac1db53d45a3533` |
| 15 | `lemma` | [isProperMap_iff_isClosedMap_of_inj](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-isclosedmap-of-inj.md) | 252 | `result-track:bab07180281351e9f03a2296ebdbf3438bb671aec5a979d42295251f0b0f92f3` |
| 16 | `lemma` | [isProperMap_of_isClosedMap_of_inj](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-of-isclosedmap-of-inj.md) | 259 | `result-track:eb00472d9b5eced54714f6e6994b020e293bd18ee52cced1f01b2a00375d7a4f` |
| 17 | `lemma` | [Homeomorph.isProperMap](../../../../GeneralTopology/ProperBasic.lean/declarations/homeomorph-ispropermap.md) | 264 | `result-track:1574683ddd6669262ef5c0599261052239e25667148864456d6062918b935284` |
| 18 | `lemma` | [IsHomeomorph.isProperMap](../../../../GeneralTopology/ProperBasic.lean/declarations/ishomeomorph-ispropermap.md) | 267 | `result-track:8799e173983e052bd001065bdd9aff8bdd62a15b8731ba91ceaabbbda28039a3` |
| 19 | `lemma` | [isProperMap_id](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-id.md) | 271 | `result-track:2da9489037b3ec13ea5a75fdb2f12981d576d238a4e121b5103c137a0488cd90` |
| 20 | `lemma` | [Topology.IsClosedEmbedding.isProperMap](../../../../GeneralTopology/ProperBasic.lean/declarations/topology-isclosedembedding-ispropermap.md) | 274 | `result-track:04af4b4f01614d8d7ff1481e8a13aabcca0885ae1501c2aea7b94c7c65d0406e` |
| 21 | `lemma` | [IsClosed.isProperMap_subtypeVal](../../../../GeneralTopology/ProperBasic.lean/declarations/isclosed-ispropermap-subtypeval.md) | 278 | `result-track:deb2f87ecce47c1e0d46aab26a010ef41d6dbdc541f3dcba3c98715f74b495d6` |
| 22 | `lemma` | [IsProperMap.restrict](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-restrict.md) | 282 | `result-track:af7dd9344e09a2a4f938f052a5944d16a6881b9aa5ec4ec6a4b5c12524ca4d02` |
| 23 | `lemma` | [IsProperMap.isClosed_range](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-isclosed-range.md) | 286 | `result-track:5603ba9c2119162f168e01ba88cf1477f757f0d6c7aee2ea7a40dc7255a843a6` |
| 24 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite.md) | 291 | `result-track:2077844396a6362a3ada3c187ffcf8871733bd9e05e33d3f0ebae01c5baeffe7` |
| 25 | `theorem` | [Continuous.isProperMap](../../../../GeneralTopology/ProperBasic.lean/declarations/continuous-ispropermap.md) | 302 | `result-track:20aa76bacf746fd8ff62b8b6d5ddd2b347472cd7343bac24a7a3743ad1f47087` |
| 26 | `theorem` | [IsProperMap.universally_closed](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-universally-closed.md) | 309 | `result-track:8479506dbcf6560334c7d8a4df5b52e1010479efe78eb59bc3f6a21a4842b44c` |
| 27 | `theorem` | [isProperMap_iff_isClosedMap_filter](../../../../GeneralTopology/ProperBasic.lean/declarations/ispropermap-iff-isclosedmap-filter.md) | 318 | `result-track:6f340fc325b956ab6c7c8102b6c6f749cb1fb2595005084159cd4c9d8206a7e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35d3d97ca4015bdac0ecc9a73d9011beb79f3753948b6fda81a3ee1849f88883 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
