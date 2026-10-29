# Verification target: Skyscraper Namespaced Germ Skyscraper Presheaf Stalk Of Specializes Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "835519002b6873369663293e0290c33728e6bc14",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/index.md) · [Full source](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `835519002b6873369663293e0290c33728e6bc14`.

Source path: `GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skyscraperPresheaf](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaf.md) | 60 | `declaration-track:af5b9babf89b16a1110495e3853e55913989bcd1309079bdfb7a00020cc12a16` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaf-eq-pushforward.md) | 74 | `result-track:455c88a2da98a698cf4a89d143222aaae47f20dbf18e18a73407bb109c0e1882` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaffunctor-map.md) | 88 | `declaration-track:87a4b9db24aa24549564ac4a840f9c5c747c78825716b5f986ad4c230b9fbfe0` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaffunctor-map-id.md) | 101 | `result-track:b0f5a6f749da22b4a1f3a3283b09913ac2aacd09d734f225f771e05c6d6505ef` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaffunctor-map-comp.md) | 106 | `result-track:727c626750b224ed6c1a3d79da1a506bac818782c2ded731aa723f8b695f5d6d` |
| 6 | `def` | [skyscraperPresheafFunctor](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaffunctor.md) | 118 | `declaration-track:ad8f0ef9c3d1546fc041f04889163d4fa875d551df41e9978611002e8f87ebd6` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafcoconeofspecializes.md) | 135 | `declaration-track:e71babf2e82a3be10f515eba652b8cf9ccde5f6a37bc7361be82626411809a03` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafcoconeiscolimitofspecializes.md) | 151 | `declaration-track:bd21a6231ab821ba56a41946404ccdf1ef4c9a6e1febfd7cadaaf3c9a7266376` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafstalkofspecializes.md) | 169 | `declaration-track:82e88b5d7d5372b0a1d0a62c8cc2396c41b4329da435dc347cdae8f3241c4f49` |
| 10 | `lemma` | [germ_skyscraperPresheafStalkOfSpecializes_hom](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/germ-skyscraperpresheafstalkofspecializes-hom.md) | 174 | `result-track:4b462a9e396b381760114c36f7f152b894a6d83307632241ed0e85a278ef3cb0` |
| 11 | `def` | [skyscraperPresheafCocone](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafcocone.md) | 182 | `declaration-track:3626669ed3981738791b96b769a54f8877c1145753c3a6a3308b4ca031c18c18` |
| 12 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafcoconeiscolimitofnotspecializes.md) | 193 | `declaration-track:4c117cb910db739b32783a5fdb74485eb909239da127c324c095de09a823f2bc` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializes](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafstalkofnotspecializes.md) | 214 | `declaration-track:139d1d7b27c9c3e2707abbbd31513b0eaa64d1d849125a80ef063876c0701e5c` |
| 14 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafstalkofnotspecializesisterminal.md) | 220 | `declaration-track:82ddebecfce7f69c71e3d7fcf5c91b1cf0a62ac056755441a1328ba937217c41` |
| 15 | `theorem` | [skyscraperPresheaf_isSheaf](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheaf-issheaf.md) | 224 | `result-track:eca3c97b91ce6eea82df0374c3e1541852a561762a7e21ca22f8cf44a9f83802` |
| 16 | `def` | [skyscraperSheaf](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscrapersheaf.md) | 240 | `declaration-track:acb1296031727b03f4781d29c7048fc2ad37b4162a2832164094b70d58f07241` |
| 17 | `def` | [skyscraperSheafFunctor](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscrapersheaffunctor.md) | 247 | `declaration-track:90efdcd62a357d1c7de850cd205c502ffc7fbcb1bc9102e63f9003d0d1081b17` |
| 18 | `def` | [toSkyscraperPresheaf](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/toskyscraperpresheaf.md) | 262 | `declaration-track:bf3097088730d48a16316c15293781a125449f3d4db1bb00f7cbb1fdc09270d4` |
| 19 | `def` | [fromStalk](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/fromstalk.md) | 279 | `declaration-track:71c333b279ec86d0dd27d1e05728bf7275672443d65f25685b0e47e67a17d6e0` |
| 20 | `lemma` | [germ_fromStalk](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/germ-fromstalk.md) | 293 | `result-track:3133b85cabdade36ecc1d5dba59c1a01e45c589a24feb10b0deefe567d365b34` |
| 21 | `theorem` | [to_skyscraper_fromStalk](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/to-skyscraper-fromstalk.md) | 297 | `result-track:f55177f46773ad0dc91e38072092911409f7f0cbb1dda4479b3c05d7ee8f6f0f` |
| 22 | `theorem` | [fromStalk_to_skyscraper](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/fromstalk-to-skyscraper.md) | 307 | `result-track:8f3137daad61ad675a75f1f85d05a549d323b28473ea06a9efca53b85b189177` |
| 23 | `def` | [unit](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/unit.md) | 316 | `declaration-track:f09d7e80ded188c8787a80d4cb367ac535fa5f4973d87e9eb1db4316b8272d09` |
| 24 | `def` | [counit](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/counit.md) | 329 | `declaration-track:509243aee97de6b7a467c56bba9e19f27337e09cdd870175b856c914ee295d88` |
| 25 | `def` | [skyscraperPresheafStalkAdjunction](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/skyscraperpresheafstalkadjunction.md) | 342 | `declaration-track:2361eb2f2bcde8f2e9c166968c7fcff6ef67ef57c1ca5badf20d2a5c4a932af1` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/instance-source-edition-3.md) | 371 | `declaration-track:cce31edfbdcbe7ce106168e188a0dff3dc9131ecbc81aab0886d81d82131daf3` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/instance-source-edition-2.md) | 374 | `declaration-track:c39caba67a54f7ac24bd16d4dac707503a7a52640d78620ddac97502cfd265a7` |
| 28 | `def` | [stalkSkyscraperSheafAdjunction](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/stalkskyscrapersheafadjunction.md) | 381 | `declaration-track:a894897950603696bc4ffe915aa5715c9876fe3bf3caf973b6e376210401f30b` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperNamespacedGermSkyscraperPresheafStalkOfSpecializesHom.lean/declarations/instance.md) | 394 | `declaration-track:4b8096f6f23771d333f2c8c0a5ea5135807b13ece831dd5235147b9df3ae3b17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be958ca5689e74a1638956ef53cd22e98ee38a990eae7eef330093710a53c9a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean","GRWTSK/_verification/specifications/Topology/Skyscraper/Variant0f4edebf2e5e2099ac403e3d96305e839f39f948d86494894a30085106d710dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
