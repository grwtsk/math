# Verification target: Nim Move Left To Left Moves Nim

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be706da18dd7faf237cc3a16e4fa0bf3f87b1373",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be706da18dd7faf237cc3a16e4fa0bf3f87b1373`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Birthday` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Impartial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Nimber.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim.md) | 45 | `declaration-track:bf10781b796173732638a454e89639dfc117e4d9972c454d4ab1cd1de3b378c4` |
| 2 | `theorem` | [nim_def](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-def.md) | 53 | `result-track:9a5052efb950ca9a4a61d92a7f817fe5fd9e389d4c7082dd6dcb2ed08562d59f` |
| 3 | `theorem` | [leftMoves_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/leftmoves-nim.md) | 59 | `result-track:130b1d20e624e656cb5251e519ef4a520923d274c0a30aa9910d2076d860da8c` |
| 4 | `theorem` | [rightMoves_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/rightmoves-nim.md) | 60 | `result-track:774ffd9926d42d73ae6cf7e5b560a7b44e3f2ebc2a0be57511a72f93dc23d396` |
| 5 | `theorem` | [moveLeft_nim_hEq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveleft-nim-heq.md) | 62 | `result-track:401ed38b59da8c5c94ff954924536dac3eb2170783b868fc436a7ea354712897` |
| 6 | `theorem` | [moveRight_nim_hEq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveright-nim-heq.md) | 65 | `result-track:28f89800fd06c1a3a65ff481ce14e0d3a24811b634672529bf43fafebf20629f` |
| 7 | `def` | [toLeftMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/toleftmovesnim.md) | 69 | `declaration-track:68360f69fd9be2321beac2e1735c824f8ad7dba3b62d7f764fcc546669bb2c60` |
| 8 | `def` | [toRightMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/torightmovesnim.md) | 73 | `declaration-track:adc9ae8c02c90cb28e173e7078b95f0462177b3274e554109c92409d9ad927a0` |
| 9 | `theorem` | [toLeftMovesNim_symm_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/toleftmovesnim-symm-lt.md) | 77 | `result-track:44d3e372ed00174eccb87adbff422dc7aa92578f331127ee8b8cbf5188aadae2` |
| 10 | `theorem` | [toRightMovesNim_symm_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/torightmovesnim-symm-lt.md) | 82 | `result-track:3185d57cc61b94378bc511142849531822aa65007d034d82b6eeaf8e61f59af2` |
| 11 | `theorem` | [moveLeft_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveleft-nim.md) | 87 | `result-track:36719b7a97094902e849ba7f2c9460511fcd7b0c7e7a8f83e766bda5bd3df084` |
| 12 | `theorem` | [moveLeft_toLeftMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveleft-toleftmovesnim.md) | 93 | `result-track:9803aba9e5822217359abcd2cd21160b0e5f61feae7b5fa97ff76651cf02d647` |
| 13 | `theorem` | [moveRight_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveright-nim.md) | 98 | `result-track:984fb23501757d3a407853849df0bbeea5ae37f6bfad83376dd170a5e26585ed` |
| 14 | `theorem` | [moveRight_toRightMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/moveright-torightmovesnim.md) | 104 | `result-track:c96af5b6eda82278ea0d2653f8645437dfb65d13e7669fd1a37ca555cf4c446f` |
| 15 | `def` | [leftMovesNimRecOn](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/leftmovesnimrecon.md) | 110 | `declaration-track:9387bec47d3922562a8d8402f2137851448533211a789e8dddc34cd5ad8b2c69` |
| 16 | `def` | [rightMovesNimRecOn](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/rightmovesnimrecon.md) | 116 | `declaration-track:1bc1f6024dc366040d3d6377fd5f87bc2b528f8c019f33dc850c6cce458662a1` |
| 17 | `instance` | [isEmpty_nim_zero_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/isempty-nim-zero-leftmoves.md) | 120 | `declaration-track:186b2ad78d054e0c86b20bf471c781839f2692cd5c77d1e008ec54a496246012` |
| 18 | `instance` | [isEmpty_nim_zero_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/isempty-nim-zero-rightmoves.md) | 124 | `declaration-track:ebe8936e4f98fced990e44bbc373c97e79b634d3a0ff1392586b66eaa61ca59f` |
| 19 | `def` | [nimZeroRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nimzerorelabelling.md) | 129 | `declaration-track:f7d3182676d72d94875b1690fff668ce78016e6fc9a90b6e0244e6616e1cbff0` |
| 20 | `theorem` | [nim_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-zero-equiv.md) | 132 | `result-track:f52800e70f35c15a293ac27d8443076c6588a686aaeaf4b7f0f60dda589e3029` |
| 21 | `instance` | [uniqueNimOneLeftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/uniquenimoneleftmoves.md) | 135 | `declaration-track:7962b597a4f33ef778e575f8aa0406975aee13e7a609ef5792b09eb9c703dc84` |
| 22 | `instance` | [uniqueNimOneRightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/uniquenimonerightmoves.md) | 138 | `declaration-track:b23dfd2cbc784b7a4a8224b62d806ccc8c77c3413a8490fae733f3b016fcb37e` |
| 23 | `theorem` | [default_nim_one_leftMoves_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/default-nim-one-leftmoves-eq.md) | 142 | `result-track:27999f241fc636d261e89acd980d42d2b4386b8a68ea4a78e0043de1b40f5081` |
| 24 | `theorem` | [default_nim_one_rightMoves_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/default-nim-one-rightmoves-eq.md) | 147 | `result-track:362d679127b0bd67bf1024b28a0664053e1288b757d35a1618a0a5b773367f0f` |
| 25 | `theorem` | [toLeftMovesNim_one_symm](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/toleftmovesnim-one-symm.md) | 152 | `result-track:214a3bb4f1062366db051cdffa1b8f9552b6de0eee1743a917732478254ab1c9` |
| 26 | `theorem` | [toRightMovesNim_one_symm](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/torightmovesnim-one-symm.md) | 157 | `result-track:629b3c19f0c714ec6a093729ce3af225ab3ea910bb25e8aab4cadbb6fbc7ed9e` |
| 27 | `theorem` | [nim_one_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-one-moveleft.md) | 161 | `result-track:83ce3f7cb1889f68ce7cf1bee2ec15fcadfb0df90e756678cb1d144cba63ed77` |
| 28 | `theorem` | [nim_one_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-one-moveright.md) | 163 | `result-track:ca5c6d3b7caf7d9c6f8aab6ff11f5ba40142980fc509648d7d0ab910137739bd` |
| 29 | `def` | [nimOneRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nimonerelabelling.md) | 166 | `declaration-track:8f4b5883d2122f6c8582a36337d92f39a9f9dfb5d9a9457ebae5b146bab5033c` |
| 30 | `theorem` | [nim_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-one-equiv.md) | 172 | `result-track:b29554071318fc6923b9d0df7b1535ae2ebf1762baee5c570d291bf7a448de99` |
| 31 | `theorem` | [nim_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-birthday.md) | 176 | `result-track:e556541e461bc8ce867d37aefd794c8974dc0918b2c6689eeb90a8bae2672ef2` |
| 32 | `theorem` | [neg_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/neg-nim.md) | 185 | `result-track:fcadca2b625315b56577ef6226051b9733291184e5bd8c0e3e6fc9abff687704` |
| 33 | `instance` | [impartial_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/impartial-nim.md) | 189 | `declaration-track:23aac9a098e266017c2a06b6dbd9003bf3844393f0628db53ec3d411100e6db0` |
| 34 | `theorem` | [nim_fuzzy_zero_of_ne_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-fuzzy-zero-of-ne-zero.md) | 194 | `result-track:06619cd4189c21a5e8c6a9f4d04a3420e8ff34bc077a64605fa38674b6f640a0` |
| 35 | `theorem` | [nim_add_equiv_zero_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-add-equiv-zero-iff.md) | 200 | `result-track:385e0f710a9b5dff4ae3fd644faad00e60864c7cfdba64e9f5d92b71af466622` |
| 36 | `theorem` | [nim_add_fuzzy_zero_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-add-fuzzy-zero-iff.md) | 212 | `result-track:e320b9653fda1d58973117428027ecc1403f0189d7f4472cabb80b5d3f459d14` |
| 37 | `theorem` | [nim_equiv_iff_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-equiv-iff-eq.md) | 216 | `result-track:28ef0e7337a9be0481b4e38be9273d42087f97e4254f51cd4528b937db710b51` |
| 38 | `def` | [grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue.md) | 227 | `declaration-track:1acf60c1684094e0537599361c1382ffed161287593dc993022f3ff1fbc79cd9` |
| 39 | `theorem` | [grundyValue_eq_sInf_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-eq-sinf-moveleft.md) | 231 | `result-track:8a1c1688c0780ff0a2d79f6114e75a1038657c19a876c11fa37bbbf07fcf1a4b` |
| 40 | `theorem` | [grundyValue_ne_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-ne-moveleft.md) | 235 | `result-track:b7eb828aa6695538dc1474b6aaa5a6b25e860c1b29c42ec482c92d58d00adb28` |
| 41 | `theorem` | [le_grundyValue_of_Iio_subset_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/le-grundyvalue-of-iio-subset-moveleft.md) | 243 | `result-track:5ece600d48b133408953533cd79c96b5e94e579f8c69dbd552653248252ccaef` |
| 42 | `theorem` | [exists_grundyValue_moveLeft_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/exists-grundyvalue-moveleft-of-lt.md) | 249 | `result-track:6f05bd7c00d5100cdea1ca4d27560d3f35d7c613c813bb618aab7bd4f78527a6` |
| 43 | `theorem` | [grundyValue_le_of_forall_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-le-of-forall-moveleft.md) | 255 | `result-track:cbe689a19f2338966d9a0a2a6f7a33f7c983fdf0a40acdc57b0e504c36f6c929` |
| 44 | `theorem` | [equiv_nim_grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/equiv-nim-grundyvalue.md) | 262 | `result-track:aec7355394775e7e9f14b4578a5dacb28cb2223676281bf159ff8ba3174f35b2` |
| 45 | `theorem` | [grundyValue_eq_iff_equiv_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-eq-iff-equiv-nim.md) | 279 | `result-track:b8e7e7dc2847de567b9c0d73ae01b71716b5f582d7ab70327d6c85214c2e586f` |
| 46 | `theorem` | [nim_grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-grundyvalue.md) | 285 | `result-track:7063fa2758518acfcdda878f46c4afdedc97b5b6f9d2906c137d6ecf48fdd463` |
| 47 | `theorem` | [grundyValue_eq_iff_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-eq-iff-equiv.md) | 288 | `result-track:c489487810ffcf4453e3e59a9ba59eb1cd80f8576c545bab366b552c0cca884c` |
| 48 | `theorem` | [grundyValue_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-zero.md) | 293 | `result-track:5b912ee0470d82ca198d10f41a2db23b872e0cb9511cb8e0799e4e50abc427e0` |
| 49 | `theorem` | [grundyValue_iff_equiv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-iff-equiv-zero.md) | 296 | `result-track:e0fb67ff27c2bb4ade7b95e469a06ba2981741777fe86ab36377e7ada58ab622` |
| 50 | `theorem` | [grundyValue_star](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-star.md) | 300 | `result-track:897de198e7e9b08086a19a911bd2443211313d5723676dacfdfa9825a730827d` |
| 51 | `theorem` | [grundyValue_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-neg.md) | 304 | `result-track:f30eb78f6c6c670b602db689655b64c46819c3448248f106864984a4e2eccf1c` |
| 52 | `theorem` | [grundyValue_eq_sInf_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-eq-sinf-moveright.md) | 307 | `result-track:fe12ec5b0e666a73461d15379951e57d5ffef0bb09a6c45a6747e54074eb2428` |
| 53 | `theorem` | [grundyValue_ne_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-ne-moveright.md) | 315 | `result-track:4586d5edc799459946a239f2e3e2dc29ad9f9978a5514b26c6b816d597c42f5f` |
| 54 | `theorem` | [le_grundyValue_of_Iio_subset_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/le-grundyvalue-of-iio-subset-moveright.md) | 319 | `result-track:e0426b4f53d6d6839819b138c431cb77e27d29f13ccd5675f314999709f463cb` |
| 55 | `theorem` | [exists_grundyValue_moveRight_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/exists-grundyvalue-moveright-of-lt.md) | 325 | `result-track:feb81b87e7eda36e3a739f2d48f892f38c986d71fe917eda717d1379fe18745a` |
| 56 | `theorem` | [grundyValue_le_of_forall_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-le-of-forall-moveright.md) | 332 | `result-track:a5a45b8e26477930b950192191a7f0461bb0daf648445eb082d8fb165059ecf0` |
| 57 | `theorem` | [grundyValue_nim_add_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-nim-add-nim.md) | 338 | `result-track:6b5265bfe239e56555057c9c5ff79e3fb9495b32bfabc17a7cfa6a0f15cf5afc` |
| 58 | `theorem` | [nim_add_nim_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/nim-add-nim-equiv.md) | 354 | `result-track:52838cab4cf9f050adc3184d7d1b051ee605bd1520aeec6135319769ee3b394a` |
| 59 | `theorem` | [grundyValue_add](../../../../../MathematicalLogicAndFoundations/SetTheory/NimMoveLeftToLeftMovesNim.lean/declarations/grundyvalue-add.md) | 359 | `result-track:53c46f71c47a1daeb8b16707ba3a6cddf153a4ad03d3734fe5872e916ac9fe0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcb9598db28cb81ec1a58ab6d255b30467cb16a06dfbcae375f6a1118590f0f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant665c5234be738e1b587e21afe48812c69701b47efb973a74957e721ee9945cff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
