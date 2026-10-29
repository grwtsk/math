# Verification target: Chromatic Height

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cba30e06eb19133f7dc89407af015c361c979922",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ChromaticHeight.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ChromaticHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cba30e06eb19133f7dc89407af015c361c979922`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineTensor.TensorSection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ChromaticHeight](../../../../../Combinatorics/GraphTheory/ChromaticHeight.lean/declarations/chromaticheight.md) | 18 | `declaration-track:56b57fe181984ecf3bf3fbfdc2f127b072915d5684e89d19b173e4253f544e47` |
| 2 | `structure` | [HeightRankRule](../../../../../Combinatorics/GraphTheory/ChromaticHeight.lean/declarations/heightrankrule.md) | 23 | `declaration-track:8cbe25965be30dacb35d4b60b1ff8409938150cf557a0f7026e5998ed006e111` |
| 3 | `theorem` | [height_rank_rule_monotone_if_supplied](../../../../../Combinatorics/GraphTheory/ChromaticHeight.lean/declarations/height-rank-rule-monotone-if-supplied.md) | 29 | `result-track:3bf5499d57ba01c035a2a2f4b970a8968e2b021a1ff458f28d8ea1b012d08f1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d212ed8db47f0114503cd724453cb92abd6640bedc95b0336f27aef52343557f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
