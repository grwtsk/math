# Verification target: Reduced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean.json)

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
| 1 | `class` | [GeometricallyReduced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/geometricallyreduced.md) | 44 | `declaration-track:531bfab28b88aa3380e44e1c531fcec7076e6d121b1fde833bd2c5d6369ce09f` |
| 2 | `lemma` | [GeometricallyReduced.eq_geometrically](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/geometricallyreduced-eq-geometrically.md) | 47 | `result-track:42a66e0a7fe56bc1bf3957d766fdc388d16fb5df122b052c109aef5743e18b5f` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-6.md) | 51 | `declaration-track:d537e88c2d90fbdb00657862036461cea95e71247f1ccf62de06c88f71bedd45` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-7.md) | 55 | `declaration-track:dbae29c9c5d6e723a3ce36129097d301973302927e5b041cb43dbfa7b759f28e` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance.md) | 59 | `declaration-track:2eb099efd86ec40e975a53cef27c378a5e06aa66ff772ad4c08a478d5a856041` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:5f2e04556ad636471a563da4efa91431fb89220eda0f322553d02e6f44c7792b` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:36b0353e7bfbc29a889be9cce919b1e7283982554ce656bc43aaec029d594e4d` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-5.md) | 70 | `declaration-track:8cc5fa95e23398e23fe4959312117069f2b03ab1718826ab57ef0c490bc3f62f` |
| 9 | `lemma` | [GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/geometricallyreduced-isreduced-of-flat-of-finite-irreduciblecomponents.md) | 74 | `result-track:5ef67c3ff2af71c892741ac520f633dd54452b1cb9994dcc8445f2e902ebd838` |
| 10 | `lemma` | [GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/geometricallyreduced-isreduced-of-flat-of-islocallynoetherian.md) | 109 | `result-track:89a7c5a38e68b9b37aef041cd3b6f6ab1226eab918caaa94fc169662e2a32f42` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-4.md) | 124 | `declaration-track:885dfde60c022cd5839b0fd5ec04f1d650b855245aa3cd85710e09c98d34ba33` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReducedPublic.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:fdb13ac68288204291b8302553298ba396d68f18fc23f5228f012fb0a7a9406f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f60da4ef44c7ebee8d1de09e1cbfcc2b3c591038800291ec474dafd1fd7692de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
