# Verification target: Continuous Functional Calculus Instances Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b6760c5b4da5b94d89e2494baebe95d7984d1b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b6760c5b4da5b94d89e2494baebe95d7984d1b`.

Source path: `GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean.json)

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
| 1 | `def` | [cfcₙAux](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-aux.md) | 83 | `declaration-track:dd0dbbb4ce681d0c219e3bccd603d9b6748cf09505594df558bc3b0d9e185db3` |
| 2 | `lemma` | [cfcₙAux_id](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-aux-id.md) | 89 | `result-track:ec08cc3012265518f5de4c18084b8eb710b78576bb7d50669696d0424b21dbc3` |
| 3 | `lemma` | [continuous_cfcₙAux](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/continuous-cfc-aux.md) | 91 | `result-track:ccf190d45207ea31db47357433611c38bc087a162ce5af5e54063205a18138c0` |
| 4 | `lemma` | [cfcₙAux_injective](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-aux-injective.md) | 96 | `result-track:240458f8816638144892e02d298e536c3132b33c10d15f57689f744b113f33a2` |
| 5 | `lemma` | [spec_cfcₙAux](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/spec-cfc-aux.md) | 100 | `result-track:8589760442bbd411f5f923a74507f5d7227a9705fc37886bb8ad3de8e479de66` |
| 6 | `lemma` | [isClosedEmbedding_cfcₙAux](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isclosedembedding-cfc-aux.md) | 107 | `result-track:7d41ecb67f079346e87838ff5f7ea0edb427c849dc13fd365c66f074f3fc215a` |
| 7 | `lemma` | [cfcₙAux_mem_range_inr](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-aux-mem-range-inr.md) | 117 | `result-track:7b5ad1ada6d4719effeb911d7d9bd254e6938569588a57fcd871b040d7d21ef9` |
| 8 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/rclike-nonunitalcontinuousfunctionalcalculus.md) | 136 | `result-track:cab48aae0a79ed0250cf74491a5f0fbbf6053ed7e961a01eff95b8c05bb10393` |
| 9 | `lemma` | [inrNonUnitalStarAlgHom_comp_cfcₙHom_eq_cfcₙAux](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/inrnonunitalstaralghom-comp-cfc-hom-eq-cfc-aux.md) | 166 | `result-track:dd9dd23ebd44e799cb27a78f9ce334ce470b35a36bf7bf020e14dc844c62ff68` |
| 10 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculusIsClosedEmbedding](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/rclike-nonunitalcontinuousfunctionalcalculusisclosedembedding.md) | 179 | `result-track:8f93f1858774155a975ef8f6e510c487db18d60ba7d85ed49742ff9a5ee589de` |
| 11 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_quasispectrumRestricts](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-iff-isstarnormal-and-quasispectrumrestricts.md) | 201 | `result-track:e36aa10517ffaf5a642a564155d6940d716b4dd6c86cd10ed6251df59953ab2d` |
| 12 | `lemma` | [IsSelfAdjoint.quasispectrumRestricts](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-quasispectrumrestricts.md) | 215 | `result-track:5dc0e50aff99ae473b3ce470a7b762ef15c7a8a21af81849ff5273d6733f953a` |
| 13 | `lemma` | [QuasispectrumRestricts.isSelfAdjoint](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/quasispectrumrestricts-isselfadjoint.md) | 220 | `result-track:74d5ac6aa518e9ffede22de0344e1e4979797d8e0f0775bfd4ea7a9deb9d53f4` |
| 14 | `instance` | [IsSelfAdjoint.instNonUnitalContinuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-instnonunitalcontinuousfunctionalcalculus.md) | 224 | `declaration-track:18f496f7d98069d9b0a2f36e3714e43df796526c73b27e76e7658f48e109f647` |
| 15 | `lemma` | [IsSelfAdjoint.spectrumRestricts](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-spectrumrestricts.md) | 238 | `result-track:5f0c0cdd8b144ed9e06e2aaed759828d6283d7be4ef6dd56087acef13ac6873d` |
| 16 | `instance` | [IsSelfAdjoint.instContinuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-instcontinuousfunctionalcalculus.md) | 242 | `declaration-track:b28aca8e65a0dc261a50bf734ab6d4dc8f40d85a35c9a2f8c98519bc251fcaed` |
| 17 | `lemma` | [IsSelfAdjoint.spectrum_nonempty](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isselfadjoint-spectrum-nonempty.md) | 250 | `result-track:d0bb7ec5b030d09a0a2dad208e5c21e971fae1694907c44d509f5dc2ba9cbc25` |
| 18 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-exists-sqrt-of-isselfadjoint-of-quasispectrumrestricts.md) | 263 | `result-track:d040aeb2daa131e70e88b73b708ec3156e211216cfcde2b7cd802e1aa555a720` |
| 19 | `lemma` | [nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/nonneg-iff-isselfadjoint-and-quasispectrumrestricts.md) | 285 | `result-track:c149110efe4dc021af44c50aa12ebf16dd49e5c01b2e49e7673a60ae78776251` |
| 20 | `instance` | [Nonneg.instNonUnitalContinuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/nonneg-instnonunitalcontinuousfunctionalcalculus.md) | 293 | `declaration-track:ac8a378fa4e0c502e9024f4de185c49944defa766d936eab6711aaed7699f902` |
| 21 | `lemma` | [Commute.mul_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/commute-mul-nonneg.md) | 300 | `result-track:60671b5e2cecb7fb4bf3cb53a7e2e8c259f03dfdfb205d3c8471e4697420e233` |
| 22 | `lemma` | [commute_iff_mul_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/commute-iff-mul-nonneg.md) | 311 | `result-track:b62792aef2dadd7d16a276e747523df9a6be9d0171cdeac99d18cf3c20b52587` |
| 23 | `lemma` | [NNReal.spectrum_nonempty](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/nnreal-spectrum-nonempty.md) | 319 | `result-track:2648f8a5b6b94a27aabcbe9ad36d54db272d9f81d490875da097ee76610f75da` |
| 24 | `instance` | [Nonneg.instContinuousFunctionalCalculus](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/nonneg-instcontinuousfunctionalcalculus.md) | 333 | `declaration-track:e0fb12797283940405e131a7da47a4e6e8128ec5cbf43e551d88b161fc1ac2f2` |
| 25 | `theorem` | [IsStrictlyPositive.commute_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/isstrictlypositive-commute-iff.md) | 339 | `result-track:884a2a71f839cdfb1b29de762f782db382c9e8d85292ae922aa4c36e9b8b04d4` |
| 26 | `lemma` | [cfcHom_real_eq_restrict](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfchom-real-eq-restrict.md) | 354 | `result-track:9f27838a8449f7e17bdf6352946ec2dcdb5379a57938c24f025edd3057a79bc6` |
| 27 | `lemma` | [cfc_real_eq_complex](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-real-eq-complex.md) | 360 | `result-track:009ae2e4bdc8d0b2a2d45ff7792e295c0e8080f641ceeca1ff61287a2446eaff` |
| 28 | `lemma` | [cfc_complex_eq_real](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-complex-eq-real.md) | 365 | `result-track:073f732484c59bf87fd042ca381f4b459df4315f805c611fb7a639e2f57780e0` |
| 29 | `lemma` | [cfcₙHom_real_eq_restrict](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-hom-real-eq-restrict.md) | 382 | `result-track:2dbc97f656af56ce1630c7b18521bef84d90f507a07fe40075b1b2ad8633296f` |
| 30 | `lemma` | [cfcₙ_real_eq_complex](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-real-eq-complex-source-edition-2.md) | 387 | `result-track:14e9869849bafabc4ec7a20af5c410ab0661b45b752a9f38df7ec271576ff62d` |
| 31 | `lemma` | [cfcₙ_complex_eq_real](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-complex-eq-real-source-edition-2.md) | 392 | `result-track:b0b78311458c68ed9dfa3444052be85a60dd3eaae275318e3793fcbae912e3aa` |
| 32 | `lemma` | [cfcHom_nnreal_eq_restrict](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfchom-nnreal-eq-restrict.md) | 412 | `result-track:ccacfe94940a23173915e66d437980a1867a33b5807607277931fda619f549fd` |
| 33 | `lemma` | [cfc_nnreal_eq_real](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-nnreal-eq-real-source-edition-2.md) | 417 | `result-track:a9df4043b06fcac269d7277fdbdb0ddd8c1e2e2d126704ad2b10e773f9bdb355` |
| 34 | `lemma` | [cfc_real_eq_nnreal](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-real-eq-nnreal.md) | 422 | `result-track:53b208e89248661db5489eab8eeafa2594ecdd7b360b243ea2a7a09b17e11311` |
| 35 | `lemma` | [cfcₙHom_nnreal_eq_restrict](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-hom-nnreal-eq-restrict.md) | 439 | `result-track:5883a10f9b7c32320cd538e878d809b808b2b097340696713baa447a29851abe` |
| 36 | `lemma` | [cfcₙ_nnreal_eq_real](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-nnreal-eq-real.md) | 444 | `result-track:108788cdb8ab2883b52fbd81a2b6d2f9723c4fb7b54caa9690add9efc79545ff` |
| 37 | `lemma` | [cfcₙ_real_eq_nnreal](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusInstancesNamespacedPublic.lean/declarations/cfc-real-eq-nnreal-source-edition-2.md) | 449 | `result-track:d6af09b60f1cf35bcb6e8aba150db90579c2877659c853d057568b66944e90a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74799ad3b2f7a4cf34f0d5afb12ba2ad7e47c5f64cbe7ad7c2052c89fab0aa5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Instances/Variant1761b36f957a2bfc1ce19af4900bc69d172434ee56321d3fd27a8b4dc5821006.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
