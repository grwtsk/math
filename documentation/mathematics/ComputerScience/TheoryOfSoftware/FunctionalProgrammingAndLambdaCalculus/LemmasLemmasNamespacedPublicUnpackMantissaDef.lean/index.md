# Lemmas Lemmas Namespaced Public Unpack Mantissa Def

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant14c1728b3a44388587f766176f2988a2dfea165af5673b6a8ac25c3f7bf57794.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caab1e530909fc1a2a305c9a5bd06ceaeb7cf18d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedPublicUnpackMantissaDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isNaNBits](declarations/isnanbits.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ofBitVec_toBitVec](declarations/ofbitvec-tobitvec.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toBitVec_ofBitVec](declarations/tobitvec-ofbitvec.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [forall_iff](declarations/forall-iff.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [unpackMantissa_def](declarations/unpackmantissa-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unpackExponent_def](declarations/unpackexponent-def.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [unpackSign_def](declarations/unpacksign-def.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [unpackSign_packComponents](declarations/unpacksign-packcomponents.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [packComponents_unpackSign_unpackExponent_unpackMantissa](declarations/packcomponents-unpacksign-unpackexponent-unpackmantissa.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pack_unpack](declarations/pack-unpack.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pack_unpack_of_valid](declarations/pack-unpack-of-valid.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unpack_inj_of_valid](declarations/unpack-inj-of-valid.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isNaNBits_packedNaN](declarations/isnanbits-packednan.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unpack_packedNaN](declarations/unpack-packednan.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unpack_packedZero](declarations/unpack-packedzero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isNaN_iff](declarations/isnan-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unpack_eq_notANumber_iff_of_valid](declarations/unpack-eq-notanumber-iff-of-valid.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unpack_eq_zero_iff_of_valid](declarations/unpack-eq-zero-iff-of-valid.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isNaN_unpack_iff_of_valid](declarations/isnan-unpack-iff-of-valid.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [beq_iff_ne_notANumber_and_eq](declarations/beq-iff-ne-notanumber-and-eq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [unpack_beq_unpack_iff](declarations/unpack-beq-unpack-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Float.toBits_inj](declarations/float-tobits-inj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Float32.toBits_inj](declarations/float32-tobits-inj.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Float.ofBits_toBits](declarations/float-ofbits-tobits.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Float32.ofBits_toBits](declarations/float32-ofbits-tobits.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Float.isNaN_eq_decide_eq_nan](declarations/float-isnan-eq-decide-eq-nan.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Float32.isNaN_eq_decide_eq_nan](declarations/float32-isnan-eq-decide-eq-nan.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Float.beq_iff_ne_nan_and_eq](declarations/float-beq-iff-ne-nan-and-eq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Float32.beq_iff_ne_nan_and_eq](declarations/float32-beq-iff-ne-nan-and-eq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Float.nan_beq_eq_false](declarations/float-nan-beq-eq-false.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Float32.nan_beq_eq_false](declarations/float32-nan-beq-eq-false.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Float.beq_nan_eq_false](declarations/float-beq-nan-eq-false.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Float32.beq_nan_eq_false](declarations/float32-beq-nan-eq-false.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Float.beq_self_iff](declarations/float-beq-self-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Float32.beq_self_iff](declarations/float32-beq-self-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Float.beq_self_eq_false_iff](declarations/float-beq-self-eq-false-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Float32.beq_self_eq_false_iff](declarations/float32-beq-self-eq-false-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Float.bne_eq](declarations/float-bne-eq.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Float32.bne_eq](declarations/float32-bne-eq.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceb1a84e2a1d600417b5c6703dcf77991bbd965f2c05d1f4b56868d383eb3453 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant14c1728b3a44388587f766176f2988a2dfea165af5673b6a8ac25c3f7bf57794.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
