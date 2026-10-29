# Verification target: Int Mu Chi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b2456f220cacdefa91b0e945a06455de9992333",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/IntMuChi.lean/index.md) · [Full source](../../../../MeasureAndIntegration/IntMuChi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b2456f220cacdefa91b0e945a06455de9992333`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.IntMu` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_g_explicit](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-g-explicit.md) | 34 | `result-track:29a9fda71fb6f885703bdc28966e01b8303d98b874da5486c7a00ce7bdf56e7e` |
| 2 | `theorem` | [int_g_sq_explicit](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-g-sq-explicit.md) | 120 | `result-track:944faea4164e7a5f322784f040ae60e9ae5d28c1e0f76a7f5c335e6bd08050e5` |
| 3 | `theorem` | [int_g_of_stirling](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-g-of-stirling.md) | 417 | `result-track:a9ac6e654f739570753a90f12188f7f34301f3e1348415d326f455a1c03512ab` |
| 4 | `theorem` | [int_g_sq_of_stirling](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-g-sq-of-stirling.md) | 426 | `result-track:3a271d8187c5995299bde1453b37451293fc193d9a6aab4bb8771c1eae9e98ab` |
| 5 | `lemma` | [ell1q_eq](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/ell1q-eq.md) | 441 | `result-track:84aac63fac5e4e8319b56ebad47824215046f295220571bd0cd4913d941cb365` |
| 6 | `theorem` | [int_muq_uniform](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-muq-uniform.md) | 453 | `result-track:7a3c4bbc3cf5d182a9fdb8ac7632b07925020e9d5b2fa51c24d566fdc1cd99d9` |
| 7 | `theorem` | [int_muq_sq_uniform](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-muq-sq-uniform.md) | 500 | `result-track:022e9ffb158e28b295776845d7f74ed1f788d95cf35011dc2b8c0e9c900b2fce` |
| 8 | `theorem` | [int_muq_of_stirling](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-muq-of-stirling.md) | 646 | `result-track:6bbb47a37aed4be71c85ca01c2e92da3ca2957ac87a02c8f533e5000b4c9aeb2` |
| 9 | `theorem` | [int_muq_sq_of_stirling](../../../../MeasureAndIntegration/IntMuChi.lean/declarations/int-muq-sq-of-stirling.md) | 655 | `result-track:7d50b92adf2c394875116e76908bff986471dc3a8cf25792dc93b1c67a06c94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef3895ce2a077cd74f754bf0fe804d40347901f3633c04a2ade3adb5fc7dd854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
