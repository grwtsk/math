# Verification target: As Subring Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bdeba378173e84b7c4fa9721c85d2cf2d164622",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AsSubring/Variant05fad1c37da04173dffe180b5fcf9ff25c69c14e9bfb2cc8a3528a832d5f30c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bdeba378173e84b7c4fa9721c85d2cf2d164622`.

Source path: `GRWTSK/Algebra/AsSubring/Variant05fad1c37da04173dffe180b5fcf9ff25c69c14e9bfb2cc8a3528a832d5f30c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AsSubring/Variant05fad1c37da04173dffe180b5fcf9ff25c69c14e9bfb2cc8a3528a832d5f30c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_isUnit_of_le](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/map-isunit-of-le.md) | 37 | `result-track:c8b1aa2616b6ab85a2bf086402c0f4119b0f1532b433c845683c507c0a4be21f` |
| 2 | `def` | [mapToFractionRing](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/maptofractionring.md) | 42 | `declaration-track:2a842402778a5d6ebb939fe4f4ba32165af7f4c1f1c3da3c2df4b1234ae59f9f` |
| 3 | `theorem` | [mapToFractionRing_apply](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/maptofractionring-apply.md) | 47 | `result-track:396dc27b6ec44308361401a407e9ba37f6e82315bbc17d6954079d63f7af4067` |
| 4 | `theorem` | [mem_range_mapToFractionRing_iff](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/mem-range-maptofractionring-iff.md) | 52 | `result-track:f55b5c29dcd6437bd356e473246073709ee736f0cc184a2dbaf6d5419b62186a` |
| 5 | `instance` | [isLocalization_range_mapToFractionRing](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/islocalization-range-maptofractionring.md) | 65 | `declaration-track:4fe3daa88b63fb9f69f970f2db36a60f8a230f5606f81ce880fc92908f211c29` |
| 6 | `instance` | [isFractionRing_range_mapToFractionRing](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/isfractionring-range-maptofractionring.md) | 74 | `declaration-track:452b3ab212c9e66a4022dd892397e07cc3ef22d008e276d74e0063cee49884bd` |
| 7 | `def` | [subalgebra](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/subalgebra.md) | 85 | `declaration-track:a1525e2ef51738c809c4323603fd6755887b3690839a2e535a7e8a8ae66253ba` |
| 8 | `instance` | [isLocalization_subalgebra](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/islocalization-subalgebra.md) | 94 | `declaration-track:2b587fcb6b04db3fc121748edee7904cfdf5bd78431135491f170839a4609145` |
| 9 | `instance` | [isFractionRing](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/isfractionring.md) | 99 | `declaration-track:ff7847b297f1db7aac7fe1da173b51307dddf80ba5617243d5721b7e5e027995` |
| 10 | `theorem` | [mem_range_mapToFractionRing_iff_ofField](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/mem-range-maptofractionring-iff-offield.md) | 112 | `result-track:7a4244fc6dd8ce83cd86dbe81a5fad25aeb5ec6225d72995b447406e13ca2f51` |
| 11 | `def` | [ofField](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/offield.md) | 129 | `declaration-track:e706850c7f7a3bffb37277f3d899bb3c9ecc101a09feba5c8ec1e2d597d2707c` |
| 12 | `theorem` | [ofField_eq](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/offield-eq.md) | 136 | `result-track:774bb3b96f887d1678a4c27e8ac86293e33d475c6b832f1809f43e713ce385b7` |
| 13 | `instance` | [isLocalization_ofField](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/islocalization-offield.md) | 139 | `declaration-track:4f6cbc2143f7f445242f9abbbacefd5b1608ef93166933c39ee4b62e087e5dee` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/instance.md) | 143 | `declaration-track:89f43c467440fcf14f7bb8c487a9f0cb9cb7b610291c23fa6c222e061743867e` |
| 15 | `instance` | [isFractionRing_ofField](../../../../CommutativeAlgebra/AsSubringNamespaced.lean/declarations/isfractionring-offield.md) | 148 | `declaration-track:a0fc5608f9013cd6c69293493c7b4c14c1e824c9584412dcfc5f052d0f3534c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27c559c3214105d0c307c7b7f9819630ba9b458c7b9e0d27df1dec646edbacb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AsSubring/Variant05fad1c37da04173dffe180b5fcf9ff25c69c14e9bfb2cc8a3528a832d5f30c5.lean","GRWTSK/_verification/specifications/Algebra/AsSubring/Variant05fad1c37da04173dffe180b5fcf9ff25c69c14e9bfb2cc8a3528a832d5f30c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
