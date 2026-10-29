# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c1adb0a7f624bbed177fc2fa521c4ba469c626",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c1adb0a7f624bbed177fc2fa521c4ba469c626`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../Combinatorics/AdditiveNaturalRank.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Chart](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/chart.md) | 15 | `declaration-track:810bbf246d54a274364fd8c4ce917e87369d71b9fa3a48d0636b8c3f191d6d95` |
| 2 | `def` | [maturePacket](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/maturepacket.md) | 29 | `declaration-track:5cf051a3ba8ef0a576fb58c6b1c9560a6e5d544cbb5aef29946fe3b8291b9d32` |
| 3 | `def` | [horizonPacket](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/horizonpacket.md) | 32 | `declaration-track:44f21dc3532790ac97d99937b180d722b4affd6dce661901c1ed28e0118abb0d` |
| 4 | `def` | [packetEnergy](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packetenergy.md) | 35 | `declaration-track:3142f3d323daa422818e3798b893a5450335eeea6f47578cf1eed5b219647ad2` |
| 5 | `def` | [maturePacketEnergy](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/maturepacketenergy.md) | 38 | `declaration-track:609d9183a55c57a97974038e32f809ec61ac4a4b0e4b9346aabbfde76c82866a` |
| 6 | `def` | [horizonPacketEnergy](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/horizonpacketenergy.md) | 41 | `declaration-track:0efffb019f71beb329b00485ee4777ff3827973a49c1130956f6b4b60d6bb4ff` |
| 7 | `def` | [packetCorrelation](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packetcorrelation.md) | 44 | `declaration-track:80f789f0113873975e2a4d534b87937c04d4be55cc5eaece1f2c98b77a2a6196` |
| 8 | `def` | [sectorMass](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/sectormass.md) | 47 | `declaration-track:d7fcef3f32f7bfad8f04b6cc6f53398edd5ebfde28d99171fa380c128724ac84` |
| 9 | `lemma` | [packet_square_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packet-square-integrable.md) | 50 | `result-track:f17b3aaf96688b9aadeac928b1f3fff578d7ba20a5b4a0c28bd31b15a4a98e1c` |
| 10 | `lemma` | [mature_packet_square_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/mature-packet-square-integrable.md) | 63 | `result-track:b9509e28607ea58d766a01fac9e83997b4e048b9a213a926032965c5b56df27e` |
| 11 | `lemma` | [horizon_packet_square_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/horizon-packet-square-integrable.md) | 67 | `result-track:64e9fc5286eb518b6bf330a64efe597292abc5f8b8fbdd1668401b607bf2509b` |
| 12 | `lemma` | [packet_cross_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packet-cross-integrable.md) | 71 | `result-track:a53a0dcddb416947764bf09737d4a7257d7ba27fa47504e2be1c0f8927ddc52a` |
| 13 | `lemma` | [packet_sum_square_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packet-sum-square-integrable.md) | 87 | `result-track:1e7778bcb72e890f23ef8f54fecaf0eabcc46a7c689217546bef358957b37a22` |
| 14 | `lemma` | [source_sum_square_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/source-sum-square-integrable.md) | 93 | `result-track:b5c38be5532857ba3e9ba1015035c55c081dbf97557942d290c2fd0f520fb19c` |
| 15 | `theorem` | [packet_signed_ledger](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packet-signed-ledger.md) | 100 | `result-track:3de0edca7988552b0e2b3d8cba6e914bd30db4c93bedf41fbe34b14de6bad99a` |
| 16 | `lemma` | [packetEnergy_nonnegative](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packetenergy-nonnegative.md) | 117 | `result-track:47d8c9a65d5074dabf3f2790f676e94de393f9ff7f9ba51372b9fd96cb42ac01` |
| 17 | `def` | [matchingDeficit](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/matchingdeficit.md) | 121 | `declaration-track:11bbd6e1fce483cb65c2135ac86a2b3fdae479889517542ee2f83dd5a658726d` |
| 18 | `lemma` | [matchingDeficit_eq_packetEnergy](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/matchingdeficit-eq-packetenergy.md) | 123 | `result-track:82dafca6b8cfcfee5c3d6f2f44125afa776743ac43244692035e92bcbd4b741e` |
| 19 | `def` | [BroadMatching](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/broadmatching.md) | 127 | `declaration-track:50bcc1087364e852a4b625eae1df4c6fe5b5c999a37bb7767b31152c6ad3d052` |
| 20 | `structure` | [BroadCertificate](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/broadcertificate.md) | 130 | `declaration-track:b71ec4dde84d4d09042ea4da935fcfe1aa0bc8b440783f64b2d8b26af78b8bca` |
| 21 | `theorem` | [broad_certificate_returns_budget](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/broad-certificate-returns-budget.md) | 139 | `result-track:a2077535731df611cc09165cc33394bb5e49b0a19136850949866cc75b2f7f06` |
| 22 | `lemma` | [packet_square_factor](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/packet-square-factor.md) | 147 | `result-track:77763c4a83fe4039383ae43246225b39c743da613b1c3ac9491b35c88900dc33` |
| 23 | `theorem` | [finite_coverage_returns_energy](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/finite-coverage-returns-energy.md) | 154 | `result-track:ba4e702bebd03c897d91cf7d5bd2f06e49ed8c4d3708c6a2682d6b5d923e9048` |
| 24 | `theorem` | [finite_chart_budgets_return](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/finite-chart-budgets-return.md) | 177 | `result-track:7476d3e4a5b4e71f6bca0f06cc0a83bd86c97e6bbc5ea5d1e401f72109fd5731` |
| 25 | `theorem` | [finite_overlap_cost](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/finite-overlap-cost.md) | 186 | `result-track:5e99dcc9d4956b306acda747f246dbcb1737789f8d6c7b04459d81a495b9ae1a` |
| 26 | `theorem` | [finite_signed_component_reconstruction](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/finite-signed-component-reconstruction.md) | 208 | `result-track:21755c09ee7cbbf56a064eedd67a85db82d42d6ca155662a39dd7323cea00afb` |
| 27 | `theorem` | [uniform_chart_budgets_imply_HSS](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/uniform-chart-budgets-imply-hss.md) | 220 | `result-track:9f2a9b19afe93e36790abba8e1a6fa6c5fa1bd5b6e12fd208a7655a709b93a71` |
| 28 | `structure` | [NarrowCertificate](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/narrowcertificate.md) | 235 | `declaration-track:66006cc00d90d6fbc1bec4702672421527cb29c7ad90e17301add57f862fd7b1` |
| 29 | `lemma` | [normalized_child_window](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/normalized-child-window.md) | 268 | `result-track:180ba7790c3a859845c37adf1dd04adc5ff97f5774e99ce1c2ff2bac1fbdce27` |
| 30 | `lemma` | [narrow_residual_integrable](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/narrow-residual-integrable.md) | 274 | `result-track:21aaf8d4165b59839c97069ffd27dd6034f62a57045eb39fb9df8756506c42fa` |
| 31 | `theorem` | [narrow_certificate_transport](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/narrow-certificate-transport.md) | 284 | `result-track:69059b0b164ba1715f0b828bb3976efa954f8b93a2055df4441375e20b384fda` |
| 32 | `theorem` | [narrow_child_budget_returns_parent](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/narrow-child-budget-returns-parent.md) | 313 | `result-track:5899aaf8e6fb4e652c3c1ca708f2f3e90503f8f6d2886247f287f34b4275c55f` |
| 33 | `inductive` | [SignedBudgetDerivation](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation.md) | 325 | `declaration-track:78fbf81f58d6e227492315085f459273152ee0ebb81613d50cf78ca8993f1582` |
| 34 | `theorem` | [SignedBudgetDerivation.sound](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-sound.md) | 336 | `result-track:cff8331148814de91ebba2fc55a355d33fcae02323daa4957291f8fee6064732` |
| 35 | `def` | [SignedBudgetDerivation.depth](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-depth.md) | 342 | `declaration-track:a2bcc951b5a2a6239c839fd0a8d994858f21fa2f113b9cd5322d1b8b3330b600` |
| 36 | `theorem` | [SignedBudgetDerivation.depth_le_rank](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-depth-le-rank.md) | 350 | `result-track:db9c94c61651c1a2e5defc2181345c5f5f863caefe7d0a027bda6a630c439d3b` |
| 37 | `def` | [UniformCertifiedCharts](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/uniformcertifiedcharts.md) | 363 | `declaration-track:714ed0fa88eb7bcec3e4a5eeba88378f1ed7989103d7b52a73ee1141a2d828da` |
| 38 | `theorem` | [uniform_certified_charts_imply_HSS](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/uniform-certified-charts-imply-hss.md) | 372 | `result-track:a60f6d4ee3b9e3be16ec5eeba01982ec52ec2652d6c43e66d0b9b03c027d428f` |
| 39 | `theorem` | [nondecreasing_child_rejected](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/declarations/nondecreasing-child-rejected.md) | 383 | `result-track:806cb129baa3ff112c13fee22892bb930c6fd6bb05b47d42f2efb47e8719853f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fded9be4f1eedbd631e2dac16dce2b76173d6da868ba839a40045b2e92da73ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
