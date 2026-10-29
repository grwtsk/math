# Verification target: Continuous Functional Calculus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc545264d40716b7a34d7f75c903fec0ec1749c9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc545264d40716b7a34d7f75c903fec0ec1749c9`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Star.GelfandDuality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.StarSubalgebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/instance.md) | 75 | `declaration-track:65265556449559ef1f06c04c31b99e7068604b2228e38dd6c5ddd0890e8cd722` |
| 2 | `theorem` | [spectrum_star_mul_self_of_isStarNormal](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/spectrum-star-mul-self-of-isstarnormal.md) | 90 | `result-track:19ad489a64c0df7b2087576f7a0e86a7ee5834699f20e31ba3044d1e1ee402f9` |
| 3 | `theorem` | [elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/elementalstaralgebra-isunit-of-isunit-of-isstarnormal.md) | 114 | `result-track:73c8611a8d7f51e3a9721f09ac48651ed8a2c67d5f28e0dd42797bbb399430fc` |
| 4 | `theorem` | [StarSubalgebra.isUnit_coe_inv_mem](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/starsubalgebra-isunit-coe-inv-mem.md) | 190 | `result-track:17c68319b0fbf4a07737e0263c32d7f389f15861a1b072d9e9ee63928648d421` |
| 5 | `theorem` | [StarSubalgebra.coe_isUnit](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/starsubalgebra-coe-isunit.md) | 207 | `result-track:05c4038088e438e3689a231d0bfbab5be7b6e190a1484fdafde9d7dc75ec49c1` |
| 6 | `theorem` | [StarSubalgebra.mem_spectrum_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/starsubalgebra-mem-spectrum-iff.md) | 215 | `result-track:0c4baa3c38cee2eeecf3abb26ed4cc8c0e4e2482f154e4245f0a790bc72b1a27` |
| 7 | `theorem` | [StarSubalgebra.spectrum_eq](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/starsubalgebra-spectrum-eq.md) | 222 | `result-track:088dfd9fdada8ec6ef6ecd1e48e60d4715da455f53abf3e2201d44b2259ddff4` |
| 8 | `def` | [elementalStarAlgebra.characterSpaceToSpectrum](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/elementalstaralgebra-characterspacetospectrum.md) | 234 | `declaration-track:c6ae843d57d41133901411ddc4d0954950240734286c5fc7251bbdd791a96a34` |
| 9 | `theorem` | [elementalStarAlgebra.continuous_characterSpaceToSpectrum](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/elementalstaralgebra-continuous-characterspacetospectrum.md) | 243 | `result-track:130c3f0ca320d2a42a0d8b16a2dae060ed55806ce7d4f67bf85a8b20d4909343` |
| 10 | `theorem` | [elementalStarAlgebra.bijective_characterSpaceToSpectrum](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/elementalstaralgebra-bijective-characterspacetospectrum.md) | 249 | `result-track:717d23312650fca1176d5afca3879508d49c7e2b8f51799cf7290d520d4c0e4e` |
| 11 | `def` | [elementalStarAlgebra.characterSpaceHomeo](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/elementalstaralgebra-characterspacehomeo.md) | 268 | `declaration-track:d3833253a616140519df2253d319834790414f9c6553e3b47af796de4fb482ac` |
| 12 | `def` | [continuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/continuousfunctionalcalculus.md) | 283 | `declaration-track:5b27b160ac47829f4559ad32efbeb7deeb2a26526977df008a565057aa575722` |
| 13 | `theorem` | [continuousFunctionalCalculus_map_id](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusNamespaced.lean/declarations/continuousfunctionalcalculus-map-id.md) | 289 | `result-track:d45ee3bf0fa72f4af4be36de243eb6ea7f39bffb5ec3653794d46ceedb8a966c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf359acf1a36e4266859fe688bc497b930307f2d9008d5f23cba78d7d9f206d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
