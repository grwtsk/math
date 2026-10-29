# Verification target: Normal Form

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72dabaddb6ccd3e9d8e79c13d979a5764648d550",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormalForm.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormalForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72dabaddb6ccd3e9d8e79c13d979a5764648d550`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat.md) | 43 | `declaration-track:9e2acc9116f40169d5bd498f6c5c52bef21874ff5a129b08610c599d71f4fcfc` |
| 2 | `theorem` | [meromorphicNFAt_iff_analyticAt_or](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-iff-analyticat-or.md) | 49 | `result-track:24a892cab581b16b161f2aa0e359a815441daba0f4dc17bed8a2d61617155477` |
| 3 | `theorem` | [MeromorphicNFAt.meromorphicAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-meromorphicat.md) | 100 | `result-track:7d1d407be29dfabb53142c61371bbe2a3daa16bc34a3ba84b5aadea015d8c5eb` |
| 4 | `theorem` | [MeromorphicNFAt.meromorphicOrderAt_nonneg_iff_analyticAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-meromorphicorderat-nonneg-iff-analyticat.md) | 110 | `result-track:f58bf50d959a64d04f8da91c66c824ebbdf0c017c0a132ca05eced28a118df20` |
| 5 | `theorem` | [AnalyticAt.meromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/analyticat-meromorphicnfat.md) | 125 | `result-track:80cca2497f6a2fb153b537d3e1cef7704b12f1a1fb9cccd83e2138a4a8b15909` |
| 6 | `theorem` | [MeromorphicOn.meromorphicNFAt_mem_codiscreteWithin](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicon-meromorphicnfat-mem-codiscretewithin.md) | 131 | `result-track:f8f064e076512f8a2b54fa1101113e69377f778b69263a44a63776ed95e2d789` |
| 7 | `theorem` | [MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-meromorphicorderat-eq-zero-iff.md) | 145 | `result-track:01089515004b775ddd2ba1474092439c160f6de0c57069def04f957ff2582321` |
| 8 | `theorem` | [MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-eventuallyeq-nhdsne-iff-eventuallyeq-nhds.md) | 179 | `result-track:8547a837d17a34968106e404699afc3c3feab95bcfc45a230f35e542959ce8b5` |
| 9 | `theorem` | [meromorphicNFAt_congr](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-congr.md) | 204 | `result-track:a9799827c0b31836f97c558ed3154287a70dcc344c999d65a47273d7f948c795` |
| 10 | `lemma` | [MeromorphicNFAt.smul_analytic](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-smul-analytic.md) | 221 | `result-track:4e016a0c3854ba2ae6cd44aee82fba3e8e249d88af3d63870bfdbf68ae70c7bd` |
| 11 | `theorem` | [meromorphicNFAt_smul_iff_right_of_analyticAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-smul-iff-right-of-analyticat.md) | 239 | `result-track:cfc7c4b69b2b884beebccbce688a94b97575f316bff26bc1a3bd437a9ec2b662` |
| 12 | `theorem` | [meromorphicNFAt_mul_iff_right](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-mul-iff-right.md) | 255 | `result-track:6a078af59c8b9dbea56bb905661a2068f57a6be9662c712dab7c49334e0c0a6c` |
| 13 | `theorem` | [meromorphicNFAt_mul_iff_left](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-mul-iff-left.md) | 262 | `result-track:42a6e6910d5aae13fce3d7321ab047a349f5dc3314004a41010b4647d3cc22a8` |
| 14 | `def` | [toMeromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfat.md) | 275 | `declaration-track:56bd3ba7bbdf199da18f790256daa29ae6d32d8a1f49890e96a7cd3995ec9751` |
| 15 | `lemma` | [MeromorphicAt.eqOn_compl_singleton_toMermomorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicat-eqon-compl-singleton-tomermomorphicnfat.md) | 287 | `result-track:03d964eac3ece4ecffe74d8efe8af9c5076c3b686e22db33442276e533263c3d` |
| 16 | `lemma` | [toMeromorphicNFAt_of_not_meromorphicAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfat-of-not-meromorphicat.md) | 292 | `result-track:487ace91bbcd5c8e23632043e9267b2f4cd70b56f1b8abb57730d767d26de44c` |
| 17 | `lemma` | [MeromorphicAt.eq_nhdsNE_toMeromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicat-eq-nhdsne-tomeromorphicnfat.md) | 297 | `result-track:11e7297ce6c3e9b57f804e85eb582f05d2c8f32338a9c6981585209fd1b51a64` |
| 18 | `theorem` | [meromorphicNFAt_toMeromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-tomeromorphicnfat.md) | 305 | `result-track:151e801111202742bb8acc9aa175241f25255fb313af1c47b90e766ad824156a` |
| 19 | `theorem` | [toMeromorphicNFAt_eq_self](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfat-eq-self.md) | 335 | `result-track:6dfcca4af2af7568fa5e9b7f26f585dccfb4786102b755bce6ffd9eb5870b845` |
| 20 | `theorem` | [MeromorphicNFAt.inv](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-inv.md) | 385 | `result-track:02c0171d901f5559e46eed83d680d5170ad73123a2b247ef12b741fe9eeda7cb` |
| 21 | `theorem` | [meromorphicNFAt_inv](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfat-inv-source-edition-2.md) | 400 | `result-track:d6b391958e1bbbe17a94715fc79decac98cf49926d561011c8e6bc54b065842b` |
| 22 | `def` | [MeromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon.md) | 416 | `declaration-track:13090f241c0e232f67ac6dcd1207532b2265d60b57f96224980f446c2b96ed1d` |
| 23 | `theorem` | [MeromorphicNFOn.meromorphicOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-meromorphicon.md) | 426 | `result-track:d1b90a83a94d0236c7bb346ff99d02546871494ae3047d30fdea96a2dbde8655` |
| 24 | `theorem` | [MeromorphicNFOn.divisor_nonneg_iff_analyticOnNhd](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-divisor-nonneg-iff-analyticonnhd.md) | 433 | `result-track:8a5153a2a4a2ee10f03c176cc37a1f6e5d35af81b765587105fa2f6921937c92` |
| 25 | `theorem` | [AnalyticOnNhd.meromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/analyticonnhd-meromorphicnfon.md) | 450 | `result-track:a778251aa316af1765860037ad2588516e3b238250ca61600db0d5cf77e48df5` |
| 26 | `theorem` | [MeromorphicNFOn.zero_set_eq_divisor_support](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-zero-set-eq-divisor-support.md) | 461 | `result-track:50bc034833cd4f4255b08159881b834238b4e8911d0d3bcffc9de0d2ba600303` |
| 27 | `theorem` | [meromorphicNFOn_smul_iff_right_of_analyticOnNhd](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-smul-iff-right-of-analyticonnhd.md) | 489 | `result-track:463e92f31851fa093baea1513fb2fc13ec6e539215d5557c0c7d1f73b9cf73d1` |
| 28 | `theorem` | [meromorphicNFOn_mul_iff_right_of_analyticOnNhd](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-mul-iff-right-of-analyticonnhd.md) | 503 | `result-track:a2184d3ec3b89328b79d88329b8ba63eca88a978415e97b50c7ec85f4d863e39` |
| 29 | `theorem` | [meromorphicNFOn_mul_iff_left_of_analyticOnNhd](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-mul-iff-left-of-analyticonnhd.md) | 514 | `result-track:f7cc118df423a22e1bc590179aacb66d17f75c070d42a8e4e147fa88e05e1108` |
| 30 | `theorem` | [meromorphicNFOn_inv](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-inv.md) | 523 | `result-track:dbd2b91f90d2df41ca640957a140dd1ef5d9148bd6d376b36c2af65f6fe033dc` |
| 31 | `def` | [toMeromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon.md) | 537 | `declaration-track:6e91675b852888daf652c8d5a190d8f4067fef56619c39e28d1f11ba08767d8d` |
| 32 | `lemma` | [toMeromorphicNFOn_of_not_meromorphicOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-of-not-meromorphicon.md) | 550 | `result-track:a30ace235529c7d02377dc277d31836dba0999ff8519a28afc969628b2ebd663` |
| 33 | `lemma` | [toMeromorphicNFOn_eq_self_on_compl](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-eq-self-on-compl.md) | 557 | `result-track:d03a2d5341b5717867563110619c103855ee3234e6a57fc02647a4c4b03d9622` |
| 34 | `theorem` | [toMeromorphicNFOn_eqOn_codiscrete](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-eqon-codiscrete.md) | 566 | `result-track:4f007ee6a6b165221245c46041400d788ecbb13e00a6e88175792648e7c20141` |
| 35 | `theorem` | [MeromorphicOn.toMeromorphicNFOn_eq_self_on_nhdsNE](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicon-tomeromorphicnfon-eq-self-on-nhdsne.md) | 577 | `result-track:8984252bd9986ee391bb159a2e0a4e4f385bf9180c15fed6367dba012f68a43c` |
| 36 | `theorem` | [toMeromorphicNFOn_eq_toMeromorphicNFAt_on_nhds](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-eq-tomeromorphicnfat-on-nhds.md) | 593 | `result-track:d0ce5c967e571721785f561f7461518a522d578585459aabaefd634027ab039e` |
| 37 | `theorem` | [toMeromorphicNFOn_eq_toMeromorphicNFAt](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-eq-tomeromorphicnfat.md) | 608 | `result-track:10879f8ac2a5ac77a1ab2b5cf72be6ca87ec897e85c50ab4be8b1d0c87089888` |
| 38 | `theorem` | [meromorphicNFOn_toMeromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicnfon-tomeromorphicnfon.md) | 618 | `result-track:d8999d8a6166c5ffbecbc0f1d5526049e3a880258837bea12a97e2113f379772` |
| 39 | `theorem` | [toMeromorphicNFOn_eq_self](../../../../FunctionalAnalysis/NormalForm.lean/declarations/tomeromorphicnfon-eq-self.md) | 631 | `result-track:46e34bcaba3607a6b9a637817a93843044b66aad024962a801803b49ee24cb30` |
| 40 | `theorem` | [meromorphicOrderAt_toMeromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicorderat-tomeromorphicnfon.md) | 645 | `result-track:f1504489f5ece90eef13246666e139201d2f19a4d96f4c8ec0a3f64f5bab46f4` |
| 41 | `theorem` | [MeromorphicOn.divisor_of_toMeromorphicNFOn](../../../../FunctionalAnalysis/NormalForm.lean/declarations/meromorphicon-divisor-of-tomeromorphicnfon.md) | 656 | `result-track:5b89501fa0f9568042dbb3f606a350284b1f3366e32b69bfcaa5c49187f1547f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97c88cfedac38c1abe4d0b44c9fb155c82f40276f6f67d3edad7d5746f0e2456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
