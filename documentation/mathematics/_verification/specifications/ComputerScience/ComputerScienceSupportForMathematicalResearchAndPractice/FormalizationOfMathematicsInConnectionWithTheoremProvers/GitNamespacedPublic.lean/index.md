# Verification target: Git Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6088b214c5764c56a0a3317570f200398fb10ad",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Git/Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6088b214c5764c56a0a3317570f200398fb10ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Git/Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Git/Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Util.String` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defaultRemote](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/defaultremote.md) | 28 | `declaration-track:066316bd614b007ca76ad7b1f5ac7ac269483a2832e7ceda2dc750066191e54b` |
| 2 | `def` | [upstreamBranch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/upstreambranch.md) | 31 | `declaration-track:7527a548c35da90a17c295dce8b637a66de47e47497b1b2d5dba23e959005236` |
| 3 | `def` | [filterUrl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/filterurl.md) | 39 | `declaration-track:e3fa9fda2797fd5dfd7a339859522d36ddf1e45051bf728f35d6aef7c617f711` |
| 4 | `def` | [isFullObjectName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/isfullobjectname.md) | 47 | `declaration-track:ff0bd62fb1fc127585f9bcfb86193c27dd57a5e8e38f5e343f92db659e95fc23` |
| 5 | `structure` | [GitRepo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/gitrepo.md) | 52 | `declaration-track:d7aab0f7118256db722119f11a0cff23dde2f36d96365d4b3c18cda1f3a07a09` |
| 6 | `abbrev` | [GitRev](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/gitrev.md) | 63 | `declaration-track:b6f00cdb56f0869e7af792def6907b1fac93ec1e0d86161395754c7b660112e6` |
| 7 | `def` | [head](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/head.md) | 68 | `declaration-track:b0db418e46c859b7b3de48009d34e0a40de7c325625c9a020e4b659efcde700d` |
| 8 | `def` | [fetchHead](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/fetchhead.md) | 71 | `declaration-track:b05e46a400bfa817c0df321fac6bd2867b133802523bdd512e73efaeff244c26` |
| 9 | `def` | [isFullSha1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/isfullsha1.md) | 74 | `declaration-track:3d8ef535bea147d09ea864caef9fdb3769a5ded5358a41f60c39afa783e969cb` |
| 10 | `def` | [withRemote](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/withremote.md) | 80 | `declaration-track:4fbc29015afe30191441de3ade670a873713fa2fd4eabfa76462770d05275363` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/instance.md) | 87 | `declaration-track:5f40cc68b27ca3d6b1a2781090c2032646c35d3873c637166bc07531266be6cb` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:9ee7e47d6e57487b11fb3420c673601a9cc93af432b4a94c325202cf5d70f754` |
| 13 | `def` | [cwd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/cwd.md) | 90 | `declaration-track:c867e636d8a1c10431188648ecfaebb8dac3eec1c333c5de1a4581511f394b64` |
| 14 | `def` | [dirExists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/direxists.md) | 92 | `declaration-track:280320455c12c5c6b033a1e17e9204499ab8a5db6e163fd34af889e9adce3164` |
| 15 | `def` | [captureGit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/capturegit-source-edition-2.md) | 95 | `declaration-track:e08774b50a075a35f0a6f5544f65af803548983861f54d962a2e115854cb4be9` |
| 16 | `def` | [captureGit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/capturegit.md) | 98 | `declaration-track:b13b61ce911eadc703ba31606fa84b13c4b4a671bc851a3c02d6579e58bea160` |
| 17 | `def` | [execGit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/execgit.md) | 101 | `declaration-track:2081b450aa54127bdd144e032fe9376ed6ae8ea7dc0839f198b4b6eb3871b412` |
| 18 | `def` | [testGit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/testgit.md) | 104 | `declaration-track:15f7dbc9e57dcbf68a81a11d86d70b1e8ad549b55c304ab4daca7d00c02b9b19` |
| 19 | `def` | [clone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/clone.md) | 107 | `declaration-track:87824f8dbb3c486017603d19711367123aa2fd3d669b3de94803245d04b451c4` |
| 20 | `def` | [quietInit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/quietinit.md) | 110 | `declaration-track:e2e84aa9b6c23d4eab40823c328d091630c976ba81bcfa43ba69ca1e93f5fc90` |
| 21 | `def` | [bareInit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/bareinit.md) | 113 | `declaration-track:ebf127b9399b723fa7caa4d5494997dcda093e9812b767c0fd18f7904926cf1f` |
| 22 | `def` | [insideWorkTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/insideworktree.md) | 116 | `declaration-track:7172b6688c08f3b7ba23d3079f9747f5523ea5d301076dec835ac0ea956dbfb2` |
| 23 | `def` | [fetch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/fetch.md) | 119 | `declaration-track:22cdd5d20c5405d177335b99631f8a06bda6fbdea65f7022680adf288d560413` |
| 24 | `def` | [addWorktreeDetach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/addworktreedetach.md) | 122 | `declaration-track:47f6f647ce0adaeea2166e7c687500339e2f447c890cac9b3d763f0bf7c46eba` |
| 25 | `def` | [checkoutBranch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/checkoutbranch.md) | 125 | `declaration-track:1882e05bcc8e821a684964e7ba32816f2a7c1b09787967fed56d98866f137ceb` |
| 26 | `def` | [checkoutDetach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/checkoutdetach.md) | 128 | `declaration-track:c20713befbff75dcb4af4d7d1ffcc570786160ebaeb19ad6401d9079729935cf` |
| 27 | `def` | [clean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/clean.md) | 132 | `declaration-track:4341731a92524d01cd338e3e753f5da04a2f17cd78e4731d267bd458ed1fc61d` |
| 28 | `def` | [resolveRevision?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/resolverevision-source-edition-2.md) | 136 | `declaration-track:ca681927edae538e9fbe294a6db96e70214378b006d0cbca3e904957fa90ce0f` |
| 29 | `def` | [findCommit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/findcommit.md) | 140 | `declaration-track:3e1110a1cac7aad7501add30ee4c7db4f50df9efe4781acb38cafe7e990a8867` |
| 30 | `def` | [resolveRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/resolverevision.md) | 143 | `declaration-track:07500e5e0e815962078b1bdd833d47085d2c867d41ed8cd0dec973d41438b12b` |
| 31 | `def` | [getHeadRevision?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/getheadrevision.md) | 148 | `declaration-track:53a1496b76c96b857b690cb50a3be613ca7f49af95d34c8c6950551039645fbc` |
| 32 | `def` | [getHeadRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/getheadrevision-source-edition-2.md) | 151 | `declaration-track:6bde930ac7380bdb6fd3fa5674510e2a9ad224262630701619eb42b8b57f1594` |
| 33 | `def` | [fetchRevision?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/fetchrevision.md) | 156 | `declaration-track:291421932a4d9938bd7336fd2438e4031cc03aea52b79381079711e19cca614d` |
| 34 | `def` | [getHeadRevisions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/getheadrevisions.md) | 165 | `declaration-track:a756567204571bcbe9994b31e19c03207e4b7bdcc3f72b44c0b8f2a2a756f656` |
| 35 | `def` | [resolveRemoteRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/resolveremoterevision.md) | 171 | `declaration-track:e88d5ec53cd0f4481f3812e18fa7a5bb8a5a714925e58c0361ac17c4726aecea` |
| 36 | `def` | [findRemoteRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/findremoterevision.md) | 177 | `declaration-track:d8b421297901908569f5bc8d97a602596d365fda34292f60e70f9f4e190f8e5c` |
| 37 | `def` | [branchExists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/branchexists.md) | 180 | `declaration-track:ae52358282fa4c2596bdbcafb53331a7bf6746ca85e14d2858086a06a28b05a9` |
| 38 | `def` | [revisionExists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/revisionexists.md) | 183 | `declaration-track:02935780280e1e6262753cf538a62c196a42e347a9c175adb9aa5ce00cbeaad6` |
| 39 | `def` | [getTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/gettags.md) | 186 | `declaration-track:e6b8e99fe0a795b92861957370ce744e8f58159d6498ea9971e968ad43468b92` |
| 40 | `def` | [findTag?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/findtag.md) | 190 | `declaration-track:a9a7ca9886e03f854e72327daa83dfbc9f7d417f3c5d2a1baaabe830af048b1d` |
| 41 | `def` | [getRemoteUrl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/getremoteurl.md) | 193 | `declaration-track:06b8ce1d27703eebb6a72076afaf397861b7b71256d90c2030a5095d439a96f3` |
| 42 | `def` | [addRemote](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/addremote.md) | 197 | `declaration-track:cc05cdf6a18502cc723507c7b24b4c9d1d535f33bdb7dabd3f9ddb97f57bba8b` |
| 43 | `def` | [setRemoteUrl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/setremoteurl.md) | 200 | `declaration-track:ab49d5e31f6896085177fe09cf273245c738d933c7d7b002a3205d58e0e5fbbd` |
| 44 | `def` | [getFilteredRemoteUrl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/getfilteredremoteurl.md) | 203 | `declaration-track:4ab653642fbf42adfc97031e988a91ffd66a7ffb73e88b3001688f3a70324011` |
| 45 | `def` | [hasNoDiff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/hasnodiff.md) | 207 | `declaration-track:0579d8aaa3677f75925570db41b3519652ce6007aded55e298b54e5904060485` |
| 46 | `def` | [hasDiff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/GitNamespacedPublic.lean/declarations/hasdiff.md) | 210 | `declaration-track:833a14f565f312bf567bb040437dd44c3232553d16ff3a0ee27eb4541cc5d9e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93a1a5317c595e53452f7d2f03b77715230320805e17803e2fa53fcc7cec4a71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Git/Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Git/Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
