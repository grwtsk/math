# Verification target: Local Extr Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faab416bde2c48e592a7bb0234ebf6309147840e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faab416bde2c48e592a7bb0234ebf6309147840e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posTangentConeAt](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/postangentconeat.md) | 83 | `declaration-track:e8f3f2b8e247f72460d3c4acf0be463d5bb1495c2b3b17c57a7921fade849158` |
| 2 | `theorem` | [posTangentConeAt_mono](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/postangentconeat-mono.md) | 87 | `result-track:973eb32b0e1d1aa4ad4099da7b20ca49d4adc5c681f897c8c4596a0fc6e6fb72` |
| 3 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/mem-postangentconeat-of-frequently-mem.md) | 91 | `result-track:92fd3cbd33915338f0c1962d5f938766a608d97ac435f21d6ad5176776b6b6ef` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/mem-postangentconeat-of-segment-subset.md) | 104 | `result-track:9589610d2c17452982947ef484e76db73df95ec7164ad3ce35ce9982375d506a` |
| 5 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/sub-mem-postangentconeat-of-segment-subset.md) | 113 | `result-track:7b199fe60fd821259acbf6b53ac184f4bdbc70334dcc5ea13f7ee8fe1af34fed` |
| 6 | `theorem` | [posTangentConeAt_univ](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/postangentconeat-univ.md) | 118 | `result-track:60a306004d4538d89b8223dc0d19414704d7d958507401b9ad1c78f5cbcdc4ab` |
| 7 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmaxon-hasfderivwithinat-nonpos.md) | 127 | `result-track:5f4a7965a706851f51e6d7f6fdc411ee0b16854943aa34a6c9d4460d42c425ee` |
| 8 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmaxon-fderivwithin-nonpos.md) | 141 | `result-track:e0f64b5107b4b0ad20f5d16ee630e16ad30162881de57a535d024fd847b0d23d` |
| 9 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmaxon-hasfderivwithinat-eq-zero.md) | 150 | `result-track:fd0ff4ea9bacd88ded159540c9dd34c2f5227df3574600604380dd2e09a0e7fd` |
| 10 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmaxon-fderivwithin-eq-zero.md) | 157 | `result-track:8ec9c5a391ccf39a18f6b73421201a394e344c6dcbe6c0a5122d135de4431fc5` |
| 11 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalminon-hasfderivwithinat-nonneg.md) | 167 | `result-track:376565e2466a3c5bb9304dfb934b970ea2c4d7fe253e5833fccc791af5654fb6` |
| 12 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalminon-fderivwithin-nonneg.md) | 173 | `result-track:9d9f1195619f74b75eb69c23c636f060ea23a8ac97253a0f4fc4603fad6343d5` |
| 13 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalminon-hasfderivwithinat-eq-zero.md) | 182 | `result-track:3b1d56cae492b728b45b8d7dd22b90f202dcb26d7399f321e6825bfec56c9756` |
| 14 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalminon-fderivwithin-eq-zero.md) | 189 | `result-track:3785b567c884e6b8587b8bf10ec585fb7cb4a1fd2031b601af2846c9101e6f0f` |
| 15 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmin-hasfderivat-eq-zero.md) | 198 | `result-track:1a8354e062105925fa1b3cd25a4b135ce1816000e670b5fd43510c240dbfbd35` |
| 16 | `theorem` | [IsLocalMin.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmin-fderiv-eq-zero.md) | 205 | `result-track:f6e5c3435943387860c73d4fcd748274c8f0d81b26f1ee2c7c2eacf0717dad4a` |
| 17 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmax-hasfderivat-eq-zero.md) | 211 | `result-track:8cc83e694340535835944c58d4cd2afb87b397740cdb036e6d06585991c4ee11` |
| 18 | `theorem` | [IsLocalMax.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmax-fderiv-eq-zero.md) | 215 | `result-track:d9dc5f8043da05de52027f14742f0abcaca6f8f8c06a6143fd2c9482e03cdc81` |
| 19 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalextr-hasfderivat-eq-zero.md) | 221 | `result-track:672ccdecbaa818b10636101b088a1226e39fb51b436071628f17f6bfacf8852c` |
| 20 | `theorem` | [IsLocalExtr.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalextr-fderiv-eq-zero.md) | 225 | `result-track:4c95ffcec636162c6e477cfdde8b922e6073ffa82cdf2e0253a6ca9817a8e2be` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/one-mem-postangentconeat-iff-mem-closure.md) | 238 | `result-track:532929dd10e5710f6fbbf1b45865c849ffce81ffc5f4200b35cddade9821849b` |
| 22 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/one-mem-postangentconeat-iff-frequently.md) | 254 | `result-track:987ab87f6439999ab550c945d4fbdd533839dd10bb7d4f07ab80b2adf4970492` |
| 23 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmin-hasderivat-eq-zero.md) | 261 | `result-track:fd342da72fe3d35ba9a90221f2125c00a117ae6409dfc480450757014417f123` |
| 24 | `theorem` | [IsLocalMin.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmin-deriv-eq-zero.md) | 265 | `result-track:ebc1edb83acca98bf7321d9971187dddf2fc36a2024e2b52b56bf306e9db5128` |
| 25 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmax-hasderivat-eq-zero.md) | 271 | `result-track:a8b66b8f02278d713b0108168c520cbf2f1f9d75fefaf5f2100bc78c21e7409d` |
| 26 | `theorem` | [IsLocalMax.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalmax-deriv-eq-zero.md) | 275 | `result-track:409757d76ae13bf973647fdc5ef3ce638d8f8a3999e2bfa587af2d833ae10c0e` |
| 27 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalextr-hasderivat-eq-zero.md) | 281 | `result-track:76cbf3f5fc49bba1cc4e9add4ec934d514a29ff473b65d4d188ba2ed40598d5a` |
| 28 | `theorem` | [IsLocalExtr.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicNamespaced.lean/declarations/islocalextr-deriv-eq-zero.md) | 285 | `result-track:b78e58d968c9f588215a4225f64e6717125e85a0a73d048ac1955f4d8076d110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65f23a844875dbee5b6cf5dee199e16bb61d0cb48d11ab639791dce9eaaf8825 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
