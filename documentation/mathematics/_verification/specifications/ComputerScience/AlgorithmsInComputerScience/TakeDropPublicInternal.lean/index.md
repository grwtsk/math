# Verification target: Take Drop Public Internal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55ab71e52840d7b1aabb912149e952207b33104",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55ab71e52840d7b1aabb912149e952207b33104`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean.json)

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
| 1 | `def` | [drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/drop.md) | 42 | `declaration-track:8033edc8331a0287ad182f5b1c57566619adfe1782c779f966977a8f9d8a583e` |
| 2 | `def` | [Internal.dropImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/internal-dropimpl.md) | 46 | `declaration-track:4240ce8fbe72262cb0b51c849071963049b332da0f150195a3e83019ecda3e0e` |
| 3 | `def` | [dropEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropend.md) | 64 | `declaration-track:c5c2bbf4ddc6c18660cf47e7794da668f88b7159b444582c22e47f944a439b0c` |
| 4 | `def` | [dropRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropright.md) | 68 | `declaration-track:b398dd0acbf56f549185d1c752bc49631c89294646b9fb49b87c0ede72dbb9f4` |
| 5 | `def` | [Slice.dropRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-dropright.md) | 72 | `declaration-track:443fffd26ddd8a04b2477de5ecb6355f06227c1fde2dff9aa52618671b6f4022` |
| 6 | `def` | [Internal.dropRightImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/internal-droprightimpl.md) | 76 | `declaration-track:2301a1e6723bbef698db0b057e3249dd4677f8947b9023a884e0e00bfbc32022` |
| 7 | `def` | [take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/take.md) | 95 | `declaration-track:3ee45bfd34284ad0852bf4f80ed92e9b13d806659e598958f1f2429794193d04` |
| 8 | `def` | [takeEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/takeend.md) | 114 | `declaration-track:1d5c6da8ee556d66c3557d9b226659b7f605658e4f9be202da8c7e463d580dab` |
| 9 | `def` | [takeRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/takeright.md) | 118 | `declaration-track:a45d40da888c22d70597ba875114e4f0bf5bc2ae8adbd4bc4fb5cca99da25342` |
| 10 | `def` | [Slice.takeRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-takeright.md) | 122 | `declaration-track:41f3daacb3b35b2bb973e4c1e54093fc30add03eacf7fad23c0f15e760f5681e` |
| 11 | `def` | [takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/takewhile.md) | 140 | `declaration-track:609aa4a4c5ce40586ba397ff226d17b4a28215ad8d7e3dabee16977d6715df61` |
| 12 | `def` | [dropWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropwhile.md) | 158 | `declaration-track:e9fa1f9f64c72a462969d990153f8bfd42bd49f6ff9d5748f764d03b531cf4e0` |
| 13 | `def` | [takeEndWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/takeendwhile.md) | 175 | `declaration-track:487fc68caf2b7e6dffb5c33a17ab33c023ea1dcb596bf85111c60436c4e26d6c` |
| 14 | `def` | [takeRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/takerightwhile.md) | 179 | `declaration-track:e64ff6e71c1b904d2e334d398eab2dc642932356b4e11d4eaa20512381cb993c` |
| 15 | `def` | [Slice.takeRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-takerightwhile.md) | 183 | `declaration-track:a6b5c3bdbc70389f3c7f96e9ef98590071581bd73f3113020c91dec41833cfed` |
| 16 | `def` | [dropEndWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropendwhile.md) | 200 | `declaration-track:041deb9d240aca258302367fbbabb80bb133f6adf5d07bd2cf68590eba3ed1e2` |
| 17 | `def` | [dropRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/droprightwhile.md) | 204 | `declaration-track:f447111fa82836a19dc7f20b764f6ed0f393ec4842b24fde9e861375c67b70e3` |
| 18 | `def` | [Slice.dropRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-droprightwhile.md) | 208 | `declaration-track:8f09764ad8fdd120f14b820eb7f12e341389bdce0e2ef0f1d42ea6f2be2dcce6` |
| 19 | `def` | [skipPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/skipprefix.md) | 217 | `declaration-track:56ef906be264a5d16b7feec266f24e01e1ea8edd2b86b7d9c52cde81e9372bba` |
| 20 | `def` | [skipPrefixWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/skipprefixwhile.md) | 224 | `declaration-track:02f377866a28bd78321af1abf352f6cca191f6df60c1e14e25af08d0aee86373` |
| 21 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/all.md) | 241 | `declaration-track:62c5e68a22bad97c936d01e8b59dc3bf49d696252628c0f80e568a08db4ee850` |
| 22 | `def` | [revAll](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/revall.md) | 271 | `declaration-track:e7b5e8be65859bf7095a032ca861a4794b774ea241f93f089adeb420ebbbcdb3` |
| 23 | `def` | [Pos.skip?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-skip.md) | 281 | `declaration-track:dc2d36225fd016b48c76ce9bb349b985cdb507840b74648c4dd3fca138e8e322` |
| 24 | `def` | [Pos.skipWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-skipwhile.md) | 288 | `declaration-track:febe2172a7953160234bd9d946b5f7a649915a518438746cd3c60e506fd71967` |
| 25 | `def` | [startsWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/startswith.md) | 304 | `declaration-track:2aac6acb4890897c6253bd5458c044ce371e7905315c235910fef5be912c68fb` |
| 26 | `def` | [isPrefixOf](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/isprefixof.md) | 319 | `declaration-track:1351aee78c949c930a7c1a0b709de59b70d8b3df789e7a010e47bd68bc93216e` |
| 27 | `def` | [Internal.isPrefixOfImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/internal-isprefixofimpl.md) | 323 | `declaration-track:bf032a491cb0d823ef69e1843d9f060d75386a9284490cad2cc6837c79932bf7` |
| 28 | `def` | [endsWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/endswith.md) | 338 | `declaration-track:407e57ef3ef68f2fe14105eeee9e0b25d70f498395d7ee2f36ede8d88a21f81c` |
| 29 | `def` | [skipSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/skipsuffix.md) | 347 | `declaration-track:b122cd37dd367a7a01a53886bc1f452d4274108bde1a57dec91acadce1195075` |
| 30 | `def` | [skipSuffixWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/skipsuffixwhile.md) | 354 | `declaration-track:e3b4498a755b30ce67daac160aa4189fe339c1270bf2d2b19c7646e0c28c586f` |
| 31 | `def` | [Pos.revSkip?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-revskip.md) | 364 | `declaration-track:17da2b1e1512acb9f005d7475c1181ff0ebd3a2338ddfb44672364726b00a5d9` |
| 32 | `def` | [Pos.revSkipWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-revskipwhile.md) | 371 | `declaration-track:d411d8d8c0e40b9da8f770a9ae7321dedec9506c9b736f7614a34a5b6b9effff` |
| 33 | `def` | [trimAsciiEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trimasciiend.md) | 387 | `declaration-track:fc0ecbef6aa083689f0c581a1ebb5d988bcc622935bdaf16cda97689ddaaddf4` |
| 34 | `def` | [trimRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trimright.md) | 391 | `declaration-track:a39f0687c2087f038edd7be5607556ab0cc560ed44dae5d66c10d6952117f023` |
| 35 | `def` | [Slice.trimRight](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-trimright.md) | 395 | `declaration-track:984ae1ccb4b64435f472188c8da4f8e86590fb6863c4bc13614188faa4a6fe7e` |
| 36 | `def` | [trimAsciiStart](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trimasciistart.md) | 411 | `declaration-track:51f5a88d50d1bc89009d19e6b795f34551a72b38030f69ab0fd0c31f1084a0da` |
| 37 | `def` | [trimLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trimleft.md) | 415 | `declaration-track:a9c924364361d8f5bf46c115e94cfea55412607300ee64740f3fbc7039cc713c` |
| 38 | `def` | [Slice.trimLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-trimleft.md) | 419 | `declaration-track:88c616b650aee19d44bd4f72beb15ce2432c439cefa6170503233975926aa0b9` |
| 39 | `def` | [trimAscii](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trimascii.md) | 434 | `declaration-track:21866e609635e55091088e9f92b78bf280a91e7f1f5557149b288b5d270ff63f` |
| 40 | `def` | [trim](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/trim.md) | 438 | `declaration-track:bba6f5acabeaba37bc8cd2c0f1f2fa94288655f8adfaadf722e7d2cd64856769` |
| 41 | `def` | [Slice.trim](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-trim.md) | 442 | `declaration-track:6114c9d5a9338667bfcb655067a2dff5a721d85a64d41606bbe458857c526e1b` |
| 42 | `def` | [Internal.trimImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/internal-trimimpl.md) | 446 | `declaration-track:20056a2c6ba5d79307a8a6cd6a2f1877c7687ed855d4342e1a562280ee0801b6` |
| 43 | `def` | [Pos.Raw.nextWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-raw-nextwhile.md) | 459 | `declaration-track:e8e8498ad3900b28dcc389bc6aaa51cac6174929bfd26614dd849a570fcba20b` |
| 44 | `abbrev` | [nextWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/nextwhile.md) | 463 | `declaration-track:70ce7d59d7b307937f56f13cbc17825f474ef41b8a957bff4d1ea9c3e00c5f24` |
| 45 | `def` | [Internal.nextWhileImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/internal-nextwhileimpl.md) | 467 | `declaration-track:43a5673711411b4511f75753805c5fdd3d79746cfe8223f44bee7f2482e11277` |
| 46 | `def` | [Pos.Raw.nextUntil](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/pos-raw-nextuntil.md) | 480 | `declaration-track:af6a3b718838cf9c1870db304bbf9730510ede28fd491bc273b7f2650315006e` |
| 47 | `def` | [nextUntil](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/nextuntil.md) | 484 | `declaration-track:265b95f49dfc30837d3b85351b9e2302a24fc1dceecfc64cabfbe75aeda434d9` |
| 48 | `def` | [dropPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropprefix.md) | 504 | `declaration-track:2af5f8b2346d5c4da06a31c2da6a736cee15e230db81600ae513f0a1be211452` |
| 49 | `def` | [dropSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropsuffix-source-edition-2.md) | 524 | `declaration-track:d1ad2471242d127f72195c5e0a16d15b55c5fd3e171a7c388858c51c0bea9c54` |
| 50 | `def` | [dropPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropprefix-source-edition-2.md) | 544 | `declaration-track:4bb742bc11f05bb693e2d1a7db24f90b324c28aa235be85104cba10f09313ab3` |
| 51 | `def` | [stripPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/stripprefix.md) | 548 | `declaration-track:801abe72e6082abf0d8093d7439c3d2a53d306e8d5748620f0c4ccbb68991952` |
| 52 | `def` | [Slice.stripPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-stripprefix.md) | 552 | `declaration-track:72d09df0848f02b2e9b1fdcbf1e4025c2f2b74f87c14946916a8bfa9d29a69e6` |
| 53 | `def` | [dropSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/dropsuffix.md) | 572 | `declaration-track:84d9a8a9a8b41ca33765058cf08df2f32f3dc26de0df2bb78e2eb2d018917c60` |
| 54 | `def` | [stripSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/stripsuffix.md) | 576 | `declaration-track:65c31eba16158ea973e6361182e20377f9fc0790a804791ed3d8200ffb928188` |
| 55 | `def` | [Slice.stripSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropPublicInternal.lean/declarations/slice-stripsuffix.md) | 580 | `declaration-track:b69764d225d5dc76a56d682bb8a6e6f207accac95302c27654c794ffd3c944bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69daf9a910d935a76d58eb52d51d98c2509fd7ebaf8359ec2c46b11bcc60e6ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
