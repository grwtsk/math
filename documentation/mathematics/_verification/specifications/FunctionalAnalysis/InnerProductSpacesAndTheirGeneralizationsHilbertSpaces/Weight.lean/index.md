# Verification target: Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f63250c4749cbf6196c4d4fe2a24b4a5150616d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Weight/Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f63250c4749cbf6196c4d4fe2a24b4a5150616d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Weight/Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Weight/Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.L2Space` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autoWeight](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/autoweight.md) | 17 | `declaration-track:0ddadc2135161ea70dcf47d889d5258fbd849978ac36fe93164e62ec250a08e3` |
| 2 | `def` | [autoMeasure](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/automeasure.md) | 26 | `declaration-track:470d41a25b711730e55dbde7b7ee09abdd38a90f4637fab0aeb8fc0e8543ac7c` |
| 3 | `abbrev` | [Hϕ](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/h.md) | 36 | `declaration-track:90a011a748f7866a9ef6dc8f71a080cb97a9dfd3b5aa0caa0f2e65effca127db` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/instance-source-edition-2.md) | 42 | `declaration-track:a037f3be913bc9a66726da141712045e4378712d7380d8d43aa2cb76946ea9b3` |
| 5 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/instance-source-edition-3.md) | 43 | `declaration-track:fcdd20db604a2856633aeb87ac65ccf685e72aedc7b3278de78d382aaa93c696` |
| 6 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Weight.lean/declarations/instance.md) | 44 | `declaration-track:7defbe4193cfc40eb37b507a1e7a73f56e54fb6b9f0eb171b718aedcb7e60b68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed80eb314b8c506e071ee0f0514142fae9a7b49bf3aa1f93f405572771428132 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Weight/Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Weight/Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
