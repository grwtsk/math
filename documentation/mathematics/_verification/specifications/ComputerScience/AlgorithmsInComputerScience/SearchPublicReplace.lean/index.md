# Verification target: Search Public Replace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7675ad98e0633ebde38c3f0a5a722bedd2c649f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant3ab6a3903cb4532e0f5b8b1ce157dfa6f4b291497239179d311d3717a5f33d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7675ad98e0633ebde38c3f0a5a722bedd2c649f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant3ab6a3903cb4532e0f5b8b1ce157dfa6f4b291497239179d311d3717a5f33d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant3ab6a3903cb4532e0f5b8b1ce157dfa6f4b291497239179d311d3717a5f33d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers.Collect` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replace](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/replace.md) | 51 | `declaration-track:5145a8ece1347cdc318db88dd6a6a1ce6b9a57f7f46250a54051eefb5c2989a8` |
| 2 | `def` | [Slice.Pos.find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/slice-pos-find.md) | 66 | `declaration-track:96797b1412c0e9bf917a220ec14b717ab8f7867eed9a6ef7b980b09aee072a93` |
| 3 | `def` | [Slice.Pos.find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/slice-pos-find-source-edition-2.md) | 81 | `declaration-track:f0cef8af3ae49e7e5f8b162531b94a25a98482f4b057e91ea8fe23dfb1924b1e` |
| 4 | `def` | [Pos.find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/pos-find-source-edition-2.md) | 96 | `declaration-track:d9e96505aa9cdfb5d67f7edd1d0d31f980b9a165d959d37dcc386a16ce8ad7bc` |
| 5 | `def` | [Pos.find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/pos-find.md) | 111 | `declaration-track:471f319615b738ca0d4073215e58812051eb183e94076a8db974e3071c966f6e` |
| 6 | `def` | [find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/find-source-edition-2.md) | 127 | `declaration-track:93e3d6b284560c141f293304ba6ebcbabbe6eeb3bee42cf36f522791e9a83568` |
| 7 | `def` | [find](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/find.md) | 142 | `declaration-track:1ead82160a769740dfdcfd726bef72252a8b8a30a00aec57ee6826baa867aa44` |
| 8 | `def` | [Slice.Pos.revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/slice-pos-revfind.md) | 158 | `declaration-track:88599f90c91b8257375ec2cdb91ec372034daf557585ed4e13f446f756933eec` |
| 9 | `def` | [Pos.revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/pos-revfind.md) | 174 | `declaration-track:65f2b779c005862424e0005a6c0b8238bf2c77132b56698e06a478fa42fc745f` |
| 10 | `def` | [revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/revfind-source-edition-2.md) | 191 | `declaration-track:efc17d1eac46b0edcebd0339b78abd7ddba462f15b597237da09b69e81bedea3` |
| 11 | `def` | [Internal.posOfImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/internal-posofimpl.md) | 195 | `declaration-track:5b91cc4b3334df5ec8a099213b126b1989c4406fd89803e8eaf9750dd9961f03` |
| 12 | `def` | [findAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/findaux.md) | 199 | `declaration-track:7349872bb8936d7041ad67a6afeac5badd533ad39e612fc8e3ce1a0c6b030137` |
| 13 | `def` | [posOfAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/posofaux.md) | 206 | `declaration-track:3ad44277c02225a094b9c9279e1c1fd7408bd62e101b85240f495095c02826f8` |
| 14 | `def` | [posOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/posof.md) | 213 | `declaration-track:e04e7c2d032563e10c211558dddbb1f5a63203b2cce37a4c37184f946a6bfdaa` |
| 15 | `def` | [revPosOfAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/revposofaux.md) | 217 | `declaration-track:7c8f52a24c9a2c1ed0a20690ac9eb32f0654a37218ba128e606b82164e242c33` |
| 16 | `def` | [revPosOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/revposof.md) | 221 | `declaration-track:7b1d2c57fe1ca3b3e110829bf34b301ef402add5e198b2cbc1ffb8f335e81d52` |
| 17 | `def` | [revFindAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/revfindaux.md) | 225 | `declaration-track:6a771ee8ed3b7bcdb1ab9816f699cbedbe6e91c2bd546a6e103ac5c0e6630999` |
| 18 | `def` | [revFind](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/revfind.md) | 229 | `declaration-track:04bad2b1c2321b28da8f232f65c950be423092a60d43e76f8804b54b1cb81ab8` |
| 19 | `def` | [findLineStart](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/findlinestart.md) | 239 | `declaration-track:ba718e475279393fffc283164a5f322516eb5e86bdf4a3212bafc16beadfb92e` |
| 20 | `def` | [split](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/split.md) | 258 | `declaration-track:41e65bb381c0770428fed6c986f913742a9a0a1ae18b48fd62dde3419fb44253` |
| 21 | `def` | [splitInclusive](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/splitinclusive.md) | 274 | `declaration-track:5f8bc82f1cf91a756d504a563b8a7c2da242dd89b4c59464fbc3121c837b9b11` |
| 22 | `def` | [foldlAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/foldlaux.md) | 278 | `declaration-track:6deb3dda985967777ab2dd812fe9a3b0559ede78045f4c037d8505dc255973ce` |
| 23 | `def` | [foldrAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/foldraux.md) | 282 | `declaration-track:16ee51ca395818b54c021193a20723cb5f3f6e5c77a6cc65486e3f5c1911d342` |
| 24 | `def` | [anyAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/anyaux.md) | 286 | `declaration-track:71e7143c9243f35e8740cc7d3ff572793d5910c218d1a13da8626f9c26d159ed` |
| 25 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/contains.md) | 300 | `declaration-track:49560f3e7ba710d3017fe540a0fd54cc4df7b6b3c98b1ca22daceb14cadb2223` |
| 26 | `def` | [Internal.containsImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/internal-containsimpl.md) | 304 | `declaration-track:499d8061d2e2dc5df8e20e92c57b63ecd243bf13b2fa7dc668d699a9a8944985` |
| 27 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/any.md) | 307 | `declaration-track:fb236f46f563cfa7e20deba013b03f8355052f97d62d98fdfc43a60c3043cd70` |
| 28 | `def` | [Internal.anyImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/internal-anyimpl.md) | 311 | `declaration-track:a7ac1be0cb099c4976496bc00f8d2b0816b54e6f260a131f126f8b86652639c1` |
| 29 | `def` | [isNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/isnat.md) | 334 | `declaration-track:cc600573ee1700f38e5a0e0625c0554faf225c9270da943ae1ac2262cd2a1a5e` |
| 30 | `def` | [toNat?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/tonat.md) | 358 | `declaration-track:88c00e51f7ca3b885708f20c62a947fcfb3c633b2fb13e42da2daeffd92dd85a` |
| 31 | `def` | [toNat!](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/tonat-source-edition-2.md) | 376 | `declaration-track:b9b831cbc64e3259260da6a3944a0c178c8b0d32cf4a8ded56ecd00bf1528afc` |
| 32 | `def` | [toInt?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/toint-source-edition-2.md) | 402 | `declaration-track:c500140b27c2f9b756c9679e6dd93e32e3f95b389cc3b9681735909ff55eeed8` |
| 33 | `def` | [isInt](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/isint.md) | 427 | `declaration-track:cf102a4634bfa84d638a2db7700403b6ba6aaba64c796a781ad31195ff974e87` |
| 34 | `def` | [toInt!](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/toint.md) | 447 | `declaration-track:1d40aab5b9b2089fa3778d4e4c186f7ae6627f2e152e6de308dfb137da258290` |
| 35 | `def` | [front?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/front.md) | 459 | `declaration-track:0c99003c08d77e7b17a6759bfe49bba820617ce4801538826c618f19f8c449cd` |
| 36 | `def` | [front](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/front-source-edition-2.md) | 469 | `declaration-track:de9c1b7aaf2c91ec463f6ded0f5f8fb6c7f2c9ec8b504373ba034946f50c59c6` |
| 37 | `def` | [Internal.frontImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/internal-frontimpl.md) | 473 | `declaration-track:a38be3f5aa5318c7c5ab338e7f2c264e78a3031dbe674c9631a2a5d4bfc872b8` |
| 38 | `def` | [back?](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/back-source-edition-2.md) | 484 | `declaration-track:c46b3902fc655b4ae0283ccc4659b6e536d6fa7ea060304cd77a73532484479f` |
| 39 | `def` | [back](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/back.md) | 495 | `declaration-track:5f1203b3a5156897d18e7ccc59f8f7c1b5a23bc028478113b0f71cc661f92db0` |
| 40 | `def` | [lines](../../../../../ComputerScience/AlgorithmsInComputerScience/SearchPublicReplace.lean/declarations/lines.md) | 507 | `declaration-track:c703bd8ffcf380e3b3c1d3d153184532264220dafa90b96cbe8b0389ba570a7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a894da78437d0e085cd968fb35d3bac59da22622aa410c9d4fbbfe8ffd40393a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant3ab6a3903cb4532e0f5b8b1ce157dfa6f4b291497239179d311d3717a5f33d06.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variant3ab6a3903cb4532e0f5b8b1ce157dfa6f4b291497239179d311d3717a5f33d06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
