# Verification target: Giry Monad Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e7ae7b53a019fd5b5af650a77118dc1428dd2e5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e7ae7b53a019fd5b5af650a77118dc1428dd2e5`.

Source path: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean.json)

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
| 1 | `instance` | [instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/instmeasurablespace.md) | 49 | `declaration-track:891654e23270ea9353d783a4d3f562ccc5182960d349943157e8f9ebb5c9e985` |
| 2 | `theorem` | [measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-coe.md) | 52 | `result-track:c9542a4f9880fe6d02968ba9508926a51145519934568efdb7abdd6db800fac2` |
| 3 | `theorem` | [measurable_of_measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-of-measurable-coe.md) | 55 | `result-track:566e74ee245573a36181540e9e855caced36823e376ae49a180c7d7f7bc800f5` |
| 4 | `instance` | [instMeasurableAdd₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/instmeasurableadd.md) | 61 | `declaration-track:efa55699fb6bc84236d09e713b41c4ac86a6d43169c306a52f1ed467323d3ae7` |
| 5 | `lemma` | [_root_.Measurable.smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/root-measurable-smul-measure.md) | 71 | `result-track:6507fb08cd7cc8d7b3a5a4c08b308819b6f6236d44fbcbb14427ecfe2893a52e` |
| 6 | `theorem` | [measurable_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-measure.md) | 77 | `result-track:50ba613836b9f57ecc72654c9d2cfb33f1b35461146d6efe4329cae6c01d6f21` |
| 7 | `theorem` | [_root_.Measurable.measure_of_isPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/root-measurable-measure-of-ispisystem.md) | 81 | `result-track:09af60c73221aa13c0471685a0c4f2424d28b55b9ce657cd9c01a6967b5fed49` |
| 8 | `theorem` | [_root_.Measurable.measure_of_isPiSystem_of_isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/root-measurable-measure-of-ispisystem-of-isprobabilitymeasure.md) | 96 | `result-track:8a7e4510104c399f9a3bae7b96b54fc59ed8f8bd74779a98b8b2868b8873512b` |
| 9 | `theorem` | [measurable_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-map.md) | 103 | `result-track:2cfe9762b2dffba6b05343ff033d9404bda7612d610e4ac7d44b9de1327a528d` |
| 10 | `theorem` | [measurable_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-dirac.md) | 110 | `result-track:60d275da64fe7c05c64868135e069519fb4cdea1e8676389b826c53e35fb1597` |
| 11 | `theorem` | [measurable_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-lintegral.md) | 116 | `result-track:a07aa755595457f5a9d45c3ea795e6091432d9fb2f80a576b6db87c4a43a1932` |
| 12 | `def` | [join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join.md) | 125 | `declaration-track:95e7d097fc5212f7f87e25db14487081208e0ff3b3b057b9fa21557d9f974a1c` |
| 13 | `theorem` | [join_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-apply.md) | 135 | `result-track:7c3fda663e04ce9ff4ba65d51746242daf56856c880c366f178a481e70965107` |
| 14 | `theorem` | [le_join_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/le-join-apply.md) | 139 | `result-track:c66e6ee8533c2f3d5c9636b4d601781c58e3d6ad7a9319a7ca5873463850bd94` |
| 15 | `theorem` | [join_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-smul.md) | 144 | `result-track:dab4045723b033439790fe1f97fb206806155984110e93f71552105e1ff32c9c` |
| 16 | `lemma` | [join_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-sum.md) | 149 | `result-track:5e6c44c38194e3a81bf509a1d3fcbc455c2a0e040ddfa2201d51c17d5561ed18` |
| 17 | `theorem` | [join_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-dirac.md) | 155 | `result-track:2dfc5f0884cfaf7427d881f3513d057ed4a8c8d9e7382c206b126577a144996c` |
| 18 | `theorem` | [le_ae_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/le-ae-join.md) | 159 | `result-track:ea80289e370531eb74d2bc5553109e61f410cbc65d1c9a29e32548d9de614c58` |
| 19 | `theorem` | [ae_ae_of_ae_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/ae-ae-of-ae-join.md) | 166 | `result-track:c05c99d4fd39800b6ec4dbe806bd75d5ed5c526a421feab7effc6abb1bd2465f` |
| 20 | `theorem` | [_root_.AEMeasurable.ae_of_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/root-aemeasurable-ae-of-join.md) | 170 | `result-track:c40d35b6fcbd368e7c11e5d1f77241dda4997ce22d36a9ce84e902553a4e86d1` |
| 21 | `theorem` | [aemeasurable_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/aemeasurable-lintegral.md) | 174 | `result-track:c39d90c2c91b99f5f9bd5bc5553a92db41a63ec08a3a42d0b72b1a2989c87d18` |
| 22 | `theorem` | [join_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-zero.md) | 181 | `result-track:5c10f3b13739e42f51eb13157aa227bb546999944a6fc47894ed0f3c173cd914` |
| 23 | `theorem` | [measurable_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-join.md) | 186 | `result-track:d4035669bafbd0c77ccd1d7a8221ad3a228557a74adfec3f9bdcc3b0b4b6f3c7` |
| 24 | `theorem` | [lintegral_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/lintegral-join.md) | 190 | `result-track:a31f6db7fa153e7ac6ee088321150e1349da3f86ad13ade4da2cfe8d39a6e525` |
| 25 | `theorem` | [lintegral_join_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/lintegral-join-le.md) | 219 | `result-track:ee693d92dadbbc4f644e7095c6a65174d56c71c1a8c7235a95ece7ccf3f9e9ff` |
| 26 | `def` | [bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind.md) | 228 | `declaration-track:99095555a1975df9b7776035eaada65639ef57ae1e5e9f54373e7d25d9b4e3a2` |
| 27 | `theorem` | [bind_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-zero-left.md) | 232 | `result-track:a19b1c75f40799790a3da2642eda6e7056f5046be12b04f5fe408ebc572467a9` |
| 28 | `theorem` | [bind_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-apply.md) | 235 | `result-track:bb69db8f2e05f7abadee8b0b13d280ff5001b34677c358ecb4fdc6e9399e1d86` |
| 29 | `theorem` | [bind_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-apply-le.md) | 239 | `result-track:0be6e4c7ea73c93bd2e6e617977e2984a5d4e6b364c3dd8ec6d79901432496f1` |
| 30 | `theorem` | [ae_ae_of_ae_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/ae-ae-of-ae-bind.md) | 245 | `result-track:956bc5a69ab0db4d2b5981a6db320fe62e8336b82ea0b467f661e1bcd5f44e13` |
| 31 | `theorem` | [_root_.AEMeasurable.ae_of_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/root-aemeasurable-ae-of-bind.md) | 249 | `result-track:148efdf6564a89468e0091fd2e110a68bd655f3fd3db8aa28fd15094506b83c3` |
| 32 | `theorem` | [bind_congr_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-congr-right.md) | 254 | `result-track:de5c4763910de54a977636766cef439418d2a4231c26667ce0345516be302ce0` |
| 33 | `lemma` | [bind_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-const.md) | 259 | `result-track:2a645f3e3fbf8ed3f54851d9cb3ae1ea8338ea3900fc85068f3d6d141f13d2d0` |
| 34 | `theorem` | [bind_zero_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-zero-right.md) | 262 | `result-track:311c846a54f50fe8833053a3d0c02a113d6d1d21f21aa4b15a46e9cb3e987758` |
| 35 | `theorem` | [bind_zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-zero-right-source-edition-2.md) | 265 | `result-track:c61800ae3187b19656dc2d5fcef5b3c808eb9f2a289a9f14ced71206ff159530` |
| 36 | `theorem` | [measurable_bind'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/measurable-bind.md) | 268 | `result-track:707f4aaebdaed840c8760948f234193494c84f46528e5ba9c8f441c1ed9e4c3a` |
| 37 | `theorem` | [aemeasurable_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/aemeasurable-bind.md) | 272 | `result-track:6e4be5ce5caac42543ac27e0c482b5c6f24b6779931fb6fdaf57c13cff21d038` |
| 38 | `theorem` | [bind_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-sum.md) | 277 | `result-track:2f70b0580aa88e9fa340866632afe2c756a6295bf8066484ab5ddf182fc35816` |
| 39 | `lemma` | [bind_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-smul.md) | 282 | `result-track:b1efb4a9070daa100f18f4d788934f55f81e7fc3ea08e445fa1332e8b37dea70` |
| 40 | `theorem` | [lintegral_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/lintegral-bind.md) | 286 | `result-track:3689bd2e435ae029bb91d05161ec455d244e9fa105e4dbf8abb74d01b0cd33ed` |
| 41 | `theorem` | [lintegral_bind_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/lintegral-bind-le.md) | 290 | `result-track:f29f0bfdcf2b95dc25c0bd446081320bffb8d7aa8ecb3c747f6c8a4f1ddbcbba` |
| 42 | `theorem` | [bind_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-bind.md) | 295 | `result-track:61cca47305a6d9c7593ed2d0eff7bd0fb492bf56195239e774710d131d42968c` |
| 43 | `theorem` | [dirac_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/dirac-bind.md) | 305 | `result-track:de78af300ad64bda6f660b50fd6fd9a80a2033fba895ca4214230fe0bf644c38` |
| 44 | `theorem` | [bind_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-dirac.md) | 309 | `result-track:021b82355f0f4ab4db1ef6763fa91db8e6c0d03c9401b43ae5c26dfb22383a6d` |
| 45 | `lemma` | [bind_dirac_eq_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/bind-dirac-eq-map.md) | 315 | `result-track:f72769e8093c659df4ada17387a01049e84b75a7d791bf4d56783e77af3fd878` |
| 46 | `theorem` | [join_eq_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-eq-bind.md) | 320 | `result-track:5cc5224f32e6dcd5fd99c69359a0a29125950e6b65466ce8a20d14d4934238fa` |
| 47 | `theorem` | [join_map_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-map-map.md) | 322 | `result-track:1aeb03138f47458c3c6940620925e4175d8a347666a635244cc85eb7a2055ab0` |
| 48 | `theorem` | [join_map_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-map-join.md) | 329 | `result-track:49686710aed90fa99eb49e58f2dfc67f240819fb5548c55b39fe9f3595d641cb` |
| 49 | `theorem` | [join_map_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/declarations/join-map-dirac.md) | 336 | `result-track:c89ce50d969257571466120880d43e1bf0ade0fb647cd28f58ba89a072f3dfaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64fab3c09644e9724bdf4eb20d81e1630724087862c1f8546d8223da396786dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
