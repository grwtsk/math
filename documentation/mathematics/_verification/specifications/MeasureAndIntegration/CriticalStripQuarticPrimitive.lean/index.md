# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive`](../../../../MeasureAndIntegration/CriticalStripCubicPrimitive.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [quartic_unit_bounds](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/quartic-unit-bounds.md) | 33 | `result-track:cb18ed7787911a9219c8e2f4d617239ac0386fd21a2924dc246bf83adb926634` |
| 2 | `lemma` | [quartic_unit_mean](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/quartic-unit-mean.md) | 46 | `result-track:352f7c33568eb55d3aaee63a57340e84185ec10c90145854f59f153d0149172c` |
| 3 | `def` | [realKernel](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/realkernel.md) | 60 | `declaration-track:ab78edac31c2dba6081c141b419e95edd1713b2f650958f16352baed11cd84a9` |
| 4 | `def` | [kernel](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel.md) | 63 | `declaration-track:ae5fc4c9af5d5ed680ef4e815ec89b6d2f113bb253b571cac243064f79c2cb4a` |
| 5 | `lemma` | [realKernel_bounds](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/realkernel-bounds.md) | 65 | `result-track:ac2c23de5e248f43e249e877d7155a024659f78ce01e9679a70513b3bbc5689c` |
| 6 | `lemma` | [kernel_norm_le](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-norm-le.md) | 68 | `result-track:de082db766d2c50f58331a4033dbb60021a4a4578f74c24664552b9c5f9b55b3` |
| 7 | `lemma` | [kernel_measurable](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-measurable.md) | 72 | `result-track:13380eb31c535cbec6937389d38902845bfcf0be22ccc9a9ae9e2755afdd763f` |
| 8 | `lemma` | [kernel_zero_below](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-zero-below.md) | 78 | `result-track:3281ca4ea84865cb1490adb3175f85ded097f503a498928889152f480928a88d` |
| 9 | `lemma` | [kernel_nat](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-nat.md) | 81 | `result-track:b54de0bca0aaa90b991d4ee29a7b893cd185322baf6561b6599d5080506ab9e5` |
| 10 | `lemma` | [kernel_locallyIntegrable](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-locallyintegrable.md) | 89 | `result-track:a5888f86fdd08ce9794c942cc74273177d4d2b77950916d4138c5f65104092a5` |
| 11 | `lemma` | [kernel_isBigO_top](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-isbigo-top.md) | 95 | `result-track:7c8fcd44a9a6d9ff554366df03c28e8099c0850424d45c233df3bd9f680c9350` |
| 12 | `lemma` | [kernel_isBigO_zero](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-isbigo-zero.md) | 101 | `result-track:ada0730c3c8529e51b8b07bb7c064e3f60958d635f7c866c9d354f6f01b23b1b` |
| 13 | `def` | [integrand](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/integrand.md) | 108 | `declaration-track:b6420281e7cfb638e09888ebec3403b8e9c2dcbb47cba2778b528534d953d7a5` |
| 14 | `def` | [tail](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/tail.md) | 109 | `declaration-track:43997da6091624bbe82eb19b34ad93e95f65c64ac8b8d8458291cff4ef015049` |
| 15 | `lemma` | [integrand_integrable](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/integrand-integrable.md) | 111 | `result-track:14f2e262fbfb249a8b50880f20e01a56b1df4b57b55cd58b1fe3676a764b4b5a` |
| 16 | `theorem` | [tail_norm_le](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/tail-norm-le.md) | 126 | `result-track:39cba4618d04525577efc7d11e7988e3bce754c57e6d5b1b8efeb7d9b887b0ca` |
| 17 | `def` | [cell](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cell.md) | 149 | `declaration-track:bfff5b70119f601d864a348b3e9ae1d3c320cf8580db0708a7abb349594fc980` |
| 18 | `lemma` | [cell_left](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cell-left.md) | 152 | `result-track:501809818a8ed52b4410f7864f8141eccb685c33b9b7f9ecbc02d29835146ad7` |
| 19 | `lemma` | [cell_right](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cell-right.md) | 153 | `result-track:8220c4bfaa33acbbbca32b98a58fdd2204432321582275eb4a972a2573200a9b` |
| 20 | `lemma` | [cell_hasDerivAt](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cell-hasderivat.md) | 156 | `result-track:fc2046588f0db07a0618048c7e43fc7d321fd8f9645385cd5e55431c7039a17b` |
| 21 | `lemma` | [kernel_eq_cell](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/kernel-eq-cell.md) | 164 | `result-track:825a9cee845f21f34787a5ebaa28e2d387a6e4f02a85572d9acce523cae915ec` |
| 22 | `lemma` | [cell_integral_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cell-integral-identity.md) | 172 | `result-track:2f7dfcfa96cbc0cd9947c946c6b3355cbe5d08b485c9d539f9856ed8435072f6` |
| 23 | `lemma` | [finite_integral_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/finite-integral-identity.md) | 216 | `result-track:b4f66c50cfa53dda98427d75668b113931c037b9b6bb68603a4575bc6f2f37a4` |
| 24 | `theorem` | [value_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/value-identity.md) | 241 | `result-track:c55d2e76025858835e0e694c44824e1f31a69cf7ec236ef7a8adb76fcf50ecb7` |
| 25 | `lemma` | [integer_tail_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/integer-tail-identity.md) | 279 | `result-track:0d6f8eb9724b0dd36a77598e52bdd694dc534e39885ab7f627eb49b1400573f4` |
| 26 | `def` | [centeredKernel](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel.md) | 293 | `declaration-track:a46e28bef7e4c4a591eb24b8f44d1ee6d7785511a7f590ed9784e90f8009b1ff` |
| 27 | `def` | [centeredIntegrand](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredintegrand.md) | 295 | `declaration-track:a56dfa3b7180fc4e106da30df8aa331c424197b710e6d37ead1cf94e5335124e` |
| 28 | `def` | [centeredTail](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredtail.md) | 298 | `declaration-track:796744b3d8689cc7ef66f1d7f91a380156b30b4f4c01d9cc51ad351accb325d9` |
| 29 | `theorem` | [centeredKernel_nat](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel-nat.md) | 300 | `result-track:a7c8f2cb0e4b53caa8a47d922d2872df5dd13a3d41e28741783edf1b0fcaac45` |
| 30 | `lemma` | [centeredKernel_norm_le](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel-norm-le.md) | 303 | `result-track:ee4e50829de4c54a72d0d85088d5b059b7d7de065e8be191999c128879524f95` |
| 31 | `lemma` | [power_integrable](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/power-integrable.md) | 311 | `result-track:5892ad4bbff62c74530bbf267be44e154167d79ef714f259fbec6ef0b7c7f3b9` |
| 32 | `lemma` | [centeredIntegrand_integrable](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredintegrand-integrable.md) | 317 | `result-track:026823f0393fb0fba77cb6c89de9bfb65d7a1014fdd35ba8b199b60154744c90` |
| 33 | `theorem` | [centeredTail_eq](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredtail-eq.md) | 326 | `result-track:f0c1d6158969ddafeec8e802b73b4a63d65509e0ad449b4fb54e488de2cc7d13` |
| 34 | `theorem` | [centeredTail_norm_le](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/centeredtail-norm-le.md) | 340 | `result-track:532eea0a1e460fb14bff0b43d4f78f3078efc6e2ad5ea7ebfa49c1c55e49a0d8` |
| 35 | `theorem` | [cubic_tail_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/cubic-tail-identity.md) | 364 | `result-track:7fd1199d2c3493fb0e8c5ef4aa9f6ca76cff63399c99c3ca61eab0214c41d195` |
| 36 | `def` | [reference](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/reference.md) | 375 | `declaration-track:59eee5cb079b3bb45c88de2afc550cdb356bb6115d5d5d944496dacd3468286a` |
| 37 | `def` | [multiplier](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/multiplier.md) | 377 | `declaration-track:c481629cd052369543cb8dd8091eb59decd19ca92e849097d4d02b2b25eb116d` |
| 38 | `theorem` | [reference_correction](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/reference-correction.md) | 379 | `result-track:3fea65447ae2be37e0ff0f58fe5c1381b3e6a633906ff9ab0a0bc216d54b9497` |
| 39 | `theorem` | [source_identity](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/source-identity.md) | 384 | `result-track:53fe23c04646f75943916de05af552c1370573340cba055c520d13df31f1e073` |
| 40 | `def` | [finiteModel](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/finitemodel.md) | 393 | `declaration-track:7435554e2ff218d6a8073f6b032237feb6f9dc5cd76dc8e3f4f053b9cf1ec017` |
| 41 | `theorem` | [finiteModel_residual](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-residual.md) | 397 | `result-track:9dba4799dfef3ae055ae27583b32a3040e71cf97779744f7191f58052ae7e704` |
| 42 | `theorem` | [finiteModel_error](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-error.md) | 404 | `result-track:1c035c6c1e1304ea56688efb7a4e01e68c7b54d731740934cf4109d56ac2e3d9` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](../../../../MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-majorant-tendsto-zero.md) | 412 | `result-track:ca13b633f6f80ed0b01f4f8e07abd6e60a13791754eef532386c3e5dc17483aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4b19df3c4e064bd7d392fdcc9f939d02b11ab47b4660ec521b3a72279d12dfd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
