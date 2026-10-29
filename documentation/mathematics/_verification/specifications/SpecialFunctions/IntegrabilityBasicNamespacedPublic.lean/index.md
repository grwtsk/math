# Verification target: Integrability Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6845e0a6898c349869a3f224d8334a0bb1989a60",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6845e0a6898c349869a3f224d8334a0bb1989a60`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalIntegrable_pow](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-pow.md) | 39 | `result-track:3eaf6e194d4a98693596b55fc92d7bc7a1219741b1eec938627fbb36622f939d` |
| 2 | `theorem` | [intervalIntegrable_zpow](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-zpow.md) | 42 | `result-track:f7262b6a2dc7e826307cb7c6ac9084eb1761e5738c6d7b6cf7a4e9457a1ca89b` |
| 3 | `theorem` | [intervalIntegrable_rpow](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-rpow-source-edition-2.md) | 48 | `result-track:ea40cfba41b7ba253e73c2abd5b0b48b46722bf6af1cf8ab8510b8dc8ccaf11f` |
| 4 | `theorem` | [intervalIntegrable_rpow'](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-rpow.md) | 55 | `result-track:06153fa17b5df89a929b4faad7dc5c86ab0806a583686163a8c00b1cd9eec3ef` |
| 5 | `lemma` | [integrableOn_Ioo_rpow_iff](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/integrableon-ioo-rpow-iff.md) | 80 | `result-track:3ba66c022d044ccb11df394666cc95c24e2e9a15a7bbe9743edfbce9e10488ca` |
| 6 | `theorem` | [intervalIntegrable_cpow](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-cpow-source-edition-2.md) | 103 | `result-track:ca5c4031c6ab78944a7bc0c9ccebd860e30ae9fa3f9a1a8d7474da324f8dc8e4` |
| 7 | `theorem` | [intervalIntegrable_cpow'](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-cpow.md) | 147 | `result-track:2c6e7b7fdd68092af7bef38bcef7616cdc03972863fcd0d9ff3987e2f094ac07` |
| 8 | `theorem` | [integrableOn_Ioo_cpow_iff](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/integrableon-ioo-cpow-iff.md) | 184 | `result-track:338098036d8e6725e41c4803e9888bcd8838fe12c25af7ad3de5f5b9fe32dcdd` |
| 9 | `theorem` | [intervalIntegrable_id](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-id.md) | 197 | `result-track:a799afc181ea06cf934700877688a130246b42003bab6ef2a658b2dfc53bae4f` |
| 10 | `theorem` | [intervalIntegrable_one_div](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-one-div.md) | 200 | `result-track:a95bb8ad1bd073f417584c44ecd358a04fdb9dfe5fc2aace4efaae4137a1fa67` |
| 11 | `theorem` | [intervalIntegrable_inv](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-inv.md) | 205 | `result-track:06f64487737cadd71dd1d141479de37be16610f35c31f941b5f90be094354158` |
| 12 | `theorem` | [intervalIntegrable_sin](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-sin.md) | 210 | `result-track:3e42129f35952a5aa055d195e820051baa6d34f93e51bb1cd124848ed96fc4ab` |
| 13 | `theorem` | [intervalIntegrable_cos](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-cos.md) | 214 | `result-track:fd66d8458c53422107e7ec2320fe4858af5803883d50f53f8f820fc15afe8c9e` |
| 14 | `theorem` | [intervalIntegrable_exp](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-exp.md) | 218 | `result-track:a49422f6bcf94fe341da40e73344afdfb213db3278ab2496c3915b49b3fa1107` |
| 15 | `theorem` | [Integrability Basic Namespaced Public](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-integration-intervalintegrablepow-vari.md) | 222 | `result-track:ad7bb34d2e9389496b3c3498b9b03e49dee0a82aff2308ea52f054d1980289b6` |
| 16 | `theorem` | [intervalIntegrable_log](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-log.md) | 233 | `result-track:cd90076f21120032849d3565ad2737acd27d56ca930b5dc740b910bf58f3e818` |
| 17 | `theorem` | [intervalIntegrable_log'](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-log-source-edition-2.md) | 242 | `result-track:d57bbf67b8a9bc528dbcd6f3b89a00b5d6a4b64a5b1f09eccc67e2fa6d363712` |
| 18 | `theorem` | [intervalIntegrable_one_div_one_add_sq](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-one-div-one-add-sq.md) | 264 | `result-track:06df12639f1c7dc55fad37ab7f7ebf5a5d32ccc61eca20a1431792564f99b300` |
| 19 | `theorem` | [intervalIntegrable_inv_one_add_sq](../../../../SpecialFunctions/IntegrabilityBasicNamespacedPublic.lean/declarations/intervalintegrable-inv-one-add-sq.md) | 270 | `result-track:b9a96cfeee04212303ed9982cd283431c20b641ceb77b63d671f2607f3a8f611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42d8faa778b0562cbf2d867c3a60d1320d7cd03dc3d8074de7406fde95acc332 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
