# Verification target: Dominant Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe6df1938136a164e754a143b94c2dd4136aa55",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe6df1938136a164e754a143b94c2dd4136aa55`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean.json)

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
| 1 | `instance` | [isDominant_restrict_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/isdominant-restrict-hom.md) | 47 | `declaration-track:95d1f176e767e9b872dd49756ca0f57c51c580bfa7828fde5b0d37095b22a2fe` |
| 2 | `lemma` | [isDominant_hom_of_isDominant_restrict_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/isdominant-hom-of-isdominant-restrict-hom.md) | 54 | `result-track:4619dfa965dc6ea620f4d2f3c0231f8683ee1c0575465b172f565757780682da` |
| 3 | `lemma` | [isDominant_hom_iff_isDominant_restrict_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/isdominant-hom-iff-isdominant-restrict-hom.md) | 60 | `result-track:92e614aade9941a41aec22302d7c6525d271e12474f7c5ab6df2156686ebc526` |
| 4 | `lemma` | [isDominant_hom_iff_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/isdominant-hom-iff-of-equiv.md) | 68 | `result-track:48b7b843f7c4e0741135f406d3b4e4a5f79b00cc38a586458cdc560c6c75d688` |
| 5 | `class` | [RationalMap.IsDominant](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/rationalmap-isdominant.md) | 81 | `declaration-track:79c34d75470dafdabc48465a24e82823008c6873e6589f7ac5253e6e4f9da9e6` |
| 6 | `lemma` | [PartialMap.isDominant_toRationalMap_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/partialmap-isdominant-torationalmap-iff.md) | 86 | `result-track:a448cd30d7ae045bcc652d977305991990ad8e029a98004ade5d7a42d9a0028e` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/instance.md) | 90 | `declaration-track:4f319c790574943fe8c85adee1fb98e62dc9fae8c065ab4a9596ec91285fff72` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DominantNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:52c9dc0b2ba901c72b9ddd4f041a9918a25b41c24e6239fbf01d78169d9ddb4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01e4e10c0d5be63806ada28e267da5778882c7ba05c27243b484bf7d9a43350d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
