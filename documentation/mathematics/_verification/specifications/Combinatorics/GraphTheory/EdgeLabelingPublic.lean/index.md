# Verification target: Edge Labeling Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6d2431122db60ee37fd03c04328580878dff2f1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/EdgeLabeling/Varianta5dcae25730e2e5e36171bc1420f52ed837c32bc37b8414242c30ca91fcf1a68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6d2431122db60ee37fd03c04328580878dff2f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/EdgeLabeling/Varianta5dcae25730e2e5e36171bc1420f52ed837c32bc37b8414242c30ca91fcf1a68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/EdgeLabeling/Varianta5dcae25730e2e5e36171bc1420f52ed837c32bc37b8414242c30ca91fcf1a68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeLabeling](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/edgelabeling.md) | 37 | `declaration-track:dba0d51c69a01ae1006992c878afaa4c3a1692a03746d425934ab8bb7db07269` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-8.md) | 40 | `declaration-track:d8866dd1fa53c432ad19b7e5b3c23c9d2da785bc166d8510398fd043b14365a6` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:b161d304409ad280a1ff5a9a526cb818df524a85ea32e6d5b17feb45bf2a734b` |
| 4 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-7.md) | 46 | `declaration-track:d870334cd8650313133b5f91e76b7f1df80c7abcef5adc4044de5ba7f49bf71e` |
| 5 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:2b6749fa9e0bf5491c5196173d0df6e14864947ece2dfdf15f8d730a9f2d8652` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-4.md) | 52 | `declaration-track:3455cf61371a8efbcadc990dd73f8bda00e4f68e7f0d8d5cb2f7de95f4336863` |
| 7 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-5.md) | 55 | `declaration-track:527f9e56af73539545a1a10c5f055c2ca3d67bce791b218e476bb05fcdc9380a` |
| 8 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:2cd50d92afcaec09b995ed3916b2ada1613b79864914462375b1c3e75ce7a3ea` |
| 9 | `abbrev` | [TopEdgeLabeling](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/topedgelabeling.md) | 64 | `declaration-track:b45d9e1675ddd8546a07abcfc7144ad55a9833a2bd9a09d35d523810a8154979` |
| 10 | `theorem` | [card_topEdgeLabeling](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/card-topedgelabeling.md) | 67 | `result-track:167041a5edd340109c752966d887644718c807588de2a3c2a17ddfc02635a7be` |
| 11 | `def` | [get](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/get.md) | 77 | `declaration-track:17ae0f930adf8c00723f33d341a91330b8ae6e7c5fca7eb3b19dee73d45cc4dc` |
| 12 | `lemma` | [get_eq](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/get-eq.md) | 80 | `result-track:b898ed1829e24e230115dcc2f72459ac80be225ad4ddecb8be45263c3556c632` |
| 13 | `theorem` | [get_comm](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/get-comm.md) | 85 | `result-track:747fe6dc2d8f87f794498dae1ffebc1eb60093c028a768bc1092da3f76419f7f` |
| 14 | `theorem` | [ext_get](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/ext-get.md) | 89 | `result-track:a1f77c180368ae2c4ea4fff3144324953a5791e05ec103be52299064feb877ad` |
| 15 | `def` | [compRight](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/compright.md) | 96 | `declaration-track:bb0e9a6c0eb9514341ad00784fbde1a3165ed6488f562e5bbda041ed7e126f7b` |
| 16 | `def` | [pullback](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/pullback.md) | 100 | `declaration-track:48bd50ab9590c856fdc974042e3f05aa341ec72681e4239b9b89b8e33ae4040d` |
| 17 | `theorem` | [pullback_apply](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/pullback-apply.md) | 104 | `result-track:151e8776fd0c13d9cdb2b2dff9161930e9730bef101d4844c5059de714f23c87` |
| 18 | `theorem` | [get_pullback](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/get-pullback.md) | 108 | `result-track:0f30c18a948abbf42e2cb732f3e5d60f8dbcb6e19fad45089de256da9df96911` |
| 19 | `theorem` | [compRight_apply](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/compright-apply.md) | 113 | `result-track:64c2daa84d3382b1fafdbbff8d992e28b6618d9cfc585423fbb3ab863b791056` |
| 20 | `theorem` | [compRight_get](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/compright-get.md) | 117 | `result-track:82a9a1262750a9b6393613841225fdd06bcc6008370e76d31bde906bd7afedc7` |
| 21 | `def` | [mk](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/mk.md) | 122 | `declaration-track:58cada79a8a610006385a8e093425f808b860e7c568c33b0f4dc49a9f3c77342` |
| 22 | `theorem` | [get_mk](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/get-mk.md) | 130 | `result-track:be2e975ae91376d20a0a380cd661d28cc4836373d30c729fb7628526f13ead27` |
| 23 | `def` | [labelGraph](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/labelgraph.md) | 138 | `declaration-track:2931cdd7f0eb0904ee4f96e4833aff9aba2eb698c97c5719f61647c2b7ffb4cf` |
| 24 | `theorem` | [labelGraph_adj](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/labelgraph-adj-source-edition-2.md) | 141 | `result-track:fe9098aec6adda03ebdf1ed2c6a31e59f0b7f32b064ac4add7a901e38d21f226` |
| 25 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/instance.md) | 145 | `declaration-track:21c359328ed27649f6fa58a517a38f29be62b89f70a94fa79be0b4fa867c1648` |
| 26 | `theorem` | [labelGraph_le](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/labelgraph-le.md) | 149 | `result-track:2646aaf7e3736ee289c78dd4786b61baa642e6a77e3d60e9f13252e480ce433e` |
| 27 | `theorem` | [pairwise_disjoint_labelGraph](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/pairwise-disjoint-labelgraph.md) | 153 | `result-track:1bb3de505c4f0b8afbdb3d3b3db6c7f928db3bf8e2d334f71ddeed0564b487ea` |
| 28 | `theorem` | [pairwiseDisjoint_univ_labelGraph](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/pairwisedisjoint-univ-labelgraph.md) | 159 | `result-track:c7bde71b8a9b47b03b9bb68e95a24bb82ad4f4255c155f89d74bd68805ee5e3d` |
| 29 | `theorem` | [iSup_labelGraph](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/isup-labelgraph.md) | 164 | `result-track:b8c611f5d1002fbb89f7423edfb24c937a426909f46cda812e1840c08c810aba` |
| 30 | `abbrev` | [pullback](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/pullback-source-edition-2.md) | 176 | `declaration-track:62bb604a36537cf7e2249c33d73a3b18a0bf29317d41eeeb3fc471d5d8d3b15e` |
| 31 | `theorem` | [labelGraph_adj](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/labelgraph-adj.md) | 180 | `result-track:98a19d704795ef9a9bca53da44b0f32fa418625c8479b6a789add9939a0e22ce` |
| 32 | `def` | [toTopEdgeLabeling](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/totopedgelabeling.md) | 190 | `declaration-track:649f5b1f4477387fe1a5d6db3a903ac9be2ee2bc6fd3f7e57dc5cd3f6e442e54` |
| 33 | `theorem` | [toTopEdgeLabeling_get](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/totopedgelabeling-get.md) | 194 | `result-track:f37226a8c648a1ede65d884e1f357fd40be43505abfad345c74a4be677cfbb3b` |
| 34 | `theorem` | [toTopEdgeLabeling_labelGraph](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/totopedgelabeling-labelgraph.md) | 199 | `result-track:6bb0ecf6484151812164f5b89ea26b4113b3d2345e220eaf37ae2afe192dc9ca` |
| 35 | `theorem` | [toTopEdgeLabeling_labelGraph_compl](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/totopedgelabeling-labelgraph-compl.md) | 203 | `result-track:c6e74f4ab4ed093613ea2b8cf56586af3bb3bac0f70115b7ddc6d78b7731a6c6` |
| 36 | `theorem` | [TopEdgeLabeling.labelGraph_toTopEdgeLabeling](../../../../../Combinatorics/GraphTheory/EdgeLabelingPublic.lean/declarations/topedgelabeling-labelgraph-totopedgelabeling.md) | 206 | `result-track:b65b0a31c96dbf6a73edba22d6c5fcf67e02d450a057c2bbc5d370ac7bd97857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aa156e84043e15de76a33463efa5557399e18cb1330e5c5cdc874ee32537a52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/EdgeLabeling/Varianta5dcae25730e2e5e36171bc1420f52ed837c32bc37b8414242c30ca91fcf1a68.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/EdgeLabeling/Varianta5dcae25730e2e5e36171bc1420f52ed837c32bc37b8414242c30ca91fcf1a68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
