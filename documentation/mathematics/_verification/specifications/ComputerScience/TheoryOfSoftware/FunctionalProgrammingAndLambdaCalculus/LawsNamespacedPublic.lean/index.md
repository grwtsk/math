# Verification target: Laws Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ced6e8eadf52490814542a4fb39ae9fc313257c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ced6e8eadf52490814542a4fb39ae9fc313257c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [entails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/entails-refl.md) | 41 | `result-track:484ad519a7e696832bfdce2242341a65a5460bf0f1b52a76abc39a6bdd0f9e0a` |
| 2 | `theorem` | [entails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/entails-trans.md) | 46 | `result-track:b25f1d723c43772505291dbbb41de44cedbc65eea35edca617c810fb388f8729` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:fb2f2d1f79be1734dfdbd6289fe18d3bc9721ff2d57fa17da98c9dbf5787d774` |
| 4 | `theorem` | [bientails.iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/bientails-iff.md) | 56 | `result-track:cba79d377d83bd6799e1b982aa8da204ce2f981bd1dee68f8e7fb4cb9c26ba80` |
| 5 | `theorem` | [bientails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/bientails-refl.md) | 65 | `result-track:051ef9aa95420e86261d861bc6395c90d8a67d43be4fa6412a2e01d971cef371` |
| 6 | `theorem` | [bientails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/bientails-trans.md) | 68 | `result-track:51fbf74aa75d9ea8719686778905ee4117ca6114029592006a3e2193791a499a` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/instance.md) | 73 | `declaration-track:53def5f3a75eb855872e7fce42b7159faaf65135e0c66fcd0aa1dcee838e1d2f` |
| 8 | `theorem` | [bientails.symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/bientails-symm.md) | 76 | `result-track:1a5802163c79ec2d8a1f59e4f53e7b6bc82af5e981b01635e7916aeca657e473` |
| 9 | `theorem` | [bientails.to_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/bientails-to-eq.md) | 81 | `result-track:144330e5c799c0f601553d65dcf81774753c545cbbc8a2d7514d7af9fd1eef84` |
| 10 | `theorem` | [down_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/down-pure.md) | 89 | `result-track:193a5fb9dac997b5e2aad46382b3b99b23751eefd44c9b82427ca8cdad29aead` |
| 11 | `theorem` | [apply_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/apply-pure.md) | 90 | `result-track:81c53094e224e469231e507281887bd612031a2dcc64141f28f5528816017069` |
| 12 | `theorem` | [pure_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/pure-intro.md) | 92 | `result-track:abe32271a11e6924c47c4a386aeb3db4dcd96b2b408d7fc907b505dbc8a8f807` |
| 13 | `theorem` | [pure_elim'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/pure-elim.md) | 95 | `result-track:f513b4875e3f0493029629896e1a66ec9faaddf6b0703a9abe41c8d9997045d3` |
| 14 | `theorem` | [and_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/and-intro.md) | 104 | `result-track:8742a680458b2aa34947b8aa0dc4d7404a540f1022866edc4ede52897c589d8e` |
| 15 | `theorem` | [and_elim_l](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/and-elim-l.md) | 107 | `result-track:396aed7e434706a29b14a37aee045b5c5b3658fe416910c1f6ec4523b34f0f51` |
| 16 | `theorem` | [and_elim_r](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/and-elim-r.md) | 110 | `result-track:f09e1b995066b5e4d3fb5c21da0a16f9a5c55ed6a6163c64bc1a84906c7aa3a5` |
| 17 | `theorem` | [or_intro_l](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/or-intro-l.md) | 115 | `result-track:4ae98fabc979e9c57282036c13ada813d996797ecc734531f0abbd2e6c183558` |
| 18 | `theorem` | [or_intro_r](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/or-intro-r.md) | 118 | `result-track:02b51b8ee6e4bd78d730e49faa85e85cd9fc318c46c24c45ac293d06c3842a4b` |
| 19 | `theorem` | [or_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/or-elim.md) | 121 | `result-track:9717608e0477058c59efffe1676729dbd45ea449b0a8201ae99e0b69a655164d` |
| 20 | `theorem` | [imp_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/imp-intro.md) | 128 | `result-track:f1151e3ee5191497cd1d406ea151bbe6062904d61d4c0b0b245abb798fecdda3` |
| 21 | `theorem` | [imp_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/imp-elim.md) | 131 | `result-track:02d21f83dd6085b4260db86bce23870e05f666b8d04abf21601b7174da5151fe` |
| 22 | `theorem` | [forall_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/forall-intro.md) | 136 | `result-track:56715bf400533652f6ce273a85428d6866992186873a5bc2d58375e01ec2c294` |
| 23 | `theorem` | [forall_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/forall-elim.md) | 139 | `result-track:73eca1ffdfa86b5a5438c3fafa7b184aca1e68b8876165d27294a0753acd7ca4` |
| 24 | `theorem` | [exists_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/exists-intro.md) | 142 | `result-track:00d1a65c9de6f3621aac03bad3f4cb08716637888f131af7e59054a0db9abf47` |
| 25 | `theorem` | [exists_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/exists-elim.md) | 147 | `result-track:c6990324bc623db5744c3fe7c81197ba35055a8105d5e0320b6b8e421d90a5f1` |
| 26 | `theorem` | [and_curry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/and-curry.md) | 154 | `result-track:ed4ba532a64c8ddf308d0f6ce6ea250006aa386d1ea877d915e8e8fb4a88d392` |
| 27 | `theorem` | [or_curry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/or-curry.md) | 159 | `result-track:8d6c9ad8b17846f875148e0d168d0730ef079fb9167a5d6294e475b1dcd17b32` |
| 28 | `theorem` | [imp_curry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/imp-curry.md) | 164 | `result-track:e9fad475cc3b8d7ea880d2ec8b29e2f2a39180b482e35383f80b82644a55ee36` |
| 29 | `def` | [evalsTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/evalsto.md) | 176 | `declaration-track:1284dd560d43496dff5893e9de92b07f8d1762115ec761267e6bf24d13c0642c` |
| 30 | `theorem` | [evalsTo_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/evalsto-nil.md) | 179 | `result-track:3e185831b8fbad920681b9810b1527df68844bab337d1d398a4674a8a80cd3b0` |
| 31 | `theorem` | [evalsTo_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/evalsto-cons.md) | 182 | `result-track:da022d42ef8ac2a2534927cfd5db1e2cc52ec5df8692acc5e702191a345239ba` |
| 32 | `theorem` | [evalsTo_total](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawsNamespacedPublic.lean/declarations/evalsto-total.md) | 185 | `result-track:d670cc3bb4a3adb92e139a60f181a91a97056dc3c7548b26bf3890bb6b97bc79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c6641f52a28c29775b787efcdd96ee0cd930d0a17a7164415be6fd7cc6ae2db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
