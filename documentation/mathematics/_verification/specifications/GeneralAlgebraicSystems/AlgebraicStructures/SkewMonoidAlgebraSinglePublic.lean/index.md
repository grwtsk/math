# Verification target: Skew Monoid Algebra Single Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6b3d05e9e6f1a155902f802c46f726d9618dc3e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant54bc6ed15cfd9eb979a87289089cbef95f419761d143b7cb94d11b74d81edf4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6b3d05e9e6f1a155902f802c46f726d9618dc3e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant54bc6ed15cfd9eb979a87289089cbef95f419761d143b7cb94d11b74d81edf4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Single/Variant54bc6ed15cfd9eb979a87289089cbef95f419761d143b7cb94d11b74d81edf4b.lean.json)

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
| 1 | `def` | [erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/erase.md) | 32 | `declaration-track:cbcb499a7f8440f828cddbc0defd67e22e7b714b6ff9c3ff692ad8870e255fc0` |
| 2 | `theorem` | [support_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/support-erase.md) | 40 | `result-track:d11fa3d88405dc9a6938aefc84f89e9eebb11f7a6fef368d1eb898451ef45e74` |
| 3 | `theorem` | [coeff_erase_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/coeff-erase-same.md) | 44 | `result-track:0ab259cb8e419df85c50447644f4c6e5c2a9b4357be6223daff83e3dcac4c508` |
| 4 | `theorem` | [coeff_erase_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/coeff-erase-ne.md) | 49 | `result-track:d2989083e87e9b1677bc7b1bcd9d8e7586ccaf411aabde4a4b11c33011b10ca7` |
| 5 | `theorem` | [erase_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/erase-single.md) | 53 | `result-track:e91c45c4b5cc48579c67456bba6b055b4852d0ec268253f7f2deb5571d43ff9d` |
| 6 | `theorem` | [single_add_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/single-add-erase.md) | 56 | `result-track:5ec1d90f67433f7c9bca631f9eaff7be91089d7951963663ca79de41958b7d25` |
| 7 | `theorem` | [induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/induction.md) | 61 | `result-track:98910c210e7c071262536b26a9270ce5cb42c1267ca7324a1d4b8a40a7d161f4` |
| 8 | `def` | [update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/update.md) | 86 | `declaration-track:5c6935945565e5ebc6b272e1f39b292e4ad6f0917a334306fd88c1e25241e3fc` |
| 9 | `theorem` | [update_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/update-self.md) | 92 | `result-track:cf5403f55b8654ebb9bc6f3e36e28451a3ee3184456b6d12bc19d7f95cb7b081` |
| 10 | `theorem` | [zero_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/zero-update.md) | 95 | `result-track:51e8d6cd2ba5b34004065ced2df3f1cd09ca0fe6feedb76320c561a67e0d6b84` |
| 11 | `theorem` | [support_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/support-update.md) | 98 | `result-track:a5f73af366f2bd4272f66df66e3b68948bb81ae5eae0f44e8be58179db79aa38` |
| 12 | `theorem` | [coeff_update_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/coeff-update-apply.md) | 103 | `result-track:2589841a22819cc3c631d9c5e6c38c8fe277611893b5141d30114696835c29f4` |
| 13 | `theorem` | [coeff_update_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/coeff-update-same.md) | 108 | `result-track:beca6cce13619f8405da858b0f308309fb4b8ff2464cd2b2e8173658f3a693ac` |
| 14 | `theorem` | [coeff_update_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/coeff-update-ne.md) | 114 | `result-track:bbbd01e95fc66bcaed4502d528cea02ffbdc78626720ea9a56b72ce5daba1d95` |
| 15 | `theorem` | [update_eq_erase_add_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/update-eq-erase-add-single.md) | 118 | `result-track:87ee20dd7dbafd505853206a01610922d24c7d5a376731c40662e52f1ae4a526` |
| 16 | `theorem` | [update_zero_eq_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraSinglePublic.lean/declarations/update-zero-eq-erase.md) | 122 | `result-track:edb63ed172659ac33097c8572ad248f521df70121160410edc491652abd86348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=451a3dfbb71b5de663ec7f09d86c154381d55cfc2f4396f0ad55dd0449998f0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant54bc6ed15cfd9eb979a87289089cbef95f419761d143b7cb94d11b74d81edf4b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Single/Variant54bc6ed15cfd9eb979a87289089cbef95f419761d143b7cb94d11b74d81edf4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
