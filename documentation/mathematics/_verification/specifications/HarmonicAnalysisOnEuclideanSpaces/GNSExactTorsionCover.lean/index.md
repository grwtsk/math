# Verification target: GNSExact Torsion Cover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16a126c0fdcfd18b7cb70433bc847b56937b98ba",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16a126c0fdcfd18b7cb70433bc847b56937b98ba`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.GlobalFourierMetricPositivityBoundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactTorsionStarAlgebra](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/exacttorsionstaralgebra.md) | 21 | `declaration-track:031a8e677b6bfc988c975692f539c7c132a90f69784c9269f55be8c0143eeb3c` |
| 2 | `structure` | [PositiveExactTorsionState](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/positiveexacttorsionstate.md) | 32 | `declaration-track:08b03ad493579e6e60a4e3ea293da4373dda876b85e138931d2b748e66c78b0d` |
| 3 | `structure` | [GNSCovariantRepresentation](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/gnscovariantrepresentation.md) | 42 | `declaration-track:3f416187f6c488d7d6e9892b45577ed06642f36353bf80029f4d17a7aba6a936` |
| 4 | `structure` | [GNSFourierInvariantCover](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/gnsfourierinvariantcover.md) | 57 | `declaration-track:18690945aaf0fd010d875e3bcfe85d603e558fa1aa7e8c428e08fd386ad85552` |
| 5 | `theorem` | [pi_fourier_eq_unitary_conjugation](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/pi-fourier-eq-unitary-conjugation.md) | 86 | `result-track:f02b576937b5a802ff825ecb2f289df89b8413cd00bc1f28ccc17573454d7cca` |
| 6 | `theorem` | [omega_fourier_invariant](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/omega-fourier-invariant.md) | 102 | `result-track:bdd926593b611cb17bfbb2d69612298fb00aebbcfb8022ff1dd748702f69c8f4` |
| 7 | `theorem` | [cover_has_fourier_invariant_state](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/cover-has-fourier-invariant-state.md) | 115 | `result-track:f81fd2a5f32be2e4eb9abc3f21e3090077aa1d9924fc127842698747f1c9a483` |
| 8 | `theorem` | [fourier_invariant_state_with_unitary_implementer_admits_covariance](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/fourier-invariant-state-with-unitary-implementer-admits-covariance.md) | 121 | `result-track:de25eefea00116e8c814c2085851cb1bd0c90b0de0a820ded29b85bf4ee61a46` |
| 9 | `theorem` | [representation_satisfies_fourier_covariance](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/representation-satisfies-fourier-covariance.md) | 128 | `result-track:30ed6d3fbd68af652411f3e4d6d3b4e3bdaa0d56ad314202223226b38774caae` |
| 10 | `theorem` | [gns_covariance_does_not_claim_unconditional_hilbert_polya](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/gns-covariance-does-not-claim-unconditional-hilbert-polya.md) | 139 | `result-track:e6bacd7ad30b0e4ffe1255955cc2db7e6193da59525a34086070a52dceac2a1f` |
| 11 | `def` | [trivialExactTorsionStarAlgebra](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/trivialexacttorsionstaralgebra.md) | 146 | `declaration-track:29eedf267c4236733e75c7775d763e8c85dd249a9d1ce4f3ced9d39d35ffad7f` |
| 12 | `def` | [trivialPositiveExactTorsionState](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/trivialpositiveexacttorsionstate.md) | 157 | `declaration-track:120a16143c1b4af92f228bab6db686283fdd2a85452919cda29cfcff55331178` |
| 13 | `def` | [trivialGNSCovariantRepresentation](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/trivialgnscovariantrepresentation.md) | 169 | `declaration-track:df2cd2335884b37141848a6fcba7341b609f486b3d55a69b56e96f1d04eea7b8` |
| 14 | `def` | [completedGNSFourierInvariantCover](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/completedgnsfourierinvariantcover.md) | 184 | `declaration-track:1b4df7102802b936239894746678b6a05f3dae752f90ed5c480fbaad55916040` |
| 15 | `theorem` | [completed_gns_cover_has_fourier_invariant_unitary_gate](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/completed-gns-cover-has-fourier-invariant-unitary-gate.md) | 207 | `result-track:95fdca037ebdf8bb1a3f43364532c478e5c737374ab4ff0d6cd6af40965c07a9` |
| 16 | `theorem` | [completed_gns_cover_pi_fourier_covariance](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/completed-gns-cover-pi-fourier-covariance.md) | 215 | `result-track:880f3cca48276884d9f2af4b6abaead9dc780f5b47a942ca2a277b133fa40e6f` |
| 17 | `theorem` | [completed_gns_cover_does_not_promote_hilbert_polya](../../../../HarmonicAnalysisOnEuclideanSpaces/GNSExactTorsionCover.lean/declarations/completed-gns-cover-does-not-promote-hilbert-polya.md) | 229 | `result-track:5521d00175f438f27defc81ad4c4830f79cd303dc255ef91b01df582a4bd012c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d970f5e491649578ff0cb03c5d5fa5fd8340035371a3e0b2181391ae561ff46d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
