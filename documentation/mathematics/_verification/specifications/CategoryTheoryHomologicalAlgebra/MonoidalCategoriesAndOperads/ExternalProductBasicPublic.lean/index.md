# Verification target: External Product Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce32f82e017f0c803116ddd1f671603aca44f25",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1676405b7d715e67a239d68434eb2d8f2e7268f58d341ca75a42a2649ad119cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce32f82e017f0c803116ddd1f671603aca44f25`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1676405b7d715e67a239d68434eb2d8f2e7268f58d341ca75a42a2649ad119cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1676405b7d715e67a239d68434eb2d8f2e7268f58d341ca75a42a2649ad119cb.lean.json)

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
| 1 | `def` | [externalProductBifunctorCurried](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproductbifunctorcurried.md) | 32 | `declaration-track:ca9687e8855ff6d981529dbff7d7e2e592366117af5cca6a7c3307b44379e9ad` |
| 2 | `def` | [externalProductBifunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproductbifunctor.md) | 38 | `declaration-track:4ffa81112ceb45315d566164753629d62381c6ed2c558840a381d276b4977383` |
| 3 | `abbrev` | [externalProduct](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproduct.md) | 44 | `declaration-track:fdc61ccc31d070609656e99ee39e2d5dc969b9f685587534bcefcd7ffaf21b1d` |
| 4 | `def` | [externalProductCompDiagIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproductcompdiagiso.md) | 66 | `declaration-track:5e538025b41165e1d1d098aefa47fea9bbd8534e75e1c6269a500c96381d506c` |
| 5 | `def` | [externalProductSwap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproductswap.md) | 79 | `declaration-track:029fbeefb9c132242a84ac7c0939bb6657f2a8a974260eddbb30f7522987547f` |
| 6 | `def` | [externalProductFlip](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/externalproductflip.md) | 89 | `declaration-track:2245321cd72ee9ba956a497e7e00271cac66254492ec71fe6aa228f7ce1f29e2` |
| 7 | `def` | [prodCompExternalProduct](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/ExternalProductBasicPublic.lean/declarations/prodcompexternalproduct.md) | 103 | `declaration-track:28171071c4c217a82d78f909ba8bb7d9d82238e052116f3b40c4fcaca6ee96e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fd957f05203656a0dbe9a840f8c506a120f814a35de886a3da6928c314f97ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1676405b7d715e67a239d68434eb2d8f2e7268f58d341ca75a42a2649ad119cb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1676405b7d715e67a239d68434eb2d8f2e7268f58d341ca75a42a2649ad119cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
