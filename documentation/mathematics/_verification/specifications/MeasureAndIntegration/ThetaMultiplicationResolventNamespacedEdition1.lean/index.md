# Verification target: Theta Multiplication Resolvent Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c4be0faa08d1b08359b73bda3b1fc5da3afd99",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c4be0faa08d1b08359b73bda3b1fc5da3afd99`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imaginaryShift](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/imaginaryshift.md) | 22 | `declaration-track:d25b2733d59e8cc03de7631ba47a60c76c345e839b97651f9132b74d485b6a8a` |
| 2 | `theorem` | [imaginaryShift_conj](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/imaginaryshift-conj.md) | 24 | `result-track:bb9746fc7348ee672d0f6d93c99e6b5438acd73f29809ccf38a54d5ff9a05594` |
| 3 | `theorem` | [denominator_ne_zero](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/denominator-ne-zero.md) | 27 | `result-track:468093c624d50dd62ea9088a922b2c5b21cbbcdbc7a233d124d0f582782d3e05` |
| 4 | `theorem` | [norm_denominator_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/norm-denominator-sq.md) | 32 | `result-track:d17ce483d3d1b758efdd273f8f8defe2903901b73ade2fab5c5059b568299364` |
| 5 | `theorem` | [one_le_norm_denominator](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/one-le-norm-denominator.md) | 37 | `result-track:e24a14004441ffcc2a7e975c52f6fce9f9b1832d52e4c01306696b7d789b8f42` |
| 6 | `theorem` | [coordinate_le_norm_denominator](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/coordinate-le-norm-denominator.md) | 42 | `result-track:846dfe9517c3ef68aeac243122c45623421e4a8c69bd8ab054fe5870394046c7` |
| 7 | `theorem` | [reciprocal_bound](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/reciprocal-bound.md) | 47 | `result-track:070a7376a1a70224e4a629de6e88fbbedc74f72316cacc789802b9ee5ab0143d` |
| 8 | `theorem` | [weighted_reciprocal_bound](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/weighted-reciprocal-bound.md) | 52 | `result-track:3bab919866dd6cdfa444e818b2e90ccc9d8fbd61966bd24ec31748cf686bc67a` |
| 9 | `theorem` | [resolvent_memLp](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-memlp.md) | 60 | `result-track:52b580df69787a9a0818725aa25aa0d86538e59dd9e8c9e5738be5cb6b841819` |
| 10 | `def` | [resolvent](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent.md) | 70 | `declaration-track:462e51a9fa46c42808d028788a65b5f62b6aed38ec2285eb0d4c2f483c74f3d6` |
| 11 | `theorem` | [resolvent_ae](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-ae.md) | 73 | `result-track:8bb66ecd3777f8b33f842f72da47235939f76b3463bb49e93672e159b20ff3f2` |
| 12 | `theorem` | [resolvent_mem_domain](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-mem-domain.md) | 77 | `result-track:550022141d7753f6e685734e7e1fa665e16e09da5d56da7712335b371194d516` |
| 13 | `def` | [resolventDomainVector](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolventdomainvector.md) | 93 | `declaration-track:62b5861f8c762654fe23b69a82114f34955f8d053273a312c0e08a3ec277243f` |
| 14 | `def` | [shiftedCoordinate](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate.md) | 97 | `declaration-track:7ee45c8f021363524cfddad4694719f3fb13126b13d2877ba7cd78cdf2c15ef9` |
| 15 | `theorem` | [shiftedCoordinate_apply](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate-apply.md) | 101 | `result-track:83c80228e0848747087204d8be6fc45fbdf34e22262eda4118d693009d0ac59a` |
| 16 | `theorem` | [shiftedCoordinate_ae](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate-ae.md) | 105 | `result-track:ed286cf23bb458cd2bb837cf5d21738453a3ec593b6c797b3fdfb7cf6a04bdf9` |
| 17 | `theorem` | [shiftedCoordinate_resolvent](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate-resolvent.md) | 117 | `result-track:f4ec73472d1fd36e0406fde0c7e0481c0e3d3bfae30a0fe5aad2fe3267549034` |
| 18 | `theorem` | [shiftedCoordinate_surjective](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate-surjective.md) | 126 | `result-track:b3bea07ce006844956155e01fa20012bea6bf6f55ba80012e6f33e5a9e10f5c5` |
| 19 | `theorem` | [shiftedCoordinate_norm_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/shiftedcoordinate-norm-sq.md) | 130 | `result-track:8485827e26df1664096549485a7437213f6be8ac751aed3a1ca7c4ae5d2292ca` |
| 20 | `theorem` | [resolvent_graph_norm_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-graph-norm-sq.md) | 138 | `result-track:d0ff15b4090eff68a16bcc89012793e84c7872b96a1d13e96070f0ae16bffda8` |
| 21 | `theorem` | [resolvent_norm_le](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-norm-le.md) | 145 | `result-track:3041d73282e0d89756c7baf129d34b1b5392ae950d41a6e67e6fbdbe9b337f05` |
| 22 | `theorem` | [resolvent_shiftedCoordinate](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-shiftedcoordinate.md) | 151 | `result-track:87b0fab4f4ce4abe4e39d5a972ed9c5d9bf2f1d99bb15899335b6efb1c7133e8` |
| 23 | `theorem` | [resolvent_add](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-add.md) | 158 | `result-track:3ce1cc20465224e2f7fde57e0121faf8015fb9b0c9b70c976722404301a59174` |
| 24 | `theorem` | [resolvent_smul](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolvent-smul.md) | 171 | `result-track:d8092fd371724eae9bc96fb9316764617ab970816259ca5b60bc13428b466d04` |
| 25 | `def` | [resolventLinear](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolventlinear.md) | 183 | `declaration-track:fe2d77ee5069a2e61f18db82767c645c18efabaefb919367f3bb76960a2e7d7b` |
| 26 | `def` | [resolventContinuous](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolventcontinuous.md) | 189 | `declaration-track:e7f3ce6a06a887cd2c40678d734e14ecab06197fa13bd9cb77419009abc56844` |
| 27 | `theorem` | [resolventContinuous_apply](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/resolventcontinuous-apply.md) | 194 | `result-track:c7ce3558f744f7483e0f364284dc5831dcb33ff9ff248c0b5bbf4d38cabe1ddb` |
| 28 | `theorem` | [norm_resolventContinuous_le_one](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/norm-resolventcontinuous-le-one.md) | 197 | `result-track:cb748dde3ab9ed47129d131895a31fe02aaa4fbd237c8a37907c5137eab9f73f` |
| 29 | `theorem` | [adjoint_domain_subset_of_dense](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/adjoint-domain-subset-of-dense.md) | 204 | `result-track:7ab52409dbd3939d0295c21c087269411fd5177c1f7f555bd2321e36f6b58bb0` |
| 30 | `theorem` | [coordinateMultiplication_isSelfAdjoint_of_dense](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/coordinatemultiplication-isselfadjoint-of-dense.md) | 236 | `result-track:6a069463449083889fe74446fb441651a81911ec116474efc3e0836dc7de31a8` |
| 31 | `theorem` | [coordinateMultiplication_isSelfAdjoint](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/coordinatemultiplication-isselfadjoint.md) | 246 | `result-track:3c0335aff1bc57aff7ad6eb86a1092a6c2b77aeaaf629109c3d3181637d89b26` |
| 32 | `theorem` | [coordinateMultiplication_isClosed](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition1.lean/declarations/coordinatemultiplication-isclosed.md) | 251 | `result-track:e85260193180334be1348ca0e9cc8bc622b27c21548a927cc68d63c393aa2bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a021486cab14f018011c90e3a38abcc5fa97e6caa9fe7716c52d783bae56ea3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant325614d474e52be7e5a8bb63a241a1ec0795c1ddedaa446c57237ac4618a523f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
