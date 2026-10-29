# Verification target: Jacobson Radical Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd8886c6dcde6371f153731526df6c5c2ba234b3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd8886c6dcde6371f153731526df6c5c2ba234b3`.

Source path: `GRWTSK/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-source-edition-2.md) | 45 | `declaration-track:cda3d1f310b5d3fc9210d29722a5d4053a71b8cf8e18c4798ba040f660390812` |
| 2 | `theorem` | [le_comap_jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/le-comap-jacobson-source-edition-2.md) | 50 | `result-track:be37ac27105b272acf09d5e9b945439bc6d156ee041bfdb98d9b49e1b9602377` |
| 3 | `theorem` | [map_jacobson_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/map-jacobson-le-source-edition-2.md) | 57 | `result-track:6b20a33371090cfffe32aec166e233c8495fcf2849896425fdbb2f7959d24806` |
| 4 | `theorem` | [jacobson_eq_bot_of_injective](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-eq-bot-of-injective.md) | 61 | `result-track:f4d6608c6922e719d2accdcdfdbcfd9504128f64b499dc9e825a8b567180814b` |
| 5 | `theorem` | [map_jacobson_of_ker_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/map-jacobson-of-ker-le-source-edition-2.md) | 68 | `result-track:98f5c204eb5b5adca97f999b07803e925f36520a960c278ab5b80576e3c4384b` |
| 6 | `theorem` | [comap_jacobson_of_ker_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/comap-jacobson-of-ker-le.md) | 76 | `result-track:4d1dcbd7baa43195f40a53d3bc6842f09a1bbc8737aad0537d2c7e405b1167c3` |
| 7 | `theorem` | [map_jacobson_of_bijective](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/map-jacobson-of-bijective.md) | 81 | `result-track:5e9530df4e670f44152d99e3aaadaeccfaa8717fb25f95995b68cfe0e1a6d7e0` |
| 8 | `theorem` | [comap_jacobson_of_bijective](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/comap-jacobson-of-bijective.md) | 85 | `result-track:64b8a1e050ee3d0308ae87769cc91349ff84e70291945b9432bd3c33e6e44d23` |
| 9 | `theorem` | [jacobson_quotient_of_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-quotient-of-le.md) | 89 | `result-track:671dbbd8dba495ed88afb2b44c857529ebfaf185062bc7320a4e92c5eaf225af` |
| 10 | `theorem` | [jacobson_le_of_eq_bot](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-le-of-eq-bot.md) | 93 | `result-track:5bbde0bb1d9ccd5210c6402e6754047779d79e5b70f282a2bea63102049aafee` |
| 11 | `theorem` | [jacobson_quotient_jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-quotient-jacobson-source-edition-2.md) | 100 | `result-track:dba5abb2b65e0489b3d19ec00990c6ed7f21b75ff3dea56dd29a8b2f8d231085` |
| 12 | `theorem` | [jacobson_lt_top](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-lt-top.md) | 103 | `result-track:497e2f313fc1f0e26d61fc3b43426c77a6f71faa91d03c1dda7d0ba82bc7cc34` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/example.md) | 107 | `declaration-track:67bae85811b1d4abf144e54df73c910984ece6a93081577282037f51400df54c` |
| 14 | `theorem` | [jacobson_pi_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-pi-le.md) | 111 | `result-track:0286afacf62884a8067d7c592633ba8724399c738194222abe9486758bb7ca5d` |
| 15 | `theorem` | [jacobson_pi_eq_bot](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-pi-eq-bot.md) | 118 | `result-track:e70f139ba46d71e536e3e7568649eed7166e0ed183bf149c85ac4cd38290555a` |
| 16 | `abbrev` | [jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson.md) | 132 | `declaration-track:631f5ebc7844f24a7c95b56e05d049acb718a7753fa83c9f50a32d87ee627241` |
| 17 | `theorem` | [jacobson_eq_sInf_isMaximal](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-eq-sinf-ismaximal.md) | 134 | `result-track:cb933d1e4de10e40d97d5360510fb3f012892e84afab9f19ffd87b9136d93697` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/instance.md) | 137 | `declaration-track:1a7fe28904cb7f11c5cdb4e32860575020478d680493475e2531d8068fa2ece2` |
| 19 | `theorem` | [le_comap_jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/le-comap-jacobson.md) | 142 | `result-track:0ecf640c9303c3e7a480eafe568f71e993e712f0a7f812bc8a4d911a223f73d1` |
| 20 | `theorem` | [map_jacobson_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/map-jacobson-le.md) | 145 | `result-track:3fed90a7c9c36191835673e7583dd531b1307b6f13f00486807ee1b7d25e9a86` |
| 21 | `theorem` | [map_jacobson_of_ker_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/map-jacobson-of-ker-le.md) | 149 | `result-track:3a3152f558c07fded0d0a5f72a05af84a64989bfbcec7b0aa11dce389ad57bdf` |
| 22 | `theorem` | [coe_jacobson_quotient](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/coe-jacobson-quotient.md) | 153 | `result-track:7532195f664eb740340bd7098e7db7854095896f613df8d1b32c6843290d0c74` |
| 23 | `theorem` | [jacobson_quotient_of_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-quotient-of-le-source-edition-2.md) | 160 | `result-track:9f982fb40b954e8f03cc56c46ffd4ef5d49202cfedf228e459b3b1cd765becf8` |
| 24 | `theorem` | [jacobson_le_of_eq_bot](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-le-of-eq-bot-source-edition-2.md) | 165 | `result-track:c283a19e4f99c74d91dfa00b9a12fe29c0ddd8991c6a6b0b216fcfdff1eef254` |
| 25 | `theorem` | [jacobson_quotient_jacobson](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-quotient-jacobson.md) | 174 | `result-track:884a33b5f76c34cfe037623a5b6bbcf6c7b46e7143548b021743f032a3956571` |
| 26 | `theorem` | [jacobson_lt_top](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-lt-top-source-edition-2.md) | 178 | `result-track:5d162f15d9dccef37d7eed4d17297d9fb8d7e930c7efaa046859f42fe4bfb36c` |
| 27 | `theorem` | [jacobson_smul_top_le](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-smul-top-le.md) | 180 | `result-track:c2baef96523cc10609a0fcf774ff096973f13acf75383cda3cd6114da688c74d` |
| 28 | `theorem` | [jacobson_smul_lt_top](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/jacobson-smul-lt-top.md) | 189 | `result-track:9ee6427a368476a0b239952689ac50d87ef571bb5b29e21656403154911a1186` |
| 29 | `theorem` | [FG.jacobson_smul_lt](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/fg-jacobson-smul-lt.md) | 194 | `result-track:747c046cc925f435bf12876c8b1704f9b1c9f95bd42aaada7de37f00951b0fee` |
| 30 | `theorem` | [FG.eq_bot_of_le_jacobson_smul](../../../../CommutativeAlgebra/JacobsonRadicalNamespaced.lean/declarations/fg-eq-bot-of-le-jacobson-smul.md) | 203 | `result-track:d534af6bdd60aa24a4c51bdf2e0eff292266067630ec017722c07b9732b13bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4374dc5ebd524f9d6183adfacaeef78aabfda7fff418ccd34883638d484b4585 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean","GRWTSK/_verification/specifications/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
