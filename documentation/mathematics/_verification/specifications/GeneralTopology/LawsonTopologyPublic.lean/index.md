# Verification target: Lawson Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce38d8394b7bfc745db9c5f262f07ccdf3349076",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LawsonTopologyPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LawsonTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce38d8394b7bfc745db9c5f262f07ccdf3349076`.

Source path: `GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawson.md) | 67 | `declaration-track:731008c58638ae366c28894e4db5da34ccc1581aa9cefd16cf31c5530ab1bde9` |
| 2 | `class` | [IsLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/islawson.md) | 75 | `declaration-track:24d88417adeddddb8b8daefd69e89b8943a3ffe05fa5bad35a93c3685febeeac` |
| 3 | `def` | [lawsonBasis](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonbasis.md) | 86 | `declaration-track:ea175741e3c03083cd6e2a26b71c6eda11ac9f4b2585479581297da0bbe1f5d1` |
| 4 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/istopologicalbasis.md) | 89 | `result-track:2d08aff9ce0327a50688fb411e91aa2181259292c4b5ae18629f59fb0848ee06` |
| 5 | `def` | [WithLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/withlawson.md) | 113 | `declaration-track:186b22d49b1d52cd013ca7ba447acab4820a6869a364ef224cde91d09d4e6c36` |
| 6 | `def` | [toLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/tolawson.md) | 118 | `declaration-track:027aeaff67f29f69d0980d985da987a1fc570bbe78b40810d06df4f286bc9942` |
| 7 | `def` | [ofLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/oflawson.md) | 121 | `declaration-track:0eca5a0966d6c3d71105f66ede32950d74fcbcf851096fb982897cffc16fe219` |
| 8 | `lemma` | [to_Lawson_symm_eq](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/to-lawson-symm-eq.md) | 123 | `result-track:80605fd9ce3bafc293ba07d18a3362fa126998d097ebe1f1d6e04d08be966064` |
| 9 | `lemma` | [of_Lawson_symm_eq](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/of-lawson-symm-eq.md) | 124 | `result-track:7373daa99ab3d30194367689c83e26b3ccabfff3380a3d2215b8611638af7518` |
| 10 | `lemma` | [toLawson_ofLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/tolawson-oflawson.md) | 125 | `result-track:8aaa00d8de98ea92886fb087f97ea0ad02e9c7d66612e63908201f3b496ec85f` |
| 11 | `lemma` | [ofLawson_toLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/oflawson-tolawson.md) | 126 | `result-track:5dfd3dd59ee671dbdb281e501d9e0ca1d8ae652dedc8207dc4f10ccc656344d9` |
| 12 | `lemma` | [toLawson_inj](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/tolawson-inj.md) | 128 | `result-track:e976364412dc1fc0986b9b4c06131b8d29491591f82a25b32008d8dd299561de` |
| 13 | `lemma` | [ofLawson_inj](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/oflawson-inj.md) | 130 | `result-track:edeccfe1bbb3104d200c6580b766c3c50f1ea12ac457d99055469e3f2b0405ec` |
| 14 | `def` | [rec](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/rec.md) | 134 | `declaration-track:57153911d759a41b7ae9e10d36db339521625d6edc7c89fb5a205a1f398bc2f5` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/instance.md) | 137 | `declaration-track:7c8eea5b967b478803547c2419d940116f1f359e4b05125401d05435fdf256c8` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/instance-source-edition-2.md) | 138 | `declaration-track:9831f5f6681151a082dce91e69bdd22ae687c4d408f5cae923a0c3ffdd87453a` |
| 17 | `instance` | [instPreorder](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/instpreorder.md) | 142 | `declaration-track:6d3a653d6dd2fffcb471f04cb867f4c23aafa59639b42ce10812990254149e66` |
| 18 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/insttopologicalspace.md) | 144 | `declaration-track:553afcffb37aef3ba7b6476476f36590c007ce2a16f161cca24a98f86c352851` |
| 19 | `instance` | [instIsLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/instislawson.md) | 149 | `declaration-track:5d1a4722d5b79a1661544644d62284774d4cf24d8b21648a807ab813d1fe6a17` |
| 20 | `def` | [homeomorph](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/homeomorph.md) | 153 | `declaration-track:b68132d1fc7a3fcb758d3da3e35cd9d9a03b357f0ca44050a8588d7f8a8201bd` |
| 21 | `theorem` | [isOpen_preimage_ofLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/isopen-preimage-oflawson.md) | 156 | `result-track:3d9cc047148a53c4a00669486c9dbd9afe34f0abf637136823fdc4e77eb7f0b6` |
| 22 | `theorem` | [isClosed_preimage_ofLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/isclosed-preimage-oflawson.md) | 159 | `result-track:1e2c402673f06083b2814545cca3f960ad6be273ba64ef8291bdf84bcf778ad4` |
| 23 | `theorem` | [isOpen_def](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/isopen-def.md) | 162 | `result-track:072002116bda97bc2c5042bee1605b7ee70ba7b3920ed07b636ceb8b8ce58937` |
| 24 | `lemma` | [lawson_le_scott](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawson-le-scott.md) | 172 | `result-track:3f43bcbf51693918096e8139ba3775a46b1e710e6d4ba6669dacad5d8eb29759` |
| 25 | `lemma` | [lawson_le_lower](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawson-le-lower.md) | 174 | `result-track:08f74e93bf595fcfa274aa3c657fe6731abff6c9f7cc6bb7764283503a4dfb4a` |
| 26 | `lemma` | [scottHausdorff_le_lawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/scotthausdorff-le-lawson.md) | 176 | `result-track:8f8735fd956ee675e16b1192811f0000922bef1d5a19c815341478820b1f7dcc` |
| 27 | `lemma` | [lawsonClosed_of_scottClosed](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonclosed-of-scottclosed.md) | 179 | `result-track:79c399144d07278ffa29ab93fdc0ec828ca2f684abf4f2b17a80db9421510381` |
| 28 | `lemma` | [lawsonClosed_of_lowerClosed](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonclosed-of-lowerclosed.md) | 182 | `result-track:42b75e0622036299b6d3980cac18dbf390c5c0b7ba5766cada6a616d72edb660` |
| 29 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonopen-iff-scottopen-of-isupperset.md) | 186 | `result-track:a92f8d15d2f35396195581cf772c328fe126fe2c53912f122db5bf68c081a777` |
| 30 | `lemma` | [isLawson_le_isScott](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/islawson-le-isscott.md) | 194 | `result-track:2be748810cdf7344da2e82c91347c757fc9859649679b45d49dfd7e4e2c9efac` |
| 31 | `lemma` | [scottHausdorff_le_isLawson](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/scotthausdorff-le-islawson.md) | 198 | `result-track:67e4aba69ab7542ee76ad41cbcf2cc41710b395f445bc156211a7d6f11c9316a` |
| 32 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet'](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonopen-iff-scottopen-of-isupperset-source-edition-2.md) | 203 | `result-track:c846b12a42cabdb921da41031899458baebcb53b4dd460b0688ee369466c186a` |
| 33 | `lemma` | [lawsonClosed_iff_scottClosed_of_isLowerSet](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonclosed-iff-scottclosed-of-islowerset.md) | 208 | `result-track:18abb74b98c84be646e26a3a33985d2e7f1d81debf3b1d0bfb41f48a4aebc34f` |
| 34 | `lemma` | [lawsonClosed_iff_dirSupClosed_of_isLowerSet](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/lawsonclosed-iff-dirsupclosed-of-islowerset.md) | 215 | `result-track:58ceb4945edbb5b378fd140051042627a43cd98c7bb98166990fa16e26744ef3` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/LawsonTopologyPublic.lean/declarations/instance-source-edition-3.md) | 229 | `declaration-track:a697e4332cb1b48a1d021278504b6d493ac8289d3df4b495532c8d34d8dcc6cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcf4893ff1b98fcfd2cc1f011c04f601ea5e368398a3f0ee141013975fee2ae2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
