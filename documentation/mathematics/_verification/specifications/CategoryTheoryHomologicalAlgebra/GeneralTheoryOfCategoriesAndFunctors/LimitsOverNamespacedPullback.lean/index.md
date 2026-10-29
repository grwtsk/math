# Verification target: Limits Over Namespaced Pullback

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b3f1e3f149b2808e17797b8812ff6ebd21d4df5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant28620baf935374b80786ccfb61e1590b20f5a8655d2b795e9dbfb473d25f5076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b3f1e3f149b2808e17797b8812ff6ebd21d4df5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant28620baf935374b80786ccfb61e1590b20f5a8655d2b795e9dbfb473d25f5076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant28620baf935374b80786ccfb61e1590b20f5a8655d2b795e9dbfb473d25f5076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [hasColimit_of_hasColimit_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/hascolimit-of-hascolimit-comp-forget.md) | 52 | `declaration-track:af61a20606dc0e4efff385f562d97b68dac500f9f9ce9ab80ab772fa35c72cbc` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:bec3a2d637cedc82d07e676fb1a1da942cc91f20cbb332b327b2b843e906b02a` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:ef0e928813b783728d52837f64e71ee697bf937072cbeb95cf27bd764a0de3ec` |
| 4 | `instance` | [createsColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/createscolimitsofsize.md) | 62 | `declaration-track:71bd8c0644cca1ceb179526a99728037dcdf35b57d9935795f94fc27b3b574ed` |
| 5 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/example-source-edition-3.md) | 67 | `declaration-track:623ba88ea0ed788e3cc42b64d1dd6f023ee407875fadc1628e4f0a7c2dd25d66` |
| 6 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/example-source-edition-2.md) | 70 | `declaration-track:5cad013ce6d4705a28783be4b8f543b3e3358bf4bb85ab56a0f4df2decbc3536` |
| 7 | `theorem` | [epi_left_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/epi-left-of-epi.md) | 73 | `result-track:a2505d2de99de87dfaa093270ffe00a81a559f1a31863ecb3964bdcaa6b9ba5c` |
| 8 | `theorem` | [epi_iff_epi_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/epi-iff-epi-left.md) | 77 | `result-track:cdef9edb2010949e9ee0207ee5fd36af85fbd26f912bb3213b6f1f5a75632769` |
| 9 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/pullback.md) | 90 | `declaration-track:383d8adb62905b7c5ce5290378eb893dfc00f39b0d5f7112c59edd3c91dc9254` |
| 10 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/mappullbackadj.md) | 97 | `declaration-track:db3b6e6a7c846006113e427c9963259ddc83dac9d94b92241d0e38d556eaac96` |
| 11 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/pullbackid.md) | 123 | `declaration-track:20e218388f4051cf32121a15a1a5a4215a9c3c1fcff59e8236f97c87e574e398` |
| 12 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/pullbackcomp.md) | 128 | `declaration-track:a26aa9ce95bf5ddb758cf7ac838e51b60285907d91b3a5b042413b39985060d7` |
| 13 | `instance` | [pullbackIsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/pullbackisrightadjoint.md) | 133 | `declaration-track:fdcaaf03e20bd8dda9843d9ee3727bfa1f9e1d5b73fb4612f6e8c0c1515edc43` |
| 14 | `instance` | [hasLimit_of_hasLimit_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/haslimit-of-haslimit-comp-forget.md) | 143 | `declaration-track:d5db4fab17d3e0c57b38f3936a45b3cbae24c55e59b3a1a15dadfb33b7faebe9` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/instance-source-edition-2.md) | 148 | `declaration-track:3dda8537ce86fcc15cf8d0e416a8deed5d38ec51d641705d8488b5886cfd2a5a` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/instance.md) | 150 | `declaration-track:1e73975bdee776e245fcc5db426a362b555c8dd89a047ef581fd2842c67df6ef` |
| 17 | `theorem` | [mono_right_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/mono-right-of-mono.md) | 153 | `result-track:16fee875a89209d64eee3b54c1e1d01e6e05aeeab269979cc14c176d9360a4a1` |
| 18 | `theorem` | [mono_iff_mono_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/mono-iff-mono-right.md) | 157 | `result-track:f33207602d654368e6e0d79e2a6d426813ee24a7140722f954272add66c313ca` |
| 19 | `instance` | [createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/createslimitsofsize.md) | 161 | `declaration-track:31fcd3ed533d12bfce50ef1821540f4e25fd8f4fb636416966446709914eddf4` |
| 20 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/example-source-edition-4.md) | 166 | `declaration-track:e9559b737dc2ddde1b5909e8ef2015b84e2e704c1e7238bc3ca068777ac63bda` |
| 21 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/example.md) | 169 | `declaration-track:2aeb9e3cca1a811ed32464e666a27d64975b92bc5c7f25456646ff96a58a8e81` |
| 22 | `def` | [pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOverNamespacedPullback.lean/declarations/pushout.md) | 179 | `declaration-track:024ab21f71a2bb07fd5f29df62955533e97e423d503c3389136ee3c481565dae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=276709bf5528e3661d85d1c83db99e72e3f1aa311c742245e970500b71c3553f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant28620baf935374b80786ccfb61e1590b20f5a8655d2b795e9dbfb473d25f5076.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant28620baf935374b80786ccfb61e1590b20f5a8655d2b795e9dbfb473d25f5076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
