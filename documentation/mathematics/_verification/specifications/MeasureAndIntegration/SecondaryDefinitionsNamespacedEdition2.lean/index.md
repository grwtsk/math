# Verification target: Secondary Definitions Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c`.

Source path: `GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Consequences` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Li2Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LiSeries` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.EulerMascheroniBounds` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LnFactorialSeries` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_le](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/log-le.md) | 40 | `result-track:812d34ba5ee03451e96ed7e609c01f746071b7e7b400be6dc10b1774c4d39f23` |
| 2 | `theorem` | [log_ge](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/log-ge.md) | 55 | `result-track:aeb79f401baee3a2791499b92f0f9f1c65949bd3769064ab2d0ff3dd20739c4d` |
| 3 | `theorem` | [log_ge'](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/log-ge-source-edition-2.md) | 87 | `result-track:f7d5b22f6e93523bb7517bb1f01c2fa9bc797a3233a60a6204db415ccae2aaf7` |
| 4 | `theorem` | [symm_inv_log](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/symm-inv-log.md) | 118 | `result-track:614f4858aa9d143a2e290dd026d94175e34cacc6610f5432c585100a12b861d4` |
| 5 | `theorem` | [li.sub_Li](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/li-sub-li.md) | 182 | `result-track:a5f37e05fb169e38d16eb4437817f980a549603c62f01fb95aa588f0fba8052b` |
| 6 | `theorem` | [li.two_approx](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/li-two-approx.md) | 219 | `result-track:660e923176f90be3ecc4869a1abbaf03afe3fa4530fdaa281feab80b52f8de4d` |
| 7 | `theorem` | [li_eq_Li2Bounds_li](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/li-eq-li2bounds-li.md) | 228 | `result-track:614c5afc0a9afa230ff19f17b54008f2d1ed2fda2e5f634c13a9c26a1eb20ea9` |
| 8 | `theorem` | [li.two_approx_weak](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/li-two-approx-weak.md) | 241 | `result-track:a0e6ac71d2c9fa42bddda9f6ba9016680cc03ebb30aec4a11542b3217a29f765` |
| 9 | `theorem` | [li2_symmetric_eq_li2](../../../../MeasureAndIntegration/SecondaryDefinitionsNamespacedEdition2.lean/declarations/li2-symmetric-eq-li2.md) | 256 | `result-track:a1262bce33808064ff5085ac8d34f38896a4dc7e9535fe0e3d6e017ac70dc667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd7c59119ce0877f51e8353f6fb490b06a158b61052a8ac3b1b2a636f592353e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean","GRWTSK/_verification/specifications/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
