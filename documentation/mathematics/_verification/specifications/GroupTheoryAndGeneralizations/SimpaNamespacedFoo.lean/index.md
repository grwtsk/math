# Verification target: Simpa Namespaced Foo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "013928098e7789aa27ac235b2465b7ccdaedab61",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `013928098e7789aa27ac235b2465b7ccdaedab61`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Simpa` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.ShowTerm` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example.md) | 20 | `declaration-track:0464076052a16eaae881965fde987ec7ef371c4cdd5b353483a3fccdcae5b7ca` |
| 2 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-5.md) | 22 | `declaration-track:71056124b99813bba0611df28862c8836032efb18db3b51c42116de6d22d1f2f` |
| 3 | `def` | [foo](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/foo.md) | 24 | `declaration-track:8c974c51dba2686eb186e2d646d5a1d81a5bc53df3d8b5d38feded3a1b608339` |
| 4 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-8.md) | 29 | `declaration-track:bc2f2a9a3914ca5b68d576e22cd153b2136d1c26867782bb384bb0c6e132ae98` |
| 5 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-6.md) | 32 | `declaration-track:8e57de77b3121694697613a9aca547978591860b020f6609ffcda0411bc51dcc` |
| 6 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-4.md) | 37 | `declaration-track:6c5fe70fc0ffb0e26607393d99e4479c1069b2b29991a55590f41315957d33e5` |
| 7 | `def` | [Injective](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/injective.md) | 41 | `declaration-track:6f2fafe073f8986303fd15dbcf26d4eb4d8160c118720b9ee9b12ae16c42f9d7` |
| 8 | `class` | [Inv](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/inv.md) | 45 | `declaration-track:8f650375387a9ef6b254add18228d4c31420a04159e59787b6934053a5251d04` |
| 9 | `class` | [Group](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/group.md) | 48 | `declaration-track:3f59e0b49e54875cc54d6103036ba9012182ae3c63b94ad3c919e32611348de5` |
| 10 | `axiom` | [div_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/div-eq-mul-inv.md) | 52 | `declaration-track:f96da7fd622e6fa6043e0e043be2469ad201bdd060aa8c9976a7ba1ccc3de890` |
| 11 | `axiom` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/mul-left-injective.md) | 54 | `declaration-track:0633f2d3024bb53b9081f75e4017fc879895c214d5fdc0c14c63e87ed3d04988` |
| 12 | `theorem` | [div_left_injective](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/div-left-injective.md) | 56 | `result-track:5e9f2f953b05d012ee3fa65fb388afeca0eed9f1001e26273bd3e76727f597e7` |
| 13 | `theorem` | [mk.inj_iff](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/mk-inj-iff.md) | 63 | `result-track:eb5bc31c147788c71d7e560aae1aef9f54cdfc12d202dc244525f3dc6c6a3e26` |
| 14 | `theorem` | [mk.inj_left](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/mk-inj-left.md) | 66 | `result-track:2bd5d68b7ea00edc99bb08f7a1652ea84ad9d8b6fb93e5715a13045bf0f8810c` |
| 15 | `theorem` | [implicit_lambda](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/implicit-lambda.md) | 72 | `result-track:d83e178e1cdd617e492e576310bf9559de86ec91f00f56ae88f0990bc772eeab` |
| 16 | `theorem` | [implicit_lambda2](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/implicit-lambda2.md) | 75 | `result-track:a0b50ff7231ab4efaf62714e2202e3447a51d4884ebbbca2a49759a70a3b6b85` |
| 17 | `theorem` | [no_implicit_lambda](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/no-implicit-lambda.md) | 78 | `result-track:051cb45e2d887e51151c738f51bf3a21133aab7aeca1e74ca195fad628496cc8` |
| 18 | `theorem` | [thm](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/thm.md) | 81 | `result-track:aab5d4e66f1a3177314a02d57f5ad75ae7b3e962cabaece7e95c9ef2c30ac297` |
| 19 | `theorem` | [thm2](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/thm2.md) | 83 | `result-track:8012efee0ab92d9ed5d5b6e531b352c827899aab9e59e71d7586bedc2695406f` |
| 20 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-7.md) | 85 | `declaration-track:9283801ea983b587e0a676c06da4a633439a8f1d3569e220dc33e3f7efa28917` |
| 21 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-9.md) | 88 | `declaration-track:d33dfbf47324d5a9b0ddffd2675402245d0c034a0fd559a72b2099269c091016` |
| 22 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-10.md) | 91 | `declaration-track:f64c6d100f82d964df63c4c3908814d98bc183608ca195c58b2ea958fd5cdf84` |
| 23 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-2.md) | 97 | `declaration-track:56b1f607143a3bc09372a19f6e0b7689e4210d1d8aed31d62e54c182e25d567a` |
| 24 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SimpaNamespacedFoo.lean/declarations/example-source-edition-3.md) | 101 | `declaration-track:669cfae7a653426382945f982e06011cdc478b19f0d8903a714d1052b1a2b2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c79222f97ec480c02758e2bdf4a59ed98341b265373c112d7f2746f343897bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variant31cc68b932ca19256b144e53e1e5451e64cc8c878eeb169d6a32c2721d7e614b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
