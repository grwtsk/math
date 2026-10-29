# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Determinant.Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec9c7f076b909d1ec8ba4edf7d03ca7caa53c923",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean/index.md) · [Full source](../../../../../../Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec9c7f076b909d1ec8ba4edf7d03ca7caa53c923`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `spectral_rh.Spectral.Zeta.Regularization` — import line 10; external provider; requires a separately pinned dependency.
- `spectral_rh.Ext.FredholmDetShift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fredholm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lshift](../../../../../../Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean/declarations/lshift--20eb6979a5b9842962ce9795.md) | 30 | `declaration-track:20eb6979a5b9842962ce9795bd92c978e2eb7c45d92d42f2e61c590fc16a01f7` |
| 2 | `def` | [detShift](../../../../../../Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean/declarations/detshift--988a2470a66a1cd5e12dd526.md) | 42 | `declaration-track:988a2470a66a1cd5e12dd5261d48cefa88a7743fc7c776d5edf8a89d9ac41180` |
| 3 | `lemma` | [detShift_zero_iff](../../../../../../Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean/declarations/detshift-zero-iff--9121daa686e56b509ccbc24b.md) | 54 | `result-track:9121daa686e56b509ccbc24b13b315d5e19b0bd8a91b6f8c3e5d67a3a8236a86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9aba008d47c3ebdd1f36143caa9d5ea1e669f1d9871c1db53345dcf4a85a1b61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Determinant/Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
