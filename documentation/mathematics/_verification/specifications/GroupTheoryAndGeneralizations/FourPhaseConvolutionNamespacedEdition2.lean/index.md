# Verification target: Four Phase Convolution Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76411e0158fae5cb706e866a96e9fcbce197a661",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76411e0158fae5cb706e866a96e9fcbce197a661`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ComparatorMargin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThreePhaseCore](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/threephasecore.md) | 52 | `declaration-track:9e8c186d5fc091952b51afa62e555c26a71709301d5307c12dbb053657138384` |
| 2 | `def` | [phaseIEnergy](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseienergy.md) | 70 | `declaration-track:a00ed5df6363cd53bbf959df3ed1f13e70438be92afd27934acebdf54adda464` |
| 3 | `def` | [phaseIIEnergy](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiienergy.md) | 74 | `declaration-track:ab55ac00b0cc23a12035451307e2f528c6dd2b995678b603293bbda978c01383` |
| 4 | `def` | [phaseIIISensitivity](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiiisensitivity.md) | 78 | `declaration-track:b49b7d4cc5827e66268d2ef58de407103947b468b502d5d7bca231d145d2ba68` |
| 5 | `theorem` | [phaseIEnergy_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseienergy-eq.md) | 82 | `result-track:145d35942c64d4471aa587374b67240f3e22cda93dce45d750b610c775caabc4` |
| 6 | `theorem` | [phaseIIEnergy_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiienergy-eq.md) | 87 | `result-track:0ecd748704a96b96b6f0b382835e5a3108eefa0b61bfe0ab1733d5abe4d32f7e` |
| 7 | `theorem` | [phaseIIISensitivity_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiiisensitivity-eq.md) | 92 | `result-track:df1ee4032d55ad84d8d4786a8a50c89216d56711ea6594aedc486a13346ed358` |
| 8 | `theorem` | [phaseI_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phasei-nonnegative.md) | 98 | `result-track:8f3f22b4614c3781cfab06d280888cadbea30dbc9c0ac19884b6b1ce31106773` |
| 9 | `theorem` | [phaseII_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseii-nonnegative.md) | 103 | `result-track:fd88d02270468e9314502377d62cea3c41867d2e62b97ab5377cb5342acfac64` |
| 10 | `theorem` | [phaseIII_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-nonnegative.md) | 108 | `result-track:194ccf4379893a331fd1737944e1d50e00301d84675dd24bea7b027d66ee5956` |
| 11 | `theorem` | [phaseII_le_phaseI_autonomous](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseii-le-phasei-autonomous.md) | 114 | `result-track:daeda059ee003dc8ab0111c0aa28dc736c30e40d43fec8755e0df79e84788a05` |
| 12 | `theorem` | [phaseIII_le_phaseII_differential](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-le-phaseii-differential.md) | 132 | `result-track:55de7eedd8e81c23defe091f5853898292f7dc8f74e0ce5e86aaccfeb19a2558` |
| 13 | `theorem` | [three_phase_energy_chain](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/three-phase-energy-chain.md) | 141 | `result-track:409be513818d4c2fa6dedc0119540fe7e4492d9103ec132681564287199ad8dd` |
| 14 | `theorem` | [phaseIII_positive_zeroComparator_gap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-positive-zerocomparator-gap.md) | 154 | `result-track:3c145ff37d1ddab19d1f6ec7588fcc2ca1e399311a034a04e0c76a77929123e2` |
| 15 | `theorem` | [phaseIII_positive_not_all_comparators_separate](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-positive-not-all-comparators-separate.md) | 163 | `result-track:b847e1aee9a0894c35abda2d9bdc02df27af6d4b76ace580f0ca942e3297ec73` |
| 16 | `theorem` | [phaseIII_positive_iff_visible](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-positive-iff-visible.md) | 173 | `result-track:d776af2da6ea22bb8c29e1bfb85c2c6f87026df983a9e6404b8b3edeea00c6e9` |
| 17 | `structure` | [FourPhaseComposition](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/fourphasecomposition.md) | 183 | `declaration-track:03371981601a29ebbd5b635713bfbe095bae985c7d3bb782b9815d0aa54dceba` |
| 18 | `def` | [phaseIVGap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseivgap.md) | 200 | `declaration-track:3dd4f1eb4358a20ece494e61e2fe3b08e610f6b793dfa6ad2b9bc81f3aee097e` |
| 19 | `theorem` | [phaseIVGap_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseivgap-eq.md) | 204 | `result-track:e94a3ff4178faeb8940dbcb0223489591859d7487d2c0b738efb692451942490` |
| 20 | `theorem` | [phaseIV_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiv-nonnegative.md) | 210 | `result-track:59c64a38fac174d9b7e8eef6bdcab3c1deffc974e8ffae25ee9a61bd56ec34e4` |
| 21 | `theorem` | [phaseIV_lower_bound](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiv-lower-bound.md) | 215 | `result-track:3166418d5c3fddf48b99676a157698cb09b1fbb215d815459404f1d6497db5ba` |
| 22 | `theorem` | [four_phase_energy_chain](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/four-phase-energy-chain.md) | 221 | `result-track:a742c00b6b195c7db8cf4b55554038d54e9d3ea3f3e8f7084a84d1d5c115af1b` |
| 23 | `theorem` | [positive_phaseIII_implies_positive_phaseIV](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/positive-phaseiii-implies-positive-phaseiv.md) | 237 | `result-track:3f2ce6ed8bd213ec11d3c8d24f485d6b9cab43f3a7fdc23ba410a92c7185de52` |
| 24 | `theorem` | [phaseIV_to_qualitative_complete](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiv-to-qualitative-complete.md) | 251 | `result-track:7af8616d1186e9406df3bb91ab10b552c75e1456de255c995ceac0191757753e` |
| 25 | `theorem` | [phaseIII_zero_of_phaseIV_zero](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/phaseiii-zero-of-phaseiv-zero.md) | 257 | `result-track:eabeef16c51346b569a290d72b28bbdc06b65ec6f6733123b3f0fad00bc502c5` |
| 26 | `theorem` | [visible_projectedDifferential_implies_positive_gap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionNamespacedEdition2.lean/declarations/visible-projecteddifferential-implies-positive-gap.md) | 264 | `result-track:947995203e15bb99a3796ed8499f97a7e95a628a8763a0eb863e565a51399280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bdb5a13ab6aa513a03e2536c846a1e9a469c7920c96beb08d465b7ed7b8ab44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
