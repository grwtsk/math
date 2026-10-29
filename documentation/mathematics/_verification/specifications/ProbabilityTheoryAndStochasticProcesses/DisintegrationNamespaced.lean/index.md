# Verification target: Disintegration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba43ee13e0b7da787fe27cb685b7a531403c97ef",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba43ee13e0b7da787fe27cb685b7a531403c97ef`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CondCdf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IntegralCompProd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condKernelReal](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/condkernelreal.md) | 72 | `declaration-track:189c9abfc8ba8084df4aa6f3fa3acd156caf2ee834aa6ffa08fd58e13039245d` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/instance.md) | 77 | `declaration-track:14dcb3f78f77a42f4f81cf71c4249728f3619fc78a37dd9623f9965e05353ed4` |
| 3 | `theorem` | [condKernelReal_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/condkernelreal-iic.md) | 80 | `result-track:1874820f1f129dc76128190ac020c3ec1460961f8a525d6b7d2651aa1c8bc7bc` |
| 4 | `theorem` | [set_lintegral_condKernelReal_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernelreal-iic.md) | 85 | `result-track:b4a0729630a7825dc67eab204f17e7b6b38e0fb92081ab643ef8471215c22675` |
| 5 | `theorem` | [set_lintegral_condKernelReal_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernelreal-univ.md) | 91 | `result-track:78283d5ec0aa3984a33769235f024714cb3163506ac1c394eaaad271a93be601` |
| 6 | `theorem` | [lintegral_condKernelReal_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/lintegral-condkernelreal-univ.md) | 97 | `result-track:2e1b1ef629faa7d5b639fda19ecc1ab1b5caeeb7d287ae4b3475d099b854bfa0` |
| 7 | `theorem` | [set_lintegral_condKernelReal_prod](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernelreal-prod.md) | 105 | `result-track:98775b8b54bee598564a3ca59c0caaf0e8266552cab51cc8b136f026dab4b9b6` |
| 8 | `theorem` | [lintegral_condKernelReal_mem](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/lintegral-condkernelreal-mem.md) | 143 | `result-track:3cf624528194a5d761171a7b0701a205cc26097c5ee734ab7c07de652473fd78` |
| 9 | `theorem` | [kernel.const_eq_compProd_real](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/kernel-const-eq-compprod-real.md) | 218 | `result-track:d6218a21bd6bc1c084a16aa02c0cefc39d038e9f6e362271b9cfde23a4f0e5a5` |
| 10 | `theorem` | [measure_eq_compProd_real](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/measure-eq-compprod-real.md) | 227 | `result-track:7456d1d80a5563e65844bde06fd8425197d1020177b51831923e3089258d5693` |
| 11 | `theorem` | [lintegral_condKernelReal](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/lintegral-condkernelreal.md) | 232 | `result-track:e214b10234b2c52754b2dba2e7d81a2215245f65f5e964a25d6ad170ea30aba5` |
| 12 | `theorem` | [ae_condKernelReal_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/ae-condkernelreal-eq-one.md) | 239 | `result-track:381e59b644835ad11c1739d39b0d1bc90792c6ddca804748aa2915db38b36b1b` |
| 13 | `theorem` | [exists_cond_kernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/exists-cond-kernel.md) | 272 | `result-track:959bec9af663dfed6b2bc231cb32018f2cdee145fa65e22eefaa44aa3cb6d643` |
| 14 | `theorem` | [condKernel_def](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/condkernel-def.md) | 360 | `result-track:e4fc1ac738a7aff61d3dbe2a14dbe7a3ff3b558d263c70b73e8b2bcfabe1c658` |
| 15 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/instance-source-edition-2.md) | 364 | `declaration-track:991ec26f055386a7d7e851fdb76b3b0799ea900b88d67d436ef51feee20114ae` |
| 16 | `theorem` | [kernel.const_unit_eq_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/kernel-const-unit-eq-compprod.md) | 367 | `result-track:3f16fa5fcd43e424122a58ed140733352cdd74b92de91c29001cff213a95a82b` |
| 17 | `theorem` | [measure_eq_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/measure-eq-compprod.md) | 376 | `result-track:16c46f87b959cbe855c9dc0299b38384649d29bffaab212bf2932ce3a770012b` |
| 18 | `theorem` | [kernel.const_eq_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/kernel-const-eq-compprod.md) | 385 | `result-track:bdbb068f45fa4bbee6c3f0757af6a1f04a0e4509d699e1c94e1b1795d0eac2ab` |
| 19 | `theorem` | [lintegral_condKernel_mem](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/lintegral-condkernel-mem.md) | 393 | `result-track:4db5b883604f163c1ebb6cc930902c023714b1ffbe3a839ba50c91ac31160b2e` |
| 20 | `theorem` | [set_lintegral_condKernel_eq_measure_prod](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernel-eq-measure-prod.md) | 399 | `result-track:f7fb4263d90a68bb9463ea7cc202e8e7f0f53d3408a15c41e73232851fec3316` |
| 21 | `theorem` | [lintegral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/lintegral-condkernel.md) | 416 | `result-track:66d358c29a8b42a6260cf7d004175f2e82c519bc2ff4dcfd006f6141ad1feba2` |
| 22 | `theorem` | [set_lintegral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernel.md) | 423 | `result-track:06cffdd70a0cadc5c429e8d0899c16caa90db7304f6e3c5a68134f474a60b14b` |
| 23 | `theorem` | [set_lintegral_condKernel_univ_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernel-univ-right.md) | 432 | `result-track:cecca55baaf52cfefc35c4cae83d9aeb0753fcd2e9357d125f707610059a9b5b` |
| 24 | `theorem` | [set_lintegral_condKernel_univ_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-lintegral-condkernel-univ-left.md) | 438 | `result-track:45656a963b7c8c435b404801fad43354f661a3e666ddf4334ddb729e19488294` |
| 25 | `theorem` | [Disintegration Namespaced](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integral-condkernel-source-line-448-occurrence-2.md) | 448 | `result-track:42eeda0331b3f55eb15a291348cdecc812c1166b1c2c90a9d3b82e2027eee000` |
| 26 | `theorem` | [integral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integral-condkernel.md) | 455 | `result-track:236b46b2ba214c18de9b62027507fbdd1c7efdc4ac46a4f50df4d464e607a1a9` |
| 27 | `theorem` | [set_integral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-integral-condkernel.md) | 464 | `result-track:699c7b5be8c0388b7432d9f9c4ce9262aa56e28a1807d92958de0e5e49455b0d` |
| 28 | `theorem` | [set_integral_condKernel_univ_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-integral-condkernel-univ-right.md) | 474 | `result-track:c65d0f2922b6aab9c53277f172f721920d474c4041c6a58b6df345f621c5f221` |
| 29 | `theorem` | [set_integral_condKernel_univ_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/set-integral-condkernel-univ-left.md) | 480 | `result-track:b6e89704f7f7dd59fbcc255b3b124587252a876d475a014234392e6b035f0914` |
| 30 | `theorem` | [AEStronglyMeasurable.ae_integrable_condKernel_iff](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/aestronglymeasurable-ae-integrable-condkernel-iff.md) | 505 | `result-track:96f7a26b617cf9db5dc9f4d2f22f1b916af602d15cc4bffb00bccc217a37d516` |
| 31 | `theorem` | [Integrable.condKernel_ae](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integrable-condkernel-ae.md) | 515 | `result-track:bed6775c4a4c0408d3652e6aedd5fbbff6ed531cb74915e84964c125fb5ee7f7` |
| 32 | `theorem` | [Integrable.integral_norm_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integrable-integral-norm-condkernel.md) | 522 | `result-track:09acab0ea09b9f8e5dd8c00e6e0aeebdf38881b676d2b6414f585b4389c5295d` |
| 33 | `theorem` | [Integrable.norm_integral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integrable-norm-integral-condkernel.md) | 529 | `result-track:00d5b5809e5b0ffa0d90482fec06b4a4ff9b313a3d6c723090ae0ddac16b26f8` |
| 34 | `theorem` | [Integrable.integral_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationNamespaced.lean/declarations/integrable-integral-condkernel.md) | 538 | `result-track:f049608839f7ab2cf046256d39eee31829d933c7615d8e4fc5f6879db62753cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=363de8be653d3bc626b9159594b28e478825817c64ecb4d5b0e5b351c6ec19ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
