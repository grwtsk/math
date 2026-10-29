# Verification target: Trace Homology Comparison Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.SmoothFramedSurgery.SingleHandleComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TracePairEnd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracepairend.md) | 40 | `declaration-track:06d6f5f5c13e630b30c4c620d8459787b8727f9fc4d7cbdac7d4bcc9694cf0ba` |
| 2 | `def` | [TracePairEnd.boundaryManifold](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracepairend-boundarymanifold.md) | 46 | `declaration-track:ab00eebf5637530517d99b610e854a81445b46c11fa457550a6fe65cd9ab09bc` |
| 3 | `theorem` | [TracePairEnd.incoming_boundaryManifold](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracepairend-incoming-boundarymanifold.md) | 53 | `result-track:2dc532c6374a4f0810d6fa0b248e53a8a9197e6bfd30ff60964d1549cbf24efc` |
| 4 | `theorem` | [TracePairEnd.outgoing_boundaryManifold](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracepairend-outgoing-boundarymanifold.md) | 60 | `result-track:89e5e146538e012573b6d79ce87880f460c36c863c12f0b9e5c924a0270c4760` |
| 5 | `inductive` | [HandleConnectingSignConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/handleconnectingsignconvention.md) | 73 | `declaration-track:49cdb71a9c68bd16a19a7b82cd5aa92ba7821e4caef5d6b26ce1759fc4a95c57` |
| 6 | `structure` | [OrientedLongExactSegment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/orientedlongexactsegment.md) | 88 | `declaration-track:e8dd42e3355f52f46c3137b4714bcb3123ee54d16b25082305391a9fd5400ba3` |
| 7 | `structure` | [TracePairHomologySemantics](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracepairhomologysemantics.md) | 127 | `declaration-track:75b49109cf442614775043819d3344065f74461a40c49264ad4f169e8fb45254` |
| 8 | `def` | [connecting](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/connecting.md) | 188 | `declaration-track:1b56d93bd315b4696fd46152870fd8b886d5f86e155eeb4300b4dfa49b013337` |
| 9 | `def` | [boundaryInclusionAtDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/boundaryinclusionatdegree.md) | 210 | `declaration-track:0fc40ba351bba0c83b813ebf750044fcb50f25b4b352b781e927da2c85b22f69` |
| 10 | `def` | [absoluteToRelativePair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/absolutetorelativepair.md) | 231 | `declaration-track:82f6804669d6538e179614b6e4ed9c0bb611e299ffa8e684c44c41876a9df401` |
| 11 | `def` | [boundaryInclusionIntoTrace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/boundaryinclusionintotrace.md) | 252 | `declaration-track:c8d837e985af07b304531505af35bae5bda2493938900df3c155bf0eabf2016f` |
| 12 | `def` | [IsLongExactConnecting](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/islongexactconnecting.md) | 274 | `declaration-track:cdc64bb2f8247ef25e13c8da91ece2b52096f5f19dc3ff50a12c65995b9332d4` |
| 13 | `theorem` | [connecting_from_les](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/connecting-from-les.md) | 287 | `result-track:5322717e3964139446221281705dc30c8e492c481e9d96efed454e04364b614f` |
| 14 | `def` | [connectingSign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/connectingsign.md) | 294 | `declaration-track:19fb8faaeb5f697ceb4353500521f14fba990b61c135fb0af42a01c3b7275dc6` |
| 15 | `theorem` | [connecting_sign_outward_normal_first](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/connecting-sign-outward-normal-first.md) | 300 | `result-track:8d979ec61b69424129e968356cdb6aad9ec90795c4b3f6fea0a99e1d80610e40` |
| 16 | `theorem` | [exact_at_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/exact-at-trace.md) | 307 | `result-track:0925a260d18c6be36837d09175af2935ca51ad053f196206e112c2262558fade` |
| 17 | `theorem` | [exact_at_relative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/exact-at-relative.md) | 331 | `result-track:554c7448b31bdd463121a51970baa41951fc35cf058f24d62bb43b04dfa7f144` |
| 18 | `theorem` | [exact_at_boundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/exact-at-boundary.md) | 355 | `result-track:d9940b99d19adcfc5097283c7311a45663bfd73fbd5ae5f86cbd9b917e91c6ef` |
| 19 | `def` | [HasActualTracePairMapProvenance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/hasactualtracepairmapprovenance.md) | 382 | `declaration-track:a01220a8ec49570200b845ad90b553b00f0097fd7304a957d022934f3db47f36` |
| 20 | `theorem` | [maps_from_actual_trace_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/maps-from-actual-trace-pair.md) | 411 | `result-track:98fa9ac43e041aabcd5f3f93c2e25528f37d40541015f6bf3c1bd760f11a52bf` |
| 21 | `structure` | [TraceHomologyComparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/tracehomologycomparison.md) | 437 | `declaration-track:adc98cb45b585c0492c2afa1dce6580cf86707906f4212d04f3f892100ad5c90` |
| 22 | `abbrev` | [IncomingHomology](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incominghomology.md) | 522 | `declaration-track:4b05f24e74d2635f6eb2b441d8b2742d82afa29fe297d829554678068870d1f5` |
| 23 | `abbrev` | [DualHomology](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualhomology.md) | 527 | `declaration-track:f35e7f919b66d28f62ddfd37bf8bd458be8fa151b98df2a055be64686a5cc1f7` |
| 24 | `def` | [incomingAddCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingaddcommgroup.md) | 532 | `declaration-track:b88942f2a43c9d04fb28d4eed59b06090b3a8150db5324fa878a4e00ff727953` |
| 25 | `def` | [incomingModule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingmodule.md) | 538 | `declaration-track:ef3871a7b6b68fba85f8e7db720adb1cd046b02e3ed7752f2c89488b8ccd1ab4` |
| 26 | `def` | [dualAddCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualaddcommgroup.md) | 545 | `declaration-track:3da7ce948090c6c410b088c0d5db45825dab7e5b1110bb2e9c387096ebc725ab` |
| 27 | `def` | [dualModule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualmodule.md) | 551 | `declaration-track:660e2cbfebef66eecc7acbfc5c5fd438e7e4f041de5f36b22b15efefe03aa050` |
| 28 | `def` | [incomingBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingboundary.md) | 558 | `declaration-track:55347a6f6ffdad34623cd132308b50caef9f53a34fae1830ed653d9f319a8e2f` |
| 29 | `def` | [dualBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualboundary.md) | 575 | `declaration-track:6f47c7b6af813184bed6926045de77b7c0822480e93df67f375e79017be4f805` |
| 30 | `def` | [incomingDegreeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingdegreelinearequiv.md) | 591 | `declaration-track:7959d7572c4ffe116a5acdac041bddc998ca7327e251999020e73d96921e8d5f` |
| 31 | `def` | [incomingDegreeEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingdegreeequiv.md) | 602 | `declaration-track:3cfb289a986b0f357f986c7555a6891141e9f44c37cd48301024eef3ed45dc26` |
| 32 | `def` | [dualDegreeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualdegreelinearequiv.md) | 611 | `declaration-track:ab06ef87891add1f911e9c5c9ee2fd6df56452c19eb861bd622006836ec885e3` |
| 33 | `def` | [dualDegreeEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualdegreeequiv.md) | 621 | `declaration-track:af36d27872d6db0fd72b8be4fbb041e651af698079f63d874f90e99d69505f9b` |
| 34 | `theorem` | [incoming_eq_zero_of_degree_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incoming-eq-zero-of-degree-ne.md) | 630 | `result-track:c3b0e3bb8ac17ba27efb80ac7e6df23cf61dfc3b617de81305e11ece4a1c770f` |
| 35 | `theorem` | [dual_eq_zero_of_degree_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dual-eq-zero-of-degree-ne.md) | 647 | `result-track:a95c37a387fa7c7124eb0451d24e272714cf58bce214b74aaa7766acf13df916` |
| 36 | `def` | [incomingGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incominggenerator.md) | 664 | `declaration-track:81ff818b94447d21246523097379989ea68707b71410113a1f8c3648685c3ab6` |
| 37 | `def` | [dualGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualgenerator.md) | 672 | `declaration-track:0bac46913d79748fd46e090f0ec52f6fda54736a5365da3a8243625a4ebb4c1a` |
| 38 | `theorem` | [incomingBoundary_generator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingboundary-generator.md) | 680 | `result-track:1e90eb8648c4d2d5e50242c3794b1f9a89dd4b32d1c39d4e966aa60f682135a3` |
| 39 | `theorem` | [dualBoundary_generator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualboundary-generator.md) | 702 | `result-track:0f57a90a8648b0e2884deccfb14fd540df5b674c1a592135515b549d7821ad56` |
| 40 | `theorem` | [incoming_connecting_from_les](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incoming-connecting-from-les.md) | 723 | `result-track:d4feb844a6d1aaee8c1752c00204edca02477aea15585bf39b9477c10c2cb0ac` |
| 41 | `theorem` | [dual_connecting_from_les](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dual-connecting-from-les.md) | 733 | `result-track:64f49e58a70298bd28071fbc7055c3f8c89b581567b2b655dc03333d5915018a` |
| 42 | `theorem` | [incoming_les_provenance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incoming-les-provenance.md) | 740 | `result-track:5b0d15f188a1327f8110472f9e370773615ef18e0f7679b1be22f2b08ae4619e` |
| 43 | `theorem` | [dual_les_provenance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dual-les-provenance.md) | 749 | `result-track:9dadb78191c78162f97a6eac0e9436c38d51e8cc025a04ac609898133bfe095e` |
| 44 | `theorem` | [incomingConnectingGenerator_eq_attachingRepresentative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incomingconnectinggenerator-eq-attachingrepresentative.md) | 762 | `result-track:c5dd757fbbb571a8d887f7681a29a51849fa9afd147c7f3419bc8644b550a1b6` |
| 45 | `theorem` | [dualConnectingGenerator_eq_beltRepresentative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualconnectinggenerator-eq-beltrepresentative.md) | 787 | `result-track:a645e1a826550b329373d760502c1bea313ac0c1edb563c5313e948fafab4d5f` |
| 46 | `theorem` | [incoming_connecting_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incoming-connecting-sign.md) | 811 | `result-track:56a233a50652e4019bc72b42d20227f302f03279c3e629da8dadf4b0ca21a21d` |
| 47 | `theorem` | [dual_connecting_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dual-connecting-sign.md) | 838 | `result-track:79b1fcf81d23c15a15b3347b433543d1fc3687f33975c8b7577daae13f95e0c4` |
| 48 | `theorem` | [incoming_connecting_boundary_degree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incoming-connecting-boundary-degree.md) | 862 | `result-track:b6cd9014b2834572fc36f95c8076c1eda91c18b399c0df0b365aeb126c6ffaca` |
| 49 | `theorem` | [dual_connecting_boundary_degree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dual-connecting-boundary-degree.md) | 868 | `result-track:9aea46bd9ba5676c9ea9c0db04352d48fb435a249d05a44439fb79feff548901` |
| 50 | `theorem` | [incomingGenerator_represents_attachingSphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incominggenerator-represents-attachingsphere.md) | 874 | `result-track:3a3de466059e5d62ed1b67dabdf9e9dab495b62f37f9460efa2cdf790249060e` |
| 51 | `theorem` | [dualGenerator_represents_beltSphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualgenerator-represents-beltsphere.md) | 894 | `result-track:b37daba341b516fc421b65ffa503586d168edbf05fc57098e3a52086375177f5` |
| 52 | `theorem` | [incomingGenerator_normalized](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/incominggenerator-normalized.md) | 914 | `result-track:4c88f517305b246d28e1535cd9a865f4eb756975fc4e9b34ccaa8cec33b5fc7b` |
| 53 | `theorem` | [dualGenerator_normalized](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/declarations/dualgenerator-normalized.md) | 925 | `result-track:1478a8e2e3d3b0aeba53fb4745cf01cb2e998e2224e4e9b312a6d14c8ae36b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4a1bf23be8f2b5466827524858c80296ccec390680c0780fef53ab1a98ac9b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
