# Verification target: Modular Boundary Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b02bca29c6d7ab70311dfda5a71ebf70789c394",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ModularBoundaryResults.lean/index.md) · [Full source](../../../../NumberTheory/ModularBoundaryResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b02bca29c6d7ab70311dfda5a71ebf70789c394`.

Source path: `GRWTSK/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Grassmannian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gate](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gate.md) | 18 | `declaration-track:1dbd3eb41a982b222bc2ac2878ae82ab5df7e5515246b6d7e4a66f250abc2a6d` |
| 2 | `instance` | [gateDecidable](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gatedecidable.md) | 21 | `declaration-track:ca944d33a4227dfe862c2877bb178d64ff0144de9696a4faba8d3cd529ebfe25` |
| 3 | `def` | [gateBit](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gatebit.md) | 25 | `declaration-track:ea1f91b85926bf4486708fe65c0efa12fe77eb20e246ba40eb08682333011da4` |
| 4 | `theorem` | [gate_self](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gate-self.md) | 28 | `result-track:785e75d3bbc4e83d5043b42a458b8aa12942789c6e976988587c6b84b7beedbf` |
| 5 | `theorem` | [prime_passes_gate](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/prime-passes-gate.md) | 31 | `result-track:1ea3ceec3b0fc2265e616c835eeb0dedbb02a602a7b97eb34ae0816bd323f547` |
| 6 | `theorem` | [gate_iff_defect](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gate-iff-defect.md) | 38 | `result-track:6fd7fbc3639622e3f68d7b5c6f3624f346c9fccf61b32f073403e6461919ca0f` |
| 7 | `theorem` | [gate_iff_plane](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gate-iff-plane.md) | 44 | `result-track:9374d566378d1c41bd825a71a808189a69776bd0cc295390616dbb29b2e96806` |
| 8 | `theorem` | [gateBit_eq_fourier](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gatebit-eq-fourier.md) | 50 | `result-track:3932b21bf2632de087fa5d761ecd1a708c29180fca573ce3cb7eda301041f2dc` |
| 9 | `def` | [sieveModuli](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/sievemoduli.md) | 59 | `declaration-track:8f501331a9c7d4d8e598434be9d93b7226978bd5c24927baf6f323642eaff1f6` |
| 10 | `def` | [Passes](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/passes.md) | 62 | `declaration-track:5944aeda5b1ae09b28e88b9f0b098ce2d5ddc1f0ae0776f4a44f1c7c74822c15` |
| 11 | `instance` | [passesDecidable](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/passesdecidable.md) | 65 | `declaration-track:3e04fb24772731e61b3352aa4bb92bd525689ea34c97e3f10bf1e09d78af63d5` |
| 12 | `theorem` | [prime_iff_passes](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/prime-iff-passes.md) | 69 | `result-track:14c3e2870e9b7071f4debdf5c59a482b573dcf4a7fb2e34e05fdf5a2d72dddaa` |
| 13 | `def` | [sieveLabels](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/sievelabels.md) | 89 | `declaration-track:9c417b3669133de079a9d3012a81d9e2850685b701bbad045bc30ea914d5ec2b` |
| 14 | `theorem` | [sieveLabels_eq_primesLE](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/sievelabels-eq-primesle.md) | 93 | `result-track:e3a6ce8e85ef27ff15ed591ac174d8a859bc85cd48dee6403763d7d413d68261` |
| 15 | `theorem` | [sieveLabels_card](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/sievelabels-card.md) | 104 | `result-track:1a107ea46c27f44d1d218c2acea8243091ab50ac245030ee6653b28734be9ed6` |
| 16 | `theorem` | [gate_product](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/gate-product.md) | 109 | `result-track:513abdda46f27af6ead7b8d3ad176c35b3b2e57032dba4ba86fb6ba10af1aeca` |
| 17 | `theorem` | [primeCounting_eq_gate_sum](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/primecounting-eq-gate-sum.md) | 125 | `result-track:2d57bd46f2e5ec8a15ee8f7bc6d1b42c79812f46bfde6da0f304d0c8a1a6c00d` |
| 18 | `def` | [primeGeometricGate](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/primegeometricgate.md) | 139 | `declaration-track:97cdf8e58e6c37f1fad8db03bc85ebd8c93c0f783c7d8b5a48892a987167d53e` |
| 19 | `theorem` | [primeGeometricGate_iff](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/primegeometricgate-iff.md) | 144 | `result-track:2a4f52284148a1dd40b62f90fe0660ef8449d122547576f8bd78f48636f383b3` |
| 20 | `theorem` | [prime_iff_geometric_sieve](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/prime-iff-geometric-sieve.md) | 150 | `result-track:52f76f8e8738a9b01b436463242ba64876b6c99fa4cb6722b0960d29cbee51f5` |
| 21 | `theorem` | [four_filters_incomplete](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/four-filters-incomplete.md) | 161 | `result-track:5231ad156697aa5a50afac1141e4ce9e0b0cf5f1ae96f258b2915ea31de1c196` |
| 22 | `theorem` | [eleven_detects_square](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/eleven-detects-square.md) | 166 | `result-track:21bbbd17ba17fd880ddf36eae9b42d08764980b340670e7daa81d24a055ea849` |
| 23 | `theorem` | [self_exception_required](../../../../NumberTheory/ModularBoundaryResults.lean/declarations/self-exception-required.md) | 169 | `result-track:dd0b422b9d7b450ee779d36e4c7f8d0bafa6889a5d8b22075b6009d025860fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2317d70ad8464f0f3b69b186da1cab72f221acaa657b9a75126cc6d4dcaa6262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean","GRWTSK/_verification/specifications/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
