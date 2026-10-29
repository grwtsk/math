# Verification target: Local Extr Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "861372d13c35ad646b906742ccbc9bb12d841d6a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LocalExtrBasicPublic.lean/index.md) · [Full source](../../../../RealFunctions/LocalExtrBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `861372d13c35ad646b906742ccbc9bb12d841d6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean.json)

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
| 1 | `theorem` | [posTangentConeAt_mono](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/postangentconeat-mono.md) | 76 | `result-track:a01ed887140c7959543c753eb7f60df52df89b5f584774a57e708bf5b088fe9c` |
| 2 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/mem-postangentconeat-of-frequently-mem.md) | 80 | `result-track:0249744d0c6ff582362e2d3e6f5736eaadd882468b8914333e7e6b19628781fe` |
| 3 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/sub-mem-postangentconeat-of-segment-subset.md) | 87 | `result-track:6da3356e193e1ed2067c165af0eacf94ab580d5bf4559c1d22950178b1318f05` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/mem-postangentconeat-of-segment-subset.md) | 92 | `result-track:908e3040a03b83dd4186c49236f8927aa87cfd8d3e58d7889b82de6a44ce8f84` |
| 5 | `theorem` | [posTangentConeAt_univ](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/postangentconeat-univ.md) | 96 | `result-track:a9558ce799a4bcd7567e01d9c2f2fb5466cb5ee56f86cb557eb56f7d3fb73645` |
| 6 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmaxon-hasfderivwithinat-nonpos.md) | 104 | `result-track:711b9d8d10999da8068266af11aceedbb630420e4fe6b8a9ccc79d5db2c68938` |
| 7 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmaxon-fderivwithin-nonpos.md) | 117 | `result-track:52d2b137c8e61cfbf63600c5d577cf68645a660edb3de8cc423a33440ddc5e63` |
| 8 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmaxon-hasfderivwithinat-eq-zero.md) | 126 | `result-track:b143296380eff8c978d40f0799c74ac824f726dd96b112ca008fd58e8c197b7a` |
| 9 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmaxon-fderivwithin-eq-zero.md) | 133 | `result-track:cda2aa09a5b5d9e427d6001b52d91105e61142d86545faa57589e6bcfad8e307` |
| 10 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalminon-hasfderivwithinat-nonneg.md) | 143 | `result-track:d95596c3579cbc857e8b1b77aaece71ae3656e502b7725c9c810e87792d9190f` |
| 11 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalminon-fderivwithin-nonneg.md) | 149 | `result-track:f48ede9d9597677e403b0bc6456b8946c824329a257552b58dd6f8ba42570653` |
| 12 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalminon-hasfderivwithinat-eq-zero.md) | 158 | `result-track:c2bc8f7e84325a97e9cce9c82abd516c5b9747e7694e891f3863f1e6eabe9c49` |
| 13 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalminon-fderivwithin-eq-zero.md) | 165 | `result-track:1bbaa984b409f3bdc4bd556db9dd13cbe4679773fa0cde4d91241e92d9fe1a71` |
| 14 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmin-hasfderivat-eq-zero.md) | 174 | `result-track:4a64603248f50c51c00e3764d22df232729247730fe6def7224bf394144b200a` |
| 15 | `theorem` | [IsLocalMin.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmin-fderiv-eq-zero.md) | 181 | `result-track:3ab95a5dd802ad6c1030fbd2142e3b7ef3feaf18d3d07998f736e7538cec8e1b` |
| 16 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmax-hasfderivat-eq-zero.md) | 187 | `result-track:71e627eafd81f3f8d124909b5f82b043d47ff48910b1ecfec9581cbaae621ef1` |
| 17 | `theorem` | [IsLocalMax.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmax-fderiv-eq-zero.md) | 191 | `result-track:a8265b35cb83e10722090e2b883b08b6b10105fdbd5f9d3e4e7da8a22b8e2810` |
| 18 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalextr-hasfderivat-eq-zero.md) | 197 | `result-track:df34e01a2b25d7c6af8b24e5bee2430ec5a12bf50fea373eccd7b234c5ba111c` |
| 19 | `theorem` | [IsLocalExtr.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalextr-fderiv-eq-zero.md) | 201 | `result-track:1ab5229f026f7078cf925cf0e447858f46259d9277d2c3d939510dce93d1d8da` |
| 20 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/one-mem-postangentconeat-iff-mem-closure.md) | 214 | `result-track:2d32cbd6b19da7701030f1325bc533d16d0adabf7081280d03c85cb461d3018b` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/one-mem-postangentconeat-iff-frequently.md) | 230 | `result-track:abe872a670140715df49a7a8610e15369bc9234d20591a73b25e6cb8f4f50260` |
| 22 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmin-hasderivat-eq-zero.md) | 237 | `result-track:6fa3f229ba2af339da1703c5edb2abf887d80f7f5740f526ac691b9bcd8294a9` |
| 23 | `theorem` | [IsLocalMin.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmin-deriv-eq-zero.md) | 241 | `result-track:de12639d15d01baf8d65498c02a56baa8eddf3a0c72507a59c9b37df7eeb8022` |
| 24 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmax-hasderivat-eq-zero.md) | 247 | `result-track:fef017101c2e8e5652d3120eccb0abf81105150b1326b10ea89d11e29a1f6861` |
| 25 | `theorem` | [IsLocalMax.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalmax-deriv-eq-zero.md) | 251 | `result-track:f67209eb2641a28d1d9a0e56d06622c38cd3397a1bff962bed14c01aec9c11a0` |
| 26 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalextr-hasderivat-eq-zero.md) | 257 | `result-track:1f54a9a95151a6ce06c027e56b89f9b961c996118e54fc9797eafe8ba3248dc3` |
| 27 | `theorem` | [IsLocalExtr.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasicPublic.lean/declarations/islocalextr-deriv-eq-zero.md) | 261 | `result-track:915273f6c9c8c17e7c8b3b1ac0427f96d8441f5097c9bf24ff4c7cb8d9ff9cdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4185bab18c40fcf7963064113975f2013b99aaf0e1a0180e46e56190e586d73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
