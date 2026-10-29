# Verification target: Skyscraper Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aee7657d15061ea2f3a6209a96051e28423c662",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SkyscraperPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SkyscraperPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aee7657d15061ea2f3a6209a96051e28423c662`.

Source path: `GRWTSK/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean.json)

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
| 1 | `def` | [skyscraperPresheaf](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaf.md) | 60 | `declaration-track:dd6a420a1935eeb62b01e3e7b1babfcc8766de78c08b2242b33e0b6d360fb084` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaf-eq-pushforward.md) | 75 | `result-track:2b2429128fe3a221ecf6ed31c061a9ca2a6529df597cc9e14a1131d928845b6f` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaffunctor-map.md) | 90 | `declaration-track:8101d8ae81f0824afd33357da3d57ad035e673ee7c79a54eaf513af040128766` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaffunctor-map-id.md) | 104 | `result-track:0eac4674d58125970452f7b50b7920154fba4f973927665dc15ff8a09e6311fc` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaffunctor-map-comp.md) | 110 | `result-track:25ae3591435fe673f5ec6002697bb42afb74930c58a28b68deb2c4c0189a9fe7` |
| 6 | `def` | [skyscraperPresheafFunctor](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaffunctor.md) | 122 | `declaration-track:167672d1a1a37bd0b2d3fef8f20b44577166790c167a3c7d5e82095247840fca` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafcoconeofspecializes.md) | 141 | `declaration-track:629c133e930768150c2082fe5cddb1f0f1ac1aef153a463e04bdb0b848f74d1d` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafcoconeiscolimitofspecializes.md) | 159 | `declaration-track:c152d7bb719359cf57014274ccb11e7baf919aace92715d9b3d04cabd120e310` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafstalkofspecializes.md) | 177 | `declaration-track:7ff9b75940bdf6a75ba8afc7ad3202064372472e14ec255548e708076e4bd9d9` |
| 10 | `lemma` | [germ_skyscraperPresheafStalkOfSpecializes_hom](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/germ-skyscraperpresheafstalkofspecializes-hom.md) | 182 | `result-track:8070677b1ae5b6075e7cea39b1785a8a889514a215ad8b7bfd529ad11a245603` |
| 11 | `def` | [skyscraperPresheafCocone](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafcocone.md) | 191 | `declaration-track:9e9ddfd573e995bd2e4e90bd9b6a33c4574eb19a505827744d9e64508f933ef8` |
| 12 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafcoconeiscolimitofnotspecializes.md) | 204 | `declaration-track:fc2c4b88273664ae1c0d141c52cf3208ef03b6a08d38e0d3018d39ce2d67a668` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializes](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafstalkofnotspecializes.md) | 225 | `declaration-track:d2ef7fcb9394207af37426badb01c7aac3e7f03801eb6137f324c05cd4ca0ec0` |
| 14 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafstalkofnotspecializesisterminal.md) | 231 | `declaration-track:ec391ffceb2b848da11ad2a9cb4bd0f29ce6aabeb4cc3681556936e0d2381635` |
| 15 | `theorem` | [skyscraperPresheaf_isSheaf](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheaf-issheaf.md) | 235 | `result-track:109b2129f20ae86c0ca8a51dfd0b9e6df7951c08296556447ead3c6057b12c8e` |
| 16 | `def` | [skyscraperSheaf](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscrapersheaf.md) | 252 | `declaration-track:780ef7259462a0bdd3a669cf340087eea7761d0c0128218dc822d140c3528a3a` |
| 17 | `def` | [skyscraperSheafFunctor](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscrapersheaffunctor.md) | 259 | `declaration-track:c309e01b7da3a49882ca6018b154f5b23a0c39b4c568b6217e8696eeecc5f8c9` |
| 18 | `def` | [toSkyscraperPresheaf](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/toskyscraperpresheaf.md) | 275 | `declaration-track:99482ecbf20786d2fb837769f0a6c7f6e4664b8de45b3015022d8e2c122047ed` |
| 19 | `def` | [fromStalk](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/fromstalk.md) | 294 | `declaration-track:de3a9e6d9a5cb84edab0d2ecac78fafbbc5a157cd831f1068dde821671b65f1e` |
| 20 | `lemma` | [germ_fromStalk](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/germ-fromstalk.md) | 308 | `result-track:a0b836d6f20a5735f0b02f0d65b003359bc0a181d598e8968da4e7f15bf75ddc` |
| 21 | `theorem` | [to_skyscraper_fromStalk](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/to-skyscraper-fromstalk.md) | 314 | `result-track:694607d7eb5927062cc39efb18a7d6abfda77834e846e2857f027d413b07c09e` |
| 22 | `theorem` | [fromStalk_to_skyscraper](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/fromstalk-to-skyscraper.md) | 324 | `result-track:ca067574ecbaa31ad48fe4073ada5d6db2bce4233931d268c35be559e78de870` |
| 23 | `def` | [unit](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/unit.md) | 335 | `declaration-track:7f31fb6a8ba19d01fb69cc3427196a82ab9ecddd1428a9b7416d15f5b25e09dd` |
| 24 | `def` | [counit](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/counit.md) | 350 | `declaration-track:b2c859711ef7e05b0b19cf60fc800a4bccc3b6014d09cd5381ecd18a19f0b3c2` |
| 25 | `def` | [skyscraperPresheafStalkAdjunction](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscraperpresheafstalkadjunction.md) | 365 | `declaration-track:3f74af8a4affe9b2a9bd21b5c8a9b3054ae6c516f4918d1f24d85bebf71af3b4` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/instance-source-edition-4.md) | 394 | `declaration-track:8e66aa1d08ebe945f770f4f517a2a16972755dc218d65910ca843efc48e08c7a` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/instance-source-edition-3.md) | 397 | `declaration-track:3d30533c858c6ee09d6bb06c8cd960824830e0bc65f5584c9a95f699f25212bf` |
| 28 | `def` | [stalkSkyscraperSheafAdjunction](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/stalkskyscrapersheafadjunction.md) | 404 | `declaration-track:ee56cb6babaa042dcc56114b56f2ee795330da1e4a7a246ed26a2b35ca0bd7f7` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/instance.md) | 417 | `declaration-track:00922570f5d31a393e1d97907f5f87ecc47fda8221bc8febcfc23521134d1359` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/instance-source-edition-2.md) | 421 | `declaration-track:071508bbdd171c4a0ec617f9eec23a2a277f3a61b559d341114d1e1328506e2f` |
| 31 | `def` | [skyscraperSheafForgetAdjunction](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/skyscrapersheafforgetadjunction.md) | 426 | `declaration-track:3a9e0817cb37c6aa4bbe9c9318910fed27b6fd8fba8e279670ab23d12d186743` |
| 32 | `def` | [isTerminalSkyscraperSheafObjObjOfNotMem](../../../../GeneralTopology/SkyscraperPublic.lean/declarations/isterminalskyscrapersheafobjobjofnotmem.md) | 437 | `declaration-track:a0f12df1cbdc1edce17d7e428bfa43afd79281763e251042d697ec0be996c31e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=991fe84bdcedc432cb4ea2df040d4409c7476d19721db5d97d55cc0661938bf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean","GRWTSK/_verification/specifications/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
