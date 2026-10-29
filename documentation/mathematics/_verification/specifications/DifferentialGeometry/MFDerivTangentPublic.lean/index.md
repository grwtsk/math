# Verification target: MFDeriv Tangent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b2c940af734da490e5b0466367ebda12740626e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b2c940af734da490e5b0466367ebda12740626e`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentMap_chart](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/tangentmap-chart.md) | 39 | `result-track:4cfe9877e44968890fce3c173b679b83b356cb5fd6db30e8823ca64d71f30b6c` |
| 2 | `theorem` | [tangentMap_chart_symm](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/tangentmap-chart-symm.md) | 52 | `result-track:9d3bb123e385c2c2825b954a0497ea0815d29a3079414a52da8bce0de301c106` |
| 3 | `lemma` | [mfderiv_chartAt_eq_tangentCoordChange](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/mfderiv-chartat-eq-tangentcoordchange.md) | 64 | `result-track:cc842628d8a40758847991ba5b1436338c6b4d33a2055ef08f7fd25b415d2484` |
| 4 | `theorem` | [UniqueMDiffOn.tangentBundle_proj_preimage](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/uniquemdiffon-tangentbundle-proj-preimage.md) | 72 | `result-track:f1230223cb7f071397c5814ba9feac86dcfad45d5da01b0225196beb6a488bce` |
| 5 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/intangentcoordinates-eq-mfderiv-comp.md) | 81 | `result-track:f6ae36899662488bb8289ec02bec50eada5c1bd5cdf2187ca41a243627f4ded5` |
| 6 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp_abuse](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/intangentcoordinates-eq-mfderiv-comp-abuse.md) | 107 | `result-track:39ca7ac6497f8c835fe9d19e6e91a18436b4b708e317e94a5704da9b7714b937` |
| 7 | `def` | [tangentBundleModelSpaceDiffeomorph](../../../../DifferentialGeometry/MFDerivTangentPublic.lean/declarations/tangentbundlemodelspacediffeomorph.md) | 120 | `declaration-track:dcede60d754c0809f2f7b1ce0d4e59f1e802ea61e6198fb3ef5dc2b0788e4b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cd99aa8aba09aae29a05c5f2bb69118f0cf969e7d81d80ef14ea1fa7d7373b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Tangent/Variantd4af05d843b194b81f73c07964dd3b5e28573df22cd72bf6d9bf4d13efed7022.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
