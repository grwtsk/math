# Verification target: Noise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677ea5d9d64113866d7f69338f2779f78b4945c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677ea5d9d64113866d7f69338f2779f78b4945c6`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Energy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noiseMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisemultiplier.md) | 8 | `declaration-track:b9e769fb72e00b9beae629725521712ca5a5e18fb65c4dd8369feee3fe112a41` |
| 2 | `def` | [NoiseOperator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noiseoperator.md) | 20 | `declaration-track:698f55bf8d9984b719d9d03694668aee1542a7ac5dd7dff774ade2ec7de56501` |
| 3 | `def` | [noiseCoordinate](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisecoordinate.md) | 29 | `declaration-track:8cdb4cbb5cab489f7042581d51bbd6a2896b90e5693c6b6fb0efa9738f5dcc1c` |
| 4 | `def` | [weightedSpectralMassNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/weightedspectralmassnumerator.md) | 38 | `declaration-track:a8dd6fd5fd25139785029d124592358b43afc0b833d5c15cab8ef6d89021de5d` |
| 5 | `def` | [spectralMassNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/spectralmassnumerator.md) | 47 | `declaration-track:3258ce2916fd2d7c19751c65f124edadb69ef1335e468fd2efe8ef8ca7cebc9d` |
| 6 | `def` | [noiseStabilityNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisestabilitynumerator.md) | 53 | `declaration-track:084bef2b6c433f17b3b1c6e1f8205d376d280c93eb88f38e4858b97a48f1ba1a` |
| 7 | `def` | [coordinateInfluenceSpectralMassNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/coordinateinfluencespectralmassnumerator.md) | 62 | `declaration-track:b57674072d14a2e2f60ab1caa7de9b2ca640c180c53f2f5df919dfd7c22a14f6` |
| 8 | `def` | [influenceSpectralMassNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/influencespectralmassnumerator.md) | 71 | `declaration-track:cc5fc805eb798d6d30ea25160732bc5d400a451105aee6176a0afd0612f7c120` |
| 9 | `theorem` | [int_one_pow](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/int-one-pow.md) | 78 | `result-track:c717d7c20747f75d00136ccc11e9d67227a2185e307bfeeb4a79ced4f0fc621e` |
| 10 | `theorem` | [noiseMultiplier_one](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisemultiplier-one.md) | 86 | `result-track:16c12315ddf318b923a8a50a93e6673e85067792328345ef31c67d5ca059385d` |
| 11 | `theorem` | [NoiseOperator_projectionNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noiseoperator-projectionnumerator.md) | 91 | `result-track:45b2529362094d83538b8c16f4cc29ee861b873e9db62cd796119cc4b4326148` |
| 12 | `theorem` | [NoiseOperator_one](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noiseoperator-one.md) | 99 | `result-track:289b34c780afb4f5727f20f91197304684dd3e658c17a59e30c54212eab59848` |
| 13 | `theorem` | [noiseCoordinate_numerator](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisecoordinate-numerator.md) | 106 | `result-track:88753c6697bb7e75ee192ac674fa4f884158000e3c46704d0ff6fc792e7607a3` |
| 14 | `theorem` | [noiseCoordinate_exponent](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisecoordinate-exponent.md) | 113 | `result-track:097c1bd2ac29d15dc6ad447b1240752ef9dc3b1cd296ee10febe42a896b5e792` |
| 15 | `theorem` | [spectralMassNumerator_eq_energy](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/spectralmassnumerator-eq-energy.md) | 119 | `result-track:e436914aad2cecdb373892679972f7f5d4dcd8b0b764f2d167de7173c1a3eea6` |
| 16 | `theorem` | [noiseStability_eq_weightedSpectralMass](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisestability-eq-weightedspectralmass.md) | 124 | `result-track:82b6f46b65856c7ff6bdefd9d2c7143f49b362cb57861486ddc91db93409ce23` |
| 17 | `theorem` | [noiseStability_one](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisestability-one.md) | 132 | `result-track:0b8c8da3c6889e598d591d08080c016f400445b20692a41eef0ffebec568005a` |
| 18 | `theorem` | [spectralMass_eq_scaled_sampleEnergy](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/spectralmass-eq-scaled-sampleenergy.md) | 143 | `result-track:4fc8a9c3d73de327bdf7e3251545fcdfcb63f3a72016062c37be7224cf855815` |
| 19 | `theorem` | [noiseStability_one_eq_scaled_sampleEnergy](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/noisestability-one-eq-scaled-sampleenergy.md) | 149 | `result-track:52cf6244a2b524fd876eae3b8a3390bf53550a5840a5b152a835255527dea466` |
| 20 | `theorem` | [coordinateInfluenceSpectralMass_eq_weightedSpectralMass](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/coordinateinfluencespectralmass-eq-weightedspectralmass.md) | 156 | `result-track:012d06fb3b49eea694060ed7d2ff1288f853c62d72ce97448dc2c7cdc250b89b` |
| 21 | `theorem` | [influenceSpectralMass_eq_degreeWeightedSpectralMass](../../../../HarmonicAnalysisOnEuclideanSpaces/Noise.lean/declarations/influencespectralmass-eq-degreeweightedspectralmass.md) | 164 | `result-track:5e17f5af9f14dff26ad4ab289e5e430894e739de5698c9b3a7be45b0cecd8a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f46d2b4125be2154aa616d2185fde661cf09dc29122ece926f61d9b6dc0621d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantdcd6e6dfb11b6571677a5acccc8e753549fa0379182598138c43ddb70251b892.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
