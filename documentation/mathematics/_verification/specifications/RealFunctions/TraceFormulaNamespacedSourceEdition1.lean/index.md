# Verification target: Trace Formula Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e35417765d0f67d10df9bfde04115defe717287",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e35417765d0f67d10df9bfde04115defe717287`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PlaceKind](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/placekind.md) | 33 | `declaration-track:233a09cd4918724d4ff33fdcd906f3a2523c1ba311295f11abf5870a37dadf91` |
| 2 | `structure` | [LocalPlaceData](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/localplacedata.md) | 40 | `declaration-track:1bf5cf3d92f04c32ef85f6cefe41fb5e6c99796ec5b37bf354b06d4a3fc677dd` |
| 3 | `structure` | [FiniteSpectralTestFunction](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitespectraltestfunction.md) | 52 | `declaration-track:d791b8bb14bf252183904348f36281f69ec3b2174df9047ce1a619cda640766c` |
| 4 | `structure` | [OrbitalIntegralRow](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/orbitalintegralrow.md) | 61 | `declaration-track:d1c63faa58953fa6037c82ccbe0543e89c7117b031f45fd83886ffe3dd4ee9b1` |
| 5 | `structure` | [FiniteOrbitalIntegralTable](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finiteorbitalintegraltable.md) | 73 | `declaration-track:02248a2fe8445f6da475f22355d75b0890ee3781836b5c3e5190b72a0540eefc` |
| 6 | `structure` | [SpectralTraceRow](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/spectraltracerow.md) | 80 | `declaration-track:f7f4e8534c4539ff44cc656de0c4abf280717b8bffaaac801b9afb21ddc79157` |
| 7 | `structure` | [TruncatedTraceTable](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/truncatedtracetable.md) | 94 | `declaration-track:e4cc8921e965e5c9c4de69499efb452f0346c10cebb9d668841349e7a3e68191` |
| 8 | `structure` | [FiniteTraceFormulaPayload](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitetraceformulapayload.md) | 106 | `declaration-track:b8f665a7ef74929b9765d0fa07691b098f36eb25db4bb0cf6ce05aa1d085ec1c` |
| 9 | `theorem` | [local_place_data_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/local-place-data-sound.md) | 115 | `result-track:36ccd5e84789d7c6a415f2aae4acddb76a8dd40d7b8b6e3f225f241fbbb35f12` |
| 10 | `theorem` | [finite_spectral_test_function_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-spectral-test-function-sound.md) | 120 | `result-track:3df7e20d5f45abbd9d655c72e4fd67b5d8ed2f2d3392819f70a2c1782149f119` |
| 11 | `theorem` | [orbital_integral_row_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/orbital-integral-row-sound.md) | 125 | `result-track:798b24c6c38b40dc7613988f0043b4d8d640d9e38fc311b1b22f13f08efeb3cb` |
| 12 | `theorem` | [finite_orbital_integral_table_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-orbital-integral-table-sound.md) | 130 | `result-track:624b0b7b1e852647970b35963d62fe88c09e1e7d00161117ef1c5839b13ba095` |
| 13 | `theorem` | [spectral_trace_row_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/spectral-trace-row-sound.md) | 135 | `result-track:6c7250035a22aacd6c06c15ee503ee87d8b18fa84beaa23b913007055f125274` |
| 14 | `theorem` | [truncated_trace_table_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/truncated-trace-table-sound.md) | 140 | `result-track:2cbb98e785386626e764903ffecbfac02a6a9a2d989f9fd5723e8cc9613c0c23` |
| 15 | `theorem` | [finite_trace_formula_payload_sound](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-trace-formula-payload-sound.md) | 145 | `result-track:3c5ba0f7cbd14b03945bb20e8c890e537dde3f53631d50f5a1de80d6412822d6` |
| 16 | `def` | [FinitePayloadOwnsGlobalTraceFormula](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownsglobaltraceformula.md) | 151 | `declaration-track:723308a9bdcb6a6afb52d9810743425a24d59e2402f9b798dc4ebf9d2c9afc54` |
| 17 | `def` | [FinitePayloadOwnsTraceFormulaConvergence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownstraceformulaconvergence.md) | 156 | `declaration-track:66ed882885f726de2f2500b71560d34b85aab3382f8e07d78247d4e407910635` |
| 18 | `def` | [FinitePayloadOwnsSpectralSideInterpretation](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownsspectralsideinterpretation.md) | 161 | `declaration-track:5490b9eb3291f2d749c6f0d2e83e6813c7d50feb13ad9bcaf28dd33158b0b5ab` |
| 19 | `def` | [FinitePayloadOwnsGeometricSideInterpretation](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownsgeometricsideinterpretation.md) | 166 | `declaration-track:130c9dc60073c0e81fac1975db2f8e45237d932affeb1665c9c561801bb56eeb` |
| 20 | `def` | [FinitePayloadOwnsSpectralGeometricEquality](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownsspectralgeometricequality.md) | 171 | `declaration-track:8d4f01d2121a479d68381bd5b07c8445f29ead0d399ce8d25158d9de31a19019` |
| 21 | `def` | [FinitePayloadOwnsPositivityConsequence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownspositivityconsequence.md) | 176 | `declaration-track:bf1b166e47b81595b2c8eb22656c254677a70d2cc78569d6a4783df80adcb239` |
| 22 | `def` | [FinitePayloadOwnsZeroLocationConsequence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finitepayloadownszerolocationconsequence.md) | 181 | `declaration-track:44646010e69df217e6afaae19069b49882eeaa96d02a60ac6cb0c1d1e791c8ae` |
| 23 | `theorem` | [finite_payload_not_global_trace_formula](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-global-trace-formula.md) | 185 | `result-track:c978e8fd244bce6e5e717ad0128b2ae734081605c639a73b212029412199a3f5` |
| 24 | `theorem` | [finite_payload_not_trace_formula_convergence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-trace-formula-convergence.md) | 191 | `result-track:7cfe2749012917388e09a74e07e30f31c9be67e6440ef5071f2102b194bcee2b` |
| 25 | `theorem` | [finite_payload_not_spectral_side_interpretation](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-spectral-side-interpretation.md) | 197 | `result-track:8f622b70a52d994c99d778d59410991974ecbc9b1ae9250126e76892c66014d7` |
| 26 | `theorem` | [finite_payload_not_geometric_side_interpretation](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-geometric-side-interpretation.md) | 203 | `result-track:aeaa139cc992cc68b48085592e198cea682d541b820b02d48029182a566b3340` |
| 27 | `theorem` | [finite_payload_not_spectral_geometric_equality](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-spectral-geometric-equality.md) | 209 | `result-track:813c0765b0b9522333be5adb677702962d42ee889b773f5b3b0532a4d419ce8e` |
| 28 | `theorem` | [finite_payload_not_positivity_consequence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-positivity-consequence.md) | 215 | `result-track:7291291b5d3321e4f38c30a8e252f6bc4e6ea0567573de836efbc9f572b32748` |
| 29 | `theorem` | [finite_payload_not_zero_location_consequence](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-payload-not-zero-location-consequence.md) | 221 | `result-track:a6edb197c674dc449e9fa8a02403161af9bfa5f99ed2f48656ccf903d0ad68fb` |
| 30 | `theorem` | [finite_trace_formula_payload_boundary_summary](../../../../RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/declarations/finite-trace-formula-payload-boundary-summary.md) | 233 | `result-track:a61f560fa2276ebb8216e83db86826daca7a287965401674a58824ccd7c8ead5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05c3529c369acb8327fed637ad0606e4e75985f2cf0902c0be9d93ff831efa23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
