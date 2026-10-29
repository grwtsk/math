# Verification target: Elliptic Divisibility Sequence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb14bce94feda3db5bdcc8e47376d5db46668bc",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb14bce94feda3db5bdcc8e47376d5db46668bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.EvenOddRec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEllSequence](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isellsequence.md) | 82 | `declaration-track:718eeca91887565c8d4492b96af175e66233cdf0718599a6eb9678aac15743bd` |
| 2 | `def` | [IsDivSequence](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isdivsequence.md) | 87 | `declaration-track:636426633cf080228c4be2fca9469f5e9e5a715f15ab26646bfa19994a06969d` |
| 3 | `def` | [IsEllDivSequence](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/iselldivsequence.md) | 91 | `declaration-track:b3fd5c148dda994470def68cb0ce388c7fc50eb2fee2bb8669ba61fd04af647b` |
| 4 | `lemma` | [isEllSequence_id](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isellsequence-id.md) | 94 | `result-track:11fdc3942e3b84a5efe72abbefca6636f2cc674e01eb4c191ca342f4309f4513` |
| 5 | `lemma` | [isDivSequence_id](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isdivsequence-id.md) | 97 | `result-track:07016d93b654bce98dacbac5e88d73abd1d541e7f25ea5908f1cece6279bb907` |
| 6 | `theorem` | [isEllDivSequence_id](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/iselldivsequence-id.md) | 101 | `result-track:9288828a467fb59f332e42cf6fec70002179d7ff8c030d4c7cb2cc00e79938e7` |
| 7 | `lemma` | [IsEllSequence.smul](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isellsequence-smul.md) | 106 | `result-track:0300aecd3f984936e3dacd6060b6aa8dd0d58aac48ae682c5674be78e9ceb6f7` |
| 8 | `lemma` | [IsDivSequence.smul](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/isdivsequence-smul.md) | 110 | `result-track:eb8c99f49a57afba889d3a9e5828e3fbbaba83cc0793af919b45163ccd2b5f9a` |
| 9 | `lemma` | [IsEllDivSequence.smul](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/iselldivsequence-smul.md) | 113 | `result-track:822133f9b73f634bc59919dfe87329d384c8be53356de05fdc95e48567d6bf36` |
| 10 | `def` | [preNormEDS'](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds.md) | 124 | `declaration-track:604d4151068074d52abd21c5e7d544298c95d03cc374e6d6b3fd7d49cdd01b77` |
| 11 | `lemma` | [preNormEDS'_zero](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-zero-source-edition-2.md) | 141 | `result-track:accf3df760fcbcec5be536c98ddc0ce8263119e2553e273ecaeeb34dd659fafa` |
| 12 | `lemma` | [preNormEDS'_one](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-one.md) | 145 | `result-track:9955c23a53db4cb318736efc360d419e3a80e935ae2aff80b35b3f3a97ad8977` |
| 13 | `lemma` | [preNormEDS'_two](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-two-source-edition-2.md) | 149 | `result-track:fc8de9859c42548e7f121535e077282e645490f6ddf68a5eac808e772df99813` |
| 14 | `lemma` | [preNormEDS'_three](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-three-source-edition-2.md) | 153 | `result-track:bf3fd5923c7cf7a2e1cef9c350d242ab663fb0036e3aa3ca5cfc2a293ed4fcc5` |
| 15 | `lemma` | [preNormEDS'_four](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-four-source-edition-2.md) | 157 | `result-track:dd493002789fc1844b86b8e164b625c045e3c9389bd62f1f20f671c87beea4fb` |
| 16 | `lemma` | [preNormEDS'_even](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-even.md) | 160 | `result-track:9c9c7f45539adee59826f12d748ab27519e6e53a8118ac6a26e8b438d6e600ef` |
| 17 | `lemma` | [preNormEDS'_odd](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-odd.md) | 166 | `result-track:4744cd9761064eb9e0f9f9f890eb427a472ebb8972a95c4c3592cad6bbe962d6` |
| 18 | `def` | [preNormEDS](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-source-edition-2.md) | 176 | `declaration-track:fa5d7fafc7dc8b08333ccebcb418a6065dbf28f1fc3db0b23ee995f787ac7f85` |
| 19 | `lemma` | [preNormEDS_ofNat](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-ofnat.md) | 180 | `result-track:315160ad72eab42ca461cd46a62811ba484ee265f69fc3377a6dab57e5fff51b` |
| 20 | `lemma` | [preNormEDS_zero](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-zero.md) | 186 | `result-track:91f60b125084b1c563e252cbc8cb707eec8f6cc7f903a9f288cc419afbf819cf` |
| 21 | `lemma` | [preNormEDS_one](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-one-source-edition-2.md) | 190 | `result-track:c1ac8dede8a0723ecb668526e8cc777c99045e751354342a8d0ab8f40fef7808` |
| 22 | `lemma` | [preNormEDS_two](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-two.md) | 194 | `result-track:514fd6d000807dbbfa44afa763ad8cac871062f8a475a6217eb9948eab1a6d7e` |
| 23 | `lemma` | [preNormEDS_three](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-three.md) | 198 | `result-track:bd910ee9bed4ab0aebdd05fc7f1395ab49cbcd3fb59b408ce478cdab011d466a` |
| 24 | `lemma` | [preNormEDS_four](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-four.md) | 202 | `result-track:d42b24a40ebf1967cf919403acfd743d0763565ecd7117871f28c0272684de11` |
| 25 | `lemma` | [preNormEDS_neg](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-neg.md) | 206 | `result-track:d9ffeb00bb55a638ac223a7c76d16169849713d1af471f7e36c791db429611c5` |
| 26 | `lemma` | [preNormEDS_even](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-even-source-edition-2.md) | 209 | `result-track:afbd05658931dd7c1aca53938fb149e284edae97a62a657fe9597e6f455a2a43` |
| 27 | `lemma` | [preNormEDS_odd](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/prenormeds-odd-source-edition-2.md) | 226 | `result-track:589e6f7bc1a066ea40b6502e3e869b4c64a9d4d57387a4eccfcee59f2977fbdb` |
| 28 | `def` | [normEDS](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds.md) | 254 | `declaration-track:218ba91290d923172452cd9c3213b7f0c6565ecc35e32e44e35dff11f60c1d06` |
| 29 | `lemma` | [normEDS_ofNat](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-ofnat.md) | 258 | `result-track:54b437561a1e4154f8add14e174b6e1baeaef7464c65ed8690f0f9f504d71fd9` |
| 30 | `lemma` | [normEDS_zero](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-zero.md) | 263 | `result-track:623e44c2437aa3e3dff4f0a1d28657725d6ee05d8789749c3f70bd1d12a4c318` |
| 31 | `lemma` | [normEDS_one](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-one.md) | 267 | `result-track:1c65fe65ed090b06950541acaa27f5e470e686886233439fc74101d6c2f90d13` |
| 32 | `lemma` | [normEDS_two](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-two.md) | 271 | `result-track:76e1d899c271302934458f0322225c51155cca1aaa625533343b5596d0462c95` |
| 33 | `lemma` | [normEDS_three](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-three.md) | 275 | `result-track:6f3d5b8508144c3a988a763e760f3f4b56ba5c43c50790ca803dd79b0e70537c` |
| 34 | `lemma` | [normEDS_four](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-four.md) | 279 | `result-track:22d32a3727dab2d97b4a3ca9c6fdd2c58eeeada0cfcebe179faa9cee047fd9ad` |
| 35 | `lemma` | [normEDS_neg](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-neg.md) | 283 | `result-track:38dc1bc38294f6c763063e935fb5734645a251aaeaf54ab32a1aacd147639747` |
| 36 | `lemma` | [normEDS_even](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-even.md) | 286 | `result-track:2ad94c5434c748cf740a57604775a59cc7f76146d53603f722d34c8f6350667b` |
| 37 | `lemma` | [normEDS_odd](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normeds-odd.md) | 295 | `result-track:1a2c63d20005ddbafdfa15a5e3b3702343dd03eed529a6e9024738ca1919a5ba` |
| 38 | `def` | [normEDSRec'](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normedsrec-source-edition-2.md) | 310 | `declaration-track:aa977d50c766e2c16208f0f00ad298c8c4c20d582bc07f2923960ae42063ce96` |
| 39 | `def` | [normEDSRec](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/normedsrec.md) | 325 | `declaration-track:516eb045993af3b88fc033d6af4f088ad72a51c518bf81aa79cbaa094e5d54ba` |
| 40 | `lemma` | [map_preNormEDS'](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/map-prenormeds.md) | 340 | `result-track:42e951ec8d921a6029ad79889f6302140ffed4327bbc839eeb34321c7ea419dd` |
| 41 | `lemma` | [map_preNormEDS](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/map-prenormeds-source-edition-2.md) | 352 | `result-track:a2db85f22035149bb28292c3903a8c4b658824f42cfebf75eebc9f7fe9255705` |
| 42 | `lemma` | [map_normEDS](../../../../NumberTheory/EllipticDivisibilitySequenceNamespaced.lean/declarations/map-normeds.md) | 356 | `result-track:2886ec35b043dc91aed84166784dceddb7c8cce95300a48be27b231454b85631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c337298d4794e0c4e88b9a097fd766de32ca4b5435fe1d9dc2fa71070bc7000 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticDivisibilitySequence/Variant1f6e0afb444a290e92d1c8a65cbc5e198e8e40deacb40ca57c487d4c00a1731e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
