# Verification target: Half Line Operator Fragment Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4cebb0a4ffcdfb13d2e205c0258a95ee826602",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4cebb0a4ffcdfb13d2e205c0258a95ee826602`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfConvolution](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution.md) | 18 | `declaration-track:8f56ac45a38da131e38e1afb13db5e0d822c2c2d48cf17be053b969ab03b85cf` |
| 2 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution-apply.md) | 21 | `result-track:c21c8419a29cf55d62bef2a4b173baef7424659b58a382e81ef3343e78532550` |
| 3 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 25 | `result-track:5e7bd8d1377f3d87bc74e9c5d5f9fb64a99c2fb77b9920976a83ab9930d682ae` |
| 4 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution-norm-le.md) | 32 | `result-track:3625de34c53607c0b6fbd30aecd40687c9c5c634fd9c253326d8cf1ddb45e541` |
| 5 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 37 | `result-track:15de71cdbcfb5a1e3080cee686e10a68c8d731afa792deb6a262cd9609ef3510` |
| 6 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 46 | `result-track:41043a589a98cd521119f0970403fb7b34fe1f62cddd78c642ca185e969a8d03` |
| 7 | `def` | [sourceOperator](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceoperator.md) | 51 | `declaration-track:0bcd6c1e77e66c05a77bb7e1596d93ae616eb8748ac1ae5e71e6db4739acd6b8` |
| 8 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceoperator-apply.md) | 53 | `result-track:385e4287c73529b0b7a6c802e57b09b7dcd1bbc8eb54735b03011e5c13e0984c` |
| 9 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 57 | `result-track:63f9652c375d7e85450e5862a6b8278b7e8da405f662bdd7fe6ba3f109d1d741` |
| 10 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceoperator-norm-le.md) | 61 | `result-track:3a86dd77473de243f177a1181eade98c967b03ac7a7d8bab250d769a6083215a` |
| 11 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy.md) | 65 | `declaration-track:29d6055feab1eca7225f2f86d97bfaaa64a863947e5606985a08c6f63c88afad` |
| 12 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-apply.md) | 67 | `result-track:ce9d5478b05a58289bab6289ae1effed84ae514393fb3ba0c00c5fd3f2ad9ee4` |
| 13 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-ispositive.md) | 70 | `result-track:6f49f99ad88925efa356d66b8f66d7a410b9fd9b65aea35303c7c44ae63ba946` |
| 14 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 73 | `result-track:a4c0b42c05f9b436df69c03de2f2ae76a15d3b99703ec48051c14702f3b9a17c` |
| 15 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-inner.md) | 76 | `result-track:01e55d17f6ce186b605f8dfa05f00a1dc4fd74c6e88af4d51471980ff3d814e6` |
| 16 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-re-inner.md) | 81 | `result-track:f00a22e616f91b7187d42800fc692c07d63ef09f5b3312e9015dca798e09d98b` |
| 17 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-kernel.md) | 86 | `result-track:bd48b0afa8367a085ab65bd38d3fdb05d1912f95b9ced1a8aa8a78217e806393` |
| 18 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/HalfLineOperatorFragmentNamespaced.lean/declarations/sourceenergy-norm.md) | 89 | `result-track:a589f285f78a86c45769c34a02ea65bec3bb9be151546ebb5cce466d04b392cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ce60e167fed44feee4ce5ece01368f835f0d053587428ceb25090fe78877249 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
