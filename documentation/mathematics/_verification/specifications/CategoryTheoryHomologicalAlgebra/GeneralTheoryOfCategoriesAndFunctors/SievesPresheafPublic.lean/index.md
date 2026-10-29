# Verification target: Sieves Presheaf Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1e404986fdc904916dd5b59f11f32310d579804",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantb760fa5d48179ba426653bf9705ae94f34e834a9c361721b7b61df3feaf7153d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1e404986fdc904916dd5b59f11f32310d579804`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantb760fa5d48179ba426653bf9705ae94f34e834a9c361721b7b61df3feaf7153d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantb760fa5d48179ba426653bf9705ae94f34e834a9c361721b7b61df3feaf7153d.lean.json)

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
| 1 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/functor.md) | 45 | `declaration-track:217aadacea92140fae5c1f8ed6035bcb5d42dcc7a891038ca9446777f64211af` |
| 2 | `def` | [natTransOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/nattransofle.md) | 53 | `declaration-track:d06369f2619a641879f839c03b4476015ac5bb190408889156b57be95e6ca67c` |
| 3 | `def` | [functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/functorinclusion.md) | 58 | `declaration-track:ca60c9e6fa904e9514b6c387bc7e215945c9cbccdb14fcfb18f08fcc8a5eb7c0` |
| 4 | `def` | [toFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/tofunctor.md) | 65 | `declaration-track:4102391a83eb6a6ae380cddb8523e0e5b2968cc8c8e858834c2a2eb7f2284147` |
| 5 | `theorem` | [natTransOfLe_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/nattransofle-comm.md) | 68 | `result-track:d23404adc0d6043860b17a89bdf77df463e59cd6f56ab3fa395fe749b4250bf8` |
| 6 | `instance` | [functorInclusion_is_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/functorinclusion-is-mono.md) | 77 | `declaration-track:5a08fe66b4d6226f7467c4c33943507bb0a8e160855ce304fc5315342786a288` |
| 7 | `def` | [sieveOfSubfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/sieveofsubfunctor.md) | 87 | `declaration-track:97eedd256b789902bdae70febb5c968ebb0552ee5da0c8a2c5685f3c230b4f27` |
| 8 | `theorem` | [sieveOfSubfunctor_functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/sieveofsubfunctor-functorinclusion.md) | 94 | `result-track:50caee33b71c0df3ec90e22391e0cf8e9676473d74ae2f9985c9c46de5029e40` |
| 9 | `instance` | [functorInclusion_top_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/functorinclusion-top-isiso.md) | 103 | `declaration-track:ade3c0deb497eb696df2017dafe1a2215c5b423ad41d76f85b6d90c589a977ec` |
| 10 | `abbrev` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftfunctor.md) | 107 | `declaration-track:2a61301d930fcabf22f326f7f62800e1679d01241540677bea812648fbf5a6c0` |
| 11 | `def` | [uliftNatTransOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftnattransofle.md) | 112 | `declaration-track:5a201c11e23051e45280de615aae65fb7bfd15f8fade82bbe644beb3276b22d3` |
| 12 | `def` | [uliftFunctorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftfunctorinclusion.md) | 118 | `declaration-track:354f8f2fb7cb141af5aff718f0d7c2bcc6fa7bee873f8051b20ce5bdf9fc0dd1` |
| 13 | `def` | [toUliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/touliftfunctor.md) | 125 | `declaration-track:4b454169de20e3cddb90a5ee7e14a188ca2eb160fa4a8577c08582bce6c27332` |
| 14 | `theorem` | [uliftNatTransOfLe_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftnattransofle-comm.md) | 129 | `result-track:e5cc0665a14c4786ee41db2d5ad71ecf8c4dee7cdf2511385602542ebdf9e54c` |
| 15 | `instance` | [uliftFunctorInclusion_is_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftfunctorinclusion-is-mono.md) | 136 | `declaration-track:09945e1867eb0f120fb8424f3bcddc5e9635db4e2b80f1c6b58ffdf71fcf8615` |
| 16 | `def` | [sieveOfUliftSubfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/sieveofuliftsubfunctor.md) | 145 | `declaration-track:869ebdf829945d9d12faa77d5ebd4bc7e72762042a1d405322c415bc38071bba` |
| 17 | `theorem` | [sieveOfUliftSubfunctor_uliftFunctorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/sieveofuliftsubfunctor-uliftfunctorinclusion.md) | 155 | `result-track:6efc1e7efb2031ae739e74485af42d0c6e26dd620ca3390fde8679e172012a07` |
| 18 | `instance` | [uliftFunctorInclusion_top_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafPublic.lean/declarations/uliftfunctorinclusion-top-isiso.md) | 159 | `declaration-track:2fda4d78724c06e5881088d53f42b184190555cef35f455c94fcfa6fa0b8f700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f211834ccb0b1a020126ffd9fdb40e7a1f8ad64b8860031bea30f3fb97fe8a3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantb760fa5d48179ba426653bf9705ae94f34e834a9c361721b7b61df3feaf7153d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantb760fa5d48179ba426653bf9705ae94f34e834a9c361721b7b61df3feaf7153d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
