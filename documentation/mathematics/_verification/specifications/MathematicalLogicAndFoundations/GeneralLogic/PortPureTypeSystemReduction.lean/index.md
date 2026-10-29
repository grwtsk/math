# Verification target: GRWTSK.Logic.PortPureTypeSystemReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a4cd2f6c1bfdac80cc91bd19b4680a1ae8f8b1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PortPureTypeSystemReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a4cd2f6c1bfdac80cc91bd19b4680a1ae8f8b1`.

Source path: `GRWTSK/Logic/PortPureTypeSystemReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PortPureTypeSystemReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.PortPureTypeSystemMetatheory`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemMetatheory.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Normal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/normal.md) | 13 | `declaration-track:11ff047afc02a672c0032ad03e18d38238cf6c44d0b32ae610f5d7097b7ebf59` |
| 2 | `abbrev` | [WeaklyNormalizing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/weaklynormalizing.md) | 17 | `declaration-track:639f4d61ec961de3dd9efad48069a6453bf0f7d48a1144417920f0cca3409ab5` |
| 3 | `abbrev` | [StronglyNormalizing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/stronglynormalizing.md) | 21 | `declaration-track:de1692697f876827155de056fc9882b0a6608edd1ed73b15a391c857783d7128` |
| 4 | `inductive` | [Parallel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/parallel.md) | 25 | `declaration-track:0589a4c2398e7d8e82a58c4b833684dbb47998cbedf853e81f73dc456390929e` |
| 5 | `theorem` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/refl.md) | 42 | `result-track:ae7a61b91928b909146c1bbbde1205ac24229a3608a83358302f80da14acfb50` |
| 6 | `theorem` | [of_beta](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/of-beta.md) | 51 | `result-track:2cfebe524a2f20697d997f510721cbf1b7f616b8c4234a902942285e395ab05b` |
| 7 | `theorem` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/rename-source-edition-2.md) | 62 | `result-track:dc5965c1c083cab0164144a699569968ff151271158c2483e0fe3e1f63c08524` |
| 8 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/subst.md) | 75 | `result-track:25452312beb7bef2a9b77a667517c3e2cdc4cc6f082f0477d702a7d7decf21f0` |
| 9 | `theorem` | [instantiate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/instantiate.md) | 95 | `result-track:c7d4ba46f63d9da4942bea1571dd965dd047055a23698a8fb0aec7147443a7cd` |
| 10 | `def` | [develop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/develop.md) | 111 | `declaration-track:65699424014e4ad80393e998ad05605e5b033837a72f25e5f1a546915739983a` |
| 11 | `theorem` | [triangle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/triangle.md) | 126 | `result-track:42de457e6f0bb54d12641bb0a3ef467e3178144eba9740b7b02e014788a08606` |
| 12 | `theorem` | [diamond](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/diamond.md) | 146 | `result-track:53026b79fa8800f0584eab10ab43f47c1e020716b4c53caa8e8e79e7c54f66e6` |
| 13 | `abbrev` | [Reduces](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/reduces-source-edition-3.md) | 154 | `declaration-track:3e6ba4696118fa09a933bc9c8e1f27429bee237371a839d6c48932f0b0c3071b` |
| 14 | `theorem` | [app](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/app.md) | 161 | `result-track:d6aac99aeacb35411380b96a8564f1b5c1f35fff89341456181aa2acae345f9c` |
| 15 | `theorem` | [lam](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/lam.md) | 167 | `result-track:2abe549b41e9cd88858222ced030321a9d46b8b2a6f59736c9dbe5b5f5732937` |
| 16 | `theorem` | [pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/pi.md) | 173 | `result-track:79d3cd24c3d39906bc66bd2b4f6c565fb8e057e18da3526e4972a3aa96c49e83` |
| 17 | `theorem` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/rename.md) | 179 | `result-track:d71c4343d905e92b9cc35cd7aa4ccaff2c3fd966312134c1cd6492016c10c2bc` |
| 18 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/subst-source-edition-2.md) | 184 | `result-track:fd1c8842749a9bcac0b4bb565c55a8e3b63ae94da2ac086383712b0a19f497c0` |
| 19 | `theorem` | [reduces](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/reduces-source-edition-2.md) | 195 | `result-track:1cec642aed514f3d6a4c9e85a69aa4be3e7e4ff396dbf401712deda401bbf519` |
| 20 | `theorem` | [rtc_reduces](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/rtc-reduces.md) | 206 | `result-track:962e356b077bec0803e6bccbb3f3db1d452504a1d4a095e8b1eab7408345aad8` |
| 21 | `theorem` | [parallel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/parallel-source-edition-2.md) | 217 | `result-track:a96072302b8be9f50732e7badf71441978afbfb27634e7e0ef8554ea51593e20` |
| 22 | `theorem` | [confluent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/confluent.md) | 221 | `result-track:b106586790287f044129ab360f1dd7e59bff12acb92fda4314b1f4c1617b3f99` |
| 23 | `theorem` | [join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/join.md) | 238 | `result-track:285f43b2e8effb85a2c719b7cadf59a46f63f0a3ec9f7dc6b210c5f4dea61c14` |
| 24 | `theorem` | [reduces_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/reduces-eq.md) | 258 | `result-track:5eeb6e6f59eec49659d6fc97074bbd0dff68e73345e1eaeb0d4699d5cf628fcb` |
| 25 | `theorem` | [eq_of_converts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/eq-of-converts.md) | 264 | `result-track:554f58e5312b93f1698d9d51a2b20191ec7290b8efa0c6918f562efa8482c913` |
| 26 | `theorem` | [pi_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/pi-inv.md) | 276 | `result-track:0701d5d4c74a442959f266c41796ed895b16076aaa0d8fcac9a7c84257add6ac` |
| 27 | `theorem` | [converts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/converts.md) | 287 | `result-track:8389390f17bdee71aace2ea491f1643ed48e64adf5d8b437be28c892d88b406b` |
| 28 | `theorem` | [product_compatibility](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/product-compatibility.md) | 297 | `result-track:0eea263abbeab87b1ff5601a216a2d916396d19ae913ba77d91e013ab2fbed20` |
| 29 | `theorem` | [var](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/var.md) | 315 | `result-track:b94539b50a637a60475e0fd720db24ea11b34a0d93c993ac1f9d79b47281c543` |
| 30 | `theorem` | [sort](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/sort.md) | 320 | `result-track:19349d343123221ca1c1142a34c24c453cb3fff2f80cf0030418260505e16025` |
| 31 | `theorem` | [stronglyNormalizing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/stronglynormalizing-source-edition-2.md) | 325 | `result-track:fbdcb91d86013feea1ffb3a1e782022dd365e5c63096aa5c3321dcd58df31c2a` |
| 32 | `theorem` | [step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/step.md) | 335 | `result-track:eba3ad87d9a83d0970570070f8de2cc54001ddfe3347880fafd3913ca2cb7b2d` |
| 33 | `theorem` | [reduces](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/reduces.md) | 340 | `result-track:170af2e274d1b9f2ada0d1abc5dea576c47e0bfb747865ae5017201f82ed2639` |
| 34 | `theorem` | [of_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/of-map.md) | 347 | `result-track:f7f19d4c3df7c11b7f7c607b356ba069e150c17dbe67e8601b5fc752d89aea56` |
| 35 | `theorem` | [app_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/app-left.md) | 361 | `result-track:6f19060513102eea75830fa2fa09fbb5ed35a2707d946dc2d143ab371696087e` |
| 36 | `theorem` | [app_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/app-right.md) | 366 | `result-track:93b1be7565ab0257a57bb409e04f6ff43f05ddf37f414cddb1d1c0088b177c29` |
| 37 | `theorem` | [lam_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/lam-domain.md) | 371 | `result-track:aa71e077db7240a45ae064eea3991fb9707a753cb93215a5bfc1dec51ea4dcad` |
| 38 | `theorem` | [lam_body](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/lam-body.md) | 376 | `result-track:bec442d1937742886890e773379f1482a8c7d225e911d48822a30d937933acf7` |
| 39 | `theorem` | [pi_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/pi-domain.md) | 381 | `result-track:54a299f507f9dd8197e55be880b7fdb5a11de40ac1078b8960b10d089316ad71` |
| 40 | `theorem` | [pi_body](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/declarations/pi-body.md) | 386 | `result-track:aa2078a3d6c0447ebd06156f0f42213d433992b459e264350c51205f05b20339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea56a3f842d22ec9db08371bb5417116c8c62762929deab01f96855d2d8e49c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/PortPureTypeSystemReduction.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
