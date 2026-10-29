# Verification target: Search Namespaced Public Replace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "320148c14e4a757cf0d21c4109c34818293bc55d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `320148c14e4a757cf0d21c4109c34818293bc55d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers.Collect` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replace](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/replace.md) | 59 | `declaration-track:512330d9891c0630d2122db49dcc9592a9ede8d7354e7cd3c5dfea45309230de` |
| 2 | `def` | [Slice.Pos.find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/slice-pos-find-source-edition-2.md) | 74 | `declaration-track:b07e503e8079118a416a360c1e292695f89beacf2bdd09b4b184dad3eb11f924` |
| 3 | `def` | [Slice.Pos.find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/slice-pos-find.md) | 89 | `declaration-track:4985b4984eaba105098a1b07164f85b12cbb6a3112de568871310938b5eee101` |
| 4 | `def` | [Pos.find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/pos-find.md) | 104 | `declaration-track:4aee9173690f01ce5bf40fabb4eb258d63f1c175a68faa70e77da71d857b0ab2` |
| 5 | `def` | [Pos.find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/pos-find-source-edition-2.md) | 119 | `declaration-track:f75c3b9f78eb6aec3566b3ccf65553178b528cc00ff257e671f9b7f13eb89dec` |
| 6 | `def` | [find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/find-source-edition-2.md) | 135 | `declaration-track:b9760f7a5ef5bf9c610731fed716df51d85cf7c2a2c9c404cc8157dd470f7c64` |
| 7 | `def` | [find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/find.md) | 150 | `declaration-track:8f5bf669c5ef5fa8deb273b4542171c2edf1f5703a3089117b3b7d9117f787d0` |
| 8 | `def` | [Slice.Pos.revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/slice-pos-revfind.md) | 166 | `declaration-track:a5524d6757e3f011263f8a05f9b213aa24ceae1fa0552c09c099f399b35c87ff` |
| 9 | `def` | [Pos.revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/pos-revfind.md) | 182 | `declaration-track:c6bd819de6ca99f63564187f48eaa79f3c500e010f6e1bf7919c6949948cce19` |
| 10 | `def` | [revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/revfind.md) | 199 | `declaration-track:33b3302e96c8db49f2da42b9cce3e216082b5673a82f095fefbdce1f3c5c5bd8` |
| 11 | `def` | [Internal.posOfImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/internal-posofimpl.md) | 203 | `declaration-track:da2f813f553aa7562af2041bdef44c2b4d2815782000996ae80824d2a25f80f3` |
| 12 | `def` | [findAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/findaux.md) | 207 | `declaration-track:22c00227ea0ef39aeec6ae3569185f962fd7e63bbadd3ff2e107d7b87057e821` |
| 13 | `def` | [posOfAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/posofaux.md) | 214 | `declaration-track:ddb68ad7fb8682b068c4e59fd8bff2bc80299750524c248ac4d35bcac26c56cd` |
| 14 | `def` | [posOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/posof.md) | 221 | `declaration-track:d3dcbc09696e88402162ff48b6bb1df686a54cfaddd144b68ddd6502fb3e3fa1` |
| 15 | `def` | [revPosOfAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/revposofaux.md) | 225 | `declaration-track:e455b6d3dcb8c4a1db0de95aec5c8d9ac5f35107d0b34c15e02a4b5ad236f272` |
| 16 | `def` | [revPosOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/revposof.md) | 229 | `declaration-track:68e24b33e3675c4c7e10d48253857e85075fa9054b2d9686896db4f8a05b1714` |
| 17 | `def` | [revFindAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/revfindaux.md) | 233 | `declaration-track:74082b7ae3f0b11853eb7f1ee9f84985cdab2c3453be11a8f6a4c0b2f1f50d8e` |
| 18 | `def` | [revFind](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/revfind-source-edition-2.md) | 237 | `declaration-track:bc4af60567f6fed987c17c11e0e320c6aec735240218df364fd91f34460c2207` |
| 19 | `def` | [findLineStart](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/findlinestart.md) | 247 | `declaration-track:3d3d9794b711dfb8984f5cfbd0249663befe0e4d51886675b12f9c768615ab8c` |
| 20 | `def` | [split](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/split.md) | 266 | `declaration-track:2f96432eabd04ec3670168634638825959d92697fdee6590b4715fecd86d7e93` |
| 21 | `def` | [splitInclusive](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/splitinclusive.md) | 282 | `declaration-track:aff3ee62bc78958c64ae075cf9c3afd91e1346a9c90e5549ce5933ab73dcb38b` |
| 22 | `def` | [foldlAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/foldlaux.md) | 286 | `declaration-track:aa2aa26340ab4c33b936e17a9bf626451e2ab83b961326808a75fcf6a41607cc` |
| 23 | `def` | [foldrAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/foldraux.md) | 290 | `declaration-track:3b1e97dbeff26808b0f3d63190815440b02ca3286b515347e3c0d0be095b03a3` |
| 24 | `def` | [anyAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/anyaux.md) | 294 | `declaration-track:e2024ef6e423d15bd6c535341a76415381761324ead23083834c67e21b1e8c0f` |
| 25 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/contains.md) | 308 | `declaration-track:92bde12ce0a7fdbfca6ec60e5e2f197dfc5435cd63337dc42cc7c401b1d6bfe4` |
| 26 | `def` | [Internal.containsImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/internal-containsimpl.md) | 312 | `declaration-track:35e1bd8a7f1ec5528b0ff233d9d06e6938383448974b233f2fd2c6a34eb3c856` |
| 27 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/any.md) | 315 | `declaration-track:a7a5ec42f81a955e23d9aef9c564f25ff380f287cfac4b6b29ff404b7fbb34d4` |
| 28 | `def` | [Internal.anyImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/internal-anyimpl.md) | 319 | `declaration-track:f82c334a4ec7e7770fb26411de0c161f1b972fd2bfbc830b07276e860870cfd4` |
| 29 | `def` | [isNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/isnat.md) | 342 | `declaration-track:0ebe217c93dab4d5dfa102040a0ebc530da137180b1dd2356f072938329f2bfa` |
| 30 | `def` | [toNat?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/tonat.md) | 366 | `declaration-track:469351613af64856bdd6c448b4a7e33bdce6067ce1c2a0e2031b9871cad01212` |
| 31 | `def` | [toNat!](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/tonat-source-edition-2.md) | 384 | `declaration-track:5701171f27814c2a00bcfedeaa8433c9a3d0b81466cb003bb0a2fed4ce7e7af7` |
| 32 | `def` | [toInt?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/toint-source-edition-2.md) | 410 | `declaration-track:fc6c55c752783b859eb49d1a9a0f990f2ce159369cd324bca7734021e14e8b32` |
| 33 | `def` | [isInt](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/isint.md) | 435 | `declaration-track:2c62525e9381cfb92e4fdd617fb6a2640980b41dfa5b735cf22f06a5cf653007` |
| 34 | `def` | [toInt!](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/toint.md) | 455 | `declaration-track:e7c8b72f6b6c09df9c81cde8a9ff5407badfe69c5a795ce6f9a43f3e9849b9ca` |
| 35 | `def` | [front?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/front-source-edition-2.md) | 467 | `declaration-track:f865dbf0d9f4ebeefd0805d5dacb060af97230e64c88524d9999d8c17815e3e2` |
| 36 | `def` | [front](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/front.md) | 477 | `declaration-track:91ca31c6a96a02c29f1242e6fda8d9fb279c3adde7fea1ab04efaffd996c0a18` |
| 37 | `def` | [Internal.frontImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/internal-frontimpl.md) | 481 | `declaration-track:b57eefb3edcfde4b74dfd2fff314e143051a85d4b4c28d8628a47750950cb3a4` |
| 38 | `def` | [back?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/back.md) | 492 | `declaration-track:4ab29ed218b01290d95405222474f4f0d93c4bd33e606353322dbab8aadc5d79` |
| 39 | `def` | [back](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/back-source-edition-2.md) | 503 | `declaration-track:7b6fade374dcc3f14c26d2a91fec8b5d5e8761d5167879ed08ebc01a64303680` |
| 40 | `def` | [lines](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchNamespacedPublicReplace.lean/declarations/lines.md) | 515 | `declaration-track:f75f81e503777d7cb9b3be94c07175022bf79586936487533cc5ea5e7141be3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6799ac005eb90f57becb20ff8a260a07f790eb3c1edd5b9d9bec591f429583c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
