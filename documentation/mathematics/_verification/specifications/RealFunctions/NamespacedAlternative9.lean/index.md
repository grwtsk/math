# Verification target: Namespaced Alternative9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adbc2ede8ef2d7592d4fc048758d0ec76f9457b4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/NamespacedAlternative9.lean/index.md) · [Full source](../../../../RealFunctions/NamespacedAlternative9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adbc2ede8ef2d7592d4fc048758d0ec76f9457b4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiRawD5](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphirawd5.md) | 31 | `declaration-track:2d32dc405b872ff17ff64b0c54d7336b0653a95bbd1771176d5edff92ea13028` |
| 2 | `def` | [thetaPhiRawD6](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphirawd6.md) | 41 | `declaration-track:b853ef9bac20d602d94f12f50b93e3927ff3cbf785334abd8978422bfb7d97da` |
| 3 | `theorem` | [hasDerivAt_thetaPhiRawD4](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/hasderivat-thetaphirawd4.md) | 51 | `result-track:722352988c48927548278754d2687f84508d484aa5363d2d17d0e283123b7a65` |
| 4 | `theorem` | [hasDerivAt_thetaPhiRawD5](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/hasderivat-thetaphirawd5.md) | 64 | `result-track:708cd7add9f5340c0b27a673556b20476817973548422762b0645940d3d5df18` |
| 5 | `def` | [thetaPhiJetPolynomial7](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphijetpolynomial7.md) | 79 | `declaration-track:c9d78fae9c829871a90fe10e3cc97b33f2ae00812d07ed030133e65f38a49dc5` |
| 6 | `def` | [thetaPhiJet7](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphijet7.md) | 93 | `declaration-track:b447cbcc299278b6aab5cd9bf539932b940531131e1b733d1944cfa6ef41756a` |
| 7 | `theorem` | [hasDerivAt_thetaPhiJet7](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/hasderivat-thetaphijet7.md) | 98 | `result-track:29ff38bbbe1be4884914d57fb0762065899a0b81fa1b37a7241059107dbddaed` |
| 8 | `def` | [jetCoefficient7](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/jetcoefficient7.md) | 108 | `declaration-track:7e0f42b1172421f707facbdb61c1b28770db4c1887f3f4d76d872fcd3e78d9f4` |
| 9 | `theorem` | [jetPolynomial7_eq_sum](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/jetpolynomial7-eq-sum.md) | 117 | `result-track:a59cc060750e131ffdcb55e250b4ce649807b92a52c4d3492856214d46e70d63` |
| 10 | `theorem` | [thetaPhi_eq_gaussianSums_rankFour](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphi-eq-gaussiansums-rankfour.md) | 122 | `result-track:7d58090cfa16403c109eda92ff116f0bcdcb101f8a5a69601093f4b57588c06c` |
| 11 | `theorem` | [thetaPhiJet7_eq_gaussianSum](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphijet7-eq-gaussiansum.md) | 138 | `result-track:2395325ebc774aa90e18b94a13813331ce6f62a55b1673fe09cdef9ac93e5122` |
| 12 | `theorem` | [scaledGaussianTerm_eq_rankFour](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/scaledgaussianterm-eq-rankfour.md) | 148 | `result-track:65131f93cbafe3922ab6827ab7e8a7b9691e7a1858be40bdbdd0c2a6cfd2e3f1` |
| 13 | `theorem` | [thetaPhiJet7_eq_polynomial_sum](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphijet7-eq-polynomial-sum.md) | 179 | `result-track:6339b2ad61e6ec3ddb483d291f43444f510fd804e46c756802b756f5114753e4` |
| 14 | `theorem` | [thetaPhiJet7_polynomial_summable](../../../../RealFunctions/NamespacedAlternative9.lean/declarations/thetaphijet7-polynomial-summable.md) | 213 | `result-track:7d839397e4551e47774e16c7bb4a720baca79c5d0d764a5e76c0cec87f87a355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c04f19dc6eeed6366616ed20288e523329662d3e2fcb895ba128b2ee2b47edf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
