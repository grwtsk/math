# Verification target: Cover Preserving Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291509199c663c715cca14a415af1a3b9770260e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291509199c663c715cca14a415af1a3b9770260e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean.json)

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
| 1 | `structure` | [CoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/coverpreserving.md) | 59 | `declaration-track:7788bf9938f7aa092261aea127b34facc6f8faa53d7a3005a9b7028578c73cb6` |
| 2 | `theorem` | [idCoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/idcoverpreserving.md) | 63 | `result-track:14e44c6ef28977cc8d138a8e07c809115f5ef7bf77f89c7846f34b911d1c3626` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/coverpreserving-comp.md) | 67 | `result-track:0bc45d00a19665524b5537b7690039e354fab33a76618ad28cb4417bd1cb51c9` |
| 4 | `structure` | [CompatiblePreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/compatiblepreserving.md) | 79 | `declaration-track:88dd527db176bef58acf7c5ce29108fcf6893a084b9d640e1c0678d2441b1d61` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/presieve-familyofelements-compatible-functorpushforward.md) | 92 | `result-track:27fb1f14193cdee728507941f30384cfe12a146270d4876f706072d63886b74b` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/compatiblepreserving-apply-map.md) | 104 | `result-track:0dd7ff784f5dfdd6053e640efd59ff18d42c689b7590b650bd1404d54fb98856` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/compatiblepreservingofflat.md) | 117 | `result-track:809fb83800ef471b6fbf3396193ea20df08fff444bb07ac6b064be2316656491` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/compatiblepreservingofdownwardsclosed.md) | 146 | `result-track:e791792dd4bb89021919782e795a133ba28f1e2e3c7fa738cada2911314742b3` |
| 9 | `lemma` | [Functor.isContinuous_of_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/functor-iscontinuous-of-coverpreserving.md) | 161 | `result-track:cdfe30ced6f62052e6f29b33baf58203a305adff9d5168ad7c23029762c8b011` |
| 10 | `lemma` | [CoverPreserving.of_isContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/coverpreserving-of-iscontinuous.md) | 177 | `result-track:49b5bfe3aca1395868b7b4192d01943ba6fc054ca65066a242e509e0ed93ca04` |
| 11 | `lemma` | [Functor.isContinuous_iff_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/functor-iscontinuous-iff-coverpreserving.md) | 191 | `result-track:2133f12bd1e7aea9e9b0a1d3d386114e6a009d5c3152a870350c420cffc1271d` |
| 12 | `lemma` | [Functor.PreservesOneHypercovers.of_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPublic.lean/declarations/functor-preservesonehypercovers-of-coverpreserving.md) | 200 | `result-track:2569da2f01699a090f42e168a751678ead5f3c65a95d6a41eb0878188c686ce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f9be66c73637bdf091b8c0e02ae318e85b440f8100d7718119d437b0a29bad0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
