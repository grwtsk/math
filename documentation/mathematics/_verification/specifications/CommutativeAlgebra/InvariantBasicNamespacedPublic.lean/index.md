# Verification target: Invariant Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f581c1970d2dd79598cb0c745d054f68d868126",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f581c1970d2dd79598cb0c745d054f68d868126`.

Source path: `GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/anonymous-instance.md) | 64 | `declaration-track:93c01eed950cca795b6591dd5c8ad5566f25fc8091586225b6d8d98ccab94391` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/anonymous-instance-source-line-78-occurrence-2.md) | 78 | `declaration-track:ffa4b07bbe3e477eb20d0667f43af44931c15a36a8f3b09fa5d71fd69641c4f1` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/anonymous-instance-source-line-82-occurrence-2.md) | 82 | `declaration-track:94d9eb207e4b01fda1807cd3a6c37eca882a3e8c059f560a14a7f9fc600882b5` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/anonymous-instance-source-line-86-occurrence-2.md) | 86 | `declaration-track:b66e067b2feaace8b7abd78c3d83c4b096d01e9b94a1952da416c1ed103ca8e1` |
| 5 | `def` | [charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/charpoly.md) | 106 | `declaration-track:fe6b633bfb351c1b509d9e760fbb40d5e2adac0bf840a48350adbebb14a1bddf` |
| 6 | `theorem` | [charpoly_eq](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/charpoly-eq.md) | 108 | `result-track:e38f946b24042c445c44b1ac3f1e64ac91ee66d46b5d1d159170140a24f1f64d` |
| 7 | `theorem` | [charpoly_eq_prod_smul](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/charpoly-eq-prod-smul.md) | 110 | `result-track:8d6022cf3bf73e7dcc3af5825458a7021430d3164649b9e63847fc67a1bcea27` |
| 8 | `theorem` | [monic_charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/monic-charpoly.md) | 113 | `result-track:660c54135fdd97f17c575325b0837fa19a871dc23ba69b8ae01e5ab0002f0782` |
| 9 | `theorem` | [splits_charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/splits-charpoly.md) | 116 | `result-track:c39ad2972653b69e00da4f457410625daef7d2109e100f8e99faa1c87e3920a6` |
| 10 | `theorem` | [eval_charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/eval-charpoly.md) | 119 | `result-track:cee238f0c929c97204b7cce583bc0eec5cd0c5052cf022644ab440f3d0d12128` |
| 11 | `theorem` | [smul_charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/smul-charpoly.md) | 126 | `result-track:3208e79b1c463afe5e54a9196e85a9c66dd8f703086d30f0ae9c3127ab7b4d06` |
| 12 | `theorem` | [smul_coeff_charpoly](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/smul-coeff-charpoly.md) | 129 | `result-track:3dbbbaafba3fc6194528f8f810b253999e8c0959b2f8f0b315378a734675676a` |
| 13 | `theorem` | [charpoly_mem_lifts](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/charpoly-mem-lifts.md) | 141 | `result-track:9ca5ad16abea45f842ad59a924813c8427bc4912267ecf9f9169a75a4d0b9858` |
| 14 | `theorem` | [isIntegral](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/isintegral.md) | 145 | `result-track:82766493b514f6e7a6415d500c533b546d5c9a16ba46f4ba9572125288445c5f` |
| 15 | `theorem` | [exists_smul_of_under_eq](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/exists-smul-of-under-eq.md) | 153 | `result-track:af4ab5c00c2700591d0e5cc0280b18d3dc1f923252e9a7d988cae6efe7a91d37` |
| 16 | `theorem` | [orbit_eq_primesOver](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/orbit-eq-primesover.md) | 174 | `result-track:2286c8a76952c6ef06c095acb25e74bda9428915630bda9d8767ce6f265d54d0` |
| 17 | `theorem` | [fixed_of_fixed1_aux1](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/fixed-of-fixed1-aux1.md) | 200 | `result-track:88fc2270d3858d78a7cd2a3880a727319d06ebe6c3c8587a170af2fb05961141` |
| 18 | `theorem` | [fixed_of_fixed1_aux2](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/fixed-of-fixed1-aux2.md) | 256 | `result-track:ea56068823f33c626b82f6b8752a2d6868ea95c82a46c3edec27dae59364d320` |
| 19 | `theorem` | [fixed_of_fixed1_aux3](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/fixed-of-fixed1-aux3.md) | 270 | `result-track:210084408880b57bf549d97f868d1284b667a12ea5f7413c30685e44a7bc7e0c` |
| 20 | `theorem` | [fixed_of_fixed1](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/fixed-of-fixed1.md) | 283 | `result-track:998028c33a5be56d957738bcf873bdbb45863f1fe51fcc6b9c19ac30fa9f9a53` |
| 21 | `def` | [IsFractionRing.stabilizerHom](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerhom.md) | 319 | `declaration-track:1a2dc3d99b8067f097e5eb663c843682769aca90f488650bcfecd7395a8a5e05` |
| 22 | `theorem` | [IsFractionRing.stabilizerHom_apply_apply_mk](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerhom-apply-apply-mk.md) | 324 | `result-track:7f31628cbdaa31ba2cf17f7b0e5cae1c51f68ee7d1ee82a342284b56888673fe` |
| 23 | `theorem` | [IsFractionRing.ker_stabilizerHom](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/ker-stabilizerhom.md) | 330 | `result-track:2025c012028a218b8f7c7a8c7e60ad9f55716c4d699d560b3529a0c336bd7647` |
| 24 | `theorem` | [fixed_of_fixed2](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/fixed-of-fixed2.md) | 336 | `result-track:31b4bb9ea6bd061c7fb2c3c5c7610509397ca1e575fd857219447be5dbdf1892` |
| 25 | `theorem` | [IsFractionRing.stabilizerHom_surjective](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerhom-surjective-source-line-359-occurrence-2.md) | 359 | `result-track:58d143401457191bcc5695b9cbd92b4f017a5798f38c80412e05a7dda01fd120` |
| 26 | `theorem` | [Ideal.Quotient.stabilizerHom_surjective](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerhom-surjective.md) | 368 | `result-track:c7e673f174186018368211de10521a73c8587ff23ab0685cc2174bd6a3910779` |
| 27 | `def` | [IsFractionRing.stabilizerQuotientInertiaEquiv](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerquotientinertiaequiv-source-line-381-occurrence-2.md) | 381 | `declaration-track:3c146bd503b654879a42debe0dcb92c07a6f7b9267deeafce4c4a2e0fcc9b0d5` |
| 28 | `theorem` | [IsFractionRing.stabilizerQuotientInertiaEquiv_mk](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerquotientinertiaequiv-mk-source-line-387-occurrence-2.md) | 387 | `result-track:29c34ba6ff4105c175ee19553c3194709c1ca000f931564545f02596d8399ca6` |
| 29 | `def` | [Ideal.Quotient.stabilizerQuotientInertiaEquiv](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerquotientinertiaequiv.md) | 394 | `declaration-track:268f9a2aa6058b8da0bfc10e239d4802572a4afb5d812b1c0e77d32fb1dc3c33` |
| 30 | `theorem` | [Ideal.Quotient.stabilizerQuotientInertiaEquiv_mk](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizerquotientinertiaequiv-mk.md) | 401 | `result-track:3a14c6b84b0175d92ced694c309a6a1b17e4b6e6f124a6725dd67242815fc027` |
| 31 | `lemma` | [Ideal.Quotient.exists_algHom_fixedPoint_quotient_under](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/exists-alghom-fixedpoint-quotient-under.md) | 421 | `result-track:7fc736c87ee3c0ff06e6ec52d7d683eac3d548c3d468e1ebcb618c7d9ce6aa2d` |
| 32 | `lemma` | [Ideal.Quotient.exists_algEquiv_fixedPoint_quotient_under](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/exists-algequiv-fixedpoint-quotient-under.md) | 459 | `result-track:1262038cb36f83944cae6f33ae05a552b30c2ca892e5458111da37b5f5ef144c` |
| 33 | `theorem` | [map_stabilizer_of_surjective](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/map-stabilizer-of-surjective.md) | 494 | `result-track:182a4e8ca7c7fafd61a7fd1be9657c72e25faa0f1659cf141e71959b8a324df5` |
| 34 | `theorem` | [map_inertia_of_surjective](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/map-inertia-of-surjective.md) | 514 | `result-track:340cc8423cebbf349d7e1b943d3ef3d691831b9542533c5e293d316520c8f1ec` |
| 35 | `theorem` | [stabilizer_quotient](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/stabilizer-quotient.md) | 543 | `result-track:c222138a8dac0490d696a4ba22a73a1c3e3b50fd0c899475cc08904531b0a705` |
| 36 | `theorem` | [inertia_quotient](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/inertia-quotient.md) | 547 | `result-track:7b6bd74ad05557f982486e913272ee6f1e6b5b57c9f7f3d0c1806f724ddb73ee` |
| 37 | `theorem` | [isInvariant_of_isIntegral](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/isinvariant-of-isintegral.md) | 562 | `result-track:2e37b9bd18f32ad78b782dcc940d1b61695ea97d51383bb683b069f9251095eb` |
| 38 | `theorem` | [isInvariant](../../../../CommutativeAlgebra/InvariantBasicNamespacedPublic.lean/declarations/isinvariant.md) | 584 | `result-track:aed81c899a294e924177e0669c05305232858f13c06cec8c9ff5d6012da364c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba2bbd2fd72f767c3af9d263920593e07cca1b7930402df21b9b405587caade -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
