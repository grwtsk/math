# Verification target: Vector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5a10d50af788618bea7e02100745578c59327d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5a10d50af788618bea7e02100745578c59327d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Affine.Transcendental` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AffineVector](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/affinevector.md) | 47 | `declaration-track:536ee0860377d90ceb5f83f58a74eb30ab2ab9c7373486e361acb2448f82fc2d` |
| 2 | `def` | [ofIntervals](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/ofintervals.md) | 58 | `declaration-track:6b4c341428f182f5f30f0862459961c5effb381786395c016f49807a5c91f184` |
| 3 | `def` | [toIntervals](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/tointervals.md) | 63 | `declaration-track:33c573df421a7feb90053787b77433b773848938034b5164080a248a66b240ac` |
| 4 | `def` | [add](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/add.md) | 69 | `declaration-track:64b89cad8f7c7d3f3448d62eb4955a82e51549ddb10a2362eb123211f8fb653d` |
| 5 | `def` | [sub](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/sub.md) | 73 | `declaration-track:722dcc418f7188cc62fac7b427347585781e0635a6cb994168e58fca437e25da` |
| 6 | `def` | [neg](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/neg.md) | 77 | `declaration-track:7fc2ef4dced3c3499c94d678de558522254809cdd068f3161744c2d794975bb8` |
| 7 | `def` | [scale](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/scale.md) | 81 | `declaration-track:835dc7330a5d7b660e937d0bb8a8da66a51671d21daaa88fd96e7f2c519bade3` |
| 8 | `def` | [sum](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/sum.md) | 87 | `declaration-track:4b4ea1c58613db4089ed40828ed6794f66c82220e57838e51a8c4e170a05ed3e` |
| 9 | `def` | [mean](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mean.md) | 91 | `declaration-track:ee04dcfb2c90bee8d4e087cf14c1412c23356917cc6012f84ba36b6f0bd7b1eb` |
| 10 | `def` | [dot](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/dot.md) | 96 | `declaration-track:c82863c8bea48122291621f203184a31983a26907925f245c530b57d7b9614e6` |
| 11 | `def` | [centered](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/centered.md) | 105 | `declaration-track:717d075f77acb5f3eb5e7adcc9d802b96b7ad404a8a2be428f332c076924dc8b` |
| 12 | `def` | [variance](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/variance.md) | 110 | `declaration-track:5246e7ae50c68a7001fa6bcf7d264859c5413fbf14e10731e522cdee25683cf3` |
| 13 | `def` | [layerNorm](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/layernorm.md) | 123 | `declaration-track:e6fed078187874e555fdc0af46cb7b5e506dc32d6cd78d6b819116ff179d266c` |
| 14 | `def` | [shiftedExp](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/shiftedexp.md) | 147 | `declaration-track:ec06bb9443bd6a309b786db835fd9f89e34b25878b156df8f73c4a99481ca4af` |
| 15 | `def` | [softmax](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/softmax.md) | 161 | `declaration-track:620b1916a7cf16eb26cc094d053ca2253fe17b061f2adcb09a392fef61a8353b` |
| 16 | `def` | [attentionWeights](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/attentionweights.md) | 178 | `declaration-track:5fe81d8e065e5e2f5db90d748aba87d37b4ad562e70d04d63c29b74986e8ad3a` |
| 17 | `def` | [applyAttention](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/applyattention.md) | 189 | `declaration-track:45b08d047415ca79dd954e1d370d1425cb320029eb374a4dcd793fd7d4f8de4b` |
| 18 | `def` | [gelu](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/gelu.md) | 207 | `declaration-track:adb6283bec49442cbdb98aae954ea936a5d42846ff2cd54dccfe4fd6a642e592` |
| 19 | `def` | [mem](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem.md) | 229 | `declaration-track:19afc8771598b3d127a1d2bade546501a35104e7f2a12ad85d3e62fd5a33b1e1` |
| 20 | `theorem` | [mem_zero](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-zero.md) | 235 | `result-track:4d4bee9358c9606e5b019b2ac24ac499e52a9dcac7c387150ce01117f4a38940` |
| 21 | `theorem` | [linearSum_map_scale](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/linearsum-map-scale.md) | 243 | `result-track:68b3edafe856626bf3d0436b717dc28d1acb2d33676c003fa9440fbfc107395b` |
| 22 | `theorem` | [mem_scale](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-scale.md) | 258 | `result-track:55f1a816a41caaf6ec133ab4bcd8841ae6596b8c02868558b7a9c92691621e17` |
| 23 | `theorem` | [mem_foldl_add](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-foldl-add.md) | 276 | `result-track:a9b4e941bcc2b0b737abc6aa0a1772104d7587cf588d357ec80b0d936a8a9df6` |
| 24 | `theorem` | [mem_sum](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-sum.md) | 315 | `result-track:492235c5ab93fd41027cbaead010a142011255916d1f3a681980b2df35eeaee0` |
| 25 | `theorem` | [mem_mean](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-mean.md) | 325 | `result-track:32f745b6664af15ae4b6866feddfe79e5c3d758985cb2283177976becc2051ee` |
| 26 | `theorem` | [mem_centered](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-centered.md) | 350 | `result-track:a0ccf8d7f25586cf2e64ef32983da10c222f1277c4e6d016ad4273bd8e2e35cb` |
| 27 | `theorem` | [mem_sq_centered](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-sq-centered.md) | 378 | `result-track:2fa8b4ca1c3576939cce712f0d7bdf618d4dcdaa676a0dbdc8f73fe0ec448562` |
| 28 | `theorem` | [mem_variance](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-variance.md) | 407 | `result-track:87b4fd197cfa130a9a86318dd2c6213832d792e0094084074351de5726ae8a01` |
| 29 | `theorem` | [mem_layerNorm_elem](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-layernorm-elem.md) | 437 | `result-track:8c46162acb9f9a9796f99c006f3c4bf7f66489c754658fd53cc75b37027b9a90` |
| 30 | `theorem` | [length_zipWith3_aux](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/length-zipwith3-aux.md) | 457 | `result-track:9787ea495ce0dcfc1f12f19228e83e15324e0e7607b8a72aea93863612c0d018` |
| 31 | `theorem` | [getElem_zipWith3_aux](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/getelem-zipwith3-aux.md) | 473 | `result-track:bf7c4edbe7c21a8b2c73e5a2acf46bb7b54c4d8b88e3c1893eef0b418a8b0eee` |
| 32 | `theorem` | [length_do_pure_rat_real](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/length-do-pure-rat-real.md) | 497 | `result-track:2521103bd18302bbc94d7e5283517c01909f608601bd4331cd64995521e69387` |
| 33 | `theorem` | [getElem_do_pure_rat_real](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/getelem-do-pure-rat-real.md) | 510 | `result-track:bfd71e01a1ecfdb95ccaaebe1e759052ee3f90b9191390c9a1d0fd348f492ea9` |
| 34 | `theorem` | [getElem_proof_irrel](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/getelem-proof-irrel.md) | 532 | `result-track:41809c2d01cc3aff82b3ed75d5a348d6e9e6edbe1f4aff416388d2331bf2efa6` |
| 35 | `theorem` | [mem_layerNorm](../../../../ProbabilityTheoryAndStochasticProcesses/Vector.lean/declarations/mem-layernorm.md) | 554 | `result-track:3e209f7b2c7bf088fc45174bcab4caf87369450661f636a167c665ed59f05141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b3e2d1d87e9882843cd3b3759dcdf86a227249ad181bb607e12d877fd588c93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
