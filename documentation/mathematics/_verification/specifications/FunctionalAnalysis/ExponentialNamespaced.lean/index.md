# Verification target: Exponential Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a2638bbd3e5c02b90e01c65e38c02997c998ea8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Exponential/Variantf67ee5944bcb993e2cec9e57833c3307a54f7a2e5aa851ea071e6f4ee83c6589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ExponentialNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ExponentialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a2638bbd3e5c02b90e01c65e38c02997c998ea8`.

Source path: `GRWTSK/Analysis/Exponential/Variantf67ee5944bcb993e2cec9e57833c3307a54f7a2e5aa851ea071e6f4ee83c6589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Exponential/Variantf67ee5944bcb993e2cec9e57833c3307a54f7a2e5aa851ea071e6f4ee83c6589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selfAdjoint.expUnitary](../../../../FunctionalAnalysis/ExponentialNamespaced.lean/declarations/selfadjoint-expunitary.md) | 42 | `declaration-track:6cbf3174e1fe8fe915e6d6da8aa9a905f2130a3296644d93a8c04ce86eb1c4d8` |
| 2 | `theorem` | [Commute.expUnitary_add](../../../../FunctionalAnalysis/ExponentialNamespaced.lean/declarations/commute-expunitary-add.md) | 49 | `result-track:46833f905e86a53c097a37db467b5cb06cea2a05bf8d3322aee635b82c3f3918` |
| 3 | `theorem` | [Commute.expUnitary](../../../../FunctionalAnalysis/ExponentialNamespaced.lean/declarations/commute-expunitary.md) | 58 | `result-track:3b27edcaeea77cbfdf88dedd2a3eff92519510c344d88170eae06187e6949f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cddd493cbbee9c13f378a6b9b2e5eea6e562f7a86744d0fccb6e49c270922f76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Exponential/Variantf67ee5944bcb993e2cec9e57833c3307a54f7a2e5aa851ea071e6f4ee83c6589.lean","GRWTSK/_verification/specifications/Analysis/Exponential/Variantf67ee5944bcb993e2cec9e57833c3307a54f7a2e5aa851ea071e6f4ee83c6589.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
