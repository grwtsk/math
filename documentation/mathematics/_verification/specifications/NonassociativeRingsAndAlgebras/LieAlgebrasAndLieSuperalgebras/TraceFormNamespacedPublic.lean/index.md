# Verification target: Trace Form Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d80465789ad234c4fed4a843899231d82f8a46",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d80465789ad234c4fed4a843899231d82f8a46`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform.md) | 62 | `declaration-track:aa97b301dd360b07453c5f29904919b273c86d74165cef6a739b32fb04bf4c1e` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-apply-apply.md) | 65 | `result-track:5bf1b80bdb4a00f996cbc1083b8d287eecb55dafee02751bf861c60b43132387` |
| 3 | `lemma` | [traceForm_comm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-comm.md) | 69 | `result-track:c3cd27c82bee60d5df0cedf6359be0413904a21a3db56c58b4ffbe68f007809b` |
| 4 | `lemma` | [traceForm_isSymm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-issymm.md) | 72 | `result-track:1335dd5eda6d197fb16f8c9ba700638064dcd215a7ba5a9661e8dde6cbd0fb3c` |
| 5 | `lemma` | [traceForm_flip](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-flip.md) | 74 | `result-track:aa1c36e8ef03c1aee58cad9ee0b5de6c4ad92b4d6d48eb2de43488fdc47c4cea` |
| 6 | `lemma` | [traceForm_apply_lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-apply-lie-apply-source-edition-2.md) | 80 | `result-track:2434da828cb64d1af72eb4321ba037d3b3622efc90ba8b1a92c8aad5e8610d45` |
| 7 | `lemma` | [traceForm_apply_lie_apply'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-apply-lie-apply.md) | 96 | `result-track:014972b1aafc6297b0330074a922da8c689b1fe3ab49e1c9c4a8489d21b4aad6` |
| 8 | `lemma` | [traceForm_lieInvariant](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-lieinvariant.md) | 102 | `result-track:e7e68443505ffcd7bbf7ee3f0fa84d06b08b1c7925b6749141ec5616295464c6` |
| 9 | `lemma` | [lie_traceForm_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/lie-traceform-eq-zero.md) | 107 | `result-track:7f128c12500674967345dd89eca0201129e8d6258034f1094f7b7f02a0fbe1d1` |
| 10 | `lemma` | [traceForm_eq_zero_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-zero-of-isnilpotent.md) | 112 | `result-track:6d68d15911bb4790dddddd9f2a046a89dc2b08ae7c06eaca9ef2a73482ad8f71` |
| 11 | `lemma` | [traceForm_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-basechange.md) | 120 | `result-track:7d22d1d412460c5b820f512a419e8bbd9170f0a7830152effd602a5d164c1679` |
| 12 | `lemma` | [trace_toEnd_mul_eq_zero_of_traceForm_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/trace-toend-mul-eq-zero-of-traceform-eq-zero.md) | 126 | `result-track:fd0cd313ff9adebee04f7f51690d8e1376b34f5932564e408512df6eeb8e9dbe` |
| 13 | `lemma` | [traceForm_genWeightSpace_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-genweightspace-eq.md) | 146 | `result-track:9f3168bb2a03065b5d539f2f57e98687bb08bcd2a086cf8377d80157f51d0927` |
| 14 | `lemma` | [traceForm_eq_zero_if_mem_lcs_of_mem_ucs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-zero-if-mem-lcs-of-mem-ucs.md) | 167 | `result-track:cba8de84ad05a818b4a337d3be2007505378136c22a9fcfbf91564f9d61ab4a6` |
| 15 | `lemma` | [traceForm_apply_eq_zero_of_mem_lcs_of_mem_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-apply-eq-zero-of-mem-lcs-of-mem-center.md) | 186 | `result-track:fc17cd34b032278a3128d6a55912afc1cd47429efe8c73fb2bfa373612325b25` |
| 16 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-zero-of-istrivial.md) | 194 | `result-track:620d7dab73fc8f6e9d70f89cd2cd12cdd14b1e4ba10e88e8541ea4710aa986cc` |
| 17 | `lemma` | [eq_zero_of_mem_genWeightSpace_mem_posFitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/eq-zero-of-mem-genweightspace-mem-posfitting.md) | 204 | `result-track:427eb2deb1b214a5f34a1dcbc455adc5d1523a75041698be8f82cd49ed8bd04f` |
| 18 | `lemma` | [trace_toEnd_eq_zero_of_mem_lcs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/trace-toend-eq-zero-of-mem-lcs.md) | 227 | `result-track:bab8f16603176708c32c515785d6c806d60c5d3d312422bde8f167b121e125b0` |
| 19 | `lemma` | [traceForm_lieSubalgebra_mk_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-liesubalgebra-mk-left.md) | 244 | `result-track:42f6bb52b6145db63e9ee7d6bd3fd2f3f4afcbfaa41f87765f5d3e398e35bbad` |
| 20 | `lemma` | [traceForm_lieSubalgebra_mk_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-liesubalgebra-mk-right.md) | 249 | `result-track:eb5d0464f6b190356ab509bb3fe681e159ee2e98b66fd7dac675690e16f87e5d` |
| 21 | `lemma` | [traceForm_eq_sum_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-sum-genweightspaceof.md) | 257 | `result-track:a7b20f840f8c48f517de896555e0c985125dbc74e2a5a266393f4f97d0303a7b` |
| 22 | `lemma` | [lowerCentralSeries_one_inf_center_le_ker_traceForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/lowercentralseries-one-inf-center-le-ker-traceform.md) | 279 | `result-track:364c9b0e471878939ec3c1731e68411e3e1e14ec28d9bbfe16d3d9a5514bf1ed` |
| 23 | `lemma` | [isLieAbelian_of_ker_traceForm_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/islieabelian-of-ker-traceform-eq-bot.md) | 327 | `result-track:885ca7edfbed5bfae3aecff57e3da91d28c2f32bb43a9d248491dcc086eb2cb0` |
| 24 | `lemma` | [trace_eq_trace_restrict_of_le_idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/trace-eq-trace-restrict-of-le-idealizer.md) | 344 | `result-track:815257da890acacab91a7b37783eb028d7442ea8c8a42eac70915b3635427448` |
| 25 | `lemma` | [traceForm_eq_of_le_idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-of-le-idealizer.md) | 354 | `result-track:b90efcb45ca6c8f48ff1cecd18e66bb16b706db0b21b61125b8e02e6291d9ea3` |
| 26 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-zero-of-istrivial-source-edition-2.md) | 365 | `result-track:ed287b7f3e809da79bcd81a53a035528c05abdafd05c57624c1164ac84494c72` |
| 27 | `abbrev` | [killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/killingform.md) | 381 | `declaration-track:b51d8bcb473aec079aa8dc05e5a1367c7171d79417a354cf9f30f533ab17f5a8` |
| 28 | `lemma` | [killingForm_apply_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/killingform-apply-apply.md) | 384 | `result-track:2485ff1e7b9ae456b49f8b1f1a5b130a49049d110aa4856daced9456767d60b7` |
| 29 | `lemma` | [killingForm_eq_zero_of_mem_zeroRoot_mem_posFitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/killingform-eq-zero-of-mem-zeroroot-mem-posfitting.md) | 387 | `result-track:1662d41f451755ba36cc550ed6c15cd28d71541eecf5e2a97508114f8297ac7c` |
| 30 | `def` | [killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/killingcompl.md) | 401 | `declaration-track:9432144744d31591604733ae352284c56ee2e67c5ce2a8f7389e3d429cc8a712` |
| 31 | `lemma` | [toSubmodule_killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/tosubmodule-killingcompl.md) | 404 | `result-track:03dca9d141db9f2a30cf4d59a8ab8040a7983ca0b3e8533c749e1eb307af7ace` |
| 32 | `lemma` | [mem_killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/mem-killingcompl.md) | 408 | `result-track:3f05c4acf4bf623069de8c82a90bff5da3117e5cdfabcd4c8fcab6a4ef16b6fd` |
| 33 | `lemma` | [coe_killingCompl_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/coe-killingcompl-top.md) | 412 | `result-track:06c1ddb94bdaca5cce4dc79e1d80f182efc1d11e3be9271933761767e65cba54` |
| 34 | `lemma` | [restrict_killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/restrict-killingform.md) | 417 | `result-track:6fe314319fa521ed6ef2f4609fe18bb440d9a32e3d613b263e1dd80fb9ba062e` |
| 35 | `lemma` | [killingForm_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/killingform-eq.md) | 423 | `result-track:dcff8eef03f20c2d765f520f0ab27a9d3f753604d6b169e5c9f8d33392cf817d` |
| 36 | `lemma` | [le_killingCompl_top_of_isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/le-killingcompl-top-of-islieabelian.md) | 427 | `result-track:b69320d712856ec55ce4b7174976be4e8810d782449f95f941cf0419f075a41f` |
| 37 | `lemma` | [traceForm_eq_sum_finrank_nsmul_mul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-sum-finrank-nsmul-mul.md) | 445 | `result-track:d0178c28b21aa935c013c7b7cdf016d28273773308b1f07e81372fc22f914701` |
| 38 | `lemma` | [traceForm_eq_sum_finrank_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-sum-finrank-nsmul.md) | 460 | `result-track:e9983e2f568d346d9e867b04788902b607433d36cf4f2407cd3db3df17c13557` |
| 39 | `lemma` | [traceForm_eq_sum_finrank_nsmul'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/traceform-eq-sum-finrank-nsmul-source-edition-2.md) | 469 | `result-track:f83a1c7969fe5635f7a0a5b7ff0057521128de166ebceda4559bbf31ece54936` |
| 40 | `lemma` | [range_traceForm_le_span_weight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespacedPublic.lean/declarations/range-traceform-le-span-weight.md) | 483 | `result-track:478a683c48800e063fb2021f8074df74912a1d1677dd9ce1ebb1b1268aa54180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43bfaf4ea85eed6147c5d7f0888779969be057825ce5b171deac6f177abc256a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TraceForm/Variantdaa5979395d67d2c844b86fe1e0e6dc0a4ee0d22d4efd0f9fb0804b159efb063.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
