# Verification target: Finite Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db19f9a5861c0b9b515bb6f2d38f6f8844c9074f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteExtension/Variant726b22dfca1b268428f3695254dbc69d718029d7939b522aa0e3b6f64fed0f52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db19f9a5861c0b9b515bb6f2d38f6f8844c9074f`.

Source path: `GRWTSK/Analysis/FiniteExtension/Variant726b22dfca1b268428f3695254dbc69d718029d7939b522aa0e3b6f64fed0f52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteExtension/Variant726b22dfca1b268428f3695254dbc69d718029d7939b522aa0e3b6f64fed0f52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.AlgebraNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.SeminormFromBounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.SmoothingSeminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm.md) | 63 | `declaration-track:7b6403ddd72c1bc09dcb3dc71531ecaad8c47e9ecfe578ecdba9113b6dcdb41d` |
| 2 | `theorem` | [norm_repr_le_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-repr-le-norm.md) | 67 | `result-track:87103cb8ee4d83fd323cb7d0c4f0a16e32d89be77c78a182436516473de95f06` |
| 3 | `theorem` | [norm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-zero.md) | 71 | `result-track:1668559923e28063510c5b7c2518b4e3631197fd71fdd9027427fc791e19f564` |
| 4 | `theorem` | [norm_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-neg.md) | 75 | `result-track:aa07dcbdf5c96a19942ad23984612ab94b1e5b8d922e6d60e490d9bbcc8304fd` |
| 5 | `theorem` | [norm_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-nonneg.md) | 79 | `result-track:f655b62451f542270c011f1306232192dc076638b1a9c01723d061408706f6a0` |
| 6 | `theorem` | [norm_extends](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-extends.md) | 85 | `result-track:cbb13f1fcce0ebe7fbc78182c9e419af4db1b135d440bd0bf56ac91c0f6f156f` |
| 7 | `theorem` | [norm_isNonarchimedean](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-isnonarchimedean.md) | 94 | `result-track:c6b00069d5a8d2b44d406de40f3a8a31b06e144f1083b316fcf9ae9e404a895b` |
| 8 | `theorem` | [norm_mul_le_const_mul_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-mul-le-const-mul-norm.md) | 106 | `result-track:9f2f38171a8abd1dd53c9273ab3fce069853c1d28d55b75dc761f0d62c4ceab0` |
| 9 | `theorem` | [norm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/norm-smul.md) | 158 | `result-track:9a097107e1826e70f279c3caa4d65c35c8e01a7c7485b0934d80c108b9cf09d8` |
| 10 | `theorem` | [exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteExtensionNamespaced.lean/declarations/exists-nonarchimedean-pow-mul-seminorm-of-finitedimensional.md) | 187 | `result-track:7a73436301441b47575186f5f60d57e2eb43d4666fc6e1e810e8a47a38029aa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=382a9761174060245103d4767013a2140df7c7e07d463e4a651ea2d967c1b8ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteExtension/Variant726b22dfca1b268428f3695254dbc69d718029d7939b522aa0e3b6f64fed0f52.lean","GRWTSK/_verification/specifications/Analysis/FiniteExtension/Variant726b22dfca1b268428f3695254dbc69d718029d7939b522aa0e3b6f64fed0f52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
